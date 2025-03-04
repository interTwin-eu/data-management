FROM almalinux:9.5

RUN dnf -y install epel-release

RUN dnf -y install gcc oidc-agent rclone openssl-devel fetch-crl rclone python3-pip fts-rest-client jq

ADD https://repository.egi.eu/sw/production/cas/1/current/repo-files/lcg-trustanchors.repo /etc/yum.repos.d/

RUN dnf -y install ca_policy_igtf-classic

RUN echo 'export SSL_CERT_DIR=/etc/grid-security/certificates/' >> ~/.bashrc
RUN source ~/.bashrc

WORKDIR /root/home/
COPY rclone.conf /root/.config/rclone/rclone.conf
COPY --chmod=770 GET-token-demo .
COPY --chmod=770 oidc-public_client-conf.sh .
COPY --chmod=770 ildg.sh .
COPY list-of-fts-commands.txt .
COPY test-file .
