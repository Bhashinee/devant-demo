import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /greetings on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            return "Hello, Greetings!";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
