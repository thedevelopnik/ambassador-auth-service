FROM mhart/alpine-node:8

MAINTAINER Datawire <dev@datawire.io>
LABEL PROJECT_REPO_URL         = "git@github.com:thedevelopnik/ambassador-auth-service.git" \
      PROJECT_REPO_BROWSER_URL = "https://github.com/thedevelopnik/ambassador-auth-service" \
      DESCRIPTION              = "Example auth service for Emissary-Ingress" \
      VENDOR                   = "Datawire, Inc." \
      VENDOR_URL               = "https://datawire.io/"

WORKDIR /src
ADD . .
RUN npm install

EXPOSE 3000
CMD ["npm", "start"]
