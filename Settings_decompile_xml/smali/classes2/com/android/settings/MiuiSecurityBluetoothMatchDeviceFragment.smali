.class public Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;
.super Landroidx/fragment/app/Fragment;
.source "MiuiSecurityBluetoothMatchDeviceFragment.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field bonding:Z

.field private callerPackageName:Ljava/lang/String;

.field isOld:Z

.field private mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

.field private mBluetoothDeviceDefault:Landroid/widget/ImageView;

.field private mBluetoothDeviceLight:Landroid/widget/ImageView;

.field private mBondStatusReceiver:Landroid/content/BroadcastReceiver;

.field private mCachedKeyBytes:[B

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mDeviceMajorClass:Ljava/lang/String;

.field private mDeviceMinorClass:Ljava/lang/String;

.field private mDeviceType:Ljava/lang/String;

.field private mInstructionText:Landroid/widget/TextView;

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field private mOkButton:Landroid/view/View;

.field private mProfileStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

.field private mSetKeyOnReady:Z

.field private mSettingStep:I

.field private mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

.field private mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBluetoothDeviceDefault(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mCachedKeyBytes:[B

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/bluetooth/BluetoothDevice;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceMajorClass(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceMinorClass(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceType(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLockPatternUtils(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Landroid/security/MiuiLockPatternUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSetKeyOnReady(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSetKeyOnReady:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnlockListener(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCachedKeyBytes(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;[B)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mCachedKeyBytes:[B

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSetKeyOnReady(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSetKeyOnReady:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSettingStep(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mcheckBtBond(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)Z
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->checkBtBond()Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgenerateKey(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)[B
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->generateKey()[B

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$msaveDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->saveDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msendSetUnlockState(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->sendSetUnlockState(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetKeyToDevice(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->setKeyToDevice()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mswitchToSucceedLayout(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToSucceedLayout()V

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 61
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const-string v0, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 62
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    .line 89
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSetKeyOnReady:Z

    .line 90
    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    const/4 v1, 0x0

    .line 92
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mCachedKeyBytes:[B

    const-string v2, ""

    .line 94
    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    .line 95
    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    .line 96
    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    .line 97
    iput-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->callerPackageName:Ljava/lang/String;

    const/4 v2, 0x1

    .line 100
    iput-boolean v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    .line 133
    new-instance v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$1;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .line 186
    new-instance v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$2;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mProfileStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    .line 372
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private checkBtBond()Z
    .locals 3

    .line 504
    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v2, 0xc

    if-eq v0, v2, :cond_1

    .line 505
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    const-string v0, "createbond start !!"

    const-string v1, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 506
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_0

    .line 508
    iput-boolean v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->bonding:Z

    const-string p0, "error createbond"

    .line 509
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return v2

    :cond_1
    return v1
.end method

.method private generateKey()[B
    .locals 1

    const/16 p0, 0x10

    new-array p0, p0, [B

    .line 626
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v0, p0}, Ljava/security/SecureRandom;->nextBytes([B)V

    return-object p0
.end method

.method private loadDeviceInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "com.xiaomi.bluetooth.UNLOCK_DEVICE"

    const-string v1, "com.xiaomi.bluetooth.UNLOCK_DEVICE_DIRECT"

    const-string v2, ""

    .line 353
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 354
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 355
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 357
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p1, v3, :cond_2

    :cond_1
    return-void

    :catch_0
    move-exception p1

    .line 361
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Device type failed "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "MiuiSecurityBluetoothMatchDeviceFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "\\,"

    .line 364
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 365
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    .line 366
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    const/4 v0, 0x3

    .line 367
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    const/4 v0, 0x1

    .line 368
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    :cond_3
    return-void
.end method

.method private reflectGetReferrer()Ljava/lang/String;
    .locals 2

    .line 328
    :try_start_0
    const-class v0, Landroid/app/Activity;

    const-string/jumbo v1, "mReferrer"

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    const/4 v1, 0x1

    .line 330
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 331
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 333
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    const-string p0, ""

    return-object p0
.end method

.method private saveDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 1

    const-string p0, ","

    if-eqz p6, :cond_0

    const-string p6, "com.xiaomi.bluetooth.UNLOCK_DEVICE_DIRECT"

    goto :goto_0

    :cond_0
    const-string p6, "com.xiaomi.bluetooth.UNLOCK_DEVICE"

    .line 179
    :goto_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p6, p0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    .line 182
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p2, "unlock save ScanResult failed "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiSecurityBluetoothMatchDeviceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method private sendSetUnlockState(I)V
    .locals 3

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.bluetooth.SET_UNLOCK_STATE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    const-string v2, "deviceAddress"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "deviceMinorClass"

    .line 341
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "callerPackageName"

    .line 342
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->callerPackageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string/jumbo v1, "state"

    .line 343
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string p1, "com.xiaomi.bluetooth"

    .line 344
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    return-void
.end method

.method private setKeyToDevice()V
    .locals 1

    .line 518
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->isReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 519
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->startSendKeyTask()V

    goto :goto_0

    .line 521
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    const/4 v0, 0x1

    .line 522
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSetKeyOnReady:Z

    :goto_0
    return-void
.end method

.method private startSendKeyTask()V
    .locals 1

    const/4 v0, 0x1

    .line 422
    iput v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    .line 423
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToTapConfirmingLayout()V

    .line 427
    :cond_0
    new-instance v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$4;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 463
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method private switchToSucceedLayout()V
    .locals 4

    .line 570
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v1, Lcom/android/settings/R$string;->bluetooth_unlock_device_matched_text:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 572
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 575
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 576
    new-instance v3, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v3, v2, v1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0x1f4

    .line 577
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 578
    invoke-virtual {v3, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 579
    new-instance v1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$5;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$5;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 591
    new-instance v1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$6;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$6;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 603
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 604
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mOkButton:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 607
    new-instance v0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$7;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private switchToTapConfirmingLayout()V
    .locals 12

    .line 529
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getHeight()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getWidth()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    .line 532
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 534
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_1

    const-string v2, "1"

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 535
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_unlock_confirm_device_text_for_mi_wear:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    :cond_1
    const-string v2, "MI Band 2"

    .line 536
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    const-string v2, "Mi Band 3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    if-eqz v1, :cond_3

    const-string v2, "Amazfit Watch"

    .line 538
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 539
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_unlock_confirm_device_text_for_huami_watch:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 541
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_unlock_confirm_device_text:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    goto :goto_2

    .line 537
    :cond_4
    :goto_1
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_unlock_confirm_device_text_for_miband2:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 544
    :goto_2
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 546
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 547
    div-int/lit8 v0, v0, 0x12

    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 548
    iput v0, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 549
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 551
    new-instance v0, Landroid/view/animation/ScaleAnimation;

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v5, 0x41100000    # 9.0f

    const/high16 v6, 0x3f800000    # 1.0f

    const/high16 v7, 0x41100000    # 9.0f

    const/4 v8, 0x1

    const/high16 v9, 0x3f000000    # 0.5f

    const/4 v10, 0x1

    const/high16 v11, 0x3f000000    # 0.5f

    move-object v3, v0

    invoke-direct/range {v3 .. v11}, Landroid/view/animation/ScaleAnimation;-><init>(FFFFIFIF)V

    const/4 v1, 0x1

    .line 554
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v3, -0x1

    .line 555
    invoke-virtual {v0, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 557
    new-instance v4, Landroid/view/animation/AlphaAnimation;

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    invoke-direct {v4, v5, v6}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 558
    invoke-virtual {v4, v1}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 559
    invoke-virtual {v4, v3}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 561
    new-instance v1, Landroid/view/animation/AnimationSet;

    invoke-direct {v1, v2}, Landroid/view/animation/AnimationSet;-><init>(Z)V

    const-wide/16 v2, 0x7d0

    .line 562
    invoke-virtual {v1, v2, v3}, Landroid/view/animation/AnimationSet;->setDuration(J)V

    .line 563
    invoke-virtual {v1, v4}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 564
    invoke-virtual {v1, v0}, Landroid/view/animation/AnimationSet;->addAnimation(Landroid/view/animation/Animation;)V

    .line 566
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    invoke-virtual {p0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void
.end method


# virtual methods
.method public bytesToHexString([B)Ljava/lang/String;
    .locals 5

    .line 117
    :try_start_0
    new-instance p0, Ljava/lang/StringBuilder;

    array-length v0, p1

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 119
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 120
    aget-byte v2, p1, v1

    and-int/lit16 v2, v2, 0xff

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 121
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    .line 122
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    :cond_0
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 126
    :cond_1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 128
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "error when bytesToHexString"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "MiuiSecurityBluetoothMatchDeviceFragment"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const-string p0, ""

    return-object p0
.end method

.method public doInBackgroundHandle()Ljava/lang/Boolean;
    .locals 3

    .line 468
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->generateKey()[B

    move-result-object v0

    .line 469
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v2}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->setLock(Ljava/lang/String;)Z

    move-result v1

    const-string v2, "MiuiSecurityBluetoothMatchDeviceFragment"

    if-eqz v1, :cond_1

    const-string v1, "doInBackgroundHandle disconnect"

    .line 470
    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 472
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 473
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 474
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 475
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 476
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "mi_band_hid_support"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 477
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 478
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 479
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    .line 482
    :cond_0
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    :cond_1
    const-string v0, "doInBackgroundHandle setlock failed disconnect"

    .line 484
    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 486
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0
.end method

.method public doPostHandle(Ljava/lang/Boolean;)V
    .locals 2

    .line 491
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 492
    iput p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    .line 493
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 494
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.miui.keyguard.bluetoothdeviceunlock"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 495
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToSucceedLayout()V

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    .line 498
    iput p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    :cond_1
    :goto_0
    return-void
.end method

.method public finish()V
    .locals 1

    .line 695
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 697
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isResumed()Z

    move-result p0

    if-eqz p0, :cond_1

    .line 698
    invoke-virtual {v0}, Landroid/app/Activity;->onBackPressed()V

    goto :goto_0

    .line 700
    :cond_1
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :goto_0
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 376
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_2

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 380
    iget-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->checkBtBond()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->setKeyToDevice()V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 9

    const-string v0, " "

    const-string v1, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 210
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    const/4 p1, 0x1

    .line 211
    invoke-virtual {p0, p1}, Landroidx/fragment/app/Fragment;->setRetainInstance(Z)V

    .line 213
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 216
    new-instance p1, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {p1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;-><init>(Landroid/app/Activity;Landroidx/fragment/app/Fragment;)V

    const/16 v2, 0x64

    .line 217
    invoke-virtual {p1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->setRequestCode(I)Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper$Builder;->build()Lcom/android/settings/password/ChooseLockSettingsHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 219
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, ":android:show_fragment_args"

    .line 220
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "device_address"

    if-eqz v2, :cond_0

    .line 222
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    .line 224
    :goto_0
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 225
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 227
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 228
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    :cond_2
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_9

    .line 232
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    .line 233
    invoke-virtual {p1, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 241
    :try_start_0
    new-instance p1, Landroid/content/Intent;

    const-string/jumbo v3, "miui.intent.action.SETUNLOCK"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "com.xiaomi.bluetooth"

    .line 242
    invoke-virtual {p1, v3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 243
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 244
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v3, "miui.bluetooth.SETUNLOCKTIME"

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    .line 245
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    .line 244
    invoke-static {p1, v3, v4}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 247
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "error "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    :goto_1
    new-instance p1, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;

    invoke-direct {p1, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$3;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;

    .line 285
    :try_start_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v5, 0x2

    invoke-virtual {p1, v3, v4, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 286
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "DEVICE_TYPE"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    .line 287
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "DEVICE_TYPE_MAJOR"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    .line 288
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v3, "DEVICE_TYPE_MINOR"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    .line 289
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->reflectGetReferrer()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->callerPackageName:Ljava/lang/String;

    .line 290
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get the device info = "

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v3, "com.xiaomi.bluetooth.DEVICE_MINOR_CLASS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 292
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 291
    invoke-static {p1, v3, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 293
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "com.xiaomi.bluetooth.SET_UNLOCK_CHANNEL"

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->callerPackageName:Ljava/lang/String;

    invoke-static {p1, v0, v3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 295
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 296
    invoke-direct {p0, v2}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->loadDeviceInfo(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    const/4 v8, 0x0

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->saveDevice(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    :catch_1
    move-exception p1

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "create failed "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 303
    :goto_2
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceType:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 304
    iput-boolean v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    .line 307
    :cond_4
    new-instance p1, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mProfileStateChangeCallback:Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;

    invoke-direct {p1, v1, v2, v3}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 308
    invoke-virtual {p1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 311
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 312
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "password_confirmed"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :cond_5
    if-eqz v0, :cond_7

    .line 316
    iget-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez p1, :cond_6

    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->checkBtBond()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 317
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->setKeyToDevice()V

    goto :goto_3

    .line 322
    :cond_7
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launch()Z

    :cond_8
    :goto_3
    return-void

    .line 235
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->finish()V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5

    .line 634
    sget v0, Lcom/android/settings/R$layout;->security_bluetooth_device_match_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 636
    sget v1, Lcom/android/settings/R$id;->instruction_text:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    .line 637
    sget v1, Lcom/android/settings/R$id;->bluetooth_device_default:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    .line 638
    sget v1, Lcom/android/settings/R$id;->bluetooth_device_confirmed:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    .line 639
    sget v1, Lcom/android/settings/R$id;->bluetooth_device_light:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    .line 640
    sget v1, Lcom/android/settings/R$id;->ok_button:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mOkButton:Landroid/view/View;

    .line 642
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiSecurityBluetoothMatchDeviceFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 644
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    const-string v3, "1"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "device info "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string v1, "2"

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const-string v1, "3"

    .line 649
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 650
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_03_bind:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 651
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_03_granted:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    :cond_1
    const-string v1, "4"

    .line 652
    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 653
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_04_bind:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 654
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_04_granted:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 647
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_01_bind:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 648
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->unlock_01_granted:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 657
    :cond_3
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MI Band 2"

    .line 658
    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    const-string v2, "Mi Band 3"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    goto :goto_1

    :cond_4
    if-eqz v1, :cond_6

    const-string v2, "Amazfit Watch"

    .line 661
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 662
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_default_for_huami_watch:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 663
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_confirmed_for_huami_watch:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 659
    :cond_5
    :goto_1
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_default_for_miband2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 660
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v2, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_confirmed_for_miband2:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 667
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mInstructionText:Landroid/widget/TextView;

    sget v2, Lcom/android/settings/R$string;->bluetooth_searching_for_devices:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(I)V

    .line 668
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBluetoothDeviceLight:Landroid/widget/ImageView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 670
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mOkButton:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 671
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mOkButton:Landroid/view/View;

    new-instance v2, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment$8;-><init>(Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 689
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    return-object v0
.end method

.method public onDestroy()V
    .locals 4

    const-string v0, "MiuiSecurityBluetoothMatchDeviceFragment"

    .line 403
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v1, :cond_1

    .line 404
    iget-boolean v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->isOld:Z

    if-nez v1, :cond_0

    const-string/jumbo v1, "onDestroy disconnect"

    .line 405
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 408
    :cond_0
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {v1}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    .line 411
    :cond_1
    iget-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v1, :cond_2

    .line 412
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v1, 0x0

    .line 413
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mBondStatusReceiver:Landroid/content/BroadcastReceiver;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 416
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error to destory "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :cond_2
    :goto_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onResume()V
    .locals 2

    .line 391
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 393
    iget v0, p0, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->mSettingStep:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 394
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToTapConfirmingLayout()V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 396
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothMatchDeviceFragment;->switchToSucceedLayout()V

    :cond_1
    :goto_0
    return-void
.end method
