This assumes you have done all the steps up to dealing with your solution from https://github.com/rafaelcaue/docker-ipc

Command to build the Docker image (sudo/admin rights may be required depending how docker was installed):   
`docker build -t ipc-submission-testagent .`

Command to run the Docker image:   
`docker run -it --rm --network=host ipc-submission-testagent`

This will open a Docker container terminal.   
To test, run the following commands:   
`java -jar test-agent/build/libs/test-agent.jar`   
`<?xml version="1.0" encoding="UTF-8"?><command clientid="UONTEST1"><initiate><seed>10000</seed><gptfile>example-gpts-release/logistics/gpt-t5-a5-p10.xml</gptfile></initiate></command>`

You should now see the expected messages in all 3 terminals without any errors.


## FAQ
1. TBD
