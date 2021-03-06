# Pet Clinic

## Introduction
Pets are an integral part of peoples lives. They provide such happiness and joy and help people in many ways. So the following project is based on a Pet Clinic application, which is a kind of Vets service. 

### Objective
The main outcome for this project is to be able to take the provided application and apply fixes to it, so that it functions appropriately and to also deploy it so that it can be interacted with. The base application has been given and the aim is to sort out testing and to use the tools and technologies developed during the course to effectively install the application for exhibition. For this we will use tools such as Docker, Kubernetes, Terraform, etc and we will be using Java as our preferred coding language choice.


## Proposal

### Poposed Tech Stack

The following is a proposal of the technologies/tools we will be using:

- Coding language (Front & Back-end) - Java 
- Version control – GitHub
- Cloud Platform – Azure 
- Databases – PostgreSQL
- Containerisation – Docker/Docker-compose 
- Configuration Management – Terraform 
- Orchestration – Kubernetes 
- CI/CD Pipeline – Jenkins 

## Architecture

### Risk assessment
Our group risk assessment can be viewed below. It is fairly thorough and strongly outlines possible points of failure or mis-happenings from events that could occur. However, steps are taken to mitigate any issues from cropping up and if they should come to be what the procedure for dealing them would be. As we progressed through the project, we came up with more revisions for the risks and so added them in. 

<a href="https://ibb.co/yknbBcC"><img src="https://i.ibb.co/DMDSgHF/Screenshot-37.png" alt="Screenshot-37" border="0"></a> 

### Project Tracking
For this project, tracking was very important as there is more than just one individual working on the project. So, there was a requirement for a certain level of interactivity and real-time updates so that team members knew clearly what needed to be done and what has been done.  This would increase productivity and efficiency. With that in mind, we chose to use Jira as our project tracking method. Due to its real-time updates on tasks and seamlessness. 

<a href="https://ibb.co/0D5TyRR"><img src="https://i.ibb.co/C1LgK33/Screenshot-42.png" alt="Screenshot-42" border="0"></a>

### ERD
Our Entity Relationship Diagram (shown below) is complex but succinctly covers the whole scale of the operation. There are 3 separate relationships occurring. One is to do with Users of the application and how it the assigns them a role and ID. This is unique to each User. The second is a relationship exhibiting which Vets there are and what specialisms they hold. These two variables are then also assigned keys for ease of computing. The final and most complex part is the relationship between Types of pets, their Owners and the Visit dates. All of this information comes together to for the application. 

![](https://github.com/NatTerpilowska/PetClinic/raw/main/spring-petclinic-rest/petclinic-ermodel.png)

### Testing Analysis 
For this project we have only applied the basic testing using `ng test`. However, for future projects it would be wise to incorporate other forms of testing. For example, non-functional performance & robustness testing to test speed responsiveness and reliability of the application. For something as sensitive as this, possibly even application of security and capacity testing to ward off attackers attempting to steal information, etc. The testing was running on a local vm in headless mode but we couldn't implement it with the jenkins pipeline due to time constraints.

<a href="https://ibb.co/QdSrpY3"><img src="https://i.ibb.co/vYyZVL6/Screenshot-39.png" alt="Screenshot-39" border="0"></a>

the above picture shows why the specific test failed and below shows the test result. 

<a href="https://ibb.co/drntD0s"><img src="https://i.ibb.co/1LHMTfY/Screenshot-40.png" alt="Screenshot-40" border="0" /></a>

## Infrastructure

### Jenkins CI/CD Pipeline
The CI/CD Pipeline is undertaken by Jenkins. It takes all of the instructions that input in scripts an executes them to replicate our application build. This also has a webhook built in so that every time the VCS GitHub is updated a new version of the application is built and tested so that we can observe its functionality. Like in previous projects our Pipeline follows a fairly accepted route as is detailed below: 

- Firstly all Declarations are made
- Installation of all basic requirements
- Testing is undertaken 
- The front and back-end services are containerised (images built)
- They are pushed forward to Docker-hub 
- Terraform initialises configuration settings and other requirements
- Kubernetes finally orchestrates the application where it is ready to access and use

The Pipeline diagram can be seen below: 
![](https://i.imgur.com/g39ztGh.png)

### Swarm Diagram
As can be seen below, our “Swarm or Interactions Diagram” shows how the application works with regards to who it functions when accessed by a User. It is fairly simple. A User attempts to access the application, as they do this they are met by the NGINX Reverse Proxy that re-directs them to The Static Web-Server. The Rest API, communicates with the User and the web-server to attain information that will be stored or is already stored in the database. From there whether the information needs to be saved for new users or brought up for existing users will depend on the users themselves. 

![](https://i.imgur.com/O3GN00D.png)

## Development

## Front-End
The front-end of the application has been very nicely built and shows an advanced design that even includes pictures and buttons to press.

![Screenshot of SPring Petclinic Angular](https://cloud.githubusercontent.com/assets/838318/23263243/f4509c4a-f9dd-11e6-951b-69d0ef72d8bd.png)

## Back-End
The Back End essentially connects the database to the front-end, enables editing the database and displays the results in the Front End side of the application. It also saves the results in our database.
We've deployed it the same way we deployed front end - First we've put it in containers and then we've orchestrated them with Terraform configured Kubernetes enviroment.

## Future Implementations
It would be very useful to increase the coverage of the tests.
From the deployment point of view - the pipeline could run a little bit faster.

## Acknowlegments
We'd all like to say thank you to Harry Volker who patiently guided us on the journey of deployment of this application - it wouldn't happen without his amazing support.

## Authors
MF Roy, Chaz Bhavra, Matt Vile, Nat Terpilowska

## Version
Version 1.0.0
