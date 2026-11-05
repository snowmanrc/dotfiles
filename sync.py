import subprocess

def shellrun(cmd: str):
    subprocess.run(cmd, shell=True, capture_output=False)

shellrun("git pull")
shellrun("git add .")
msg = input("Enter commit mesg: ")
shellrun(f"git commit -m {msg}")
shellrun("git push")