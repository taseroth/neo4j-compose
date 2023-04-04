FROM neo4j:5.6-enterprise
ARG NEO4J_dbms_security_keystore_path
ARG NEO4J_dbms_security_key_name
ARG NEO4J_dbms_security_keystore_password

RUN keytool -genseckey -keyalg aes -keysize 256 -storetype pkcs12 -keystore "${NEO4J_dbms_security_keystore_path}" -alias "${NEO4J_dbms_security_key_name}" -storepass "${NEO4J_dbms_security_keystore_password}"
RUN chown neo4j:neo4j "${NEO4J_dbms_security_keystore_path}"

