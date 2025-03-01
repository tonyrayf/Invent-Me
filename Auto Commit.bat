@echo off

cd C:\Users\n3r1x\GameMakerProjects\MPIT\InventMe
git init

git add *

set /p commitMessage="Enter your commit message: "
git commit -m "%commitMessage%"

git push