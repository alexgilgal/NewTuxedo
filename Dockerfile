FROM r-base:3.3.2

RUN apt-get update \
   && apt-get install -y --no-install-recommends  \
   libcurl4-openssl-dev \
   libssl-dev \
   libxml2-dev
   
RUN apt-get update \
    && apt-get install -y \
        build-essential \
        bzip2 \
        curl \
        zlib1g-dev \
        libncurses5-dev

# Installation of SamTools 1.4.1

RUN wget https://sourceforge.net/projects/samtools/files/samtools/1.4.1/samtools-1.4.1.tar.bz2

RUN tar jxvf samtools-1.4.1.tar.bz2
RUN cd samtools-1.4.1
RUN ./configure
RUN make 
RUN make install
RUN cd 

RUN cp samtools-1.4.1/samtools $HOME/bin

