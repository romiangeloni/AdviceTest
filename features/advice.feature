Feature: Advice Slip Test 
    In order to get an advice
    As a microservice
    I would like to get

@randomadvice
Scenario: verify a random advice is returned
Given the advice service is running
When I request a random advice
Then the random advice is returned

@advice
Scenario: verify an advice is returned
Given the advice service is running
When I request an advice
Then the advice is returned

@advice
Scenario: verify an advice is not returned with a invalid advice ID
Given the advice service is running
When I request an advice with a invalid advice ID
Then I got an error invalid ID

@advice
Scenario: verify an advice is not returned with an advice ID that does not exist
Given the advice service is running
When I request an advice with an advice ID that does not exist
Then I got an error non existent ID

@searchadvice
Scenario: search an advice
Given the advice service is running
When I search an advice
Then the searched advice is returned

@searchadvice
Scenario: search a non existen advice
Given the advice service is running
When I search a non existent advice
Then the searched advice is not found