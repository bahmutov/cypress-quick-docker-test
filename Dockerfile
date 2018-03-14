FROM cypress/base:ubuntu16

WORKDIR /app
ADD . /app
# We are already ignoring node_modules folder
# so it should not be copied into Docker image
# RUN rm -rf node_modules
RUN npm install
RUN $(npm bin)/cypress verify
RUN $(npm bin)/cypress run
