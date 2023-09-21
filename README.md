# Module 2 Validations

In this project it was done to be able to work with validations within the models that are the entities of the tables. From this, validations are created to avoid entering incorrect data.

Tweet Model:

    Add presence validation for a tweet body but only when is a tweet or a quote, when is a retweet it should be null
    Add 255 characters length validation 

Replies Model

    Add presence validation for the reply body
    Add 255 characters length validation 

User Model

    Add presence validation for email and username
    Add Uniqueness validation for email and username
    Add presence validation for password
    Add Length validation of 12 characters minimum
    Add Format validation At least 1 uppercase letter, at least 1 lowercase letter, at least 1 number and at least 1 special character like !@/*-+_
    if password field didn't exist before in your model add it with a new migration and apply the corresponding validations

Hashtag

    Add presence validation for a hashtag name

Likes

    Add uniqueness validation for tweet_id and user_id, a user can only like a tweet once

Follower

    Add uniqueness validation for follower_id and follwee_id, a user can only follows another user once


The most complicated part of the laboratory was reviewing each of the past entities or rather the relationships that work correctly in order to know, the complicated thing is not so much the validations or those that are not defined by oneself but it is verifying that each of the entities can be made so that they are not made again.