#!/usr/bin/env bash
#
# For Xamarin, change some constants located in some class of the app.
# In this sample, suppose we have an AppConstant.cs class in shared folder with follow content:
#
# namespace Core
# {
#     public class Util
#     {
#         public const string key = "https://production.com/api";
#     }
# }
# 
# Suppose in our project exists two branches: master and develop. 
# We can release app for production API in master branch and app for test API in develop branch. 
# We just need configure this behaviour with environment variable in each branch :)
# 
# The same thing can be perform with any class of the app.
#
# AN IMPORTANT THING: FOR THIS SAMPLE YOU NEED DECLARE APP_KEY ENVIRONMENT VARIABLE IN APP CENTER BUILD CONFIGURATION.

if [ ! -n "$APP_KEY" ]
then
    echo "You need define the APP_KEY variable in App Center"
    exit
fi

APP_CONSTANT_FILE=$APPCENTER_SOURCE_DIRECTORY/POC_BuildScript/POC_BuildScript/Util.cs

if [ -e "$APP_CONSTANT_FILE" ]
then
    echo "Updating key to $APP_KEY in AppConstant.cs"
    sed -i '' 's#key = "[a-z:./]*"#key = "'$APP_KEY'"#' $APP_CONSTANT_FILE

    echo "File content:"
    cat $APP_CONSTANT_FILE
fi