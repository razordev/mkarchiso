MOUNT=$(call SUDO, mount -o loop $(1) $(2))
UMOUNT=$(call SUDO, umount $(1))
REMOUNT=(lsblk | grep $(2) && $(call SUDO, umount $(2))); $(call MOUNT, $(1), $(2))
MOUNT_IMG=$(call REMOUNT,-o loop $(1),$(2))
UMOUNT_IMG=$(call UMOUNT $(1), $(2))
