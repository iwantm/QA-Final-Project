# QA-Final-Project

Contents
* Resources
* Breif
  * Requirements
  * Our Approach
* Architecture
  * CI Pipeline
  * Kuberenets Cluster
* Project Tracking
* Risk Assessment
* Testing
* Git
* Kubernetes
* Terraform
* Jenkins
* Front-End Design
* Issues
* Future Improvements


### Resources
[GitHub Repo](https://github.com/thomas-hennessy-work/QA-Final-Project)
[Jira Board](https://iwanmoreton.atlassian.net/jira/software/projects/DFP/boards/3)
[Risk Assessment](https://docs.google.com/spreadsheets/d/1FPQhilFS21OTPwLfwnTY9IsM0CSvjkmDsKdMlpmwgIE/edit?usp=sharing)

### Brief

#### Requirements
The minimum viable product (MVP) was to plan, design and implement a solution for 
automating the development workflows and deployments of the Pet Clinic Application
using supporting tools, methodologies and technologies that encapsulate all core modules
covered during training. We had to take into consideration:
* What tools will work best?
* How can a developer test their new features on an environment before merging their changes to the main branch?
* How can changes on the GitHub repository automatically build and deploy to testing and live environments?
* What are the running costs and monthly estimates? How could they be improved?

#### Our Approach
To fulfil these requirements, as a team we ran daily stand-ups to view our implementations and to 
keep track of our progress - we also kept and maintained a project tracking board to clearly show 
the effort that has been expended each day. We always held a Sprint Planning meeting at the beginning of our sprints 
to decide what is going to be brought from the Product Backlog to the Sprint Backlog. Furthermore, at the end of each 
sprint we held a Sprint Review meeting which is where the development team demonstrated what work had been done, 
the Product Owner discussed the Product Backlog as it stood and updated the Product Backlog where necessary and the 
whole group collaborated on what to do next for subsequent sprint. Finally we had a Sprint Retrospective 
where the team had an opportunity to inspect itself with regards to people, relationships, process and tools. 
We also identified what went well and any potential future improvements.



### Architecture

#### CI Pipeline
The image below shows our inital thoughts on the CI Pipeline.
##### Initial CI Pipeline
![initial-pipeline]()
The next image below represents our final continuous integration pipeline with the associated frameworks and services related to them.
It is a breakdown of the services and tools used to develop and deploy a well-tested, functioning program.
The services we have chosen within the pipeline provide the most efficient method of rapid development to be automated and tested.
##### Final CI Pipeline
![final-pipeline]()

#### Kuberenets Cluster
Our Azure Kubernetes Service (AKS) cluster consists of one Master node with 2 worker nodes. As presented in the diagram below.
![cluster]()

### Project Tracking
Before starting on the code of the application a Jira board 
was set up and used to track the progress of the project and to demonstrate our team workflow, from planning to testing and finally to completion.
Throughout this project we ran ... sprints. Below is a screenshot of ...
![jira1]()
You can find the full Jira Board [here](https://iwanmoreton.atlassian.net/jira/software/projects/DFP/boards/3)

### Risk Assessment
It is always important to carry out a risk assessment for any project as many different potential risks could arise.
Below is a screenshot of our detailed risk assessment. This is where we have outlined potential risks, their 
impacts, who is reponsible for it and mitigation techniques that we may need. We have also made revisits where necessary.
![riskassessment]()
The full document can be found [here](https://docs.google.com/spreadsheets/d/1FPQhilFS21OTPwLfwnTY9IsM0CSvjkmDsKdMlpmwgIE/edit?usp=sharing)

### Testing


### Git
We used Git as a version control system with GitHub as the provider (to store our code). Github has allowed us to checkout different branches of the project and focus on features separately. We would send pull requests to merge a branch into the developement branch once everything was functioning properly. 
The team decided to have at least 2 members approve the request before it had been merged. 
![pull-request]()
Usually we would delete our branches after they had been merged, but for the purpose of this project we have kept them to show that we were following the Feature-Branch model. Below is a screenshot of our branches.
![branches]()

We have also implemented GitHub's webhooks feature so our code can be polled by Jenkins' build triggers (automatic builds).

### Kubernetes


### Terraform
We used Terraform as the configuration management tool to set up the AKS cluster.

### Jenkins
We used Jenkins as the CI Server. This allowed us to deploy the application very easily by creating a Jenkins Pipeline job using a multi-stage pipeline script.
The GitHub webhook feature was particularly useful as whenever we commited a change to the source code 
GitHub informed Jenkins and would automatically start a build.
Our build logs are stored in Jenkins.
![jenkinslogs]()

### Front-End Design
Below is a screenshot of the main page
![homepage]()

### Future Improvements