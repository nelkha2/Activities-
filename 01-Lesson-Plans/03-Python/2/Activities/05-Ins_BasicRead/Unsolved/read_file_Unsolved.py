# create path 

#f = "C:\Users\Nader\OneDrive\Education\SMU Data Science\SMU Gitlab\SMUDAL201905DATA5\01-Lesson-Plans\03-Python\2\Activities\05-Ins_BasicRead\Resources\input.txt"

import os
f = os.path.join('..', 'Resources', 'input.txt')

with open(f,"r") as textfile: 
    print(textfile)

    lines = textfile.read()
    print(lines)

    