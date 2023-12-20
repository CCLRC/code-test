# CCLRC IT and Software Engineer Code Test

## Part 1: Data Transformation
The following requests return data for a given parcel in XML format.

```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-02-088

http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=136-18-117

http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-21-100

http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=672-06-054

http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=673-12-062
```

Using Python and Flask, create a service that returns data from one of the
example requests above when a URL is accessed.  Output data must be in JSON
format.  For example, accessing http://localhost:8080/parcel would return
JSON-format data descrbing a parcel.

## Part 2: Front-End Presenation
Building on the results from step 1, create a web page that takes the data from
Part 1 and displays all the information in a clear, readable manner.

### 2A: Mapping
The data from Part 1 includes coordinates (latitude and longitude) for the
parcel. Using Google Maps API, embed a map on your page showing the location
of the parcel as well as the street address and the owner.

You do not need to include your Google Maps API key when submitting your code.

### 2B: Displaying Images
There is an image folder in this repository that has images with filenames
including a parcel number. Include the image for your selected parcel in your
web page.

Feel free to be creative. Keep in mind that there will be a lot of data on the
page, so organization of the information will be important for readability. 

## Part 3: SQL
This repository includes a sql file called `sql_test.sql` which is an export
of tables from a MySQL database. Inside there are four tables with the following
columns:
* parcels
  + id
  + ppn
  + address
* inspections
  + id
  + date
  + inspector (inspectors.id)
  + cost_per_parcel
* inspectors
  + id
  + name
  + phone
* inspection_parcel
  + id
  + inspection_id (inspections.id)
  + parcel_id (parcels.id)

Write sql statements to solve the following problems and add them to a text
file when submitting your code.
1. Get the unique name and phone number of every inspector who has inspected
the parcel with the ppn 812-12-027.
2. Get the total cost of all inspections in East Cleveland. You can assume any
address that ends in “East Cleveland, OH” is in East Cleveland. Note that
inspections may include multiple parcels, but costs are per parcel.
3. Get the address of all parcels that have not been inspected since January 1,
2023.


## Completion and Submission
Completed work must include all code to arrive at the solution, plus assets
and resources required to run Parts 1 & 2.

Please include a detailed README containing the requirements and instructions
to run the project locally.

All completed work should be made available in a public repo on Github.


