# Mule 4 Logstash #
Mule 4 Logging to Logstash

# README #

## Getting Started ##

### Prerequisites ###
  - Anypoint Studio 7
  - ELK up and running

### Running Mule App with Docker ELK Stack ###
1. Run Docker ELK Stack
  - see https://github.com/devarabad/docker-elk-7.6

2. Import application in Anypoint Studio

3. Run the application

### View Logs in Kibana ###
1. Open Kibana
  - http://localhost:5601

2. Go to Logs

3. Go to Settings and add a Log Index
  - Add the ff:
    - logstash-*
    - nprod-*
    - prod-*
```
Eg. 
  filebeat-*,kibana_sample_data_logs*,logstash-*,nprod-*,prod-*
```

4. Apply the settings

5. Go to Stream and Reload the Logs

### Send Mule App Logs to ELK ###
1. Call an enpoint
```
$ curl http://localhost:8081/api/books/1
```

2. Go to Kibana -> Logs -> Stream and reload the logs