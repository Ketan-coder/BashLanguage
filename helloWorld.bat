@echo off
rem ===============================
rem Enhanced Introduction Script for .bat File
rem Author: [Your Name]
rem Date: [Today's Date]
rem Description: This script demonstrates
rem basic batch file commands, loops, and conditional statements.
rem ===============================

echo Welcome to the Enhanced Batch File Introduction Script!
echo This script will show you some basic commands, loops, and conditional statements.

rem Display the current date and time
echo The current date and time is:
date /T
time /T

rem List the files in the current directory
echo Listing the files in the current directory:
dir

rem Create a new directory
echo Creating a new directory named "DemoDir"
mkdir DemoDir

rem Navigate into the new directory
echo Navigating into "DemoDir"
cd DemoDir

rem Create multiple text files using a loop
echo Creating multiple text files using a loop
for /L %%i in (1,1,5) do (
    echo This is example file %%i. > example%%i.txt
)

rem Display the contents of the text files
echo Displaying the contents of the text files
for /L %%i in (1,1,5) do (
    echo Contents of example%%i.txt:
    type example%%i.txt
)

rem Conditional statements to check file existence
echo Checking if example1.txt exists
if exist example1.txt (
    echo example1.txt exists
) else (
    echo example1.txt does not exist
)

rem Navigate back to the previous directory
echo Navigating back to the previous directory
cd ..

rem Delete the newly created directory and files
echo Deleting "DemoDir" and its contents
rd /S /Q DemoDir

echo Batch file script execution completed.
pause
