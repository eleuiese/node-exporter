FROM prom/node-exporter:latest
WORKDIR $HW_HOME/
ENV $HW_HOME/proc=/host/proc 
ENV $HW_HOME/sys=/host/sys
ENV $HW_HOME/sysfs=/rootfs
CMD        ["--path.procfs=/host/proc"]
CMD        ["--path.rootfs=/rootfs"]
CMD        ["--path.sysfs=/host/sys"]
CMD        ["--collector.filesystem.mount-points-exclude=^/(sys|proc|dev|host|etc)($$|/)"]
EXPOSE 9100

