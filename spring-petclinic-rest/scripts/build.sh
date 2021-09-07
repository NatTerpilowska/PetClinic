#docker-compose up -d --build 
docker run -d -p 80:8080 --name petclinicfront spring-petclinic-angular:latest 
docker run -d -p 9966:9966 -n back springcommunity/spring-petclinic-rest
