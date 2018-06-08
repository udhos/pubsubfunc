# pubsubfunc

Test Data
=========

PubSub will deliver this JSON string to your function.

Base64 enconding of 'hello world func' is aGVsbG8gd29ybGQgZnVuYw0K

    {"data":"aGVsbG8gd29ybGQgZnVuYw0K"}

Deploy
======

    ACCOUNT=email PROJECT=projectname FUNCTION=budget TOPIC=topicname ./deploy.sh

PubSub Message
==============

https://cloud.google.com/pubsub/docs/reference/rest/v1/PubsubMessage

    {
      "data": string,
      "attributes": {
        string: string,
        ...
      },
      "messageId": string,
      "publishTime": string
    }

Budget Notification Format
==========================

https://cloud.google.com/billing/docs/how-to/budgets

    attributes:
    	billlingAccountId 	01D4EE-079462-DFD6EC
    	budgetId 		de72f49d-779b-4945-a127-4d6ce8def0bb
    	schemaVersion		1.0 
    
    data: (data is a base64-encoded JSON)
    	budgetDisplayName 	"My Personal Budget"
    	alertThresholdExceeded 	0.9
    	costAmount 		140.321
    	costIntervalStart 	"2018-02-01T08:00:00Z" 	
    	budgetAmount 		152.557
    	budgetAmountType 	"SPECIFIED_AMOUNT"
    	currencyCode 		"USD"

Test
====

    gcloud functions call budget --data "$(cat message.txt)"

