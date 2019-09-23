ARG BASE_IMAGE
FROM ${BASE_IMAGE}

MAINTAINER Liam Bindle <liam.bindle@gmail.com>

ARG MPI_SPEC
RUN bash -c "source source /usr/local/Modules/init/bash && . ${SPACK_ROOT}/share/spack/setup-env.sh && spack install -y --no-checksum ${MPI_SPEC}"