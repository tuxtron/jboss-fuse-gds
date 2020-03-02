/opt/jboss/jboss-full/bin/karaf & \
sleep 60 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install jndi/1.0.0 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-mybatis && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-quartz2 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-script-javascript && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-velocity/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install camel-jackson/2.15.1.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin features:install cxf-rs-security-cors/3.0.4.redhat-621084 && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.junit/junit-bom/5.5.2' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:org.junit.jupiter/junit-jupiter-api/5.6.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.google.code.gson/gson/2.8.6' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'osgi:install -s mvn:com.jayway.jsonpath/json-path/2.0.0' && \
/opt/jboss/jboss-full/bin/client -u admin -p admin 'shutdown -f' && \
sleep 10

