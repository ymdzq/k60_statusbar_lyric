.class public Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiSecurityBluetoothDeviceInfoFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

.field private mBluetoothDeviceDefault:Landroid/widget/ImageView;

.field private mDeviceMajorClass:Ljava/lang/String;

.field private mDeviceMinorClass:Ljava/lang/String;

.field private mDeviceStatus:Landroid/widget/TextView;

.field private mDeviceType:Ljava/lang/String;

.field private mIsConnected:Z

.field private mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field mSetUnlockLevelTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

.field private mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBluetoothDeviceConfirmed(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/ImageView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDeviceStatus(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Landroid/widget/TextView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceStatus:Landroid/widget/TextView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsConnected(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnlockListener(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmUnlockProfile(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)Lmiui/bluetooth/ble/MiBleUnlockProfile;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmIsConnected(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetTAG()Ljava/lang/String;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 43
    const-class v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 41
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    const/4 v0, 0x0

    .line 48
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 v1, 0x0

    .line 53
    iput-boolean v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mIsConnected:Z

    const-string v1, ""

    .line 55
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    .line 56
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    .line 57
    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceType:Ljava/lang/String;

    .line 66
    new-instance v1, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$1;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockListener:Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;

    .line 103
    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mSetUnlockLevelTask:Landroid/os/AsyncTask;

    return-void
.end method

.method private cancelRuningSetUnlockLevelTask()V
    .locals 2

    .line 237
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mSetUnlockLevelTask:Landroid/os/AsyncTask;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mSetUnlockLevelTask:Landroid/os/AsyncTask;

    .line 238
    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->PENDING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_1

    .line 239
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mSetUnlockLevelTask:Landroid/os/AsyncTask;

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    :cond_1
    return-void
.end method

.method private loadDeviceInfo(Ljava/lang/String;)V
    .locals 4

    const-string v0, "com.xiaomi.bluetooth.UNLOCK_DEVICE"

    const-string v1, "com.xiaomi.bluetooth.UNLOCK_DEVICE_DIRECT"

    const-string v2, ""

    .line 142
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 143
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v3, -0x1

    if-nez v0, :cond_0

    invoke-virtual {v2, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 144
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 145
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

    .line 149
    sget-object v0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get Device type failed "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    const-string p1, "\\,"

    .line 152
    invoke-virtual {v2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 153
    array-length v0, p1

    const/4 v1, 0x4

    if-ne v0, v1, :cond_3

    const/4 v0, 0x2

    .line 154
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    const/4 v0, 0x3

    .line 155
    aget-object v0, p1, v0

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    const/4 v0, 0x1

    .line 156
    aget-object p1, p1, v0

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceType:Ljava/lang/String;

    :cond_3
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 0

    .line 107
    const-class p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;

    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 264
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    const/16 p3, 0x64

    if-ne p1, p3, :cond_0

    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 267
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    new-instance p2, Landroid/content/Intent;

    const-string p3, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    invoke-direct {p2, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 268
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothUnlockEnabled(Z)V

    .line 269
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    const-string p2, ""

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothAddressToUnlock(Ljava/lang/String;)V

    .line 270
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothNameToUnlock(Ljava/lang/String;)V

    .line 271
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->setBluetoothKeyToUnlock(Ljava/lang/String;)V

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finish()V

    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 112
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 114
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 116
    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object p1

    .line 117
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 118
    new-instance v0, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    new-instance v2, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$2;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-direct {v0, v1, p1, v2}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    iput-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .line 164
    sget v0, Lcom/android/settings/R$layout;->security_bluetooth_device_info:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 165
    sget v1, Lcom/android/settings/R$id;->delete_this_device:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 166
    sget v2, Lcom/android/settings/R$id;->device_name_value_id:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 167
    sget v3, Lcom/android/settings/R$id;->bluetooth_device_default:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    .line 168
    sget v3, Lcom/android/settings/R$id;->bluetooth_device_confirmed:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    .line 169
    iget-object v3, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v3}, Landroid/security/MiuiLockPatternUtils;->getBluetoothNameToUnlock()Ljava/lang/String;

    move-result-object v3

    .line 170
    iget-object v4, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    invoke-virtual {v4}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    move-result-object v4

    .line 171
    invoke-direct {p0, v4}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->loadDeviceInfo(Ljava/lang/String;)V

    .line 172
    sget-object v5, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "device info "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    const-string v7, "1"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 175
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMajorClass:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    const-string v5, "2"

    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    :cond_0
    const-string v5, "3"

    .line 180
    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 181
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->unlock_03_ungranted:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->unlock_03_granted:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto/16 :goto_2

    :cond_1
    const-string v5, "4"

    .line 183
    iget-object v6, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceMinorClass:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 184
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->unlock_04_granted:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 185
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 178
    :cond_2
    :goto_0
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->unlock_01_ungranted:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 179
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->unlock_01_granted:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 188
    :cond_3
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 189
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    :cond_4
    const-string v5, "MI Band 2"

    .line 191
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v5, "Mi Band 3"

    .line 192
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    :cond_5
    if-eqz v3, :cond_7

    const-string v5, "Amazfit Watch"

    .line 195
    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 196
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_default_for_huami_watch:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 197
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_confirmed_for_huami_watch:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_2

    .line 193
    :cond_6
    :goto_1
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceDefault:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_default_for_miband2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 194
    iget-object v5, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mBluetoothDeviceConfirmed:Landroid/widget/ImageView;

    sget v6, Lcom/android/settings/R$drawable;->bluetooth_device_unlock_confirmed_for_miband2:I

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 201
    :cond_7
    :goto_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_8

    const-string v3, "%s"

    .line 202
    filled-new-array {v4}, [Ljava/lang/Object;

    move-result-object v4

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_3

    :cond_8
    const-string v5, "%s(%s)"

    .line 204
    filled-new-array {v3, v4}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v5, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    :goto_3
    new-instance v2, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;

    invoke-direct {v2, p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment$3;-><init>(Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    sget v1, Lcom/android/settings/R$id;->device_status:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mDeviceStatus:Landroid/widget/TextView;

    .line 232
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    return-object v0
.end method

.method public onPause()V
    .locals 1

    .line 253
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 254
    invoke-direct {p0}, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->cancelRuningSetUnlockLevelTask()V

    .line 255
    iget-object v0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 257
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 245
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 246
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityBluetoothDeviceInfoFragment;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    if-eqz p0, :cond_0

    .line 247
    invoke-virtual {p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    :cond_0
    return-void
.end method
