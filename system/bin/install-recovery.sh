#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery:9166848:da0a7804897a276b9a5d85f2958a96335998b025; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/platform/msm_sdcc.1/by-name/boot:8593408:d5b57d52907073f3d80bdd383dba46ec70b855ab EMMC:/dev/block/platform/msm_sdcc.1/by-name/recovery da0a7804897a276b9a5d85f2958a96335998b025 9166848 d5b57d52907073f3d80bdd383dba46ec70b855ab:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
