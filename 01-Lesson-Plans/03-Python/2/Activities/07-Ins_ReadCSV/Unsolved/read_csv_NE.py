

# import libraries
import os
import csv

# path identification / guide
csvpath = os.path.join("..","Resources","accounting.csv")

#structure file object
with open(csvpath, newline="") as csvfile: 
    csvreader = csv.reader(csvfile,delimiter =",")
    #print(csvreader)

    #read header row and skip it 
    csv_header = next(csvreader)
    print(f"CSV Header: {csv_header}")

    #read each row
    for row in csvreader:
        print(row)


