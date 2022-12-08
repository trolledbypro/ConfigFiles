To change Windows Terminal Path
run
New-Item -ItemType HardLink -Path "C:\Users\Sloven\AppData\Local\Microsoft\Windows Terminal\settings.json" -Target "C:\tools\windowsterminal\settings.json"
