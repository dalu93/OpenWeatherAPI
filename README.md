# OpenWeatherAPI
A set of DTOs and protocols to receive datas from OpenWeather

# How to use it
Insert the dependency on your `Podfile`

    pod 'OpenWeatherAPI'

And run a `pod install`
After that, import the header file you need

    #import "OpenWeatherConnect.h"

and start calling **OpenWeatherAPI2.5**

# Action you can do
Retrieve the current weather information for a `NSString *cityName` and the complete forecast, always passing a `cityName`.
