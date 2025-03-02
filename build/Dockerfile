FROM openjdk:21-jdk-slim

# Set environment variables
ENV KARAF_VERSION=4.4.7
ENV KARAF_HOME=/opt/karaf
ENV PATH=$KARAF_HOME/bin:$PATH


# Install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg


# #Download and extract Apache Karaf
RUN apt-get update && apt-get install -y wget \
    && wget https://archive.apache.org/dist/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz \
    && tar xzf apache-karaf-${KARAF_VERSION}.tar.gz -C /opt \
    && mv /opt/apache-karaf-${KARAF_VERSION} $KARAF_HOME \
    && rm apache-karaf-${KARAF_VERSION}.tar.gz \
    && apt-get remove -y wget \
    && apt-get clean


# Expose Karaf ports
EXPOSE 8101 8181 1099 44444


# Set the working directory
WORKDIR /opt/apache-karaf-${KARAF_VERSION}


# Set the entry point to Karaf
ENTRYPOINT ["karaf"]

# Optionally, you can run Karaf in the foreground
CMD ["run"]

