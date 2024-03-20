.class public Lcom/android/settings/bluetooth/BluetoothPairingDialog;
.super Landroidx/fragment/app/FragmentActivity;
.source "BluetoothPairingDialog.java"


# static fields
.field private static final ACTION_AURACAST_SHARE_DEVICE_LIST:[Ljava/lang/String;

.field static final U_SHOW_AURACAST_SHARE_PHONE_LIST:[Ljava/lang/String;


# instance fields
.field private mAudioShare:Z

.field private mAuracastShare:Z

.field private mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

.field private mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAudioShare(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAudioShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAuracastShare(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAuracastShare:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothAudioShareController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothAudioShareController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothPairingController(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)Lcom/android/settings/bluetooth/BluetoothPairingController;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 3

    const-string v0, "lamds"

    const-string/jumbo v1, "udqlddq"

    const-string v2, "ctbgalo"

    .line 76
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->U_SHOW_AURACAST_SHARE_PHONE_LIST:[Ljava/lang/String;

    const-string v0, "Redmi Buds 5 Pro"

    .line 77
    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->ACTION_AURACAST_SHARE_DEVICE_LIST:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 59
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x0

    .line 82
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 84
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAudioShare:Z

    .line 85
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAuracastShare:Z

    .line 91
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog$1;-><init>(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private getHeadsetDeviceNum()I
    .locals 9

    const/4 v0, 0x0

    .line 342
    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    .line 343
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v1

    .line 344
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    .line 345
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    .line 346
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v2

    .line 348
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 351
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    const/4 v3, 0x0

    move v4, v3

    move v5, v4

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 352
    invoke-virtual {v1, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 353
    invoke-virtual {v7, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-direct {p0, v6}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isHeadsetDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v6

    if-eqz v6, :cond_0

    add-int/lit8 v5, v5, 0x1

    const/4 v6, 0x2

    .line 355
    invoke-virtual {v7, v6}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isActiveDevice(I)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v4, 0x1

    goto :goto_0

    :cond_1
    if-nez v4, :cond_2

    return v3

    :cond_2
    return v5
.end method

.method private isHeadsetDevice(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 5

    const-string v0, "enter support"

    const-string v1, "BluetoothPairingDialog"

    .line 367
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const-string p0, "can\'t find the device!"

    .line 369
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v0

    .line 372
    :cond_0
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object p1

    if-nez p1, :cond_1

    const/4 v2, -0x1

    goto :goto_0

    .line 373
    :cond_1
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v2

    .line 374
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "deviceClass is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v3, "check_device_by_a2dp"

    invoke-static {p0, v3}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    const-string/jumbo v3, "true"

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v3, 0x1

    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 376
    invoke-virtual {p1, v3}, Landroid/bluetooth/BluetoothClass;->doesClassMatch(I)Z

    move-result p0

    if-eqz p0, :cond_2

    const-string p0, "check device by a2dp connection!"

    .line 377
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    :cond_2
    const/16 p0, 0x404

    if-eq v2, p0, :cond_4

    const/16 p0, 0x418

    if-eq v2, p0, :cond_4

    const/16 p0, 0x408

    if-ne v2, p0, :cond_3

    goto :goto_1

    :cond_3
    return v0

    :cond_4
    :goto_1
    const-string/jumbo p0, "the device is headphones!"

    .line 383
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v3
.end method

.method private startAudioShareDialog(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "start audio share dialog!"

    const-string v1, "BluetoothPairingDialog"

    .line 290
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    .line 294
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "bluetooth.audioShare.fragment"

    .line 295
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    if-eqz p1, :cond_1

    .line 296
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareControllerSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 297
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 298
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const-string/jumbo p1, "set bluetoothFragment null"

    .line 300
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    if-nez p1, :cond_2

    .line 304
    new-instance p1, Lcom/android/settings/bluetooth/AudioShareDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;-><init>()V

    const-string/jumbo v2, "new AudioShareDialogFragment"

    .line 305
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 307
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->setAudioShareController(Lcom/android/settings/bluetooth/BluetoothAudioShareController;)V

    .line 308
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/AudioShareDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    if-nez v2, :cond_3

    .line 310
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string/jumbo p0, "show"

    .line 311
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method

.method private startAuracastShareDialog(Landroid/content/Intent;)V
    .locals 4

    const-string/jumbo v0, "start audio share dialog!"

    const-string v1, "BluetoothPairingDialog"

    .line 315
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/bluetooth/BluetoothAudioShareController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    .line 319
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "bluetooth.audioShare.fragment"

    .line 320
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    if-eqz p1, :cond_1

    .line 321
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareControllerSet()Z

    move-result v2

    if-nez v2, :cond_0

    .line 322
    invoke-virtual {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->isAudioShareDialogActivitySet()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 323
    :cond_0
    invoke-virtual {p1}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const-string/jumbo p1, "set bluetoothFragment null"

    .line 325
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    :cond_1
    if-nez p1, :cond_2

    .line 329
    new-instance p1, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;-><init>()V

    const-string/jumbo v2, "new AuracastShareDialogFragment"

    .line 330
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    const/4 v2, 0x1

    .line 332
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothAudioShareController:Lcom/android/settings/bluetooth/BluetoothAudioShareController;

    invoke-virtual {p1, v3}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->setAudioShareController(Lcom/android/settings/bluetooth/BluetoothAudioShareController;)V

    .line 333
    invoke-virtual {p1, p0}, Lcom/android/settings/bluetooth/AuracastShareDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    if-nez v2, :cond_3

    .line 335
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1, p0, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string/jumbo p0, "show"

    .line 336
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    return-void
.end method


# virtual methods
.method dismiss()V
    .locals 1

    .line 283
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_0
    return-void
.end method

.method isShowAuracastShare(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 11

    const-string/jumbo v0, "ro.product.device"

    .line 195
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/bluetooth/Utils;->convert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 197
    sget-object v2, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->U_SHOW_AURACAST_SHARE_PHONE_LIST:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    const/4 v6, 0x1

    if-ge v5, v3, :cond_1

    aget-object v7, v2, v5

    .line 198
    invoke-virtual {v7, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    move v1, v6

    goto :goto_1

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    move v1, v4

    :goto_1
    const-string v2, ""

    if-nez v1, :cond_3

    .line 204
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "support_le_audio"

    .line 205
    invoke-static {v1}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 206
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v1, v6

    goto :goto_2

    :cond_2
    move v1, v4

    :cond_3
    :goto_2
    const-string v0, "BluetoothPairingDialog"

    if-nez v1, :cond_4

    const-string p0, " is not support aurcast phone"

    .line 209
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    :cond_4
    if-nez p1, :cond_5

    return v4

    :cond_5
    const-string/jumbo v3, "ro.hardware"

    .line 215
    invoke-static {v3, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 217
    sget-object v3, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->ACTION_AURACAST_SHARE_DEVICE_LIST:[Ljava/lang/String;

    array-length v5, v3

    move v7, v4

    move v8, v7

    :goto_3
    if-ge v7, v5, :cond_7

    aget-object v9, v3, v7

    .line 218
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_6

    .line 219
    invoke-virtual {v10, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    move v8, v6

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    :cond_7
    if-nez v8, :cond_8

    .line 224
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "device:"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return v4

    .line 230
    :cond_8
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    const-string/jumbo v3, "qcom"

    .line 231
    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v5, " "

    if-eqz v3, :cond_b

    .line 232
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getBroadcastProfile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 233
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getBCProfile(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 234
    invoke-static {v3}, Lcom/android/settings/bluetooth/Utils;->getBroadcastStatus(Ljava/lang/Object;)I

    move-result v3

    const/16 v7, 0xe

    if-eq v3, v7, :cond_a

    const/16 v7, 0xc

    if-ne v3, v7, :cond_9

    goto :goto_4

    :cond_9
    move v7, v4

    goto :goto_5

    :cond_a
    :goto_4
    move v7, v6

    .line 236
    :goto_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "state "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getConnectedDevices(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    goto :goto_7

    .line 239
    :cond_b
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v3

    .line 240
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;

    move-result-object v3

    .line 241
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p0

    .line 242
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getLeAudioBroadcastAssistantProfile()Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;

    move-result-object p0

    if-eqz p0, :cond_c

    .line 244
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcastAssistant;->getConnectedDevices()Ljava/util/List;

    move-result-object p0

    goto :goto_6

    :cond_c
    const/4 p0, 0x0

    .line 246
    :goto_6
    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothLeBroadcast;->getAllBroadcastMetadata()Ljava/util/List;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 247
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_d

    move v7, v6

    goto :goto_7

    :cond_d
    move v7, v4

    .line 252
    :goto_7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, " platform "

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p0, :cond_e

    .line 254
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_8
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    .line 255
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "d "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8

    .line 258
    :cond_e
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v2

    if-eqz v2, :cond_f

    const/16 v3, 0x4000

    .line 259
    invoke-virtual {v2, v3}, Landroid/bluetooth/BluetoothClass;->hasService(I)Z

    move-result v3

    goto :goto_9

    :cond_f
    move v3, v4

    .line 260
    :goto_9
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 261
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "uuids "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v8, " bc "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p1, :cond_10

    .line 263
    array-length v2, p1

    move v5, v4

    :goto_a
    if-ge v5, v2, :cond_10

    aget-object v8, p1, v5

    .line 264
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uuid "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    add-int/lit8 v5, v5, 0x1

    goto :goto_a

    :cond_10
    if-eqz v1, :cond_11

    if-eqz v3, :cond_11

    if-eqz v7, :cond_11

    if-eqz p0, :cond_11

    .line 268
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x3

    if-ge p1, v0, :cond_11

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_11

    move v4, v6

    :cond_11
    return v4
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 10

    const-string/jumbo v0, "super.onCreate())"

    const-string v1, "BluetoothPairingDialog"

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo p1, "onCreate())"

    .line 117
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 122
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.bluetooth.device.extra.DEVICE"

    .line 123
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    if-nez v3, :cond_0

    .line 125
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    const-string/jumbo p0, "onCreate() finish)"

    .line 126
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 129
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->getHeadsetDeviceNum()I

    move-result v3

    .line 130
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 131
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mHeadsetDeviceNum = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string/jumbo v4, "ro.product.device"

    const-string v5, ""

    .line 132
    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 134
    invoke-virtual {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isShowAuracastShare(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    .line 136
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "disable_auracast_share_ui"

    invoke-static {v6, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 137
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v1, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "disable_audio_share_ui"

    invoke-static {v7, v8}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "true"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    const/4 v9, 0x1

    if-nez v7, :cond_1

    const-string/jumbo v7, "support_audio_share_ui"

    .line 140
    invoke-static {v7}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string/jumbo v4, "support_audio_share"

    .line 141
    invoke-static {v4, p1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "android.bluetooth.device.extra.PAIRING_VARIANT"

    const/high16 v7, -0x80000000

    .line 142
    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const/4 v7, 0x3

    if-ne v4, v7, :cond_1

    .line 144
    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->isHeadsetDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    if-ne v3, v9, :cond_1

    .line 145
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "miui_current_audio_share_state"

    invoke-static {v2, v3, p1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_1

    .line 146
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAudioShare:Z

    .line 147
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->startAudioShareDialog(Landroid/content/Intent;)V

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    if-eqz v5, :cond_2

    .line 149
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mAuracastShare:Z

    .line 150
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->startAuracastShareDialog(Landroid/content/Intent;)V

    goto :goto_1

    .line 152
    :cond_2
    new-instance v2, Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-direct {v2, v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingController;-><init>(Landroid/content/Intent;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    .line 159
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v2, "bluetooth.pairing.fragment"

    .line 160
    invoke-virtual {v0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    if-eqz v0, :cond_4

    .line 162
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingControllerSet()Z

    move-result v3

    if-nez v3, :cond_3

    .line 163
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->isPairingDialogActivitySet()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 164
    :cond_3
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const-string/jumbo v0, "set bluetoothFragment null"

    .line 166
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :cond_4
    if-nez v0, :cond_5

    .line 171
    new-instance v0, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;-><init>()V

    const-string/jumbo v3, "new BluetoothPairingDialogFragment"

    .line 172
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_5
    move p1, v9

    .line 174
    :goto_0
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mBluetoothPairingController:Lcom/android/settings/bluetooth/BluetoothPairingController;

    invoke-virtual {v0, v3}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingController(Lcom/android/settings/bluetooth/BluetoothPairingController;)V

    .line 175
    invoke-virtual {v0, p0}, Lcom/android/settings/bluetooth/BluetoothPairingDialogFragment;->setPairingDialogActivity(Lcom/android/settings/bluetooth/BluetoothPairingDialog;)V

    if-nez p1, :cond_6

    .line 180
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    const-string/jumbo p1, "show"

    .line 181
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.PAIRING_CANCEL"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 189
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 190
    iput-boolean v9, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    const-string p0, "exit onCreate()"

    .line 191
    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 273
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 274
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 275
    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiverRegistered:Z

    .line 276
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothPairingDialog;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 278
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "miui_device_enable_audio_share"

    const-string v1, ""

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
