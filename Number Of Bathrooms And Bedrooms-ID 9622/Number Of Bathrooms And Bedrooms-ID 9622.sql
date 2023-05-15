"Number Of Bathrooms And Bedrooms-ID 9622



Airbnb
Easy
ID 9622

https://platform.stratascratch.com/coding/9622-number-of-bathrooms-and-bedrooms?code_type=3


Find the average number of bathrooms and bedrooms for each city’s property types. Output the result along with the city name and the property type.


"
"Query"
select city,property_type,avg(bedrooms) as avgBed,avg(bathrooms) as avgbath from airbnb_search_details
group by city,property_type