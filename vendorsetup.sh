# Clone/Fetch Upstream Device Dependencies

# Dependencies
echo "cloning dependencies"
git clone -b lineage-18.1 https://github.com/LineageOS/android_external_sony_boringssl-compat external/sony/boringssl-compat
git clone -b lineage-18.1 https://github.com/LineageOS/android_external_bson external/bson
git clone -b lineage-18.1 https://github.com/LineageOS/android_system_qcom system/qcom
git clone -b lineage-18.1 https://github.com/LineageOS/android_hardware_motorola hardware/motorola
echo ""

# Clang
echo "Cloning Clang Kernel"
git clone --depth=1 -b master https://github.com/kdrag0n/proton-clang prebuilts/clang/host/linux-x86/proton-clang
echo ""

# DtbTools lineage
echo "cloning dtbTools lineage"
mkdir -p out/host/linux-x86/bin
cd out/host/linux-x86/bin
wget -c https://github.com/krasCGQ/scripts/raw/master/prebuilts/bin/dtbToolLineage
chmod +777 dtbToolLineage
cd -
echo ""

# HAL's
echo "Cloning Lineage Hals"
rm -rf hardware/qcom-caf/msm8996/audio
git clone https://github.com/LineageOS/android_hardware_qcom_audio --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/audio
rm -rf hardware/qcom-caf/msm8996/media
git clone https://github.com/LineageOS/android_hardware_qcom_media --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/media
rm -rf hardware/qcom-caf/msm8996/display
git clone https://github.com/LineageOS/android_hardware_qcom_display --single-branch -b lineage-18.1-caf-msm8996 hardware/qcom-caf/msm8996/display
echo ""

# Kernel
echo "Cloning Kernel and Push KernelSU"
git clone -b eleven https://github.com/Vhmit/kernel_motorola_aljeter kernel/motorola/aljeter
cd kernel/motorola/aljeter
rm -rf KernelSU && curl -LSs "https://raw.githubusercontent.com/tiann/KernelSU/main/kernel/setup.sh" | bash -
cd -
echo ""
