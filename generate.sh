#!/bin/bash
files=(
    bluetooth
    com.android.adbd.certificate.override
    com.android.adservices.api.certificate.override
    com.android.adservices.certificate.override
    com.android.appsearch.certificate.override
    com.android.art.certificate.override
    com.android.bluetooth.certificate.override
    com.android.btservices.certificate.override
    com.android.cellbroadcast.certificate.override
    com.android.compos.certificate.override
    com.android.configinfrastructure.certificate.override
    com.android.connectivity.resources.certificate.override
    com.android.conscrypt.certificate.override
    com.android.devicelock.certificate.override
    com.android.extservices.certificate.override
    com.android.hardware.biometrics.face.virtual.override
    com.android.hardware.biometrics.fingerprint.virtual.override
    com.android.hardware.boot.certificate.override
    com.android.hardware.cas.override
    com.android.hardware.wifi.certificate.override
    com.android.healthfitness.certificate.override
    com.android.hotspot2.osulogin.certificate.override
    com.android.i18n.certificate.override
    com.android.ipsec.certificate.override
    com.android.media.certificate.override
    com.android.mediaprovider.certificate.override
    com.android.media.swcodec.certificate.override
    com.android.nearby.halfsheet.certificate.override
    com.android.networkstack.tethering.certificate.override
    com.android.neuralnetworks.certificate.override
    com.android.ondevicepersonalization.certificate.override
    com.android.os.statsd.certificate.override
    com.android.permission.certificate.override
    com.android.resolv.certificate.override
    com.android.rkpd.certificate.override
    com.android.runtime.certificate.override
    com.android.safetycenter.resources.certificate.override
    com.android.scheduling.certificate.override
    com.android.sdkext.certificate.override
    com.android.support.apexer.certificate.override
    com.android.telephony.certificate.override
    com.android.telephonymodules.certificate.override
    com.android.tethering.certificate.override
    com.android.tzdata.certificate.override
    com.android.uwb.certificate.override
    com.android.uwb.resources.certificate.override
    com.android.virt.certificate.override
    com.android.vndk.current.certificate.override
    com.android.wifi.certificate.override
    com.android.wifi.dialog.certificate.override
    com.android.wifi.resources.certificate.override
    com.google.pixel.vibrator.hal.certificate.override
    com.qorvo.uwb.certificate.override
    cts_uicc_2021
    media
    networkstack
    platform
    sdk_sandbox
    shared
    testkey
    verity
)

for file in "${files[@]}"
do
    bash <(sed "s/2048/${2:-2048}/" ../../../development/tools/make_key) \
        "$file" \
        '/C=US/ST=California/L=Mountain View/O=Android/OU=Android/CN=Android/emailAddress=android@android.com'
done

rm -rf .git
rm README.md
rm "$0"
