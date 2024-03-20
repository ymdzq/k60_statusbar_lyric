.class public final Lcom/android/keyguard/MiuiBleUnlockHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mBleListener:Lcom/android/keyguard/MiuiBleUnlockHelper$7;

.field public mBouncerVisible:Z

.field public final mContext:Landroid/content/Context;

.field public final mGlobalBluetoothBroadcastReceiver:Lcom/android/keyguard/MiuiBleUnlockHelper$6;

.field public mGoingToSleep:Z

.field public final mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

.field public mIsMXtelcelActivity:Z

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardViewControllerLazy:Ldagger/Lazy;

.field public final mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

.field public final mMiuiUpdateMonitorCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$4;

.field public final mStateChangeCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$5;

.field public final mTopActivityMayChangeListener:Lcom/android/keyguard/MiuiBleUnlockHelper$8;

.field public mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

.field public final mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$3;

.field public final mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public final mWakefulnessObserver:Lcom/android/keyguard/MiuiBleUnlockHelper$2;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/keyguard/KeyguardViewMediator;Ldagger/Lazy;)V
    .locals 11

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBouncerVisible:Z

    .line 6
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 8
    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$1;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 10
    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mHandler:Lcom/android/keyguard/MiuiBleUnlockHelper$1;

    .line 13
    new-instance v0, Lcom/android/keyguard/MiuiBleUnlockHelper$2;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$2;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 17
    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mWakefulnessObserver:Lcom/android/keyguard/MiuiBleUnlockHelper$2;

    .line 20
    new-instance v1, Lcom/android/keyguard/MiuiBleUnlockHelper$3;

    .line 22
    invoke-direct {v1, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$3;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 24
    iput-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$3;

    .line 27
    new-instance v2, Lcom/android/keyguard/MiuiBleUnlockHelper$4;

    .line 29
    invoke-direct {v2, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$4;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 31
    iput-object v2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mMiuiUpdateMonitorCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$4;

    .line 34
    new-instance v3, Lcom/android/keyguard/MiuiBleUnlockHelper$5;

    .line 36
    invoke-direct {v3, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$5;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 38
    iput-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStateChangeCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$5;

    .line 41
    new-instance v5, Lcom/android/keyguard/MiuiBleUnlockHelper$6;

    .line 43
    invoke-direct {v5, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$6;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 45
    iput-object v5, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mGlobalBluetoothBroadcastReceiver:Lcom/android/keyguard/MiuiBleUnlockHelper$6;

    .line 48
    new-instance v3, Lcom/android/keyguard/MiuiBleUnlockHelper$7;

    .line 50
    invoke-direct {v3, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$7;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 52
    iput-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBleListener:Lcom/android/keyguard/MiuiBleUnlockHelper$7;

    .line 55
    new-instance v3, Lcom/android/keyguard/MiuiBleUnlockHelper$8;

    .line 57
    invoke-direct {v3, p0}, Lcom/android/keyguard/MiuiBleUnlockHelper$8;-><init>(Lcom/android/keyguard/MiuiBleUnlockHelper;)V

    .line 59
    iput-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mTopActivityMayChangeListener:Lcom/android/keyguard/MiuiBleUnlockHelper$8;

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    .line 64
    iput-object p3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 66
    iput-object p2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 68
    const-class p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 70
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 72
    move-result-object p2

    .line 75
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 76
    iput-object p2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 78
    const-class p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 80
    invoke-static {p2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 82
    move-result-object p2

    .line 85
    check-cast p2, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 86
    iput-object p2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 88
    const-class p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 90
    invoke-static {p3}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 92
    move-result-object p3

    .line 95
    check-cast p3, Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 96
    new-instance p3, Landroid/security/MiuiLockPatternUtils;

    .line 98
    invoke-direct {p3, p1}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 100
    iput-object p3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 103
    invoke-virtual {p2, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 105
    const-class p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 108
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 110
    move-result-object p0

    .line 113
    check-cast p0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 114
    invoke-virtual {p0, v2}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 116
    const-class p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 119
    invoke-static {p0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 121
    move-result-object p0

    .line 124
    check-cast p0, Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 125
    iget-object p0, p0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 127
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v7, Landroid/content/IntentFilter;

    .line 132
    invoke-direct {v7}, Landroid/content/IntentFilter;-><init>()V

    .line 134
    const-string p0, "com.miui.keyguard.bluetoothdeviceunlock"

    .line 137
    invoke-virtual {v7, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 139
    const-string p0, "com.miui.keyguard.bluetoothdeviceunlock.disable"

    .line 142
    invoke-virtual {v7, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 144
    const-string p0, "com.xiaomi.hm.health.ACTION_DEVICE_UNBIND_APPLICATION"

    .line 147
    invoke-virtual {v7, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 149
    const-string p0, "android.bluetooth.adapter.action.STATE_CHANGED"

    .line 152
    invoke-virtual {v7, p0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 154
    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 157
    const/4 v8, 0x0

    .line 159
    const/4 v9, 0x0

    .line 160
    const/4 v10, 0x2

    .line 161
    move-object v4, p1

    .line 162
    invoke-virtual/range {v4 .. v10}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 163
    const-class p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 166
    invoke-static {p0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 168
    move-result-object p0

    .line 171
    check-cast p0, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 172
    invoke-virtual {p0, v3}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->addTopActivityMayChangeListener(Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;)V

    .line 174
    return-void
    .line 177
.end method


# virtual methods
.method public final connectBLEDevice()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 10
    const/4 v1, 0x0

    .line 12
    invoke-static {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->isUnlockWithBlePossible()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    sget-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 27
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 30
    if-eqz v0, :cond_0

    .line 32
    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->disconnect()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 34
    goto :goto_0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    const-string v1, "MiuiBleUnlockHelper"

    .line 39
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 41
    move-result-object v2

    .line 44
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 45
    :cond_0
    :goto_0
    new-instance v0, Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 48
    iget-object v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 50
    invoke-virtual {v1}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    .line 52
    move-result-object v1

    .line 55
    iget-object v2, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mStateChangeCallback:Lcom/android/keyguard/MiuiBleUnlockHelper$5;

    .line 56
    iget-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    .line 58
    invoke-direct {v0, v3, v1, v2}, Lmiui/bluetooth/ble/MiBleUnlockProfile;-><init>(Landroid/content/Context;Ljava/lang/String;Lmiui/bluetooth/ble/MiBleProfile$IProfileStateChangeCallback;)V

    .line 60
    iput-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 63
    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->connect()V

    .line 65
    :cond_1
    return-void
    .line 68
.end method

.method public final isUnlockWithBlePossible()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mLockPatternUtils:Landroid/security/MiuiLockPatternUtils;

    .line 2
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothUnlockEnabled()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0}, Landroid/security/MiuiLockPatternUtils;->getBluetoothAddressToUnlock()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 14
    move-result p0

    .line 17
    if-nez p0, :cond_0

    .line 18
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    .line 20
    move-result-object p0

    .line 23
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_0

    .line 28
    const/4 p0, 0x1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const/4 p0, 0x0

    .line 32
    :goto_0
    return p0
    .line 33
.end method

.method public final setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V
    .locals 2

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 8
    iput-object p1, v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 10
    sget-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 12
    if-ne p1, v0, :cond_0

    .line 14
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 16
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    iget-object v0, v0, Lcom/android/keyguard/KeyguardUpdateMonitor;->mUserBleAuthenticated:Landroid/util/SparseBooleanArray;

    .line 22
    const/4 v1, 0x1

    .line 24
    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->put(IZ)V

    .line 25
    iget-object p1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 28
    check-cast p1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 30
    const/4 v0, 0x0

    .line 32
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->update(Z)V

    .line 33
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->tryUnlockByBle()V

    .line 36
    :cond_0
    return-void
    .line 39
.end method

.method public final tryUnlockByBle()V
    .locals 4

    .line 1
    const-class v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 8
    iget-object v0, v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mBLEUnlockState:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 10
    sget-object v1, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->SUCCEED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-ne v0, v1, :cond_0

    .line 16
    move v0, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move v0, v3

    .line 20
    :goto_0
    if-eqz v0, :cond_1

    .line 21
    iget-boolean v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBouncerVisible:Z

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 27
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUnlockingWithBiometricAllowed(Z)Z

    .line 29
    move-result v1

    .line 32
    if-eqz v1, :cond_1

    .line 33
    const/4 v1, 0x2

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 36
    move-result v1

    .line 39
    invoke-static {v1}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 40
    move-result v1

    .line 43
    if-nez v1, :cond_1

    .line 44
    const/4 v1, 0x3

    .line 46
    invoke-virtual {v0, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getNextSubIdForState(I)I

    .line 47
    move-result v0

    .line 50
    invoke-static {v0}, Lmiui/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    .line 51
    move-result v0

    .line 54
    if-nez v0, :cond_1

    .line 55
    goto :goto_1

    .line 57
    :cond_1
    move v2, v3

    .line 58
    :goto_1
    if-eqz v2, :cond_2

    .line 59
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mKeyguardViewControllerLazy:Ldagger/Lazy;

    .line 61
    invoke-interface {v0}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Lcom/android/keyguard/KeyguardViewController;

    .line 67
    check-cast v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 69
    invoke-virtual {v0, v3}, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->notifyKeyguardAuthenticated(Z)V

    .line 71
    sget-object v0, Lcom/android/keyguard/utils/MiuiKeyguardUtils;->sRegionSupportMiHomeList:Ljava/util/List;

    .line 74
    const v0, 0x7f130740    # @string/miui_keyguard_ble_unlock_succeed_msg 'Unlocked by Bluetooth device'

    .line 76
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mContext:Landroid/content/Context;

    .line 79
    invoke-static {p0, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 81
    move-result-object p0

    .line 84
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 85
    :cond_2
    return-void
    .line 88
.end method

.method public final unregisterUnlockListener()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->unregisterUnlockListener()V

    .line 6
    :cond_0
    sget-object v0, Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;->FAILED:Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;

    .line 9
    invoke-virtual {p0, v0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->setBLEUnlockState(Lcom/android/keyguard/MiuiBleUnlockHelper$BLEUnlockState;)V

    .line 11
    return-void
    .line 14
.end method

.method public final verifyBLEDeviceRssi()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v1, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    const-string v2, "MiuiBleUnlockHelper"

    .line 8
    iget-object v3, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 10
    iget-object v4, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 12
    if-eqz v1, :cond_3

    .line 14
    iget-boolean v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 16
    if-eqz v1, :cond_0

    .line 18
    iget-boolean v1, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mIsMXtelcelActivity:Z

    .line 20
    if-eqz v1, :cond_3

    .line 22
    :cond_0
    iget-boolean v1, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 24
    if-nez v1, :cond_3

    .line 26
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 28
    move-result v1

    .line 31
    if-nez v1, :cond_3

    .line 32
    iget-boolean v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 34
    if-eqz v1, :cond_3

    .line 36
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 38
    const/4 v5, 0x0

    .line 40
    invoke-static {v1, v5}, Lcom/android/keyguard/KeyguardUpdateMonitorExtKt;->hasUserAuthenticatedSinceBoot(Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;I)Z

    .line 41
    move-result v1

    .line 44
    if-eqz v1, :cond_3

    .line 45
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->isUnlockWithBlePossible()Z

    .line 47
    move-result v1

    .line 50
    if-eqz v1, :cond_3

    .line 51
    iget-object v1, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 53
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 55
    move-result v6

    .line 58
    invoke-virtual {v1, v6}, Lcom/android/internal/widget/LockPatternUtils$StrongAuthTracker;->getStrongAuthForUser(I)I

    .line 59
    move-result v1

    .line 62
    if-eqz v1, :cond_1

    .line 63
    const/4 v6, 0x4

    .line 65
    if-eq v1, v6, :cond_1

    .line 66
    const/4 v5, 0x1

    .line 68
    :cond_1
    if-nez v5, :cond_3

    .line 69
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 71
    move-result v1

    .line 74
    invoke-virtual {v4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 75
    move-result v1

    .line 78
    if-nez v1, :cond_3

    .line 79
    iget-object v0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mUnlockProfile:Lmiui/bluetooth/ble/MiBleUnlockProfile;

    .line 81
    if-eqz v0, :cond_2

    .line 83
    if-eqz v0, :cond_4

    .line 85
    iget-object p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mBleListener:Lcom/android/keyguard/MiuiBleUnlockHelper$7;

    .line 87
    invoke-virtual {v0, p0}, Lmiui/bluetooth/ble/MiBleUnlockProfile;->registerUnlockListener(Lmiui/bluetooth/ble/MiBleUnlockProfile$OnUnlockStateChangeListener;)V

    .line 89
    goto :goto_0

    .line 92
    :cond_2
    const-string v0, "connectBLEDevice..."

    .line 93
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    invoke-virtual {p0}, Lcom/android/keyguard/MiuiBleUnlockHelper;->connectBLEDevice()V

    .line 98
    goto :goto_0

    .line 101
    :cond_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 102
    const-string/jumbo v5, "verifyBLEDeviceRssi  isShowing = "

    .line 104
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 107
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 110
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 112
    const-string v0, " isOccluded = "

    .line 115
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    iget-boolean v0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mOccluded:Z

    .line 120
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 122
    const-string v0, " isMXtelcel = "

    .line 125
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-boolean p0, p0, Lcom/android/keyguard/MiuiBleUnlockHelper;->mIsMXtelcelActivity:Z

    .line 130
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 132
    const-string p0, " isHiding = "

    .line 135
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-boolean p0, v3, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHiding:Z

    .line 140
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 142
    const-string p0, " isDeviceInteractive = "

    .line 145
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    iget-boolean p0, v4, Lcom/android/keyguard/KeyguardUpdateMonitor;->mDeviceInteractive:Z

    .line 150
    invoke-static {v1, p0, v2}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 152
    :cond_4
    :goto_0
    return-void
    .line 155
.end method
