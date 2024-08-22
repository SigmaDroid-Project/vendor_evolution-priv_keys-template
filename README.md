# lineage-priv_keys-template

# Usage

```bash
croot && git clone https://github.com/SigmaDroid-Project/vendor_lineage-priv_keys-template -b master vendor/lineage-priv/keys
```

```bash
cd vendor/lineage-priv/keys
```

```
./keys.sh
```

# Testing

Included `check_keys.py` script checks whether all apk/apex/capex files in the build out are signed with keys within its directory. Be aware that some targets are **expected** to be signed with vendor key, for example `com.android.apex.cts.shim.v1_prebuilt`.

```
$ ./check_keys.py ~/evolution/out/target/product/lynx
/home/ab/evolution/out/target/product/lynx/obj/ETC/com.android.apex.cts.shim.v1_prebuilt_intermediates/com.android.apex.cts.shim.apex is signed with an unknown key!
```
