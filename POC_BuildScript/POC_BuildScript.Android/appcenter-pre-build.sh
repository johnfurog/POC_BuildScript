if [ ! -n "$APP_KEY" ]
then
    echo "You need define the APP_KEY variable in App Center"
    exit
fi

APP_CONSTANT_FILE=$APPCENTER_SOURCE_DIRECTORY/POC_BuildScript/POC_BuildScript/Util.cs

if [ -e "$APP_CONSTANT_FILE" ]
then

	echo "Updating key to $ENDPOINT in AppConstant.cs"
    sed -i '' 'sendpoint = [a-zA-Z0-9.]*endpoint = '$ENDPOINT'' $APP_CONSTANT_FILE

    echo "Updating key to $APP_KEY in AppConstant.cs"
    sed -i '' 's#key = "[a-z:./]*"#key = "'$APP_KEY'"#' $APP_CONSTANT_FILE
	
	    

    echo "File content:"
    cat $APP_CONSTANT_FILE
fi