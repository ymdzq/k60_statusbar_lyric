.class public Lcom/android/settings/wifi/WifiProviderUtils;
.super Ljava/lang/Object;
.source "WifiProviderUtils.java"


# direct methods
.method public static getDeviceEncryptedContext(Landroid/content/Context;)Landroid/content/Context;
    .locals 1

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->isDeviceProtectedStorage()Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 19
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->createDeviceProtectedStorageContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method public static isFileBasedEncryptionEnabled()Z
    .locals 1

    .line 23
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    move-result v0

    return v0
.end method
