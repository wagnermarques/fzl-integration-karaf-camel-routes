FROM adoptopenjdk:11-jre-hotspot

# Set environment variables
ENV KARAF_VERSION 4.4.3


# Install necessary packages
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    ffmpeg

# Install yt-dlp
RUN pip3 install --upgrade yt-dlp ffmpeg-python

# Install Apache Karaf
RUN curl -fSL https://downloads.apache.org/karaf/${KARAF_VERSION}/apache-karaf-${KARAF_VERSION}.tar.gz -o /tmp/karaf.tar.gz \
    && tar -xzf /tmp/karaf.tar.gz -C /opt \
    && rm /tmp/karaf.tar.gz

# Expose ports
EXPOSE 8181 8101

# Set the working directory
WORKDIR /opt/apache-karaf-${KARAF_VERSION}

# Start Apache Karaf
CMD ["bin/karaf", "server"]

