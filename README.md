# Electric bikeshare analysis

## Foreword
We are in the midst of an ecological transition. Mobility represents a significant part of our CO2 emissions, and as such, changing the way we move ourselves will play a crucial role in the transition. While public transportation can solve some problems for longer trips, it does not always provide the flexibility required for efficient day-to-day transportation. That's where 'light vehicles' like bikes come in. A city's bike share network represents an affordable, accessible, and sustainable alternative to traditional transportation methods. By using bike share programs, people can reduce their carbon footprint and promote healthier, more active lifestyles.

## Goals
### MVP
The goal of this project is to provide a tool that would enable to analyse bike sharing network. This would enable the owners of the network to take measures in order to increase its efficiency.

### Technical goals
This project will enable me to train on __SQL__ and __Power BI__. 

Also I want this tool to be connected to a database in real time. Indeed, to be able to analyze the network the owners need to see the network state at each time. This will enable me to test the connection between Power BI and __Google BigQuerry__.

## Execution steps

* Get Data  
* Build a DataBase 
* Create the Power BI dashboard 

### Get Data
I will use the open data provided by Google BigQuerry on the BikeShare service of San Francisco(name of the database: bigquery-public-data.san_francisco_bikeshare). You can also find more informations about this bikeshare service on the following link : https://www.sfmta.com/getting-around/bike/bike-share.

You will find the structure of the tables I used in the file [Get_data](./Get_data.md)


### Build a DataBase
The data given by Google BigQuerry contains a lot of redudencies and useless columns for our objectives. I will know build a more usable database. You can find the scripts used to do it in the folder [Create_db](./Create_db).

### Create the dashboard
Now, the tool has to be created. You can find the dashboards in the folder [Creation_dashboard](./Creation_dashboard). There are 2 dashboard, the first one is a tool that shows the state of the network at time t (available bikes,...). The second one shows 'overall' data about the rides (how much rides by age range,...). For bothe dashboard you can select the region you want to analyse.

<img src="/Images/Dash_1.png" alt="dashboard1" width="800">
<img src="/Images/Dash_2.png" alt="dashboard2" width="800">

## Limits
To improve this project I would try to use a real database. Google BigQuerry isn't a real database, and the free version do not allows to add new data. The use of a real database would allow a 'real time' analysis. This would also allow me to do less calculations into Power BI to increase the dashboards efficiencies. 

