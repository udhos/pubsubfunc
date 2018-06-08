# pubsubfunc

Test Data
=========

PubSub will deliver this JSON string to your function.

Base64 enconding of 'hello world func' is aGVsbG8gd29ybGQgZnVuYw0K

    {"data":"aGVsbG8gd29ybGQgZnVuYw0K"}

Deploy
======

    ACCOUNT=email PROJECT=projectname FUNCTION=budget TOPIC=topicname ./deploy.sh
