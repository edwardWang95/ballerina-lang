// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/http;
import ballerina/log;

@http:ServiceConfig {
    basePath: "/say"
}
service<http:Service> hello bind { port: 9090 } {
    @http:ResourceConfig {
        methods: ["GET"],
        path: "sayHelloBBB"
    }
    sayHello(endpoint caller, http:Request req) {
        http:Response res = new;
        res.setPayload("Hello, World!");
        caller->respond(res) but { error e => log:printError(
                                                  "Error sending response", err = e) };
    }
    @http:ResourceConfig {
        methods: ["GET"],
        path: "sayHelloAA"
    }
    sayHelloAA(endpoint caller, http:Request req) {
        http:Response res = new;
        res.setPayload("Hello, World!");
        caller->respond(res) but { error e => log:printError(
                                                  "Error sending response", err = e) };
    }
}
