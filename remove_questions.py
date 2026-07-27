import os
import re

ids_to_remove = [
    'FUN_032', 'FUN_041', 'FUN_043',
    'LATERAL_068', 'LATERAL_079'
]

directory = r'c:\Users\GAMER\Desktop\Projelerim\maymunvsinsan\lib\data'

for filename in os.listdir(directory):
    if not filename.endswith('.dart'): continue
    filepath = os.path.join(directory, filename)
    with open(filepath, 'r', encoding='utf-8') as f:
        content = f.read()
        
    original = content
    for qid in ids_to_remove:
        pattern = r'\s*\{\s*\'id\':\s*\'' + qid + r'\'.*?\},'
        content = re.sub(pattern, '', content, flags=re.DOTALL)
        
    if content != original:
        with open(filepath, 'w', encoding='utf-8') as f:
            f.write(content)
        print(f"Updated {filename}")
