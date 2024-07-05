# ROM source patches

color="\033[0;32m"
end="\033[0m"

echo -e "${color}Applying patches${end}"
sleep 1

# Remove pixel headers to avoid conflicts
rm -rf hardware/google/pixel/kernel_headers/Android.bp

# Remove hardware/lineage/compat to avoid conflicts
rm -rf hardware/lineage/compat/Android.bp

# Remove hardware/xiaomi (if exists)
#rm -rf hardware/xiaomi

# Clone hardware/xiaomi (clone latest)
git clone https://github.com/LineageOS/android_hardware_xiaomi -b lineage-21 hardware/xiaomi

# Kernel & Vendor Sources
git clone https://github.com/IT21037306/vendor_xiaomi_spes -b AOSP-QPR3 vendor/xiaomi/spes
git clone https://github.com/muralivijay/kernel_xiaomi_sm6225 kernel/xiaomi/sm6225

# Sepolicy fix for imsrcsd
echo -e "${color}Switch back to legacy imsrcsd sepolicy${end}"
rm -rf device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/imsservice.te
cp device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/legacy-ims/hal_rcsservice.te device/qcom/sepolicy_vndr/legacy-um/qva/vendor/bengal/ims/hal_rcsservice.te
