### AnyKernel3 Ramdisk Mod Script
## osm0sis @ xda-developers

### AnyKernel setup
# global properties
properties() { '
kernel.string=Snowy Kernel by Chronix
kernel.compiler=AOSP Clang 21
kernel.made=Chronix
message.word=Thx for installing Snowy Kernel.
do.devicecheck=1
do.cleanup=1
device.name1=violet
supported.versions=15-17
'; } # end properties


### AnyKernel install
# boot shell variables
BLOCK=/dev/block/bootdevice/by-name/boot;
IS_SLOT_DEVICE=0;
RAMDISK_COMPRESSION=auto;
PATCH_VBMETA_FLAG=auto;

# import functions/variables and setup patching - see for reference (DO NOT REMOVE)
. tools/ak3-core.sh;

# boot install
dump_boot;

write_boot;
## end boot install
