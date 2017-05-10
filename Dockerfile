FROM r-base:3.3.2

# Installation of SamTools 1.4.1

RUN wget https://sourceforge.net/projects/samtools/files/samtools/1.4.1/samtools-1.4.1.tar.bz2

RUN tar jxvf samtools-1.4.1.tar.bz2
RUN cd samtools-1.4.1
RUN make 
RUN make install
RUN cd 

RUN cp samtools-1.4.1/samtools $HOME/bin

