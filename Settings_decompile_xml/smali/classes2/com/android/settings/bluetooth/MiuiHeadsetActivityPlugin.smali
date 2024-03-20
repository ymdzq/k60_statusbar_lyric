.class public final Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;
.super Landroid/app/Activity;
.source "MiuiHeadsetActivityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;
    }
.end annotation


# instance fields
.field protected mAddress:Ljava/lang/String;

.field public mCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

.field protected mComeFrom:Ljava/lang/String;

.field protected mDevice:Landroid/bluetooth/BluetoothDevice;

.field protected mDeviceID:Ljava/lang/String;

.field private mPendingIntent:Landroid/content/Intent;

.field private mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

.field protected mSupport:Ljava/lang/String;

.field protected mVirtualDeviceAddress:Ljava/lang/String;

.field protected mVirtualDeviceName:Ljava/lang/String;


# direct methods
.method static bridge synthetic -$$Nest$monSuccessfullyLoad(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->onSuccessfullyLoad()V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    .line 66
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v1, ""

    .line 67
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mSupport:Ljava/lang/String;

    .line 68
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mComeFrom:Ljava/lang/String;

    .line 69
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceAddress:Ljava/lang/String;

    .line 70
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceName:Ljava/lang/String;

    .line 71
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDeviceID:Ljava/lang/String;

    .line 72
    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mAddress:Ljava/lang/String;

    .line 76
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mPendingIntent:Landroid/content/Intent;

    return-void
.end method

.method private initCallback()V
    .locals 1

    .line 250
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$1;-><init>(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    goto :goto_0

    :cond_0
    const-string p0, "MiuiHeadsetActivityPlugin"

    const-string v0, "initCallback, mCallback != null error"

    .line 265
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private onSuccessfullyLoad()V
    .locals 3

    const-string v0, "MiuiHeadsetActivityPlugin"

    const-string/jumbo v1, "onSuccessfullyLoad "

    .line 182
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mPendingIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    .line 184
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    .line 185
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v1, "MIUI_HEADSET_SUPPORT"

    .line 186
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mSupport:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "COME_FROM"

    .line 187
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mComeFrom:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VIRTUAL_DEVICE_ADDRESS"

    .line 188
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "VIRTUAL_DEVICE_NAME"

    .line 189
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "bluetoothaddress"

    .line 190
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mAddress:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "DEVICE_ID"

    .line 191
    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 192
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "plugin.settings.java.JavaActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v1, 0x10008000

    .line 193
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-static {}, Lcom/android/settings/bluetooth/FitSplitUtils;->isFitSplit()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0x10

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    const v1, 0x8000

    .line 196
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 v1, 0x10000000

    .line 197
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeFlags(I)V

    .line 199
    :cond_0
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 200
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method

.method private startQigsawInstaller(Ljava/lang/String;)V
    .locals 3

    .line 226
    :try_start_0
    invoke-static {p0}, Lcom/google/android/play/core/splitinstall/SplitInstallManagerFactory;->create(Landroid/content/Context;)Lcom/google/android/play/core/splitinstall/SplitInstallManager;

    move-result-object v0

    .line 227
    invoke-interface {v0}, Lcom/google/android/play/core/splitinstall/SplitInstallManager;->getInstalledModules()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const-string v1, "MiuiHeadsetActivityPlugin"

    if-eqz v0, :cond_0

    :try_start_1
    const-string p1, "Qigsaw already installed"

    .line 228
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 229
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->onSuccessfullyLoad()V

    return-void

    .line 232
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/QigsawInstaller;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    .line 235
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->initCallback()V

    .line 236
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mCallback:Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;

    invoke-virtual {v0, v2}, Lcom/android/settings/bluetooth/QigsawInstaller;->registerCallback(Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin$QigsawInstallerCallback;)V

    .line 237
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 238
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 239
    iget-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-virtual {p1, v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->initInstall(Ljava/util/ArrayList;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "initInstall error"

    .line 240
    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 244
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public onBackPressed()V
    .locals 2

    .line 168
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    if-eqz v0, :cond_1

    .line 169
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->backPressed()I

    move-result v0

    .line 170
    iget-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 171
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void

    .line 177
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onBackPressed()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 80
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x33

    .line 82
    invoke-virtual {p1, v0}, Landroid/view/Window;->setGravity(I)V

    .line 83
    invoke-virtual {p1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v1, 0x0

    .line 84
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 85
    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    const/4 v2, 0x1

    .line 86
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 87
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    const/16 v2, 0x7d2

    .line 88
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/16 v2, 0x20

    .line 89
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 90
    invoke-virtual {p1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 94
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "MiuiHeadsetActivityPlugin"

    if-nez p1, :cond_0

    const-string p0, "intent is null"

    .line 96
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "COME_FROM"

    .line 100
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mComeFrom:Ljava/lang/String;

    const-string v3, "android.bluetooth.device.extra.DEVICE"

    .line 101
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    check-cast v3, Landroid/bluetooth/BluetoothDevice;

    iput-object v3, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDevice:Landroid/bluetooth/BluetoothDevice;

    const-string v3, "bluetoothaddress"

    .line 102
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 103
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mComeFrom:Ljava/lang/String;

    const-string v2, "VIRTUAL_DEVICE_ADDRESS"

    .line 104
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceAddress:Ljava/lang/String;

    const-string v2, "VIRTUAL_DEVICE_NAME"

    .line 105
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mVirtualDeviceName:Ljava/lang/String;

    .line 106
    invoke-virtual {p1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mAddress:Ljava/lang/String;

    const-string v2, "MIUI_HEADSET_SUPPORT"

    .line 107
    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mSupport:Ljava/lang/String;

    if-eqz v2, :cond_2

    const-string v3, "\\,"

    .line 109
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 110
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 111
    aget-object v1, v2, v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDeviceID:Ljava/lang/String;

    .line 112
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Length OK"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mDeviceID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v1, "Length error"

    .line 114
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :cond_2
    :goto_0
    iput-object p1, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mPendingIntent:Landroid/content/Intent;

    const-string p1, "java"

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->startQigsawInstaller(Ljava/lang/String;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 155
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;

    if-eqz v0, :cond_0

    .line 158
    invoke-virtual {v0}, Lcom/android/settings/bluetooth/QigsawInstaller;->unRegisterCallback()V

    const/4 v0, 0x0

    .line 159
    iput-object v0, p0, Lcom/android/settings/bluetooth/MiuiHeadsetActivityPlugin;->mQigsawInstaller:Lcom/android/settings/bluetooth/QigsawInstaller;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 162
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method protected onPause()V
    .locals 0

    .line 140
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    return-void
.end method

.method protected onResume()V
    .locals 0

    .line 125
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    return-void
.end method
