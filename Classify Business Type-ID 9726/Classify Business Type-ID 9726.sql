"Classify Business Type-ID 9726

City of San Francisco
Medium
ID 9726


HTTPS Link:https://platform.stratascratch.com/coding/9726-classify-business-type?code_type=3

Classify each business as either a restaurant, cafe, school, or other.


•	A restaurant should have the word 'restaurant' in the business name.
•	A cafe should have either 'cafe', 'café', or 'coffee' in the business name.
•	A school should have the word 'school' in the business name.
•	All other businesses should be classified as 'other'.


Output the business name and their classification.

"
"Query writen by Prasaanth"

select business_name,
if(lower(business_name) like "%restaurant%", "restaurant",
if(lower(business_name) like "%school%","school",if(lower(business_name) like "%cafe%" or lower(business_name) like"%café%" or lower(business_name) like "%coffee%","cafe ","other")
)
) business_classification
from sf_restaurant_health_violations
group by business_name