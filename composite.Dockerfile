FROM neo4j:5.6-enterprise
ARG KEYSTORE_PASSWORD
ARG KEY_NAME
ARG KEYSTORE_PATH

RUN keytool -genseckey -keyalg aes -keysize 256 -storetype pkcs12 -keystore "${KEYSTORE_PATH}" -alias "${KEY_NAME}" -storepass "${KEYSTORE_PASSWORD}"
RUN chown neo4j:neo4j "${KEYSTORE_PATH}"

