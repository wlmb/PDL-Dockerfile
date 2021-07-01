#get image base debian
FROM debian:testing
RUN apt update;\
    apt -y upgrade; \
    apt -y install \
    less \
    cmake \
    cpanminus \
    freeglut3-dev \
    gfortran \
    gnuplot-qt \
    liblapack-dev \
    libcfitsio-dev \
    libfribidi-dev \
    libgd-dev \
    libgif-dev \
    libgsl-dev \
    libgtk-3-dev \
    libhdf4-dev \
    libhdf5-dev \
    libnetpbm10 \
    libpgplot-perl \
    libproj-dev \
    libterm-readline-perl-perl \
    libreadline-dev \
    libterm-readline-gnu-perl \
    libtiff5-dev \
    libxft-dev \
    libxi-dev \
    libxmu-dev \
    libxrender-dev \
    libopengl-image-perl \
    libopengl-perl \
    libfftw3-dev \
    make \
    netpbm \
    openssh-server \
    tmux \
    sharutils \
    xterm \
    patch \
    zip \
    csh \
    wget;
#Install some PDL DEPENDENCIES
RUN cpanm \
    Devel::CheckLib \
    File::Spec \
    File::Temp \
    Pod::Parser \
    Pod::Select \
    ExtUtils::MakeMaker \
    Test::Exception \
    Text::Balanced \
    Filter::Util::Call \
    Filter::Simple \
    Module::Compile \
    Inline \
    Inline::C \
    Data::Dumper \
    Convert::UU \
    Storable \
    Devel::REPL \
    Data::Dump::Streamer \
    Sys::SigAction \
    File::Map \
    Term::ReadKey \
    Archive::Extract \
    Alien::FFTW3 \
    Alien::HDF4 \
    Alien::Proj4;
#Install PDL and friends
RUN cpanm \
    PDL \
    PDL::FFTW3 \
    PDL::LinearAlgebra \
    PDL::IO::GD \
    PDL::IO::CSV \
    PDL::IO::DBI;
RUN cpanm -n \
    PDL::Graphics::Gnuplot
#Photonic
#RUN cpanm Photonic
CMD export DISPLAY=:0; bash
LABEL author= "Merlyn Jaqueline Juarez Gutierrez <merlynj@icf.unam.mx>, Wolf Luis Mochán Backal <mochan@icf.unam.mx>"
