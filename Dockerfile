FROM telegraf:0.13

COPY telegraf.toml /telegraf.conf

ADD run.sh /run.sh

# this will be overwritten in docker-compose to pass in mounted host stats
ENV HOST_PROC='/proc' HOST_SYS='/sys'

CMD ["/run.sh"]
