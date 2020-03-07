Twitter Clone:

Description:
Clone few functionalities of twitter using self referential db architecture

Steps:
1. Clone the repo
2. rake db:setup or rake db:create && rake db:migrate && rake db:seed
3. Go to localhost:3000 and login with email: sharat1@gmail.com and password: password
4. Initiallly no tweets will show up since you arent following any users. Go to list all users and and start following all users.
5. Go to homepage again and you will see the tweets populated. 
6. You can change the order chronologically by clicking asc or desc.

Further improvements:

1. Building v1 api endpoints with jwt token integration
2. Test cases needs to be added
3. User creation currently is only provided via v1 endpoint. Bring functionalit to UI
