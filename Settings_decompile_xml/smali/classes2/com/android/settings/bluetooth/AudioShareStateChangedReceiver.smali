.class public Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "AudioShareStateChangedReceiver.java"


# instance fields
.field private mAACDevice:Z

.field private mAADevice:Z

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDeviceMacAddress:Ljava/lang/String;

.field private mLDACDevice:Z

.field private mLHDCV1Device:Z

.field private mLHDCV2Device:Z

.field private mLHDCV3Device:Z

.field private mLHDCV5Device:Z

.field private mSBCLlDevice:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 25
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLDACDevice:Z

    .line 38
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV5Device:Z

    .line 39
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV3Device:Z

    .line 40
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV2Device:Z

    .line 41
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV1Device:Z

    .line 42
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAACDevice:Z

    .line 43
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAADevice:Z

    .line 44
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mSBCLlDevice:Z

    return-void
.end method

.method private addToWhiteList(Ljava/lang/String;)V
    .locals 4

    const-string v0, ""

    .line 290
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "addToWhiteList(): whitelist before add is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", current dev is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 293
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", prop is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "AudioShareStateChangedReceiver"

    .line 292
    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x5a

    if-lt v1, v3, :cond_0

    const/16 v1, 0x12

    .line 297
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 301
    :cond_0
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 302
    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    if-gez v1, :cond_1

    .line 303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ";"

    .line 305
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "addToWhiteList(): whitelist after add is "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string p0, "addToWhiteList(): the device has already in whitelist,do nothing"

    .line 309
    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private delFromWhiteList(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 315
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 316
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "AudioShareStateChangedReceiver"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 317
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 320
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 321
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 320
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    .line 325
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 326
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 327
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 328
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delFromWhiteList(): whitelist after del is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V
    .locals 5

    const-string v0, ""

    .line 333
    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 334
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x12

    const-string v4, "AudioShareStateChangedReceiver"

    if-ge v2, v3, :cond_0

    const-string p0, "delFromWhiteList(): no valid device in white list"

    .line 335
    invoke-static {v4, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 338
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "delFromWhiteList(): whitelist before del is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", current dev is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 339
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", prop is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 338
    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p0

    .line 343
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, p0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string p0, ";"

    .line 344
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0, v0}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "delFromWhiteList(): whitelist after del is "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v4, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private deleteSaveMacForLeAudio(Landroid/content/Context;)V
    .locals 7

    .line 398
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    const-string v1, "AudioShareStateChangedReceiver"

    if-eqz v0, :cond_0

    const-string p0, "deleteSaveMacForLeAudio: do nothing"

    .line 399
    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 403
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v2, "three_mac_for_ble_f"

    invoke-static {v0, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 405
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 406
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v4, 0x36

    rem-int/2addr v3, v4

    if-nez v3, :cond_3

    .line 408
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p0

    .line 409
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v4, :cond_1

    const-string p0, ""

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    if-eqz p0, :cond_2

    add-int/lit8 v5, p0, 0x36

    .line 411
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    if-ne v5, v6, :cond_2

    .line 412
    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 414
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3, p0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p0, v4

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v0, p0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 416
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "updateValue is"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    invoke-static {p1, v2, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_3
    return-void
.end method

.method private disconnectAndUnpair(Landroid/content/Context;)V
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    return-void

    .line 138
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect()V

    .line 139
    invoke-direct {p0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->setCodecDevice()V

    .line 140
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->unpairDevice(Landroid/content/Context;)V

    return-void
.end method

.method private setCodecDevice()V
    .locals 5

    const-string v0, "AudioShareStateChangedReceiver"

    const-string/jumbo v1, "setCodecDevice!"

    .line 234
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    .line 236
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v2, "LDAC"

    invoke-virtual {v1, v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLDACDevice:Z

    const-string/jumbo v0, "support_lhdc"

    const/4 v1, 0x1

    .line 237
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string/jumbo v0, "support_lhdc_offload"

    .line 238
    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v3, "LHDC V5"

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV5Device:Z

    .line 240
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v3, "LHDC_V3"

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV3Device:Z

    .line 241
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v3, "LHDC_V2"

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV2Device:Z

    .line 242
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v2, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v3, "LHDC_V1"

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV1Device:Z

    :cond_1
    const-string/jumbo v0, "support_a2dp_latency"

    const/4 v2, 0x0

    .line 244
    invoke-static {v0, v2}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 245
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v4, "aptX Adaptive"

    invoke-virtual {v0, v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAADevice:Z

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string/jumbo v3, "zmi_latency"

    invoke-virtual {v0, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getSpecificCodecStatus(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mSBCLlDevice:Z

    .line 249
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v2, "AAC"

    invoke-virtual {v0, v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isSupportedCodec(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAACDevice:Z

    return-void
.end method

.method private unpairDevice(Landroid/content/Context;)V
    .locals 11

    const-string/jumbo v0, "unpairDevice!"

    const-string v1, "AudioShareStateChangedReceiver"

    .line 144
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    const-string/jumbo v0, "vendor"

    .line 147
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "mediatek"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string/jumbo v3, "qcom"

    .line 148
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v3, 0x0

    .line 150
    invoke-static {p1, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v3

    .line 151
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->removeDevice(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 152
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV5Device:Z

    const/4 v4, 0x1

    const-string v5, "latency_val"

    const-string v6, "latency_pre"

    const/4 v7, 0x0

    const/4 v8, 0x2

    if-eqz v3, :cond_0

    .line 153
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 154
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC V5"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 155
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 157
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 158
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 159
    :cond_0
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV3Device:Z

    if-eqz v3, :cond_1

    .line 160
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V3"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 162
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 163
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 164
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 165
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 166
    :cond_1
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV2Device:Z

    if-eqz v3, :cond_2

    .line 167
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 168
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V2"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 169
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 170
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 171
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 172
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 173
    :cond_2
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV1Device:Z

    if-eqz v3, :cond_3

    .line 174
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 175
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v9, "LHDC_V1"

    invoke-virtual {v3, v4, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 176
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 177
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 178
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 179
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto/16 :goto_0

    .line 180
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLDACDevice:Z

    if-eqz v3, :cond_4

    .line 181
    invoke-direct {p0, v4}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 182
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    const-string v5, "LDAC"

    invoke-virtual {v3, v4, v5, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 183
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 184
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v4, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    goto :goto_0

    .line 185
    :cond_4
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAADevice:Z

    if-eqz v3, :cond_5

    .line 186
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "aptX Adaptive"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 187
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v9, v4, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 188
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 189
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 190
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "aptxadaptive_video"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 191
    :cond_5
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAACDevice:Z

    const-string/jumbo v4, "zmi_latency"

    if-eqz v3, :cond_6

    .line 192
    invoke-direct {p0, v7}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->writeCodecUserConfigureToProperty(Z)V

    .line 193
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v9, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setDialogChoice(Ljava/lang/String;I)V

    .line 194
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v9, "AAC"

    invoke-virtual {v3, v9, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 195
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object v10, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v10, v9, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSupportedCodec(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 196
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 197
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 198
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    goto :goto_0

    .line 199
    :cond_6
    iget-boolean v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mSBCLlDevice:Z

    if-eqz v3, :cond_7

    .line 200
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v6, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v5, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 202
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 206
    :cond_7
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUME"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 207
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "ABSOLUTEVOLUMEOPERATE"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    .line 208
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 209
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    goto :goto_1

    .line 211
    :cond_8
    iget-object v3, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "LEAUDIO"

    invoke-virtual {v3, v4, v8}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSpecificCodecStatus(Ljava/lang/String;I)V

    :goto_1
    if-eqz v2, :cond_9

    const-string/jumbo v0, "persist.bluetooth.a2dp.absolute.volume.whitelistall"

    .line 215
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    if-eqz v0, :cond_a

    const-string/jumbo v0, "persist.vendor.bt.a2dp.absolute.volume.whitelistall"

    .line 217
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->delFromWhiteListForAbsoluteVolume(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string/jumbo v0, "no work to do"

    .line 219
    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :goto_2
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->unpairLeAudio(Landroid/content/Context;)V

    .line 223
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->deleteSaveMacForLeAudio(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p0

    .line 226
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "delFromWhiteListForAbsoluteVolume failed "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private unpairLeAudio(Landroid/content/Context;)V
    .locals 4

    .line 352
    invoke-static {}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->isTbsProfileEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isDualModeDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 353
    iget-object p1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setLeAudioStatus(I)V

    .line 354
    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    return-void

    .line 360
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "three_mac_for_ble_f"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "AudioShareStateChangedReceiver"

    if-eqz p1, :cond_1

    .line 362
    iget-object v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 363
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v3, v1, 0x35

    if-lt v2, v3, :cond_1

    iget-object p0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    .line 364
    invoke-virtual {p1, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 365
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startIndex is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " value is "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 p0, v1, 0x12

    add-int/lit8 v2, v1, 0x23

    .line 366
    invoke-virtual {p1, p0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p0

    add-int/lit8 v1, v1, 0x24

    .line 367
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 368
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "leStr1 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " leStr2 is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string p0, "00:00:00:00:00:00"

    move-object p1, p0

    .line 374
    :goto_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 376
    invoke-virtual {v1, p0}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p0

    .line 377
    invoke-virtual {v1, p1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    const/16 v1, 0xb

    const/16 v2, 0xa

    if-eqz p0, :cond_3

    .line 378
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-eq v3, v2, :cond_3

    .line 379
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v3

    if-ne v3, v1, :cond_2

    .line 380
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_1

    .line 382
    :cond_2
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_1
    const-string/jumbo p0, "remove bond leStr1"

    .line 384
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    if-eqz p1, :cond_5

    .line 386
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-eq p0, v2, :cond_5

    .line 387
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result p0

    if-ne p0, v1, :cond_4

    .line 388
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    goto :goto_2

    .line 390
    :cond_4
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    :goto_2
    const-string/jumbo p0, "remove bond leStr2"

    .line 392
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_5
    return-void
.end method

.method private writeCodecUserConfigureToProperty(Z)V
    .locals 3

    const-string/jumbo v0, "vendor"

    .line 253
    invoke-static {v0}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mediatek"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 254
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV5Device:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV3Device:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV2Device:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV1Device:Z

    if-eqz v1, :cond_2

    :cond_0
    if-eqz v0, :cond_2

    const-string/jumbo v1, "persist.bluetooth.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_1

    .line 257
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_0

    .line 259
    :cond_1
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->addToWhiteList(Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    return-void

    .line 264
    :cond_3
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV5Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV3Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV2Device:Z

    if-nez v0, :cond_8

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLHDCV1Device:Z

    if-eqz v0, :cond_4

    goto :goto_2

    .line 273
    :cond_4
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mLDACDevice:Z

    if-eqz v0, :cond_5

    goto :goto_4

    .line 277
    :cond_5
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mAACDevice:Z

    if-eqz v0, :cond_b

    .line 278
    iget-object v0, p0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const-string/jumbo v0, "null"

    :goto_1
    const-string/jumbo v1, "persist.vendor.bt.a2dp.aac.whitelist"

    .line 279
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.aac.whitelists"

    if-eqz p1, :cond_7

    .line 282
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->addToWhiteList(Ljava/lang/String;)V

    goto :goto_4

    .line 284
    :cond_7
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_4

    :cond_8
    :goto_2
    if-eqz p1, :cond_9

    const-string/jumbo v0, "true"

    goto :goto_3

    :cond_9
    const-string v0, "false"

    :goto_3
    const-string/jumbo v1, "persist.vendor.bt.a2dp.lhdc.enabled"

    .line 265
    invoke-static {v1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "persist.vendor.bt.a2dp.lhdc.whitelist"

    if-ne p1, v2, :cond_a

    .line 269
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->delFromWhiteList(Ljava/lang/String;)V

    goto :goto_4

    .line 271
    :cond_a
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->addToWhiteList(Ljava/lang/String;)V

    :cond_b
    :goto_4
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 75
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 76
    invoke-virtual {v1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    const-string/jumbo v4, "ro.product.device"

    const-string v5, ""

    .line 77
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 78
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "disable_audio_share_ui"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string/jumbo v7, "true"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    xor-int/lit8 v6, v6, 0x1

    if-eqz v6, :cond_8

    const-string/jumbo v6, "support_audio_share_ui"

    .line 79
    invoke-static {v6}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    if-nez v3, :cond_0

    goto/16 :goto_0

    .line 82
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "receive the action: "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "AudioShareStateChangedReceiver"

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v4, 0x0

    move-object/from16 v7, p1

    .line 83
    invoke-static {v7, v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v4

    .line 84
    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    .line 85
    invoke-virtual {v4}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v4

    iput-object v4, v0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const-string v4, "MultiA2dp.ACTION.RESET_STATE_CHANGED"

    .line 86
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const/4 v8, 0x0

    const/4 v9, -0x1

    if-eqz v4, :cond_1

    const-string v2, "MultiA2dp.EXTRA.STATE"

    .line 87
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "IS_START_BY_DIALOG"

    .line 88
    invoke-virtual {v1, v4, v8}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v2, :cond_8

    if-eqz v1, :cond_8

    .line 91
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "audio share disconnected! audioSahreAddress = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->disconnectAndUnpair(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_1
    const-string v4, "com.android.settings.UNPAIR_DEVICE"

    .line 94
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    const-string v10, "accept broadcast exception!"

    const-wide/16 v11, 0x7530

    const-wide/16 v13, -0x1

    const-string v15, "CURRENT_TIME"

    const-string/jumbo v8, "miui_device_enable_audio_share"

    if-eqz v4, :cond_3

    const-string/jumbo v2, "need to unpair device!"

    .line 95
    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    invoke-virtual {v1, v15, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 98
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    cmp-long v1, v3, v11

    if-lez v1, :cond_2

    .line 99
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 102
    :cond_2
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->disconnectAndUnpair(Landroid/content/Context;)V

    goto/16 :goto_0

    :cond_3
    const-string v4, "com.android.settings.ACTION_UNPAIR_AURACAST_SHARE_DEVICE"

    .line 103
    invoke-static {v2, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 104
    invoke-virtual {v1, v15, v13, v14}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v1

    .line 105
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v1

    cmp-long v1, v4, v11

    if-lez v1, :cond_4

    .line 106
    invoke-static {v6, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 109
    :cond_4
    iget-object v0, v0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_5

    .line 110
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    goto/16 :goto_0

    .line 112
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "cached null "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    :cond_6
    const-string v3, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    .line 114
    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    const-string v2, "android.bluetooth.profile.extra.PREVIOUS_STATE"

    .line 115
    invoke-virtual {v1, v2, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v3, "android.bluetooth.profile.extra.STATE"

    .line 116
    invoke-virtual {v1, v3, v9}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    if-ne v2, v1, :cond_7

    const-string/jumbo v0, "prevState and nextState are same, break."

    .line 118
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 121
    :cond_7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "a2dp state = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-static {v2, v8}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 123
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device address:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "--"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string/jumbo v4, "miui_current_audio_share_state"

    const/4 v6, 0x0

    invoke-static {v3, v4, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v2, :cond_8

    .line 125
    iget-object v4, v0, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->mDeviceMacAddress:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    if-nez v1, :cond_8

    if-nez v3, :cond_8

    .line 128
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/bluetooth/AudioShareStateChangedReceiver;->disconnectAndUnpair(Landroid/content/Context;)V

    .line 129
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v8, v5}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_8
    :goto_0
    return-void
.end method
