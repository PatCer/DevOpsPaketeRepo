param (
    [string]$environment
)

$iotHubName = "myTestDemoHubjoihzsskii2rc"
$storage = "mytestdemojoihzsskii2rc"
$deviceId = "PC"
$message = "Testing this Message"
$rgName = "rg-patrik-cerna"
$containerName = 'mytestdemoresultS'

$DestinationPath = 'UserStory2and3\Test.json'

function SendAndTestMessageToDev {
    Write-Host "Sending Message"
    
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message

    Write-Host "Testing if Message was Delivered Successfully"
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    az storage blob download --container-name $containerName --name '.\blob.json' --file $destinationPath 

    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string.Equals('') -or $string.Equals($null)){
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }

}
function SendAndTestMessageToTest {
    Write-Host "Sending Message to Test environment"
    
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message
    
    Write-Host "Testing if Message was Delivered Successfully"
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    az storage blob download --container-name $containerName --name '.\blob.json' --file $destinationPath 
    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string.Equals('') -or $string.Equals($null)){
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
}
function SendAndTestMessageToMain {
    Write-Host "Sending Message to Main environment"
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message

    Write-Host "Testing if Message was Delivered Successfully"
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    az storage blob download --container-name $containerName --name '/blob.json' --file $destinationPath --blob-url 'https://mytestdemojoihzsskii2rc.blob.core.windows.net/mytestdemoresults'

    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string.Equals('') -or $string.Equals($null)){
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
}


if ($environment -eq 'dev') {
    SendAndTestMessageToDev
}
elseif ($environment -eq 'test') {
    SendAndTestMessageToTest
}
elseif ($environment -eq 'main') {
    SendAndTestMessageToMain
}
else {
    Write-Host "Invalid environment parameter. Please use 'dev', 'test', or 'main'."
}