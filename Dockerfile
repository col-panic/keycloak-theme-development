FROM jboss/keycloak:8.0.1
USER jboss
RUN sed -i -e 's/<staticMaxAge>2592000<\/staticMaxAge>/<staticMaxAge>-1<\/staticMaxAge>/' $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i -e 's/<cacheThemes>true<\/cacheThemes>/<cacheThemes>false<\/cacheThemes>/' $JBOSS_HOME/standalone/configuration/standalone.xml
RUN sed -i -e 's/<cacheTemplates>true<\/cacheTemplates>/<cacheTemplates>false<\/cacheTemplates>/' $JBOSS_HOME/standalone/configuration/standalone.xml
