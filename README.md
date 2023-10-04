Generic password: 123Ioogo456+

Here is the video of the Request Rspects
https://www.loom.com/share/c34ff19887174caf883fc4d3ce972482

For this lab was to create the controllers 
to validate the routes and the test, i've tested the routes with
Rspec and everyone works well done but when i tested
the Request with Rspec i have had problem 
and how to resolve.

Based on your Routes defined in practice lab 2 Implement all the missing controllers.

Deliverables:

    REQUESTS SPECS that tests the functionality of the request and VALIDATES THE STRUCTURE OF THE JSON RESPONSE WITH JSON SCHEMA
    A demo video that PROVES YOU WROTE YOUR SPECS before your controllers
    Controllers: The missing controllers for all your routes. Make sure all your tests pass and response in JSON Format


Authentication Workaround:

To work around the user authentication do the following:

    Use faker to create a temporally user based on the request IP address and save the id of the user and the timestamp of when it was last time seen to the session hash.
    Different IP Addresses should result in different users
    Every time you receive a request check for the last time that users signed in and if it greater that 30 minutes delete the session and return unauthorized