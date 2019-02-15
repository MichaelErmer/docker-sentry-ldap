FROM sentry:9

RUN mkdir -p /tmp/
RUN apt-get update && apt-get install -y libsasl2-dev python-dev libldap2-dev libssl-dev
RUN pip install sentry-ldap-auth

COPY sentry.conf.py /etc/sentry/