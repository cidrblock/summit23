podman create --name=ceos1 \
    --privileged \
    -e INTFTYPE=eth \
    -e ETBA=1 \
    -e SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 \
    -e CEOS=1 \
    -e EOS_PLATFORM=ceoslab \
    -e container=podman \
    -i -t ceos64:4.30.0F \
    /sbin/init \
    systemd.setenv=INTFTYPE=eth \
    systemd.setenv=MAPETH0=1 \
    systemd.setenv=MGMT_INTF=eth0 \
    systemd.setenv=ETBA=1 \
    systemd.setenv=SKIP_ZEROTOUCH_BARRIER_IN_SYSDBINIT=1 \
    systemd.setenv=CEOS=1 \
    systemd.setenv=EOS_PLATFORM=ceoslab \
    systemd.setenv=container=podman