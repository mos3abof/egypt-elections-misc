#!/usr/bin/python
# -*- coding: utf-8 -*-
# Author Mosab Ahmad <mosab.ahmad@gmail.com>


import traceback
import MySQLdb as db
from xlrd import open_workbook, cellname, XL_CELL_TEXT

## initializing connection
con = None


try:
    ## Connection to database
    ## Update this to match your credentials
    ## Database hase to already exist, you need to create it manually, will look into creating it automatically if it doesn't already exist
    con = db.connect('localhost', 'root', 'password', 'egypt_elections', use_unicode=1, charset="utf8")

    ## Opening the excel file
    book = open_workbook('complete.xls')
    ## Reading the sheet we need
    our_sheet = book.sheet_by_index(0)

    ## Looping over sheet rows
    ## We already know the number of rows
    for i in range(9339):
        our_row = our_sheet.row_slice(i+1)

        with con:
            cur = con.cursor()
            ## Checking if governorate exists in database
            cur.execute("SELECT id FROM governorates WHERE name = '%s'" % our_row[4].value.encode('utf-8'))
            governorate_exists = cur.fetchall()

            ## Handling governorate existence in db
            if(len(governorate_exists) > 0):
                ## if governorate exists get its id
                governorate_id = governorate_exists[0][0]

                ## Checking if central station exists in database
                cur.execute("SELECT id FROM central_stations WHERE name = '%s'" % our_row[3].value.encode('utf-8'))
                central_exists = cur.fetchall()
                ## handling existense of central station
                if(len(central_exists) > 0):
                    ## if central station exists get its id
                    central_id = central_exists[0][0]

                    ## Checking if polling station exists in database
                    cur.execute("SELECT id FROM polling_stations WHERE name='%s'" % our_row[2].value.encode('utf-8'))
                    polling_exists = cur.fetchall()

                    ## Handling polling station existense
                    if(len(polling_exists) == 0):
                        ## We only need to check if it doesn't exist then save to database
                        cur.execute("INSERT INTO polling_stations (name, registered_voters_number, central_stations_id) VALUES ('"+ our_row[2].value.encode('utf-8')+"', "+ str(our_row[0].value) +", "+ str(central_id) +")")

                ## Central station doesn't exist in database        
                else:
                    cur.execute("INSERT INTO central_stations (name, governorate_id) VALUES ('"+our_row[3].value.encode('utf-8')+"', "+str(governorate_id)+")")
                    ## Get last inserted id of central station
                    central_id = con.insert_id()
                    ## INSERT polling station
                    cur.execute("INSERT INTO polling_stations (name, registered_voters_number, central_stations_id) VALUES ('"+ our_row[2].value.encode('utf-8')+"', "+ str(our_row[0].value) +", "+ str(central_id) +")")

            ## Governorate doesn't exist in database                    
            else:
                cur.execute("INSERT INTO governorates (name) VALUES ('"+ our_row[4].value.encode('utf-8')+"')")
                ## GET last id
                governorate_id = con.insert_id()
                ## insert central station
                cur.execute("INSERT INTO central_stations (name, governorate_id) VALUES ('"+our_row[3].value.encode('utf-8')+"', "+str(governorate_id)+")")
                ## Get last inserted id of central station
                central_id = con.insert_id()
                ## INSERT polling station
                cur.execute("INSERT INTO polling_stations (name, registered_voters_number, central_stations_id) VALUES ('"+ our_row[2].value.encode('utf-8')+"', "+ str(our_row[0].value) +", "+ str(central_id) +")")
    print 'IT IS DONE'            
except:
    print traceback.format_exc()
