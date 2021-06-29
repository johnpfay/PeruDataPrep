@set the_env=peru_2021
call "C:\Program Files\ArcGIS\Pro\bin\Python\Scripts\activate.bat" "%the_env%"
call "%localappdata%\ESRI\conda\envs\%the_env%\scripts\jupyter-notebook.exe"
call "C:\Program Files\ArcGIS\Pro\bin\Python\Scripts\deactivate.bat"