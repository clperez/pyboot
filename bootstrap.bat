
rem #  Following tutorial https://packaging.python.org/tutorials/installing-packages/
rem #  For more information check https://packaging.python.org/overview/

rem Check python is working on your environment
python --version

rem Check pip is installed
python -m pip --version

rem If not present, run it from the standard library
rem python -m ensurepip --default-pip

rem Install pip setuptools and wheel project
rem If alreaddy installed, the --upgrade argument
rem will upgrade the packages:
rem https://wheel.readthedocs.io/en/stable/

rem Wheels are a pre-built distribution format that provides faster 
rem installation compared to Source Distributions (sdist), especially 
rem when a project contains compiled extensions.
rem If pip does not find a wheel to install, it will locally build a wheel 
rem and cache it for future installs.
python -m pip install --upgrade pip setuptools wheel

rem now create a virtual environment for the guessnumber
rem project. We will run this command on every project 
rem we create, with different names
python -m venv guessnumber

rem Activate the virtual environment we generated
cd guessnumber
Scripts\activate

rem Time to install one or more linters.
rem there are many options: pylint, pychecker, pyflakes 
rem https://stackoverflow.com/questions/1428872/pylint-pychecker-or-pyflakes
rem https://dev.to/j0nimost/setting-up-pep8-and-pylint-on-vs-code-34h
rem We will use two modules: pylint and pep8
python -m pip install --upgrade pylint pep8

rem Now we proceed to configure pylint
rem https://stackoverflow.com/questions/22448731/how-do-i-create-a-pylintrc-file
rem Locate the file at:
rem   )) /etc/pylintrc for default global configuration
rem   )) ~/.pylintrc          -- for default user configuration
rem   )) <yourproject>/pylintrc -- for default project configuration (used when you'll run pylint <your project>)
rem   )) wherever you want, then use pylint --rcfile=<wherever I want>
rem Generate now the file for our project. You can modify it later if you want
pylint --generate-rcfile > D:\projects\pyboot\guessnumber\.pylintrc

rem Now we proceed to configure pep8
rem https://pep8.readthedocs.io/en/release-1.7.x/
rem https://pep8.readthedocs.io/en/release-1.7.x/intro.html#installation
rem Locate the file at:
rem   )) Windows: ~\.pep8            -- for the default user level
rem   )) Linux: XDG_CONFIG_HOME/pep8 -- if XDG_CONFIG_HOME env var is configured
rem   ))        ~/.config/pep8       -- if XDG_CONFIG_HOME env var is not configured
rem   )) <yourproject>/(setup.cfg|tox.ini|.pep8) -- at project level
rem   )) wherever you want, then use pep8 --config=<wherever I want>
echo [pep8] > D:\projects\pyboot\guessnumber\setup.cfg
python.exe -m pip install --upgrade pycodestyle


