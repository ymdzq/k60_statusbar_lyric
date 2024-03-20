.class public final Lcom/android/systemui/power/PowerUI;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# static fields
.field public static final DEBUG:Z


# instance fields
.field mBatteryLevel:I

.field mBatteryStatus:I

.field public final mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final mCentralSurfacesOptionalLazy:Ldagger/Lazy;

.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public mEnableSkinTemperatureWarning:Z

.field public mEnableUsbTemperatureAlarm:Z

.field public final mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

.field public final mHandler:Landroid/os/Handler;

.field public mInvalidCharger:I

.field mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

.field public final mLastConfiguration:Landroid/content/res/Configuration;

.field public mLastShowWarningTask:Ljava/util/concurrent/Future;

.field public mLowBatteryAlertCloseLevel:I

.field public final mLowBatteryReminderLevels:[I

.field mLowWarningShownThisChargeCycle:Z

.field public mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

.field public mPlugType:I

.field public final mPowerManager:Landroid/os/PowerManager;

.field final mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

.field public mScreenOffTime:J

.field mSevereWarningShownThisChargeCycle:Z

.field public mSkinThermalEventListener:Landroid/os/IThermalEventListener;

.field mThermalService:Landroid/os/IThermalService;

.field public mUsbThermalEventListener:Landroid/os/IThermalEventListener;

.field public final mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

.field public final mUserTracker:Lcom/android/systemui/settings/UserTracker;

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

.field public final mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "PowerUI"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/statusbar/CommandQueue;Ldagger/Lazy;Lcom/android/systemui/power/PowerUI$WarningsUI;Lcom/android/systemui/power/EnhancedEstimates;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Landroid/os/PowerManager;Lcom/android/systemui/settings/UserTracker;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 10
    new-instance v0, Lcom/android/systemui/power/PowerUI$Receiver;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$Receiver;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 17
    new-instance v0, Landroid/content/res/Configuration;

    .line 19
    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 24
    const/4 v0, 0x0

    .line 26
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 27
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 29
    const/4 v0, 0x2

    .line 31
    new-array v0, v0, [I

    .line 32
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 34
    const-wide/16 v0, -0x1

    .line 36
    iput-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 38
    const/16 v0, 0x64

    .line 40
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 42
    const/4 v0, 0x1

    .line 44
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 45
    new-instance v0, Lcom/android/systemui/power/PowerUI$1;

    .line 47
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$1;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 49
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    .line 52
    new-instance v0, Lcom/android/systemui/power/PowerUI$2;

    .line 54
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$2;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 56
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 59
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 61
    iput-object p2, p0, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 63
    iput-object p3, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 65
    iput-object p4, p0, Lcom/android/systemui/power/PowerUI;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 67
    iput-object p5, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 69
    iput-object p6, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 71
    iput-object p8, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 73
    iput-object p7, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 75
    iput-object p9, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 77
    return-void
    .line 79
.end method


# virtual methods
.method public final dismissInattentiveSleepWarning(Z)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    if-eqz p0, :cond_2

    .line 4
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 v0, 0x1

    .line 13
    iput-boolean v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    .line 14
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 18
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda1;

    .line 23
    invoke-direct {v0, p1}, Lcom/android/systemui/power/InattentiveSleepWarningView$$ExternalSyntheticLambda1;-><init>(Landroid/animation/Animator;)V

    .line 25
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    const/4 p1, 0x4

    .line 32
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    .line 36
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 38
    :cond_2
    :goto_0
    return-void
    .line 41
.end method

.method public declared-synchronized doSkinThermalEventListenerRegistration()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v1

    .line 10
    const-string/jumbo v2, "show_temperature_warning"

    .line 11
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v3

    .line 19
    const v4, 0x7f0b0048    # @integer/config_showTemperatureWarning '0'

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eq v1, v0, :cond_5

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 42
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;

    .line 46
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$SkinThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 48
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 53
    if-nez v0, :cond_2

    .line 55
    const-string/jumbo v0, "thermalservice"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 70
    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 76
    const/4 v4, 0x3

    .line 78
    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 79
    move-result v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mSkinThermalEventListener:Landroid/os/IThermalEventListener;

    .line 86
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 88
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    const-string v1, "PowerUI"

    .line 94
    const-string v4, "Exception while (un)registering skin thermal event listener."

    .line 96
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    move v0, v3

    .line 101
    :goto_1
    if-nez v0, :cond_5

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 104
    if-nez v0, :cond_4

    .line 106
    goto :goto_2

    .line 108
    :cond_4
    move v2, v3

    .line 109
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 110
    const-string v0, "PowerUI"

    .line 112
    const-string v1, "Failed to register or unregister skin thermal event listener."

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_5
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
    .line 123
.end method

.method public declared-synchronized doUsbThermalEventListenerRegistration()V
    .locals 5

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v1

    .line 10
    const-string/jumbo v2, "show_usb_temperature_alarm"

    .line 11
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 14
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v3

    .line 19
    const v4, 0x7f0b0049    # @integer/config_showUsbPortAlarm '0'

    .line 20
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getInteger(I)I

    .line 23
    move-result v3

    .line 26
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 27
    move-result v1

    .line 30
    const/4 v2, 0x1

    .line 31
    const/4 v3, 0x0

    .line 32
    if-eqz v1, :cond_0

    .line 33
    move v1, v2

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    move v1, v3

    .line 37
    :goto_0
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 38
    if-eq v1, v0, :cond_5

    .line 40
    :try_start_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 42
    if-nez v0, :cond_1

    .line 44
    new-instance v0, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;

    .line 46
    invoke-direct {v0, p0}, Lcom/android/systemui/power/PowerUI$UsbThermalEventListener;-><init>(Lcom/android/systemui/power/PowerUI;)V

    .line 48
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 51
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 53
    if-nez v0, :cond_2

    .line 55
    const-string/jumbo v0, "thermalservice"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 60
    move-result-object v0

    .line 63
    invoke-static {v0}, Landroid/os/IThermalService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IThermalService;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 68
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 70
    if-eqz v0, :cond_3

    .line 72
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 74
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 76
    const/4 v4, 0x4

    .line 78
    invoke-interface {v0, v1, v4}, Landroid/os/IThermalService;->registerThermalEventListenerWithType(Landroid/os/IThermalEventListener;I)Z

    .line 79
    move-result v0

    .line 82
    goto :goto_1

    .line 83
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mThermalService:Landroid/os/IThermalService;

    .line 84
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mUsbThermalEventListener:Landroid/os/IThermalEventListener;

    .line 86
    invoke-interface {v0, v1}, Landroid/os/IThermalService;->unregisterThermalEventListener(Landroid/os/IThermalEventListener;)Z

    .line 88
    move-result v0
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 91
    goto :goto_1

    .line 92
    :catch_0
    move-exception v0

    .line 93
    :try_start_2
    const-string v1, "PowerUI"

    .line 94
    const-string v4, "Exception while (un)registering usb thermal event listener."

    .line 96
    invoke-static {v1, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    move v0, v3

    .line 101
    :goto_1
    if-nez v0, :cond_5

    .line 102
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 104
    if-nez v0, :cond_4

    .line 106
    goto :goto_2

    .line 108
    :cond_4
    move v2, v3

    .line 109
    :goto_2
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 110
    const-string v0, "PowerUI"

    .line 112
    const-string v1, "Failed to register or unregister usb thermal event listener."

    .line 114
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 116
    :cond_5
    monitor-exit p0

    .line 119
    return-void

    .line 120
    :catchall_0
    move-exception v0

    .line 121
    monitor-exit p0

    .line 122
    throw v0
    .line 123
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    const-string p2, "mLowBatteryAlertCloseLevel="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(I)V

    .line 9
    const-string p2, "mLowBatteryReminderLevels="

    .line 12
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 14
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 17
    invoke-static {p2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    const-string p2, "mBatteryLevel="

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 28
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 31
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 33
    move-result-object p2

    .line 36
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    const-string p2, "mBatteryStatus="

    .line 40
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 42
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 45
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 47
    move-result-object p2

    .line 50
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    const-string p2, "mPlugType="

    .line 54
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 56
    iget p2, p0, Lcom/android/systemui/power/PowerUI;->mPlugType:I

    .line 59
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 61
    move-result-object p2

    .line 64
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 65
    const-string p2, "mInvalidCharger="

    .line 68
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 70
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mInvalidCharger:I

    .line 73
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 75
    move-result-object v0

    .line 78
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 79
    const-string v0, "mScreenOffTime="

    .line 82
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 84
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 87
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 89
    iget-wide v0, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 92
    const-wide/16 v2, 0x0

    .line 94
    cmp-long v0, v0, v2

    .line 96
    if-ltz v0, :cond_0

    .line 98
    const-string v0, " ("

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 102
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 105
    move-result-wide v0

    .line 108
    iget-wide v2, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 109
    sub-long/2addr v0, v2

    .line 111
    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 112
    const-string v0, " ago)"

    .line 115
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 117
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 120
    const-string/jumbo v0, "soundTimeout="

    .line 123
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 126
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 129
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 131
    move-result-object v0

    .line 134
    const-string v1, "low_battery_sound_timeout"

    .line 135
    const/4 v2, 0x0

    .line 137
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 138
    move-result v0

    .line 141
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 142
    const-string v0, "bucket: "

    .line 145
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 147
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 150
    invoke-virtual {p0, v0}, Lcom/android/systemui/power/PowerUI;->findBatteryLevelBucket(I)I

    .line 152
    move-result v0

    .line 155
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 156
    move-result-object v0

    .line 159
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    const-string v0, "mEnableSkinTemperatureWarning="

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 165
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableSkinTemperatureWarning:Z

    .line 168
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 170
    const-string v0, "mEnableUsbTemperatureAlarm="

    .line 173
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 175
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mEnableUsbTemperatureAlarm:Z

    .line 178
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 180
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 183
    check-cast p0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    const-string v0, "mWarning="

    .line 190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 192
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 195
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 197
    const-string v0, "mPlaySound="

    .line 200
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 202
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 205
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 207
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 210
    iget-boolean p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mInvalidCharger:Z

    .line 213
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 215
    const-string p2, "mShowing="

    .line 218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 220
    sget-object p2, Lcom/android/systemui/power/PowerNotificationWarnings;->SHOWING_STRINGS:[Ljava/lang/String;

    .line 223
    iget v0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mShowing:I

    .line 225
    aget-object p2, p2, v0

    .line 227
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 229
    const-string p2, "mSaverConfirmation="

    .line 232
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 234
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mSaverConfirmation:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 237
    const-string v0, "not null"

    .line 239
    const/4 v1, 0x0

    .line 241
    if-eqz p2, :cond_1

    .line 242
    move-object p2, v0

    .line 244
    goto :goto_0

    .line 245
    :cond_1
    move-object p2, v1

    .line 246
    :goto_0
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 247
    const-string p2, "mSaverEnabledConfirmation="

    .line 250
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 252
    const-string p2, "mHighTempWarning="

    .line 255
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 257
    iget-boolean p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempWarning:Z

    .line 260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 262
    const-string p2, "mHighTempDialog="

    .line 265
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 270
    if-eqz p2, :cond_2

    .line 272
    move-object p2, v0

    .line 274
    goto :goto_1

    .line 275
    :cond_2
    move-object p2, v1

    .line 276
    :goto_1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    const-string p2, "mThermalShutdownDialog="

    .line 280
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mThermalShutdownDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 285
    if-eqz p2, :cond_3

    .line 287
    move-object p2, v0

    .line 289
    goto :goto_2

    .line 290
    :cond_3
    move-object p2, v1

    .line 291
    :goto_2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 292
    const-string p2, "mUsbHighTempDialog="

    .line 295
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 297
    iget-object p0, p0, Lcom/android/systemui/power/PowerNotificationWarnings;->mUsbHighTempDialog:Lcom/android/systemui/statusbar/phone/SystemUIDialog;

    .line 300
    if-eqz p0, :cond_4

    .line 302
    goto :goto_3

    .line 304
    :cond_4
    move-object v0, v1

    .line 305
    :goto_3
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 306
    return-void
    .line 309
.end method

.method public final findBatteryLevelBucket(I)I
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 8
    const/4 v0, 0x0

    .line 10
    aget v2, p0, v0

    .line 11
    if-le p1, v2, :cond_1

    .line 13
    return v0

    .line 15
    :cond_1
    array-length v0, p0

    .line 16
    sub-int/2addr v0, v1

    .line 17
    :goto_0
    if-ltz v0, :cond_3

    .line 18
    aget v1, p0, v0

    .line 20
    if-gt p1, v1, :cond_2

    .line 22
    rsub-int/lit8 p0, v0, -0x1

    .line 24
    return p0

    .line 26
    :cond_2
    add-int/lit8 v0, v0, -0x1

    .line 27
    goto :goto_0

    .line 29
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 30
    const-string p1, "not possible!"

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
    .line 37
.end method

.method public maybeShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)V
    .locals 6

    .line 1
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 2
    const/16 v1, 0x1e

    .line 4
    const/4 v2, 0x0

    .line 6
    sget-boolean v3, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 7
    const-string v4, "PowerUI"

    .line 9
    if-lt v0, v1, :cond_0

    .line 11
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 13
    iput-boolean v2, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 15
    if-eqz v3, :cond_0

    .line 17
    const-string v0, "Charge cycle reset! Can show warnings again"

    .line 19
    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    :cond_0
    iget v0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 24
    const/4 v1, 0x1

    .line 26
    iget v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 27
    if-ne v5, v0, :cond_1

    .line 29
    iget-boolean p2, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 31
    if-eqz p2, :cond_2

    .line 33
    :cond_1
    move v2, v1

    .line 35
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    .line 36
    move-result p2

    .line 39
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 40
    if-eqz p2, :cond_4

    .line 42
    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 44
    new-instance p2, Ljava/lang/StringBuilder;

    .line 46
    const-string/jumbo v5, "show low battery warning: level="

    .line 48
    invoke-direct {p2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 51
    iget v5, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBatteryLevel:I

    .line 54
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    const-string v5, " ["

    .line 59
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    iget v5, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mBucket:I

    .line 64
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 66
    const-string v5, "] playSound="

    .line 69
    invoke-virtual {p2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 77
    move-result-object p2

    .line 80
    const-string v5, "PowerUI.Notification"

    .line 81
    invoke-static {v5, p2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object p2, Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;->LOW_BATTERY_NOTIFICATION:Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;

    .line 86
    invoke-virtual {v0, p2}, Lcom/android/systemui/power/PowerNotificationWarnings;->logEvent(Lcom/android/systemui/power/BatteryWarningEvents$LowBatteryWarningEvent;)V

    .line 88
    iput-boolean v2, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mPlaySound:Z

    .line 91
    iput-boolean v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mWarning:Z

    .line 93
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 95
    iget p2, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 98
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    .line 100
    if-gt p2, p1, :cond_3

    .line 102
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 104
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 106
    if-eqz v3, :cond_8

    .line 108
    const-string p0, "Severe warning marked as shown this cycle"

    .line 110
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    goto :goto_0

    .line 115
    :cond_3
    const-string p1, "Low warning marked as shown this cycle"

    .line 116
    invoke-static {v4, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    iput-boolean v1, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 121
    goto :goto_0

    .line 123
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/systemui/power/PowerUI;->shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z

    .line 124
    move-result p0

    .line 127
    if-eqz p0, :cond_6

    .line 128
    if-eqz v3, :cond_5

    .line 130
    const-string p0, "Dismissing warning"

    .line 132
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_5
    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 137
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->dismissLowBatteryWarning()V

    .line 139
    goto :goto_0

    .line 142
    :cond_6
    if-eqz v3, :cond_7

    .line 143
    const-string p0, "Updating warning"

    .line 145
    invoke-static {v4, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    :cond_7
    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 150
    invoke-virtual {v0}, Lcom/android/systemui/power/PowerNotificationWarnings;->updateNotification()V

    .line 152
    :cond_8
    :goto_0
    return-void
    .line 155
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    .line 4
    move-result p1

    .line 7
    and-int/lit8 p1, p1, 0x3

    .line 8
    if-eqz p1, :cond_0

    .line 10
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 12
    new-instance v0, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;

    .line 14
    const/4 v1, 0x0

    .line 16
    invoke-direct {v0, v1, p0}, Lcom/android/systemui/power/PowerUI$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    :cond_0
    return-void
    .line 23
.end method

.method public refreshEstimateIfNeeded()Lcom/android/settingslib/fuelgauge/Estimate;
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mEnhancedEstimates:Lcom/android/systemui/power/EnhancedEstimates;

    .line 2
    check-cast p0, Lcom/android/systemui/power/EnhancedEstimatesImpl;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    new-instance p0, Lcom/android/settingslib/fuelgauge/Estimate;

    .line 9
    const-wide/16 v1, -0x1

    .line 11
    const/4 v5, 0x0

    .line 13
    const-wide/16 v3, -0x1

    .line 14
    move-object v0, p0

    .line 16
    invoke-direct/range {v0 .. v5}, Lcom/android/settingslib/fuelgauge/Estimate;-><init>(JJZ)V

    .line 17
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 20
    if-eqz v0, :cond_0

    .line 22
    const-string/jumbo v0, "updated estimate: -1"

    .line 24
    const-string v1, "PowerUI"

    .line 27
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    :cond_0
    return-object p0
    .line 32
.end method

.method public shouldDismissHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    if-nez p0, :cond_1

    .line 4
    iget p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 6
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    .line 8
    if-le p0, p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public shouldDismissLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 0

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 2
    if-nez p0, :cond_1

    .line 4
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 6
    if-nez p0, :cond_1

    .line 8
    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 10
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 12
    if-le p1, p0, :cond_0

    .line 14
    if-lez p1, :cond_0

    .line 16
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    goto :goto_1

    .line 20
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 21
    :goto_1
    return p0
    .line 22
.end method

.method public shouldShowHybridWarning(Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 6

    .line 1
    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    const-string v1, "PowerUI"

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    .line 8
    if-nez v0, :cond_6

    .line 10
    if-ne v4, v3, :cond_0

    .line 12
    goto :goto_2

    .line 14
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 15
    iget v4, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryLevel:I

    .line 17
    if-nez v0, :cond_1

    .line 19
    iget-boolean v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 21
    if-nez v0, :cond_1

    .line 23
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->lowLevelThreshold:I

    .line 25
    if-gt v4, v0, :cond_1

    .line 27
    move v0, v3

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v0, v2

    .line 31
    :goto_0
    iget-boolean v5, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 32
    if-nez v5, :cond_2

    .line 34
    iget v5, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->severeLevelThreshold:I

    .line 36
    if-gt v4, v5, :cond_2

    .line 38
    move v4, v3

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v4, v2

    .line 42
    :goto_1
    if-nez v0, :cond_3

    .line 43
    if-eqz v4, :cond_4

    .line 45
    :cond_3
    move v2, v3

    .line 47
    :cond_4
    sget-boolean v0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    .line 48
    if-eqz v0, :cond_5

    .line 50
    const-string v0, "Enhanced trigger is: "

    .line 52
    const-string v3, "\nwith battery snapshot: mLowWarningShownThisChargeCycle: "

    .line 54
    invoke-static {v0, v2, v3}, Landroidx/slice/widget/RowView$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    move-result-object v0

    .line 59
    iget-boolean v3, p0, Lcom/android/systemui/power/PowerUI;->mLowWarningShownThisChargeCycle:Z

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 62
    const-string v3, " mSevereWarningShownThisChargeCycle: "

    .line 65
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    iget-boolean p0, p0, Lcom/android/systemui/power/PowerUI;->mSevereWarningShownThisChargeCycle:Z

    .line 70
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 72
    const-string p0, "\n"

    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {p1}, Lcom/android/systemui/power/BatteryStateSnapshot;->toString()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p0

    .line 90
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    :cond_5
    return v2

    .line 94
    :cond_6
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 95
    const-string v0, "can\'t show warning due to - plugged: "

    .line 97
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    iget-boolean p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 102
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    const-string p1, " status unknown: "

    .line 107
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    if-ne v4, v3, :cond_7

    .line 112
    goto :goto_3

    .line 114
    :cond_7
    move v3, v2

    .line 115
    :goto_3
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object p0

    .line 122
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    return v2
    .line 126
.end method

.method public shouldShowLowBatteryWarning(Lcom/android/systemui/power/BatteryStateSnapshot;Lcom/android/systemui/power/BatteryStateSnapshot;)Z
    .locals 1

    .line 1
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 2
    if-nez p0, :cond_1

    .line 4
    iget-boolean p0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->isPowerSaver:Z

    .line 6
    if-nez p0, :cond_1

    .line 8
    iget p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 10
    iget v0, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->bucket:I

    .line 12
    if-lt v0, p0, :cond_0

    .line 14
    iget-boolean p0, p2, Lcom/android/systemui/power/BatteryStateSnapshot;->plugged:Z

    .line 16
    if-eqz p0, :cond_1

    .line 18
    :cond_0
    if-gez v0, :cond_1

    .line 20
    const/4 p0, 0x1

    .line 22
    iget p1, p1, Lcom/android/systemui/power/BatteryStateSnapshot;->batteryStatus:I

    .line 23
    if-eq p1, p0, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const/4 p0, 0x0

    .line 28
    :goto_0
    return p0
    .line 29
.end method

.method public final showInattentiveSleepWarning()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 8
    invoke-direct {v0, v1}, Lcom/android/systemui/power/InattentiveSleepWarningView;-><init>(Landroid/content/Context;)V

    .line 10
    iput-object v0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI;->mOverlayView:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 15
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getParent()Landroid/view/ViewParent;

    .line 17
    move-result-object v0

    .line 20
    if-eqz v0, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 23
    invoke-virtual {v0}, Landroid/animation/Animator;->isStarted()Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mFadeOutAnimator:Landroid/animation/Animator;

    .line 31
    invoke-virtual {p0}, Landroid/animation/Animator;->cancel()V

    .line 33
    goto :goto_0

    .line 36
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 39
    const/4 v0, 0x0

    .line 42
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 43
    iget-object v0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    .line 46
    iget-object v1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowToken:Landroid/os/IBinder;

    .line 48
    new-instance v8, Landroid/view/WindowManager$LayoutParams;

    .line 50
    const/4 v3, -0x1

    .line 52
    const/4 v4, -0x1

    .line 53
    const/16 v5, 0x7d6

    .line 54
    const/16 v6, 0x100

    .line 56
    const/4 v7, -0x3

    .line 58
    move-object v2, v8

    .line 59
    invoke-direct/range {v2 .. v7}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 60
    iget v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 63
    or-int/lit8 v2, v2, 0x10

    .line 65
    iput v2, v8, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 67
    const-string v2, "InattentiveSleepWarning"

    .line 69
    invoke-virtual {v8, v2}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    iput-object v1, v8, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 74
    invoke-interface {v0, p0, v8}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 76
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 79
    move-result-object v0

    .line 82
    const v1, 0x7f130541    # @string/inattentive_sleep_warning_message 'The device will soon turn off; press to keep it on.'

    .line 83
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 90
    :cond_2
    :goto_0
    return-void
    .line 93
.end method

.method public final start()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mPowerManager:Landroid/os/PowerManager;

    .line 2
    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_0

    .line 8
    const-wide/16 v1, -0x1

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 13
    move-result-wide v1

    .line 16
    :goto_0
    iput-wide v1, p0, Lcom/android/systemui/power/PowerUI;->mScreenOffTime:J

    .line 17
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 19
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 25
    move-result-object v2

    .line 28
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mLastConfiguration:Landroid/content/res/Configuration;

    .line 29
    invoke-virtual {v3, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 31
    new-instance v2, Lcom/android/systemui/power/PowerUI$3;

    .line 34
    iget-object v3, p0, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 36
    const/4 v4, 0x0

    .line 38
    invoke-direct {v2, p0, v3, v4}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;I)V

    .line 39
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 42
    move-result-object v5

    .line 45
    const-string v6, "low_power_trigger_level"

    .line 46
    invoke-static {v6}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 48
    move-result-object v6

    .line 51
    const/4 v7, -0x1

    .line 52
    invoke-virtual {v5, v6, v4, v2, v7}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->updateBatteryWarningLevels()V

    .line 56
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mReceiver:Lcom/android/systemui/power/PowerUI$Receiver;

    .line 59
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 61
    new-instance v6, Landroid/content/IntentFilter;

    .line 64
    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    const-string v8, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 69
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 71
    const-string v8, "android.intent.action.BATTERY_CHANGED"

    .line 74
    invoke-virtual {v6, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    iget-object v9, v2, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 79
    iget-object v10, v9, Lcom/android/systemui/power/PowerUI;->mBroadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 81
    iget-object v9, v9, Lcom/android/systemui/power/PowerUI;->mHandler:Landroid/os/Handler;

    .line 83
    invoke-virtual {v10, v2, v6, v9}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiverWithHandler(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/os/Handler;)V

    .line 85
    iget-boolean v6, v2, Lcom/android/systemui/power/PowerUI$Receiver;->mHasReceivedBattery:Z

    .line 88
    if-nez v6, :cond_1

    .line 90
    iget-object v6, v2, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 92
    iget-object v6, v6, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 94
    new-instance v9, Landroid/content/IntentFilter;

    .line 96
    invoke-direct {v9, v8}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 98
    const/4 v8, 0x0

    .line 101
    invoke-virtual {v6, v8, v9}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    move-result-object v6

    .line 105
    if-eqz v6, :cond_1

    .line 106
    iget-object v8, v2, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 108
    iget-object v8, v8, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {v2, v8, v6}, Lcom/android/systemui/power/PowerUI$Receiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 112
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mUserChangedCallback:Lcom/android/systemui/settings/UserTracker$Callback;

    .line 115
    invoke-virtual {v1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 117
    move-result-object v6

    .line 120
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI;->mUserTracker:Lcom/android/systemui/settings/UserTracker;

    .line 121
    check-cast v8, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 123
    invoke-virtual {v8, v2, v6}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 125
    iget-object v2, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessObserver:Lcom/android/systemui/power/PowerUI$1;

    .line 128
    iget-object v6, p0, Lcom/android/systemui/power/PowerUI;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 130
    invoke-virtual {v6, v2}, Lcom/android/systemui/keyguard/Lifecycle;->addObserver(Ljava/lang/Object;)V

    .line 132
    const-string v2, "powerui_prefs"

    .line 135
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 137
    move-result-object v6

    .line 140
    const-string v8, "boot_count"

    .line 141
    invoke-interface {v6, v8, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 143
    move-result v6

    .line 146
    :try_start_0
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 147
    move-result-object v9

    .line 150
    invoke-static {v9, v8}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    .line 151
    move-result v7
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 154
    goto :goto_1

    .line 155
    :catch_0
    const-string v9, "PowerUI"

    .line 156
    const-string v10, "Failed to read system boot count from Settings.Global.BOOT_COUNT"

    .line 158
    invoke-static {v9, v10}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :goto_1
    const/4 v9, 0x1

    .line 163
    if-le v7, v6, :cond_2

    .line 164
    invoke-virtual {v1, v2, v4}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 166
    move-result-object v1

    .line 169
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 170
    move-result-object v1

    .line 173
    invoke-interface {v1, v8, v7}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 174
    move-result-object v1

    .line 177
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 178
    invoke-virtual {v0}, Landroid/os/PowerManager;->getLastShutdownReason()I

    .line 181
    move-result v0

    .line 184
    const/4 v1, 0x4

    .line 185
    if-ne v0, v1, :cond_2

    .line 186
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mWarnings:Lcom/android/systemui/power/PowerUI$WarningsUI;

    .line 188
    check-cast v0, Lcom/android/systemui/power/PowerNotificationWarnings;

    .line 190
    iget-object v1, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mContext:Landroid/content/Context;

    .line 192
    const v2, 0x7f130b98    # @string/thermal_shutdown_message 'Your phone is now running normally.\nTap for more info'

    .line 194
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 197
    move-result-object v2

    .line 200
    new-instance v6, Landroid/app/Notification$Builder;

    .line 201
    const-string v7, "ALR"

    .line 203
    invoke-direct {v6, v1, v7}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 205
    const v7, 0x7f080fc6    # @drawable/ic_device_thermostat_24 'res/drawable/ic_device_thermostat_24.xml'

    .line 208
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 211
    move-result-object v6

    .line 214
    const-wide/16 v7, 0x0

    .line 215
    invoke-virtual {v6, v7, v8}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 217
    move-result-object v6

    .line 220
    invoke-virtual {v6, v4}, Landroid/app/Notification$Builder;->setShowWhen(Z)Landroid/app/Notification$Builder;

    .line 221
    move-result-object v6

    .line 224
    const v7, 0x7f130b99    # @string/thermal_shutdown_title 'Phone turned off due to heat'

    .line 225
    invoke-virtual {v1, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 228
    move-result-object v7

    .line 231
    invoke-virtual {v6, v7}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 232
    move-result-object v6

    .line 235
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 236
    move-result-object v6

    .line 239
    new-instance v7, Landroid/app/Notification$BigTextStyle;

    .line 240
    invoke-direct {v7}, Landroid/app/Notification$BigTextStyle;-><init>()V

    .line 242
    invoke-virtual {v7, v2}, Landroid/app/Notification$BigTextStyle;->bigText(Ljava/lang/CharSequence;)Landroid/app/Notification$BigTextStyle;

    .line 245
    move-result-object v2

    .line 248
    invoke-virtual {v6, v2}, Landroid/app/Notification$Builder;->setStyle(Landroid/app/Notification$Style;)Landroid/app/Notification$Builder;

    .line 249
    move-result-object v2

    .line 252
    invoke-virtual {v2, v9}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    .line 253
    move-result-object v2

    .line 256
    const-string v6, "PNW.clickedThermalShutdownWarning"

    .line 257
    invoke-virtual {v0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 259
    move-result-object v6

    .line 262
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 263
    move-result-object v2

    .line 266
    const-string v6, "PNW.dismissedThermalShutdownWarning"

    .line 267
    invoke-virtual {v0, v6}, Lcom/android/systemui/power/PowerNotificationWarnings;->pendingBroadcast(Ljava/lang/String;)Landroid/app/PendingIntent;

    .line 269
    move-result-object v6

    .line 272
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 273
    move-result-object v2

    .line 276
    const v6, 0x1010543    # @android:attr/colorError

    .line 277
    invoke-static {v1, v6, v4}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;II)I

    .line 280
    move-result v6

    .line 283
    invoke-virtual {v2, v6}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    .line 284
    move-result-object v2

    .line 287
    invoke-static {v1, v2, v4}, Lcom/android/systemui/SystemUIApplication;->overrideNotificationAppName(Landroid/content/Context;Landroid/app/Notification$Builder;Z)V

    .line 288
    invoke-virtual {v2}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    .line 291
    move-result-object v1

    .line 294
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 295
    const/16 v6, 0x27

    .line 297
    iget-object v0, v0, Lcom/android/systemui/power/PowerNotificationWarnings;->mNoMan:Landroid/app/NotificationManager;

    .line 299
    const-string v7, "high_temp"

    .line 301
    invoke-virtual {v0, v7, v6, v1, v2}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 303
    :cond_2
    const-string/jumbo v0, "show_temperature_warning"

    .line 306
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 309
    move-result-object v0

    .line 312
    new-instance v1, Lcom/android/systemui/power/PowerUI$3;

    .line 313
    invoke-direct {v1, p0, v3, v9}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;I)V

    .line 315
    invoke-virtual {v5, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 318
    const-string/jumbo v0, "show_usb_temperature_alarm"

    .line 321
    invoke-static {v0}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 324
    move-result-object v0

    .line 327
    new-instance v1, Lcom/android/systemui/power/PowerUI$3;

    .line 328
    const/4 v2, 0x2

    .line 330
    invoke-direct {v1, p0, v3, v2}, Lcom/android/systemui/power/PowerUI$3;-><init>(Lcom/android/systemui/power/PowerUI;Landroid/os/Handler;I)V

    .line 331
    invoke-virtual {v5, v0, v4, v1}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 334
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doSkinThermalEventListenerRegistration()V

    .line 337
    invoke-virtual {p0}, Lcom/android/systemui/power/PowerUI;->doUsbThermalEventListenerRegistration()V

    .line 340
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 343
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 345
    return-void
    .line 348
.end method

.method public final updateBatteryWarningLevels()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x10e0042    # @android:integer/config_defaultAlarmVibrationIntensity

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v2

    .line 18
    const v3, 0x10e00a6    # @android:integer/config_maxShortcutTargetsPerApp

    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    .line 22
    move-result v2

    .line 25
    if-ge v2, v1, :cond_0

    .line 26
    move v2, v1

    .line 28
    :cond_0
    const/4 v3, 0x0

    .line 29
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryReminderLevels:[I

    .line 30
    aput v2, v4, v3

    .line 32
    const/4 v3, 0x1

    .line 34
    aput v1, v4, v3

    .line 35
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 37
    move-result-object v0

    .line 40
    const v1, 0x10e00a4    # @android:integer/config_maxResolverActivityColumns

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 44
    move-result v0

    .line 47
    add-int/2addr v0, v2

    .line 48
    iput v0, p0, Lcom/android/systemui/power/PowerUI;->mLowBatteryAlertCloseLevel:I

    .line 49
    return-void
    .line 51
.end method
