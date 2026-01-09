# To Build: docker build --no-cache -t pbui/cse-30872-sp26-assignments . < Dockerfile

FROM	    alpine:latest
LABEL	    maintainer="Peter Bui <pbui@nd.edu>"

RUN	    apk update

# Run-time dependencies
RUN	    apk add make python3 py3-tornado py3-requests py3-yaml py3-pip

# Linting
RUN	    pip3 install pylint cpplint
