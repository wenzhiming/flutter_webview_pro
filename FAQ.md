# FAQ
frequently asked question

## 1.Couldn't find meta-data for provider with authority xxx.fileprovider
First, Copy the following code in `AndroidManifest.xml` in `android/Main` under the `<application>` tag

 ```
<provider
    android:name="androidx.core.content.FileProvider"
    android:authorities="${applicationId}.fileprovider"
    android:exported="false"
    android:grantUriPermissions="true">
    <meta-data
        android:name="android.support.FILE_PROVIDER_PATHS"
        android:resource="@xml/provider_paths" />
</provider>
```
(You can replace `${applicationId}` above to your package id ex: com.app.name in case it doesn't work)

Then, create the xml folder in res and create a file named: `provider_paths.xml` and then copy paste the code:

```
<?xml version="1.0" encoding="utf-8"?>
<paths xmlns:android="http://schemas.android.com/apk/res/android">
    <external-path
        name="external_files"
        path="." />
</paths>
```

After setting this up, Take photo will start working.
