import ballerina/time;
import ballerina/io;

public function main() {
    time:Utc currentTime = time:utcNow();
    string timeString = time:utcToString(currentTime);
    io:println(timeString);
}