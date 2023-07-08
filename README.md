![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
# WEATHER SWEATHER

## Overview 🟢

Welcome to Weather Sweater: Your Ultimate Road Trip App Planner!

Are you ready to embark on unforgettable road adventures, basking in the perfect weather conditions at every destination? Look no further than Weather Sweater.
I have developed this back-end app that not only displays the current weather but also provides detailed forecasts at your desired destinations.
Utilizing a service-oriented architecture, this application seamlessly integrates a front-end interface with our robust back-end system. As a back-end developer in this App, my role is exposing the API that satisfies the front-end team's requirements, ensuring smooth communication and delivering a seamless user experience.
<br>
To bring you the most accurate location data, I leverage the power of [Mapquest](https://developer.mapquest.com/documentation/)'s geocoding APIs. 
But that's not all! We also harness the comprehensive weather data from [OpenWeather](https://openweathermap.org/api) APIs, allowing us to present real-time and forecasted weather conditions.
<br>
With this Back-end App, I am using the Model-View-Controller (MVC) principles and the fundamental principles of Create, Read, Update, and Delete (CRUD) operations.
<br>
So, get ready to hit the open road with Weather Sweater by your side. Let us take the stress out of trip planning and ensure you have the best weather conditions throughout your journey. Trust us to provide you with accurate, reliable, and timely weather information.

### Application Landing Page
![Screen Shot 2023-07-08 at 4 54 27 AM](https://github.com/Oscar-Santos/weather_sweather/assets/83252572/76730250-1234-4e83-bf78-1f07380921df)

### User Registration
![Screen Shot 2023-07-08 at 4 56 17 AM](https://github.com/Oscar-Santos/weather_sweather/assets/83252572/b8cc4c4f-5922-497d-a812-334548a88f0b)

### Login
![Screen Shot 2023-07-08 at 4 57 06 AM](https://github.com/Oscar-Santos/weather_sweather/assets/83252572/0604ebea-37d4-4263-bd3b-0ade8f6efd86)




## To set up this app locally, please follow these steps:🟢
### Language and Framework needed:
- Ruby Version 2.7.2
- Rails Version 5.2.6

### Setup:
1. Clone this repository:
On your local machine open a terminal session and enter the following commands for SSH or HTTPS to clone the repositiory.

- using ssh key <br>
```shell
$ git clone git@github.com:Oscar-Santos/weather_sweather.git
```

- using https <br>
```shell
$ git clone https://github.com/Oscar-Santos/sweather_weather.git
```

Once cloned, you'll have a new local copy in the directory you ran the clone command in.

2. Change to the project directory:<br>
In terminal, use `$cd` to navigate to the backend Application project directory.

```shell
$ cd weather_sweather
```

3. Install required Gems utilizing Bundler: <br>
In terminal, use Bundler to install any missing Gems. If Bundler is not installed, first run the following command.

```shell
$ gem install bundler
```

If Bundler is already installed or after it has been installed, run the following command.

```shell
$ bundle install
```


If there are any errors, verify that bundler, Rails, and your ruby environment are correctly setup.

4. Database Migration<br>
Before using the web application you will need to setup your databases locally by running the following command

```shell
$ rails db: {:drop, :create, :migrate, :seed}
```
### API keys needed:
Visit
- https://developer.mapquest.com/documentation/geocoding-api/
- https://openweathermap.org/api/one-call-api

Sign up for an API key from each provider and add this in application.yml

## Framework🟢
<p>
  <img src="https://img.shields.io/badge/express.js-%23404d59.svg?style=for-the-badge&logo=express&logoColor=%2361DAFB" />
</p>

## Languages🟢
<p>
  <img src="https://img.shields.io/badge/JavaScript-ES2021-yellow?logo=javascript" />
  </br>
  <img src="https://img.shields.io/badge/CSS-3-blue?logo=css3" />
  </br>
  <img src="https://img.shields.io/badge/HTML-<VERSION>-<COLOR>?logo=html5" />
  </br>
</p>

## Tools🟢
<p>
  <img src="https://img.shields.io/badge/OpenAI-Integrated-brightgreen?logo=openai" /> 
  </br>
  <img src="https://img.shields.io/badge/Node.js-14.17.3-green?logo=node.js" /> 
  </br>
  <img src="https://img.shields.io/badge/Git-F05032.svg?&style=flaste&logo=git&logoColor=white" />
  </br>
  <img src="https://img.shields.io/badge/GitHub-181717.svg?&style=flaste&logo=github&logoColor=white" />
  </br>
</p>

## Endpoints provided:🟢


#### Retrieve weather for a city:
`GET /api/v1/forecast?location=denver,co`

*Response*

```json
{
    "data": {
        "id": null,
        "type": "forecast",
        "attributes": {
            "current_weather": {
                "datetime": "2022-06-07 22:32:53 -0700",
                "sunrise": "2022-06-07 04:32:14 -0700",
                "sunset": "2022-06-07 19:25:42 -0700",
                "temperature": 58.6,
                "feels_like": 57.16,
                "humidity": 64,
                "uvi": 0,
                "visibility": 10000,
                "conditions": "broken clouds",
                "icon": "04n"
            },
            "daily_weather": [
                {
                    "date": "2022-06-07",
                    "sunrise": "2022-06-07 04:32:14 -0700",
                    "sunset": "2022-06-07 19:25:42 -0700",
                    "max_temp": 80.56,
                    "min_temp": 55.71,
                    "conditions": "light rain",
                    "icon": "10d"
                },
                {
                    "date": "2022-06-08",
                    "sunrise": "2022-06-08 04:32:01 -0700",
                    "sunset": "2022-06-08 19:26:16 -0700",
                    "max_temp": 81.36,
                    "min_temp": 55.85,
                    "conditions": "scattered clouds",
                    "icon": "03d"
                },
                {
                    "date": "2022-06-09",
                    "sunrise": "2022-06-09 04:31:51 -0700",
                    "sunset": "2022-06-09 19:26:49 -0700",
                    "max_temp": 90.37,
                    "min_temp": 63.5,
                    "conditions": "overcast clouds",
                    "icon": "04d"
                },
                {
                    "date": "2022-06-10",
                    "sunrise": "2022-06-10 04:31:42 -0700",
                    "sunset": "2022-06-10 19:27:21 -0700",
                    "max_temp": 91.92,
                    "min_temp": 63.21,
                    "conditions": "scattered clouds",
                    "icon": "03d"
                },
                {
                    "date": "2022-06-11",
                    "sunrise": "2022-06-11 04:31:35 -0700",
                    "sunset": "2022-06-11 19:27:50 -0700",
                    "max_temp": 92.66,
                    "min_temp": 69.24,
                    "conditions": "clear sky",
                    "icon": "01d"
                }
            ],
            "hourly_weather": [
                {
                    "time": "22:00:00",
                    "temperature": 59.65,
                    "conditions": "light rain",
                    "icon": "10n"
                },
                {
                    "time": "23:00:00",
                    "temperature": 58.6,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "00:00:00",
                    "temperature": 58.62,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "01:00:00",
                    "temperature": 57.88,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "02:00:00",
                    "temperature": 57.29,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "03:00:00",
                    "temperature": 56.52,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "04:00:00",
                    "temperature": 55.85,
                    "conditions": "broken clouds",
                    "icon": "04n"
                },
                {
                    "time": "05:00:00",
                    "temperature": 56.12,
                    "conditions": "broken clouds",
                    "icon": "04d"
                }
            ]
        }
    }
}
```


#### Register as a user:
``POST /api/v1/users``

*Request*


Request body:
```json
{
  "email": "whatever@example.com",
  "password": "password",
  "password_confirmation": "password"
}
```


#### Sessions User Login:
``POST /api/v1/sessions``

*Response*
```json
{
    "data": {
      "type": "users",
      "id": "1",
      "attributes": {
          "email": "whatever@example.com",
          "api_key": "jgn983hy48thw9begh98h4539h4"
        }
    }
}
```


#### Create Road Trip:
``POST /api/v1/road_trip``

*Response*
```json
{
    "data": {
        "id": null,
        "type": "roadtrip",
        "attributes": {
            "start_city": "new york, ny",
            "end_city": "los angeles, ca",
            "travel_time": "40:16:00",
            "weather_at_eta": {
                "temperature": 91.33,
                "conditions": "few clouds"
            }
        }
    }
}
```
![-----------------------------------------------------](https://raw.githubusercontent.com/andreasbm/readme/master/assets/lines/rainbow.png)
