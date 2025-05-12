# -*- coding: utf-8 -*-
"""
Created on Thu Oct 24 13:45:19 2024

@author: Ben Jolly
"""

import sys


print('\n====================================================================\n')
print("\t\tConfigurational Analysis - v1.0 (2024)\n")
print("\t   Developed by: Benjamin E. Jolly; Lewis R. Owen\n")
print("\t\t    University of Sheffield, UK\n")
print("====================================================================\n")

ans1 = input("Generate Configurational Dictionary files? (Y/N):\t")

if (ans1 == "Y") or (ans1=="y"):
    
    with open("exe\\Generalised_Clapp_v2.py") as a:
        exec(a.read())
        
    ans2 = input('\nCalculate Enhancement Factors and generate Histograms? (Y/N):\t')
    
    if (ans2 == "Y") or (ans2=="y"):
        with open("exe\\Histograms_v2_2.py") as c:
            exec(c.read())
    
    elif (ans2 == "N") or (ans2=="n"):
        pass
    
    else:
        print("Invalid input.")
        pass

elif (ans1 == "N") or (ans1=="n"):
    
    ans2 = input('\nCalculate Enhancement Factors and generate Histograms? (Y/N):\t')
    
    if (ans2 == "Y") or (ans2=="y"):
        with open("exe\\Histograms_v2_2.py") as b:
            exec(b.read())
    
    elif (ans2 == "N") or (ans2=="n"):
        pass
    
    else:
        print("\nInvalid input.")
        pass

else:
    print("\nInvalid input.")
    pass


print("\n--------------End---------------\n\n")
