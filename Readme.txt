This sample shows how to build an image which will execute an arbitrary Python that resides in the MCP file system.

Instructions.

1. Map a drive to your MCP hosts _HOMEXL_ share. For these instructions M: will be assumed.
2. Create a directory to be used for this build in M:
     Example: M:\BUILDIT\PYTHON374
3. COPY the following files from this sample to the directory created in the previous step:
     main.ps1
     pow2.py
     PYTHON374
4. Get to a CANDE prompt on the MCP system under the same usercode you used when for your share mapping. Turn off scrolling for best results.
5. Run the following command:
     RUN *SYSTEM/BUILDX;FILE DOCKERFILE=BUILDIT/PYTHON374/PYTHON374

     Note: As this command executes, the output from the build will be delivered to your terminal. Also, due to the fact that the PYTHON374 file specifies the AUTOMAP option, a new file named AUTOMAP.PS1 will be created in M:\BUILDIT\PYTHON374
6. When the build completes, validate that you have the object file named
     OBJECT/BUILDIT/PYTHON374/PYTHON374

     You can do this by entering the CANDE command:
       FILES OBJECT/BUILDIT/PYTHON374/PYTHON374 : S

     Note: This is not located in the build directory M:\BUILDIT\PYTHON374.
       If you do not find the file, then the build failed. Correct the errors and return to step 5.
7. From CANDE, run the following command:
     RUN BUILDIT/PYTHON374/PYTHON374

     Note: The program will write the names of all the files whose names are of the form *.py in the users files on the MCP and prompt you for input via:
       Enter the name of the Python program to execute

     Enter the name of the pow2.py file you placed in the build directory. If you used the default as specified in these instructions it would be:

       M:\BUILDIT\PYTHON374\pow2.py 

8. The Python program executes and prmpts you for some input via:
       Enter the upper limit for Power of Two
     
      Enter a positive integer and the powers of two up to the number you entered will be calculated and written to the terminal with Python. Assuming you entered the value 18, you should see the following output:

      2 to the power of 1 is 2       
      2 to the power of 2 is 4       
      2 to the power of 3 is 8       
      2 to the power of 4 is 16      
      2 to the power of 5 is 32      
      2 to the power of 6 is 64      
      2 to the power of 7 is 128     
      2 to the power of 8 is 256     
      2 to the power of 9 is 512     
      2 to the power of 10 is 1024   
      2 to the power of 11 is 2048   
      2 to the power of 12 is 4096   
      2 to the power of 13 is 8192   
      2 to the power of 14 is 16384  
      2 to the power of 15 is 32768  
      2 to the power of 16 is 65536  
      2 to the power of 17 is 131072 
      2 to the power of 18 is 262144 


     