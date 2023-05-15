"Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email-id 9924


City of San Francisco
Easy
ID 9924


https://platform.stratascratch.com/coding/9924-find-libraries-who-havent-provided-the-email-address-in-2016-but-their-notice-preference-definition-is-set-to-email?code_type=3



Find libraries who haven't provided the email address in circulation year 2016 but their notice preference definition is set to email.
Output the library code.
"
"Query"
select home_library_code from library_usage
where circulation_active_year = 2016 and notice_preference_definition like "email" and provided_email_address = 0
group by home_library_code