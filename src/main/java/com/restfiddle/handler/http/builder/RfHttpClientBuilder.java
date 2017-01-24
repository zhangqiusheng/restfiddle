/*
 * Copyright 2014 Ranjan Kumar
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */
package com.restfiddle.handler.http.builder;

import org.apache.http.client.config.RequestConfig;
import org.apache.http.client.methods.HttpUriRequest;
import org.apache.http.impl.client.CloseableHttpClient;
import org.apache.http.impl.client.HttpClientBuilder;
import org.apache.http.impl.client.HttpClients;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import com.restfiddle.dto.RfRequestDTO;
import com.restfiddle.handler.http.auth.DigestAuthHandler;

@Component
public class RfHttpClientBuilder {
    private static int TIME_OUT = 30000;

    @Autowired
    private DigestAuthHandler digestAuthHandler;

    public CloseableHttpClient build(RfRequestDTO requestDTO, HttpUriRequest request) {
        // add  timeout
        RequestConfig defaultRequestConfig = RequestConfig.custom()
                .setSocketTimeout(TIME_OUT)
                .setConnectTimeout(TIME_OUT)
                .setConnectionRequestTimeout(TIME_OUT)
                .build();

        HttpClientBuilder clientBuilder = HttpClients.custom();
        clientBuilder.setDefaultRequestConfig(defaultRequestConfig);

//        HttpClientBuilder clientBuilder = HttpClientBuilder.create();
//
//        //Set Digest Authentication
        digestAuthHandler.setCredentialsProvider(requestDTO, clientBuilder);

        CloseableHttpClient httpClient = clientBuilder.build();
        return httpClient;
    }
}
