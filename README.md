# Elvis-API: Personal Website API for www.elvisjiang.com
This repository contains the backend of a personal website API designed for www.elvisjiang.com. The API retrieves data from a MySQL database using FastAPI. The project is implemented using Python and FastAPI, along with Docker for containerization.

# Project Screenshot
![image](https://github.com/jiangc7/Elvis-API/assets/118397495/6ad7b3ef-c111-40a0-91e6-b9a025bf71ed)

## Contents  

- This is the back end side project
- would retrieve data from mysql  fastAPI www.elvisjiang/api/docs
- made by python and fastAPI docker
- Thanks




## Assumptions and design decisions

### 1. Route design


The site's routes are divided into two main endpoints: /listworks and /listgenre.


### 2. Page design

Provide information about the design of the website's pages and user interface here.

Routes
Here, you can find information about the available routes and their functionalities:

/listworks: Retrieve a list of works from the database.
/genre: Retrieve a list of genres from the database.
Please refer to the FastAPI documentation at www.elvisjiang/api/docs for detailed information on each route's input parameters and expected responses.

Acknowledgments
We'd like to express our gratitude to the following resources that contributed to this project:

### 3. how to run the API
1. using uvicorn
   $ uvicorn main:app --reload &
   $ ps -ef | grep uvicorn
2. using screen function
   $ sreen -S newwindow
   $ uvicorn main:app --reload
   Ctrl + a + d
   $ screen -d
3. systemctl run in backend
4. Docker system
   


## Thanks

[IconMonster](https://getbootstrap.com/)  
[GoogleImage](https://www.google.com/imghp)  
[W3School](https://www.w3schools.com/)  
[Markdown](https://markdown.com.cn/)  


Feel free to explore and utilize this API for your personal website needs. If you have any questions or suggestions, please don't hesitate to reach out.
