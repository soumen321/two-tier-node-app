# Two Tier Node Application

## Reference image from Private Repository

All three container are running in local environment

![js2](https://github.com/soumen321/two-tier-node-app/assets/2536037/359ba9ca-7cd4-48e3-bb60-d85f37c61304)

Docker image stored in private repo.
Run App on deployment server

![private repo1](https://github.com/soumen321/two-tier-node-app/assets/2536037/7c85df8d-67de-45eb-805a-4be35c34e9be)    ![public-repo](https://github.com/soumen321/two-tier-node-app/assets/2536037/7a0b0a39-4f4d-4c9e-ab9c-1543c32cf7fd) 

![compose](https://github.com/soumen321/two-tier-node-app/assets/2536037/9b317413-3e43-413c-9c33-3657e63dfcf2)


## Pull the image from Prive REpo and use in compose

Steps
  - Login Docker Hub
  - Create Repository
  - Build Image
      docker build -t ******/node-reminder-app:1.0 .
  - Login Docker Hub from CMD
      Username : ****
      Password : ****
  - Push Image in Docker Hub
      docker push ***/node-reminder-app:1.0

 ## Change in Compose file
    old : build .
    New : image : ***/node-reminder-app:${TAG}
    
   
 
 
