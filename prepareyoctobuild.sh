#!/bin/sh

# Need this backported patch to be able to have epiphany as a second
# architecture. We can remove this when we update to a newer Yocto release.
(cd poky; git am ../developer-zone/0001-backport-sstate-do-not-add-TARGET_ARCH-to-pkgarch-fo.patch >/dev/null 2>&1 || git am --abort >/dev/null 2>&1)

# Create the build folder
source poky/oe-init-build-env build_parallella

# Copy configuration
cp ../local_conf/*.conf ./conf

echo "==========================="
echo "environment prepared"
echo " "
echo "be prepared for a long wait"
echo "try the command:"
echo "   bitbake hdmi-image"
echo " "
