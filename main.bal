import ballerina/http;

listener http:Listener httpDefaultListener = http:getDefaultListener();

service /helloSample on httpDefaultListener {
    resource function get greeting() returns error|json|http:InternalServerError {
        do {
            return "hello there!!";
        } on fail error err {
            // handle error
            return error("unhandled error", err);
        }
    }
}
