.class public Lcom/android/settings/bluetooth/BluetoothPairingController;
.super Ljava/lang/Object;
.source "BluetoothPairingController.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment$BluetoothPairingDialogListener;


# instance fields
.field private final ENABLE_BT_BOOST:Ljava/lang/String;

.field private duration:I

.field mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceName:Ljava/lang/String;

.field private mFBoostParamVal:[I

.field private mInitiator:I

.field private mIsCoordinatedSetMember:Z

.field private mIsLateBonding:Z

.field private mIsLeAudio:Z

.field private mIsLeContactSharingEnabled:Z

.field private mPasskey:I

.field private mPasskeyFormatted:Ljava/lang/String;

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

.field private mPowerHandle:I

.field mType:I

.field private mUserInput:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/bluetooth/BluetoothPairingController;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3

    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string/jumbo v0, "persist.bluetooth.boostenable"

    .line 83
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->ENABLE_BT_BOOST:Ljava/lang/String;

    const v0, 0x414000

    const/4 v1, 0x1

    .line 84
    filled-new-array {v0, v1}, [I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mFBoostParamVal:[I

    const/4 v0, 0x0

    .line 85
    iput v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPowerHandle:I

    const/16 v2, 0xbb8

    .line 86
    iput v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->duration:I

    .line 110
    invoke-static {p2}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const-string p2, "android.bluetooth.device.extra.DEVICE"

    .line 111
    invoke-virtual {p1, p2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 114
    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-eqz v2, :cond_4

    if-eqz p2, :cond_3

    const-string p2, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v2, -0x80000000

    .line 120
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const-string p2, "android.bluetooth.device.extra.PAIRING_KEY"

    .line 121
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    const-string p2, "android.bluetooth.device.extra.PAIRING_INITIATOR"

    .line 123
    invoke-virtual {p1, p2, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mInitiator:I

    .line 124
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->getName(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    .line 125
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 126
    iget p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskey:I

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->formatKey(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    .line 127
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->isLateBonding(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLateBonding:Z

    .line 129
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 130
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    .line 132
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsCoordinatedSetMember:Z

    .line 133
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeAudio:Z

    .line 134
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeContactSharingEnabled:Z

    if-eqz p1, :cond_2

    .line 136
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isCoordinatedSetMemberDevice()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsCoordinatedSetMember:Z

    .line 138
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 139
    invoke-interface {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getProfileId()I

    move-result p2

    const/16 v0, 0x16

    if-ne p2, v0, :cond_0

    .line 140
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeAudio:Z

    goto :goto_0

    :cond_1
    const-string/jumbo p1, "settings_ui"

    const-string p2, "bt_le_audio_contact_sharing_enabled"

    .line 144
    invoke-static {p1, p2, v1}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeContactSharingEnabled:Z

    .line 146
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "BT_LE_AUDIO_CONTACT_SHARING_ENABLED is "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeContactSharingEnabled:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isCooridnatedSetMember "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsCoordinatedSetMember:Z

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "BTPairingController"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void

    .line 117
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not find BluetoothDevice"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 115
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "Could not obtain LocalBluetoothManager"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private boostStartPair()V
    .locals 4

    const-string v0, "BTPairingController"

    const-string/jumbo v1, "ro.hardware"

    const-string v2, ""

    .line 88
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "qcom"

    .line 89
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "boostStartPair perfLockAcquire"

    .line 93
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPowerHandle:I

    iget v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->duration:I

    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mFBoostParamVal:[I

    invoke-static {v1, v2, v3}, Lcom/android/settings/utils/MiuiFrameworkCompat$PowerHalMgr;->perfLockAcquire(II[I)I

    move-result v1

    iput v1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPowerHandle:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "boostStartPair fail"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private formatKey(I)Ljava/lang/String;
    .locals 1

    .line 494
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 500
    :cond_0
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    filled-new-array {p0}, [Ljava/lang/Object;

    move-result-object p0

    const-string p1, "%04d"

    invoke-static {p1, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 497
    :cond_1
    sget-object p0, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    const-string v0, "%06d"

    invoke-static {p0, v0, p1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private onPair(Ljava/lang/String;)V
    .locals 2

    const-string v0, "Pairing dialog accepted"

    const-string v1, "BTPairingController"

    .line 527
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch v0, :pswitch_data_0

    const-string p0, "Incorrect pairing type received"

    .line 549
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :pswitch_0
    const/16 p1, 0xbb8

    .line 537
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->stopFastConnectBleScan(I)V

    .line 538
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    .line 531
    :pswitch_1
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPin(Ljava/lang/String;)Z

    :goto_0
    :pswitch_2
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private stopFastConnectBleScan(I)V
    .locals 2

    .line 509
    :try_start_0
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "miui.bluetooth.FAST_CONNECT_STOP_BLE_SCAN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "FAST_CONNECT_STOP_BLE_SCAN_TIME"

    .line 510
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.xiaomi.bluetooth"

    .line 511
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 512
    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 513
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, p1}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    const-string p0, "BTPairingController"

    const-string/jumbo p1, "stop fastconnect le scan"

    .line 514
    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 516
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_0
    return-void
.end method


# virtual methods
.method public deviceEquals(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 0

    .line 580
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 213
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method public getContactSharingState()Z
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-eq v0, v2, :cond_0

    .line 287
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 288
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x408

    if-ne p0, v0, :cond_0

    return v1

    :cond_0
    return v3

    :cond_1
    return v1
.end method

.method public getDeviceMaxPasskeyLength()I
    .locals 1

    .line 384
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x6

    return p0

    :cond_1
    const/16 p0, 0x10

    return p0
.end method

.method public getDeviceName()Ljava/lang/String;
    .locals 0

    .line 208
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDeviceName:Ljava/lang/String;

    return-object p0
.end method

.method public getDeviceVariantMessageHintId()I
    .locals 1

    .line 365
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x7

    if-eq p0, v0, :cond_0

    const/4 p0, -0x1

    return p0

    .line 367
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_pin_values_hint_16_digits:I

    return p0

    .line 371
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_pin_values_hint:I

    return p0
.end method

.method public getDeviceVariantMessageId()I
    .locals 1

    .line 345
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v0, 0x7

    if-eq p0, v0, :cond_1

    const/4 p0, -0x1

    return p0

    .line 351
    :cond_0
    sget p0, Lcom/android/settings/R$string;->bluetooth_enter_passkey_other_device:I

    return p0

    .line 348
    :cond_1
    sget p0, Lcom/android/settings/R$string;->bluetooth_enter_pin_other_device:I

    return p0
.end method

.method public getDialogType()I
    .locals 0

    .line 184
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    packed-switch p0, :pswitch_data_0

    const/4 p0, -0x1

    return p0

    :pswitch_0
    const/4 p0, 0x2

    return p0

    :pswitch_1
    const/4 p0, 0x1

    return p0

    :pswitch_2
    const/4 p0, 0x0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getPairingContent()Ljava/lang/String;
    .locals 1

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->hasPairingContent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 470
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public hasPairingContent()Z
    .locals 1

    .line 450
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isContactSharingVisible()Z
    .locals 2

    .line 261
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isProfileReady()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 263
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isLeAudio()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->isLeContactSharingEnabled()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public isCoordinatedSetMemberDevice()Z
    .locals 0

    .line 223
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsCoordinatedSetMember:Z

    return p0
.end method

.method public isDisplayPairingKeyVariant()Z
    .locals 1

    .line 433
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    const/4 v0, 0x5

    if-eq p0, v0, :cond_0

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public isLateBonding()Z
    .locals 0

    .line 232
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLateBonding:Z

    return p0
.end method

.method isLeAudio()Z
    .locals 0

    .line 247
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeAudio:Z

    return p0
.end method

.method isLeContactSharingEnabled()Z
    .locals 0

    .line 252
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mIsLeContactSharingEnabled:Z

    return p0
.end method

.method public isPasskeyValid(Landroid/text/Editable;)Z
    .locals 4

    .line 334
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, v0, :cond_0

    move p0, v1

    goto :goto_0

    :cond_0
    move p0, v2

    .line 335
    :goto_0
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const/16 v3, 0x10

    if-lt v0, v3, :cond_1

    if-nez p0, :cond_3

    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result p1

    if-lez p1, :cond_2

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :cond_3
    :goto_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 0

    .line 242
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method mockPbapClientProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 585
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-void
.end method

.method protected notifyDialogDisplayed()V
    .locals 2

    .line 419
    iget v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 420
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/bluetooth/BluetoothDevice;->setPairingConfirmation(Z)Z

    goto :goto_0

    :cond_0
    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    .line 422
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mPasskeyFormatted:Ljava/lang/String;

    invoke-virtual {v0, p0}, Landroid/bluetooth/BluetoothDevice;->setPin(Ljava/lang/String;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method public onCancel()V
    .locals 2

    const-string v0, "BTPairingController"

    const-string v1, "Pairing dialog canceled"

    .line 558
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/settings/bluetooth/BluetoothPairingController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 569
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    if-eqz p2, :cond_0

    .line 156
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 158
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 p1, 0x2

    invoke-virtual {p0, p1}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    :goto_0
    return-void
.end method

.method public onDialogNegativeClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 1

    .line 174
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCancel()V

    return-void
.end method

.method public onDialogPositiveClick(Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;)V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->boostStartPair()V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;->getDialogType()I

    move-result p1

    if-nez p1, :cond_0

    .line 166
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 168
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onPair(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public pairingCodeIsAlphanumeric()Z
    .locals 1

    .line 404
    iget p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mType:I

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    return v0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setContactSharingState()V
    .locals 5

    .line 302
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    const/16 v1, 0x408

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eq v0, v4, :cond_2

    if-nez v0, :cond_0

    .line 303
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 305
    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/BluetoothUtils;->isDeviceClassMatched(Landroid/bluetooth/BluetoothDevice;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 319
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    if-ne v0, v4, :cond_1

    .line 320
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 322
    :cond_1
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 309
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 310
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 313
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    goto :goto_1

    .line 315
    :cond_3
    invoke-virtual {p0, v3, v2}, Lcom/android/settings/bluetooth/BluetoothPairingController;->onCheckedChanged(Landroid/widget/CompoundButton;Z)V

    :goto_1
    return-void
.end method

.method protected updateUserInput(Ljava/lang/String;)V
    .locals 0

    .line 483
    iput-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingController;->mUserInput:Ljava/lang/String;

    return-void
.end method
