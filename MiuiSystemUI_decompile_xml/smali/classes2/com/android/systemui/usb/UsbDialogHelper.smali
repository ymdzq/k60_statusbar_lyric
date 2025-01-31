.class public final Lcom/android/systemui/usb/UsbDialogHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mAccessory:Landroid/hardware/usb/UsbAccessory;

.field public final mAppName:Ljava/lang/CharSequence;

.field public final mCanBeDefault:Z

.field public final mContext:Landroid/content/Context;

.field public final mDevice:Landroid/hardware/usb/UsbDevice;

.field public mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDisconnectedReceiver;

.field public final mIsUsbDevice:Z

.field public final mPackageName:Ljava/lang/String;

.field public final mPendingIntent:Landroid/app/PendingIntent;

.field public final mResolveInfo:Landroid/content/pm/ResolveInfo;

.field public mResponseSent:Z

.field public final mUid:I

.field public final mUsbService:Landroid/hardware/usb/IUsbManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    .line 5
    const-string v0, "device"

    .line 7
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Landroid/hardware/usb/UsbDevice;

    .line 13
    iput-object v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 15
    const-string v1, "accessory"

    .line 17
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 19
    move-result-object v1

    .line 22
    check-cast v1, Landroid/hardware/usb/UsbAccessory;

    .line 23
    iput-object v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 25
    const-string v2, "android.hardware.usb.extra.CAN_BE_DEFAULT"

    .line 27
    const/4 v3, 0x0

    .line 29
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    .line 30
    move-result v2

    .line 33
    iput-boolean v2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mCanBeDefault:Z

    .line 34
    if-nez v0, :cond_1

    .line 36
    if-eqz v1, :cond_0

    .line 38
    goto :goto_0

    .line 40
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 41
    const-string p1, "Device and accessory are both null."

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    throw p0

    .line 48
    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 49
    const/4 v0, 0x1

    .line 51
    iput-boolean v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 52
    :cond_2
    const-string v0, "rinfo"

    .line 54
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 56
    move-result-object v0

    .line 59
    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 60
    iput-object v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 64
    move-result-object p1

    .line 67
    if-eqz v0, :cond_3

    .line 68
    iget-object p2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 70
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 72
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 74
    iput v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUid:I

    .line 76
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 78
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPackageName:Ljava/lang/String;

    .line 80
    const/4 p2, 0x0

    .line 82
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 83
    goto :goto_1

    .line 85
    :cond_3
    const-string v0, "android.intent.extra.UID"

    .line 86
    const/4 v1, -0x1

    .line 88
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    .line 89
    move-result v0

    .line 92
    iput v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUid:I

    .line 93
    const-string v0, "android.hardware.usb.extra.PACKAGE"

    .line 95
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 100
    iput-object v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPackageName:Ljava/lang/String;

    .line 101
    const-string v0, "android.intent.extra.INTENT"

    .line 103
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 105
    move-result-object p2

    .line 108
    check-cast p2, Landroid/app/PendingIntent;

    .line 109
    iput-object p2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 111
    :goto_1
    :try_start_0
    iget-object p2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPackageName:Ljava/lang/String;

    .line 113
    invoke-virtual {p1, p2, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 115
    move-result-object p2

    .line 118
    invoke-virtual {p2, p1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 119
    move-result-object p1

    .line 122
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAppName:Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    const-string/jumbo p1, "usb"

    .line 125
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 128
    move-result-object p1

    .line 131
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    .line 132
    move-result-object p1

    .line 135
    iput-object p1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    .line 136
    return-void

    .line 138
    :catch_0
    move-exception p0

    .line 139
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 140
    const-string/jumbo p2, "unable to look up package name"

    .line 142
    invoke-direct {p1, p2, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 145
    throw p1
    .line 148
.end method


# virtual methods
.method public final confirmDialogStartActivity()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Landroid/content/Intent;

    .line 10
    const-string v2, "android.hardware.usb.action.USB_DEVICE_ATTACHED"

    .line 12
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 14
    const-string v2, "device"

    .line 17
    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 19
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 21
    goto :goto_0

    .line 24
    :cond_0
    new-instance v1, Landroid/content/Intent;

    .line 25
    const-string v2, "android.hardware.usb.action.USB_ACCESSORY_ATTACHED"

    .line 27
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 29
    const-string v2, "accessory"

    .line 32
    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 36
    :goto_0
    const/high16 v2, 0x10000000

    .line 39
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 41
    new-instance v2, Landroid/content/ComponentName;

    .line 44
    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mResolveInfo:Landroid/content/pm/ResolveInfo;

    .line 46
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 48
    iget-object v4, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 50
    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 52
    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 57
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    .line 60
    new-instance v2, Landroid/os/UserHandle;

    .line 62
    invoke-direct {v2, v0}, Landroid/os/UserHandle;-><init>(I)V

    .line 64
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    goto :goto_1

    .line 70
    :catch_0
    move-exception p0

    .line 71
    const-string v0, "UsbDialogHelper"

    .line 72
    const-string v1, "Unable to start activity"

    .line 74
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 76
    :goto_1
    return-void
    .line 79
.end method

.method public final deviceHasAudioCapture()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getHasAudioCapture()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/4 p0, 0x1

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return p0
    .line 15
.end method

.method public final getDeviceDescription()Ljava/lang/String;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 6
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getProductName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    if-nez v0, :cond_1

    .line 12
    invoke-virtual {p0}, Landroid/hardware/usb/UsbDevice;->getDeviceName()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 19
    invoke-virtual {p0}, Landroid/hardware/usb/UsbAccessory;->getDescription()Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    if-nez v0, :cond_1

    .line 25
    invoke-virtual {p0}, Landroid/hardware/usb/UsbAccessory;->getManufacturer()Ljava/lang/String;

    .line 27
    move-result-object v0

    .line 30
    invoke-virtual {p0}, Landroid/hardware/usb/UsbAccessory;->getModel()Ljava/lang/String;

    .line 31
    move-result-object p0

    .line 34
    filled-new-array {v0, p0}, [Ljava/lang/Object;

    .line 35
    move-result-object p0

    .line 38
    const-string v0, "%s %s"

    .line 39
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    :cond_1
    :goto_0
    return-object v0
    .line 45
.end method

.method public final grantUidAccessPermission()V
    .locals 3

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUid:I

    .line 4
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 10
    invoke-interface {v2, p0, v1}, Landroid/hardware/usb/IUsbManager;->grantDevicePermission(Landroid/hardware/usb/UsbDevice;I)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 16
    invoke-interface {v2, p0, v1}, Landroid/hardware/usb/IUsbManager;->grantAccessoryPermission(Landroid/hardware/usb/UsbAccessory;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 18
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    const-string v0, "UsbDialogHelper"

    .line 23
    const-string v1, "IUsbService connection failed"

    .line 25
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public final packageHasAudioRecordingPermission()Z
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUid:I

    .line 2
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPackageName:Ljava/lang/String;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    .line 6
    const-string v2, "android.permission.RECORD_AUDIO"

    .line 8
    const/4 v3, -0x1

    .line 10
    invoke-static {p0, v2, v3, v0, v1}, Landroid/content/PermissionChecker;->checkPermissionForPreflight(Landroid/content/Context;Ljava/lang/String;IILjava/lang/String;)I

    .line 11
    move-result p0

    .line 14
    if-nez p0, :cond_0

    .line 15
    const/4 p0, 0x1

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    return p0
    .line 20
.end method

.method public final sendPermissionDialogResponse(Z)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mResponseSent:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    new-instance v0, Landroid/content/Intent;

    .line 6
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 8
    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z

    .line 11
    if-eqz v1, :cond_0

    .line 13
    const-string v1, "device"

    .line 15
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 17
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string v1, "accessory"

    .line 23
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 25
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 27
    :goto_0
    const-string v1, "permission"

    .line 30
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    :try_start_0
    iget-object p1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPendingIntent:Landroid/app/PendingIntent;

    .line 35
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mContext:Landroid/content/Context;

    .line 37
    const/4 v2, 0x0

    .line 39
    invoke-virtual {p1, v1, v2, v0}, Landroid/app/PendingIntent;->send(Landroid/content/Context;ILandroid/content/Intent;)V

    .line 40
    const/4 p1, 0x1

    .line 43
    iput-boolean p1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mResponseSent:Z
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    goto :goto_1

    .line 46
    :catch_0
    const-string p0, "UsbDialogHelper"

    .line 47
    const-string p1, "PendingIntent was cancelled"

    .line 49
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    :cond_1
    :goto_1
    return-void
    .line 54
.end method

.method public final setDefaultPackage()V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    .line 2
    move-result v0

    .line 5
    :try_start_0
    iget-boolean v1, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mIsUsbDevice:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    iget-object v2, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mPackageName:Ljava/lang/String;

    .line 8
    iget-object v3, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mUsbService:Landroid/hardware/usb/IUsbManager;

    .line 10
    if-eqz v1, :cond_0

    .line 12
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mDevice:Landroid/hardware/usb/UsbDevice;

    .line 14
    invoke-interface {v3, p0, v2, v0}, Landroid/hardware/usb/IUsbManager;->setDevicePackage(Landroid/hardware/usb/UsbDevice;Ljava/lang/String;I)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/usb/UsbDialogHelper;->mAccessory:Landroid/hardware/usb/UsbAccessory;

    .line 20
    invoke-interface {v3, p0, v2, v0}, Landroid/hardware/usb/IUsbManager;->setAccessoryPackage(Landroid/hardware/usb/UsbAccessory;Ljava/lang/String;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 22
    goto :goto_0

    .line 25
    :catch_0
    move-exception p0

    .line 26
    const-string v0, "UsbDialogHelper"

    .line 27
    const-string v1, "IUsbService connection failed"

    .line 29
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 31
    :goto_0
    return-void
    .line 34
.end method
