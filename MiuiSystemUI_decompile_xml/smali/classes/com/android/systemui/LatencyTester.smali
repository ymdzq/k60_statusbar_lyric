.class public final Lcom/android/systemui/LatencyTester;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final DEFAULT_ENABLED:Z


# instance fields
.field public final mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

.field public final mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

.field public mEnabled:Z

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;


# direct methods
.method public static -$$Nest$mfakeWakeAndUnlock(Lcom/android/systemui/LatencyTester;Landroid/hardware/biometrics/BiometricSourceType;)V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FACE:Landroid/hardware/biometrics/BiometricSourceType;

    .line 7
    const/4 v1, 0x1

    .line 9
    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 10
    if-ne p1, v0, :cond_1

    .line 12
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 14
    move-result p1

    .line 17
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFaceAuthenticated(IZ)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    sget-object v0, Landroid/hardware/biometrics/BiometricSourceType;->FINGERPRINT:Landroid/hardware/biometrics/BiometricSourceType;

    .line 22
    if-ne p1, v0, :cond_2

    .line 24
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {p0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->onFingerprintAuthenticated(IZ)V

    .line 30
    :cond_2
    :goto_0
    return-void
    .line 33
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Landroid/os/Build;->IS_ENG:Z

    .line 2
    sput-boolean v0, Lcom/android/systemui/LatencyTester;->DEFAULT_ENABLED:Z

    .line 4
    return-void
    .line 6
.end method

.method public constructor <init>(Lcom/android/systemui/statusbar/phone/BiometricUnlockController;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/util/DeviceConfigProxy;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/LatencyTester$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/android/systemui/LatencyTester$1;-><init>(Lcom/android/systemui/LatencyTester;)V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

    .line 10
    iput-object p1, p0, Lcom/android/systemui/LatencyTester;->mBiometricUnlockController:Lcom/android/systemui/statusbar/phone/BiometricUnlockController;

    .line 12
    iput-object p2, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 14
    iput-object p3, p0, Lcom/android/systemui/LatencyTester;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 16
    iput-object p5, p0, Lcom/android/systemui/LatencyTester;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 18
    invoke-virtual {p0}, Lcom/android/systemui/LatencyTester;->updateEnabled()V

    .line 20
    new-instance p1, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;

    .line 23
    invoke-direct {p1, p0}, Lcom/android/systemui/LatencyTester$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/LatencyTester;)V

    .line 25
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 28
    const-string p0, "latency_tracker"

    .line 31
    invoke-static {p0, p4, p1}, Landroid/provider/DeviceConfig;->addOnPropertiesChangedListener(Ljava/lang/String;Ljava/util/concurrent/Executor;Landroid/provider/DeviceConfig$OnPropertiesChangedListener;)V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "mEnabled="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-boolean p0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    .line 9
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 11
    return-void
    .line 14
.end method

.method public final registerForBroadcasts(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastReceiver:Lcom/android/systemui/LatencyTester$1;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/LatencyTester;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    new-instance p1, Landroid/content/IntentFilter;

    .line 8
    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    .line 10
    const-string v1, "com.android.systemui.latency.ACTION_FINGERPRINT_WAKE"

    .line 13
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 15
    const-string v1, "com.android.systemui.latency.ACTION_FACE_WAKE"

    .line 18
    invoke-virtual {p1, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/LatencyTester;->registerForBroadcasts(Z)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateEnabled()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    .line 2
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 4
    if-eqz v1, :cond_0

    .line 6
    iget-object v1, p0, Lcom/android/systemui/LatencyTester;->mDeviceConfigProxy:Lcom/android/systemui/util/DeviceConfigProxy;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    const-string v1, "latency_tracker"

    .line 13
    const-string v2, "enabled"

    .line 15
    sget-boolean v3, Lcom/android/systemui/LatencyTester;->DEFAULT_ENABLED:Z

    .line 17
    invoke-static {v1, v2, v3}, Landroid/provider/DeviceConfig;->getBoolean(Ljava/lang/String;Ljava/lang/String;Z)Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    const/4 v1, 0x1

    .line 25
    goto :goto_0

    .line 26
    :cond_0
    const/4 v1, 0x0

    .line 27
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/LatencyTester;->mEnabled:Z

    .line 28
    if-eq v1, v0, :cond_1

    .line 30
    invoke-virtual {p0, v1}, Lcom/android/systemui/LatencyTester;->registerForBroadcasts(Z)V

    .line 32
    :cond_1
    return-void
    .line 35
.end method
