FROM fluent/fluentd:latest

MAINTAINER waynemetcalfe@gmail.com

USER fluent

WORKDIR /home/fluent

ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH

RUN gem install fluent-plugin-parser fluent-plugin-elasticsearch

USER root
RUN [ ! -d /var/log/fluent ] && mkdir -p /var/log/fluent

CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT

