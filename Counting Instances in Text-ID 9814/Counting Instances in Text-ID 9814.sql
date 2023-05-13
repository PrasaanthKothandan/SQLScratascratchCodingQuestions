"Counting Instances in Text-ID 9814


Google
Hard
ID 9814

HTTPS Link:https://platform.stratascratch.com/coding/9814-counting-instances-in-text?code_type=3

Find the number of times the words 'bull' and 'bear' occur in the contents. We're counting the number of times the words occur so words like 'bullish' should not be included in our count.
Output the word 'bull' and 'bear' along with the corresponding number of occurrences.

"
"Query"

select 
"bull" as word,count(*) as occur
from google_file_store
where lower(contents) like "%bull%"

union 

select 
"bear" as word,count(*) as occur
from google_file_store
where lower(contents) like "%bear%"
