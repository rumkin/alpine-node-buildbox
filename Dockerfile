FROM mhart/alpine-node:latest

# install basic building dependencies
RUN apk add --update make gcc g++ python

# Install kerberos encryption lib
RUN apk add krb5-libs krb5-dev
