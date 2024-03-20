.class public final Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mConfigEnableLockScreenButton:Z

.field public final mContext:Landroid/content/Context;

.field public final mDefaultQRCodeScannerChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public mIntent:Landroid/content/Intent;

.field public mIsCameraAvailable:Ljava/lang/Boolean;

.field public mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

.field public mQRCodeScannerActivity:Ljava/lang/String;

.field public mQRCodeScannerEnabled:Z

.field public final mQRCodeScannerPreferenceChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

.field public mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/settings/UserTracker;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 17
    const/4 v0, 0x0

    .line 19
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 20
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    .line 24
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 26
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 28
    const/4 v2, 0x0

    .line 30
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 31
    iput-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 34
    new-instance v1, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 38
    iput-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDefaultQRCodeScannerChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 41
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIsCameraAvailable:Ljava/lang/Boolean;

    .line 43
    iput-object p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mContext:Landroid/content/Context;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 47
    iput-object p3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 49
    iput-object p4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 51
    iput-object p5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object p1

    .line 58
    const p2, 0x1110008    # @android:bool/config_enableQrCodeScannerOnLockScreen

    .line 59
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 62
    move-result p1

    .line 65
    iput-boolean p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mConfigEnableLockScreenButton:Z

    .line 66
    return-void
    .line 68
.end method


# virtual methods
.method public final addCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$Callback;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isCameraAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0

    .line 19
    :goto_0
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
    .line 23
.end method

.method public final isAbleToOpenCameraApp()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 7
    move-result-object v2

    .line 10
    const/4 v3, 0x1

    .line 11
    if-nez v2, :cond_0

    .line 12
    move p0, v1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 18
    move-result-object p0

    .line 21
    const v2, 0xc8000

    .line 22
    invoke-virtual {p0, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 25
    move-result-object p0

    .line 28
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    .line 29
    move-result p0

    .line 32
    xor-int/2addr p0, v3

    .line 33
    :goto_0
    if-eqz p0, :cond_1

    .line 34
    move v1, v3

    .line 36
    :cond_1
    return v1
    .line 37
.end method

.method public final isCameraAvailable()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIsCameraAvailable:Ljava/lang/Boolean;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 8
    move-result-object v0

    .line 11
    const-string v1, "android.hardware.camera"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    .line 14
    move-result v0

    .line 17
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIsCameraAvailable:Ljava/lang/Boolean;

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIsCameraAvailable:Ljava/lang/Boolean;

    .line 24
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 26
    move-result p0

    .line 29
    return p0
    .line 30
.end method

.method public final registerQRCodePreferenceObserver()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mConfigEnableLockScreenButton:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 9
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 11
    move-result v0

    .line 14
    iget-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 15
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v2

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    return-void

    .line 28
    :cond_1
    new-instance v1, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;

    .line 29
    const/4 v2, 0x1

    .line 31
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 32
    iget-object v2, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 35
    invoke-interface {v2, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 37
    iget-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 40
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v2

    .line 45
    new-instance v3, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$1;

    .line 46
    invoke-direct {v3, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$1;-><init>(Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;)V

    .line 48
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    iget-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 54
    move-object v2, v1

    .line 56
    check-cast v2, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 57
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 59
    const-string v2, "lock_screen_show_qr_code_scanner"

    .line 62
    invoke-static {v2}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 64
    move-result-object v2

    .line 67
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 68
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    move-result-object v3

    .line 73
    invoke-virtual {p0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    move-result-object p0

    .line 77
    check-cast p0, Landroid/database/ContentObserver;

    .line 78
    const/4 v3, 0x0

    .line 80
    invoke-interface {v1, v2, v3, p0, v0}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 81
    return-void
    .line 84
.end method

.method public final varargs registerQRCodeScannerChangeObservers([I)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isCameraAvailable()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_5

    .line 12
    aget v3, p1, v2

    .line 14
    iget-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 16
    if-eqz v3, :cond_3

    .line 18
    const/4 v5, 0x1

    .line 20
    if-eq v3, v5, :cond_1

    .line 21
    const-string v4, "Unrecognised event: "

    .line 23
    const-string v5, "QRCodeScannerController"

    .line 25
    invoke-static {v4, v3, v5}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 27
    goto :goto_1

    .line 30
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 31
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 33
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->registerQRCodePreferenceObserver()V

    .line 36
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 39
    if-eqz v3, :cond_2

    .line 41
    goto :goto_1

    .line 43
    :cond_2
    new-instance v3, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$2;

    .line 44
    invoke-direct {v3, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$2;-><init>(Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;)V

    .line 46
    iput-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 49
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 51
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 53
    invoke-virtual {v5, v3, v4}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 55
    goto :goto_1

    .line 58
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDefaultQRCodeScannerChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 59
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 61
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 64
    if-eqz v3, :cond_4

    .line 66
    goto :goto_1

    .line 68
    :cond_4
    new-instance v3, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;

    .line 69
    invoke-direct {v3, v1, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 71
    invoke-interface {v4, v3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 74
    new-instance v3, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 77
    invoke-direct {v3, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;)V

    .line 79
    iput-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 82
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 84
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 86
    const-string/jumbo v5, "systemui"

    .line 89
    invoke-static {v5, v4, v3}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 92
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 95
    goto :goto_0

    .line 97
    :cond_5
    return-void
    .line 98
.end method

.method public final removeCallback(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$Callback;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isCameraAvailable()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    monitor-enter v0

    .line 13
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    monitor-exit v0

    .line 19
    :goto_0
    return-void

    .line 20
    :catchall_0
    move-exception p0

    .line 21
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    throw p0
    .line 23
.end method

.method public final varargs unregisterQRCodeScannerChangeObservers([I)V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->isCameraAvailable()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    array-length v0, p1

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_7

    .line 12
    aget v3, p1, v2

    .line 14
    const/4 v4, 0x0

    .line 16
    if-eqz v3, :cond_4

    .line 17
    const/4 v5, 0x1

    .line 19
    if-eq v3, v5, :cond_1

    .line 20
    const-string v4, "Unrecognised event: "

    .line 22
    const-string v5, "QRCodeScannerController"

    .line 24
    invoke-static {v4, v3, v5}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 26
    goto :goto_2

    .line 29
    :cond_1
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 30
    if-nez v3, :cond_2

    .line 32
    goto :goto_2

    .line 34
    :cond_2
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 35
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 37
    move-result v5

    .line 40
    if-nez v5, :cond_6

    .line 41
    iget-boolean v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mConfigEnableLockScreenButton:Z

    .line 43
    if-nez v5, :cond_3

    .line 45
    goto :goto_1

    .line 47
    :cond_3
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 48
    new-instance v6, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda0;

    .line 50
    invoke-direct {v6, p0}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;)V

    .line 52
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 55
    new-instance v5, Ljava/util/HashMap;

    .line 58
    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 60
    iput-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerPreferenceObserver:Ljava/util/HashMap;

    .line 63
    move-object v5, v3

    .line 65
    check-cast v5, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 66
    invoke-virtual {v5}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 68
    move-result v5

    .line 71
    iget-object v6, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 72
    check-cast v6, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 74
    const-string/jumbo v7, "show_qr_code_scanner_setting"

    .line 76
    invoke-virtual {v6, v7, v4, v5}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 79
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 82
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 84
    invoke-virtual {v3, v5}, Lcom/android/systemui/settings/UserTrackerImpl;->removeCallback(Lcom/android/systemui/settings/UserTracker$Callback;)V

    .line 86
    iput-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserChangedListener:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 89
    iput-boolean v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerEnabled:Z

    .line 91
    goto :goto_2

    .line 93
    :cond_4
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 94
    if-nez v3, :cond_5

    .line 96
    goto :goto_2

    .line 98
    :cond_5
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDefaultQRCodeScannerChangeEvents:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 99
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 101
    move-result v3

    .line 104
    if-nez v3, :cond_6

    .line 105
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 107
    iget-object v5, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 111
    invoke-static {v3}, Landroid/provider/DeviceConfig;->removeOnPropertiesChangedListener(Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 114
    iput-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mOnDefaultQRCodeScannerChangedListener:Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda2;

    .line 117
    iput-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 119
    iput-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    .line 121
    :cond_6
    :goto_2
    add-int/lit8 v2, v2, 0x1

    .line 123
    goto :goto_0

    .line 125
    :cond_7
    return-void
    .line 126
.end method

.method public final updateQRCodeScannerActivityDetails()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 2
    const-string/jumbo v1, "systemui"

    .line 4
    const-string v2, "default_qr_code_scanner"

    .line 7
    const-string v3, ""

    .line 9
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, ""

    .line 18
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_0

    .line 24
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mContext:Landroid/content/Context;

    .line 26
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 28
    move-result-object v0

    .line 31
    const v1, 0x1040272    # @android:string/config_primaryLocationTimeZoneProviderPackageName

    .line 32
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 39
    new-instance v2, Landroid/content/Intent;

    .line 41
    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 43
    if-eqz v0, :cond_1

    .line 46
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 48
    move-result-object v3

    .line 51
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 52
    const/high16 v3, 0x14000000

    .line 55
    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    :cond_1
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 60
    move-result-object v3

    .line 63
    const/4 v4, 0x0

    .line 64
    if-nez v3, :cond_2

    .line 65
    move v3, v4

    .line 67
    goto :goto_0

    .line 68
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 71
    move-result-object v3

    .line 74
    const v5, 0x200ca200

    .line 75
    invoke-virtual {v3, v2, v5}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    .line 78
    move-result-object v3

    .line 81
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 82
    move-result v3

    .line 85
    xor-int/lit8 v3, v3, 0x1

    .line 86
    :goto_0
    if-eqz v3, :cond_3

    .line 88
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 90
    iput-object v2, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    .line 92
    goto :goto_1

    .line 94
    :cond_3
    const/4 v0, 0x0

    .line 95
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 96
    iput-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mIntent:Landroid/content/Intent;

    .line 98
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 100
    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    iget-object v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 108
    monitor-enter v0

    .line 110
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 113
    move-result-object p0

    .line 116
    check-cast p0, Ljava/util/ArrayList;

    .line 117
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 119
    new-instance v0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda3;

    .line 120
    invoke-direct {v0, v4}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 122
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 125
    goto :goto_2

    .line 128
    :catchall_0
    move-exception p0

    .line 129
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 130
    throw p0

    .line 131
    :cond_4
    :goto_2
    return-void
    .line 132
.end method

.method public final updateQRCodeScannerPreferenceDetails(Z)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mConfigEnableLockScreenButton:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerEnabled:Z

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 9
    const-string v2, "lock_screen_show_qr_code_scanner"

    .line 11
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 13
    check-cast v3, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 15
    invoke-virtual {v3}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 17
    move-result v3

    .line 20
    const/4 v4, 0x0

    .line 21
    invoke-interface {v1, v4, v3, v2}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 22
    move-result v1

    .line 25
    const/4 v2, 0x1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    move v4, v2

    .line 29
    :cond_1
    iput-boolean v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerEnabled:Z

    .line 30
    if-eqz p1, :cond_2

    .line 32
    iget-object p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 34
    const-string/jumbo v1, "show_qr_code_scanner_setting"

    .line 36
    iget-object v3, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerActivity:Ljava/lang/String;

    .line 39
    iget-object v4, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 41
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 43
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 45
    move-result v4

    .line 48
    check-cast p1, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 49
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 51
    :cond_2
    iget-boolean p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mQRCodeScannerEnabled:Z

    .line 54
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 56
    move-result-object p1

    .line 59
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {p1, v0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 64
    move-result p1

    .line 67
    if-nez p1, :cond_3

    .line 68
    iget-object p1, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 70
    monitor-enter p1

    .line 72
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController;->mCallbacks:Ljava/util/ArrayList;

    .line 73
    invoke-virtual {p0}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    .line 75
    move-result-object p0

    .line 78
    check-cast p0, Ljava/util/ArrayList;

    .line 79
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 81
    new-instance p1, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda3;

    .line 82
    invoke-direct {p1, v2}, Lcom/android/systemui/qrcodescanner/controller/QRCodeScannerController$$ExternalSyntheticLambda3;-><init>(I)V

    .line 84
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 87
    goto :goto_0

    .line 90
    :catchall_0
    move-exception p0

    .line 91
    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    throw p0

    .line 93
    :cond_3
    :goto_0
    return-void
    .line 94
.end method
