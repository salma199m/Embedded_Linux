## creating sd.img 

## 1. create a sd.img of size 1GB:
```
dd if=/dev/zero of=sd.img bs=1M count=1024
```

## 2. configuring partitions
```
cfdisk sd.img
```
SD card divided into two partitions: 
first: FAT partition of (size) 200 Mb and (partition Name) boot and (Partition Format) FAT 16 and it (Bootable)

second: EXT4 partition of 800 Mb and (partition Name) rootfs and (Partition Format) Linux and it (not Bootable)

## 3. use loop to emulate sd.image as a storage device (SD card)
```
sudo losetup -f --partscan sd.img
```
![Screenshot from 2024-01-11 04-13-14](https://github.com/salma199m/Embedded_Linux/assets/93713490/616914c9-9915-4287-aa75-33deac6f2762)

## 4. formatting partitions
for FAT partition:
```
sudo mkfs.vfat -F 16 -n boot /dev/loop16p1
```
for ext4 partition:
```
sudo mkfs.ext4 -L rootfs /dev/loop16p2
```

