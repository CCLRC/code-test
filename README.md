# CCLRC IT and Software Engineer Code Test

## Part 1: Data Transformation
Here are a few endpoints for parcel data with an XML stream. 

```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-02-088
```
```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=136-18-117
```
```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=109-21-100
```
```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=672-06-054
```
```
http://neocando.case.edu/cando/housingReport/lbxml.jsp?parcel=673-12-062
```

Using Python and Flask, write an endpoint script that takes any one of these XML streams and outputs the data in json format. The endpoint should have all the data coming in from the XML stream. 

## Part 2: Front-End Presenation
Using Javascript and/or JQuery, and Bootstrap (or a combination), create a simple webpage that takes the endpoint from part 1 and displays all the information in a clear, readable interface. 

The XML stream includes latitude and longitude points for the parcel which should also be part of your Part 1 API output. Using Google Maps API, embed a map on this page showing the location of the parcel with some basic information (Street address, Owner etc.). You should be able to use the free quota of the Google Maps API for this. You do not need to include your API key, but present an obvoius place to insert one for testing.

There is also an image folder in the repo that has images with filenames related to the parcel number in the endpoint. Make sure to include that image in your web page. Where you place the image on the webpage is entirely up to you. 

Feel free to be creative and keep in mind that there will be a lot of data on one page so how you layout the information will aid in readability. 

## Part 3: SQL
In the repo is a sql file called sql_test.sql (exported from MySQL). Inside there are four tables with the following columns:
* parcels
  * id
  * ppn
  * address
* inspections
  * id
  * date
  * inspector (inspectors.id)
  * cost_per_parcel
* inspectors
  * id
  * name
  * phone
* inspection_parcel
  * id
  * inspection_id (inspections.id)
  * parcel_id (parcesl.id)
Write sql statements to solve the following problems and add them to a text file when submitting your code.
1.	Get the unique name and phone number of every inspector who has inspected the parcel with the ppn 812-12-027.
2.	Get the total cost of all inspections in East Cleveland. You can assume any address that ends in “East Cleveland, OH” is in East Cleveland. Note that inspections may include multiple parcels, but costs are per parcel.
3.	Get the address of all parcels that have not been inspected since January 1, 2023.


## Completion and Submission
Completed work should include all code to arrive at the solution, plus assets and resources required to run Parts 1 & 2. 

PLEASE INCLUDE a detailed README containing the requirements and instructions to run the project locally. 

All completed work should be pushed to a public repo on Github. 

