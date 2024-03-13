param (
    [string]$branch
)

$iotHubName = "myTestDemoHubjoihzsskii2rc"
$storage = "mytestdemojoihzsskii2rc"
$deviceId = "PC"
$message = "Testing this Message"
$rgName = "rg-patrik-cerna"
$containerName = "mytestdemoresults"

$DestinationPath = 'UserStory2and3\Test.json'

function SendAndTestMessageToDev {
    Write-Host "Sending Message to Test environment"
    
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --props '$.ct=application/json;$.ce=utf-8' --device-id $deviceId --data $message
    $DateTime = Get-Date
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    $DateTime = $DateTime.AddMinutes(1)
    $utcTime = $DateTime.ToUniversalTime()
    $year = $utcTime.Year.ToString("0000")
    $month = $utcTime.Month.ToString("00")
    $day = $utcTime.Day.ToString("00")
    $hour = $utcTime.Hour.ToString("00")
    $minute = $utcTime.Minute.ToString("00")

    $utcString = $year+$month+$day+$hour+$minute

    $blobName = "${iotHubName}01${utcString}\blob.json"
    Write-Host $blobName

    Write-Host "Waiting for Message to Be Sent"
    Start-Sleep -Seconds 150
    Write-Host "Testing if Message was Delivered Successfully"

    az storage blob download --container-name $containerName --name $blobName --file $destinationPath --account-name $storage
    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string -eq "" -or $null -eq $string){
        Write-Output "Test Unsuccessfull"
    }
    else {
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
    Clear-Content -Path $destinationPath
}
function SendAndTestMessageToTest {
    Write-Host "Sending Message to Test environment"
    
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --props '$.ct=application/json;$.ce=utf-8' --device-id $deviceId --data $message
    $DateTime = Get-Date
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    $DateTime = $DateTime.AddMinutes(1)
    $utcTime = $DateTime.ToUniversalTime()
    $year = $utcTime.Year.ToString("0000")
    $month = $utcTime.Month.ToString("00")
    $day = $utcTime.Day.ToString("00")
    $hour = $utcTime.Hour.ToString("00")
    $minute = $utcTime.Minute.ToString("00")

    $utcString = $year+$month+$day+$hour+$minute

    $blobName = "${iotHubName}01${utcString}\blob.json"
    Write-Host $blobName

    Write-Host "Waiting for Message to Be Sent"
    Start-Sleep -Seconds 150
    Write-Host "Testing if Message was Delivered Successfully"

    az storage blob download --container-name $containerName --name $blobName --file $destinationPath --account-name $storage
    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string -eq "" -or $null -eq $string){
        Write-Output "Test Unsuccessfull"
    }
    else {
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
    Clear-Content -Path $destinationPath
}
function SendAndTestMessageToMain {
    Write-Host "Sending Message to Test environment"
    
    #Sending Message
    az iot device send-d2c-message --hub-name $iotHubName --props '$.ct=application/json;$.ce=utf-8' --device-id $deviceId --data $message
    $DateTime = Get-Date
    #Testing if Message was delivered Successfully

    #Clearing file
    Clear-Content -Path $destinationPath

    #Downloading blob to file
    $DateTime = $DateTime.AddMinutes(1)
    $utcTime = $DateTime.ToUniversalTime()
    $year = $utcTime.Year.ToString("0000")
    $month = $utcTime.Month.ToString("00")
    $day = $utcTime.Day.ToString("00")
    $hour = $utcTime.Hour.ToString("00")
    $minute = $utcTime.Minute.ToString("00")

    $utcString = $year+$month+$day+$hour+$minute

    $blobName = "${iotHubName}01${utcString}\blob.json"
    Write-Host $blobName

    Write-Host "Waiting for Message to Be Sent"
    Start-Sleep -Seconds 150
    Write-Host "Testing if Message was Delivered Successfully"

    az storage blob download --container-name $containerName --name $blobName --file $destinationPath --account-name $storage
    #Getting the content of the blob from File
    $string = Get-Content -Path $destinationPath -Raw 

    #Checking if file contains the message
    if ($string -eq "" -or $null -eq $string){
        Write-Output "Test Unsuccessfull"
    }
    else {
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
    Clear-Content -Path $destinationPath
}


if ($branch -eq 'dev') {
    SendAndTestMessageToDev
}
elseif ($branch -eq 'test') {
    SendAndTestMessageToTest
}
elseif ($branch -eq 'main') {
    SendAndTestMessageToMain
}
else {
    Write-Host "Invalid branch parameter. Please use 'dev', 'test', or 'main'."
}