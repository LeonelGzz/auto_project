@echo off
SETLOCAL
SET /P proyecto=[Project Name]

CALL :new_project %proyecto%
EXIT /B %ERRORLEVEL%

:new_project

    cd /
    python create_project.py %~1

    :: Set the path to your projects folder here '/Users/<your username>/path/to/your/project'
    cd /Users/<your username>/path/to/your/project
    
    mkdir %~1

    :: Set the path to your projects folder here '/Users/<your username>/path/to/your/project'
    cd /Users/<your username>/path/to/your/project/%~1
    
    echo # About project %~1 > README.md
    git init
    git add README.md
    git commit -m "Initial commit"

    ::Change Github_username by your github username
    git remote add origin git@github.com:Github_username/%~1.git
    
    git push -u origin master
echo Project %~1 is ready
pause

EXIT /B 0

