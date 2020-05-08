##################################################################
## Licensed to the Apache Software Foundation (ASF) under one   ##
## or more contributor license agreements.  See the NOTICE file ##
## distributed with this work for additional information        ##
## regarding copyright ownership.  The ASF licenses this file   ##
## to you under the Apache License, Version 2.0 (the            ##
## "License"); you may not use this file except in compliance   ##
## with the License.  You may obtain a copy of the License at   ##
##                                                              ##
##   http://www.apache.org/licenses/LICENSE-2.0                 ##
##                                                              ##
## Unless required by applicable law or agreed to in writing,   ##
## software distributed under the License is distributed on an  ##
## "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY       ##
## KIND, either express or implied.  See the License for the    ##
## specific language governing permissions and limitations      ##
## under the License.                                           ##
##################################################################

# Source image
FROM alpine:latest

# Details about the image
LABEL version="1.0.0" \
        maintainer="Jarrett Bariel" \
        description="Build your own hello-world from alpine"

# Create the working directory
RUN mkdir -p /working

# Set the working dir (will change to that directory, so all actions happen there)
WORKDIR /working

# Set our runnable
# NOTE: This is above the addition of the file, as it will be one less layer to build as the file changes.
CMD ["./entry.sh"]

ENV SAY_HI="Hi,"

# Add in our file
COPY hello.sh entry.sh

# Make file runnable
RUN chmod +x entry.sh
