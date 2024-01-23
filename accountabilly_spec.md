Accountabilly

Interactions with the bot will be made through the `/billy` command.
Should be deployed on a serverless platform (e.g. Azure, GCP, AWS, Firebase) since they are free forever.

Bot features:
    Accountability lists:
        * show all accountability lists
        * add a list
        * remove a list

    Users:
        * Add a user to a list
        * Remove a user from a list
        * Get current accountable user for list
        * Set next accountable user for a list

DB structure:
```json
{
  "App": [
    "AccountableList1": {
        "accountableUserId": "<current_user_index>",
        "users": [
            "userId1",
            "userId2",
            ...
        ]
    },
    ...
] 
}
```

!! AWS Lambda has a limit of 512kb per file and 50MB per .zip archive.

TODO:
[X] Create a DB schema for the app
[] Create an AWS account
[] Create a simple function on AWS lambda to see how it works
    https://docs.aws.amazon.com/lambda/latest/dg/getting-started.html#getting-started-prerequisites
[] Read a tutorial on building a command-based slack-bot in AWS Lambda
    https://codeburst.io/building-a-slack-slash-bot-with-aws-lambda-python-d0d4a400de37
[] Complete Tutorial: Build a CRUD API with Lambda and DynamoDB
    https://docs.aws.amazon.com/apigateway/latest/developerguide/http-api-dynamo-db.html