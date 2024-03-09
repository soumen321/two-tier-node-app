# Two Tier Node Application

Daily Reminder Application

# What will do

![js-container-compose](https://github.com/soumen321/two-tier-node-app/assets/2536037/b21df327-6093-402c-a8c5-16ab402a0908)

## FrontEnd :
   UI : Add and Remove Reminder
   
   Middlerware : Nodejs for Business Logic i.e Add, List, Delete etc 

## BackEnd :

   Mongo DB : NoSQL DB , Use for data storage
   
   Mongo-Express : UI for MongoDB interaction
  

- Steps :
    - Pull Mongo db and Mongo Express image from Docker Hub
       # docker pull mongo and mongo-express
    - Create a Docker file of JS Application and build the file to create image
       # docker build -t reminder-multi-stage:v1.0 . --no-cache
    - Create a Compose file [compose.yml]
         - Service
              Web
              Mongo DB
              Mongo Express
         - Volume
              Persistent Data store for future reference
         - Network
              Declare a Network , container can communicate with the common network [ or container can use/create default network]
           
         # docker-compose -f reminder.yml up -d [detach mode]

         # docker-compose -f reminder.yml down [remove containers]
         

![image](https://github.com/soumen321/two-tier-node-app/assets/2536037/a960fbb8-4ffb-4878-8418-47a6f80d7e91)



