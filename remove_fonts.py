import os
import re

lib_dir = r"c:\Users\GAMER\Desktop\Projelerim\maymunvsinsan\lib"

for root, dirs, files in os.walk(lib_dir):
    for file in files:
        if file.endswith(".dart"):
            path = os.path.join(root, file)
            with open(path, "r", encoding="utf-8") as f:
                content = f.read()

            new_content = re.sub(r"import 'package:google_fonts/google_fonts\.dart';\n?", "", content)
            new_content = re.sub(r"GoogleFonts\.poppins\(", "TextStyle(fontFamily: 'System', ", new_content)
            
            # special case for app_theme
            new_content = new_content.replace("GoogleFonts.poppinsTextTheme()", "Typography.material2021().black")

            if new_content != content:
                with open(path, "w", encoding="utf-8") as f:
                    f.write(new_content)
                print(f"Updated {path}")
