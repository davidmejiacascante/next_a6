In PowerShell as admin:
cd C:\users\<usuario>\appdata\local\programs\python\python???>
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m pip install --upgrade pip
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m pip install jupyterlab notebook ipykernel
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m ipykernel install --user --name tfm --display-name "Python 3.14 (tfm)"
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m jupyter lab
From terminal in VS code:
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m pip uninstall -y tfm
C:\Users\DAVID\AppData\Local\Programs\Python\Python314\python.exe -m pip install -e .