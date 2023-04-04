FROM neo4j:5.6-enterprise
ENV NEO4J_HOME="/var/lib/neo4j"
ARG KEYSTORE_PWD

RUN keytool -genseckey -keyalg aes -keysize 256 -storetype pkcs12 -keystore "${NEO4J_HOME}"/composite.pkcs12 -alias composite -storepass "${KEYSTORE_PWD}"
RUN chown neo4j:neo4j "${NEO4J_HOME}"/composite.pkcs12

