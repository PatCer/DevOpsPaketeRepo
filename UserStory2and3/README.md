## Documentation about the "Test.ps1" file
Before I start with the documentation, I would like to talk about the use of the script. The script should send messages to an IoT hub and store the message in a connected storage container. Afterwards, the sent message should be downloaded from the blob storage and checked if the file contains the correct message.
<br></br>Here is the link to the code: [Testing Messages Code](https://github.com/JannicHeidrich/DevOps/blob/main/UserStorys/Two_Three/testingMessages.ps1)<br></br>
Firstly, some variables are defined in the code, these variables are then assigned values such as the IoT Hub name, storage name, etc. and in addition a destination path is assigned, in which the downloaded blob file will be stored to a json file. 

    $iotHubName = "Name of the IoT Hub"
    $storageAccountName = "Name of the storage Account"
    $deviceId = "TestingDevice"
    $message = "Testing Message"
    $containerName = "Name of the container"

    $destinationPath = "UserStorys\Two_Three\test.json"

When this is done, the message can be sent and the json file can be cleaned up.

    az iot device send-d2c-message --hub-name $iotHubName --device-id $deviceId --data $message

    Clear-Content -Path $destinationPath

As soon as the sending process is complete, the download is executed and the blob is saved in the json file. In addition, the message is read from the json and stored in a variable.

    az storage blob download --account-name $storageAccountName --container-name $containerName --name ("$minutes.json") --file $destinationPath

    $string = Get-Content -Path $destinationPath -Raw

Now we come to the real test. The first thing that is checked here is if the string contains something, if this is the case, the messages are compared. If the message received is the same as the message sent, then the test is successful. If this is not the case, the test is unsuccessful.

    if ($string.Equals('') -or $string.Equals($null)){
        if ($string.Contains($message)) {
            Write-Output "Test Successfull"
        } else {
            Write-Output "Test Unsuccessfull"
        }
    }
