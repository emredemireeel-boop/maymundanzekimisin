import os
import glob
import re

def clean_string(s):
    # Remove text in parentheses
    s = re.sub(r'\s*\([^)]*\)\s*', '', s)
    
    # Lowercase full uppercase words (length >= 2)
    def lower_match(m):
        word = m.group(0)
        return word.lower()
        
    s = re.sub(r'\b[A-ZÇĞİÖŞÜ]{2,}\b', lower_match, s)
    
    # Trim
    s = s.strip()
    
    # Capitalize first letter
    if len(s) > 0:
        s = s[0].upper() + s[1:]
        
    return s

def process_file(filepath):
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
        
    original = content
        
    # Fix the specific '[' syntax error
    content = re.sub(r'\},?\s*\[\s*\{', '},\n  {', content)
    
    # Replace options block
    def replace_options(match):
        options_block = match.group(0)
        
        # Replace string literals inside options block
        def replace_str(m_str):
            quote = m_str.group(1)
            text = m_str.group(2)
            cleaned = clean_string(text)
            return f"{quote}{cleaned}{quote}"
            
        cleaned_block = re.sub(r'([\'"])(.*?)(?<!\\)\1', replace_str, options_block)
        return cleaned_block

    content = re.sub(r'\'options\'\s*:\s*\[.*?\]', replace_options, content, flags=re.DOTALL)
    content = re.sub(r'"options"\s*:\s*\[.*?\]', replace_options, content, flags=re.DOTALL)

    if content != original:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {filepath}")

for fp in glob.glob('lib/data/questions_*.dart'):
    process_file(fp)
