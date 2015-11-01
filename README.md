# OpenWeatherAPI
A set of DTOs and protocols to receive datas from OpenWeather

# What's new?
**1.1**: We edited the code to align the library to new `API key` introduced by **OpenWeatherMap.org**

# How to use it
Insert the dependency on your `Podfile`

    pod 'OpenWeatherAPI'

And run a `pod install`
After that, import the header file you need

    #import "OpenWeatherConnect.h"

Now you have to set the API key before you are using it as below

    [[OpenWeatherConnect sharedInstance]startWithAPIKey:@"YOUR-API-KEY"];

# Action you can do
Retrieve the current weather information for a `NSString *cityName` and the complete forecast, always passing a `cityName`.
