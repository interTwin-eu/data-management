FROM rucio/rucio-clients:release-36.3.0

USER root

RUN curl https://ca.cern.ch/cafiles/certificates/CERN%20Root%20Certification%20Authority%202.crt -o /etc/pki/ca-trust/source/anchors/cern_root_ca.crt &&\
    curl https://ca.cern.ch/cafiles/certificates/CERN%20Grid%20Certification%20Authority\(1\).crt -o /etc/pki/ca-trust/source/anchors/cern_grid_ca_1.crt &&\ 
    curl https://ca.cern.ch/cafiles/certificates/CERN%20Certification%20Authority.crt -o /etc/pki/ca-trust/source/anchors/cern_ca.crt &&\
    curl https://ca.cern.ch/cafiles/certificates/CERN%20Certification%20Authority\(1\).crt -o /etc/pki/ca-trust/source/anchors/cern_ca_1.crt &&\
    curl https://ca.cern.ch/cafiles/certificates/CERN%20Certification%20Authority\(2\).crt -o /etc/pki/ca-trust/source/anchors/cern_ca_2.crt &&\
    curl http://signet-ca.ijs.si/pub/cacert/signet02cacert.crt -o /etc/pki/ca-trust/source/anchors/signet_ca.crt &&\
    curl "https://plgrid-ca.pl/publicweb/webdist/certdist?cmd=cacert&issuer=CN%3dPolish+Grid+CA+2019%2cO%3dGRID%2cC%3dPL&level=0" -o /etc/pki/ca-trust/source/anchors/polish_grid_ca_2019.crt &&\
    curl https://doku.tid.dfn.de/_media/de:dfnpki:ca:tcs-server-certificate-ca-bundle.tar -o geant-bundle.tar &&\
    tar xf geant-bundle.tar &&\
    cp tcs-server-certificate-ca-bundle/*.pem /etc/pki/ca-trust/source/anchors/ &&\
    rm -rf geant-bundle.tar tcs-server-certificate-ca-bundle &&\
    curl "https://crt.sh/?d=2475254968" -o /etc/pki/ca-trust/source/anchors/GEANT_eScience_CA_4.pem &&\
    curl https://www.tbs-x509.com/USERTrustRSACertificationAuthority.crt -o /etc/pki/ca-trust/source/anchors/USERTrustRSACertificationAuthority.crt &&\
    update-ca-trust

