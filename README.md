Here is the video of the Request Rspects
https://www.loom.com/share/c34ff19887174caf883fc4d3ce972482

For this Lab was on create routes and test for the creates routes

I've had problems to understan how to create the routes for rails,
the syntaxs is not the problem in what i've struggled is on
dedicate the time in how it should be presented and how is the
correct way to be implemented at the moment for the controller be created.

Then with the test of the routes was easier than i expected so i hope everything
is fine, but my logic was on create test to check everyone of the routes created so
was expecting the error that i wanted that that is there is missing the controller
so it fails as we wanted to fail.

For this practice lab you are going to define the routes for the features described below and define requests specs that matches those features.

NOTE: UNDER NO CIRCUMSTANCE YOU SHOULD IMPLEMENT THE LOGIC BEHIND THOSE SPECS, THOSE CONTROLLERS WILL BE CREATED AS PART OF PRACTICE LAB 3 ANY IMPLEMENTATION WILL RESULT IN THE ELIMINATION OF THIS EVALUATION
Features:

    Create tweet: Route a user would use to create a new tweet
    Update tweet: Route a user would use to update an existent tweet
    Like Tweet: Route a user would use to like an existent tweet
    Unlike Tweet: Route a user would use to unlike an existent tweet
    Retweet: Route a user would use to retweet an existent tweet
    Quote: Route a user would use to Quote an existent tweet
    Reply: Route a user would use to reply an existent tweet
    Bookmark: Route a user would use to bookmark an existent tweet
    User Tweets: Route a user would use to see any user (him/her self included) tweets, also this route should be paginated, meaning the results should be return in blocks
    User Tweets & Replies: Route a user would use to see any user (him/her self included) tweets AND replies, meaning replies can be returned as a non nested element, also this route should be paginated, meaning the results should be return in blocks
    Tweet Stats: Route a user would use to get the stats of how many times an existent tweet have been quoted, retweeted, replied, bookmarked or liked.

NOTE 2: FOR ALL THE ROUTES THAT ARE DEPENDENT OF THE EXISTENT OF A USER THINK THE OWNER OF THAT RESOURCE IS GOING TO BE CURRENT LOGGED IN USER
Deliverables:

    Routes defined in routes.rb and they should be visible by running bin/rails routes or http://localhost:3000/rails/info/routes
    Routes specs for the routes defined above
