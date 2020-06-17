& .\Automap.ps1
[Console]::WriteLine('The following Python programs are available')
Start-Process cmd -ArgumentList "/C","DIR /S /B *.py" `
  -WorkingDirectory 'M:\' -NoNewWindow -Wait
do 
{
    [Console]::WriteLine('Enter the name of the Python program to execute')
    $f = [Console]::ReadLine()   
} while (!(Test-Path -Path $f -PathType Leaf))
python $f
