.class public final Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;
.super Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mBatteryPerformanceModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

.field public final mBatterySaveModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

.field public mBatteryStyle:I

.field public final mBatteryStyleChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

.field public volatile mCurrentUserId:I

.field public mDemoMode:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;

.field public mMiuiCharge:Z

.field public final mMiuiDemoModeController:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

.field public mMiuiQuickCharge:Z

.field public mPerformanceMode:Z

.field public final mUpdatePowerSave:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

.field public final mUserChangedCallback:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;


# direct methods
.method public static -$$Nest$mfireChargeStateChanged(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_0

    .line 12
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 20
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiCharge:Z

    .line 22
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiQuickCharge:Z

    .line 24
    invoke-interface {v3, v4, v5}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onChargeStateChanged(ZZ)V

    .line 26
    add-int/lit8 v2, v2, 0x1

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    monitor-exit v0

    .line 32
    return-void

    .line 33
    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 35
    throw p0
    .line 36
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;-><init>(Landroid/content/Context;Lcom/android/systemui/power/EnhancedEstimates;Landroid/os/PowerManager;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/demomode/DemoModeController;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Landroid/os/Handler;)V

    .line 2
    const/4 p2, 0x1

    .line 5
    iput p2, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyle:I

    .line 6
    new-instance p3, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;

    .line 8
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V

    .line 10
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mKeyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;

    .line 13
    new-instance p3, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 15
    const/4 p4, 0x0

    .line 17
    invoke-direct {p3, p0, p4}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;I)V

    .line 18
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mUpdatePowerSave:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 21
    new-instance p3, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;

    .line 23
    invoke-direct {p3, p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;)V

    .line 25
    iput-object p3, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mUserChangedCallback:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$3;

    .line 28
    const-string p5, "batterymanager"

    .line 30
    invoke-virtual {p1, p5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p5

    .line 35
    check-cast p5, Landroid/os/BatteryManager;

    .line 36
    const/4 p6, 0x4

    .line 38
    invoke-virtual {p5, p6}, Landroid/os/BatteryManager;->getIntProperty(I)I

    .line 39
    move-result p5

    .line 42
    const/16 p6, 0x64

    .line 43
    invoke-static {p6, p5}, Ljava/lang/Math;->min(II)I

    .line 45
    move-result p5

    .line 48
    invoke-static {p4, p5}, Ljava/lang/Math;->max(II)I

    .line 49
    move-result p5

    .line 52
    iput p5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 53
    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    .line 55
    move-result-object p1

    .line 58
    check-cast p9, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 59
    invoke-virtual {p9, p3, p1}, Lcom/android/systemui/settings/UserTrackerImpl;->addCallback(Lcom/android/systemui/settings/UserTracker$Callback;Ljava/util/concurrent/Executor;)V

    .line 61
    invoke-virtual {p9}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 64
    move-result p1

    .line 67
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mCurrentUserId:I

    .line 68
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 70
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 72
    invoke-direct {p1, p0, p3, p4}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;Landroid/os/Handler;I)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyleChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 77
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 79
    iget-object p3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 81
    invoke-direct {p1, p0, p3, p2}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;Landroid/os/Handler;I)V

    .line 83
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatterySaveModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 86
    new-instance p1, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 88
    iget-object p2, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 90
    const/4 p3, 0x2

    .line 92
    invoke-direct {p1, p0, p2, p3}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;Landroid/os/Handler;I)V

    .line 93
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryPerformanceModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 96
    iput-object p10, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiDemoModeController:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 98
    return-void
    .line 100
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V
    .locals 2

    .line 2
    invoke-super {p0, p1}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    .line 3
    iget v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyle:I

    invoke-interface {p1, v0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryStyleChanged(I)V

    .line 4
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiCharge:Z

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiQuickCharge:Z

    invoke-interface {p1, v0, v1}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onChargeStateChanged(ZZ)V

    .line 5
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mPerformanceMode:Z

    invoke-interface {p1, p0}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onPerformanceModeChanged(Z)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->addCallback(Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;)V

    return-void
.end method

.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mDemoMode:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p1, "enter"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mDemoMode:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mDemoMode:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const-string p1, "exit"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mDemoMode:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->fireBatteryLevelChanged()V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method

.method public final fireBatteryLevelChanged()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    :goto_0
    if-ge v2, v1, :cond_1

    .line 12
    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mChangeCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v3

    .line 19
    check-cast v3, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;

    .line 20
    iget-boolean v4, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mDemoMode:Z

    .line 22
    if-eqz v4, :cond_0

    .line 24
    const/16 v4, 0x64

    .line 26
    goto :goto_1

    .line 28
    :cond_0
    iget v4, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mLevel:I

    .line 29
    :goto_1
    iget-boolean v5, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPluggedIn:Z

    .line 31
    iget-boolean v6, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mCharging:Z

    .line 33
    invoke-interface {v3, v4, v5, v6}, Lcom/android/systemui/statusbar/policy/BatteryController$BatteryStateChangeCallback;->onBatteryLevelChanged(IZZ)V

    .line 35
    add-int/lit8 v2, v2, 0x1

    .line 38
    goto :goto_0

    .line 40
    :cond_1
    monitor-exit v0

    .line 41
    return-void

    .line 42
    :catchall_0
    move-exception p0

    .line 43
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    throw p0
    .line 45
.end method

.method public final init()V
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->registerReceiver$1()V

    .line 2
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 5
    if-nez v0, :cond_0

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 9
    new-instance v1, Landroid/content/IntentFilter;

    .line 11
    const-string v2, "android.intent.action.BATTERY_CHANGED"

    .line 13
    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 15
    const/4 v2, 0x0

    .line 18
    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    move-result-object v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mHasReceivedBattery:Z

    .line 25
    if-nez v1, :cond_0

    .line 27
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 29
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 31
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDemoModeController:Lcom/android/systemui/demomode/DemoModeController;

    .line 34
    invoke-virtual {v0, p0}, Lcom/android/systemui/demomode/DemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 39
    const-string v1, "BatteryController"

    .line 41
    invoke-virtual {v0, v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->updatePowerSave()V

    .line 46
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchingEstimate:Z

    .line 49
    const/4 v1, 0x1

    .line 51
    const/4 v2, 0x0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    iput-boolean v1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mFetchingEstimate:Z

    .line 56
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 58
    new-instance v3, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda0;

    .line 60
    invoke-direct {v3, p0, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;I)V

    .line 62
    invoke-virtual {v0, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 65
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mMiuiDemoModeController:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 68
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 70
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object v0

    .line 78
    const-string v3, "battery_indicator_style"

    .line 79
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    move-result-object v3

    .line 84
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyleChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 85
    const/4 v5, -0x1

    .line 87
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 88
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 91
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 93
    move-result-object v0

    .line 96
    const-string v3, "POWER_SAVE_MODE_OPEN"

    .line 97
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 99
    move-result-object v3

    .line 102
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatterySaveModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 103
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 105
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mContext:Landroid/content/Context;

    .line 108
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 110
    move-result-object v0

    .line 113
    const-string v3, "POWER_PERFORMANCE_MODE_OPEN"

    .line 114
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 116
    move-result-object v3

    .line 119
    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryPerformanceModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 120
    invoke-virtual {v0, v3, v2, v4, v5}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 122
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryStyleChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 125
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->onChange(Z)V

    .line 127
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->updatePowerSave()V

    .line 130
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mBatteryPerformanceModeChangeObserver:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;

    .line 133
    invoke-virtual {v0, v2}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$4;->onChange(Z)V

    .line 135
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mMainHandler:Landroid/os/Handler;

    .line 138
    new-instance v2, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 140
    invoke-direct {v2, p0, v1}, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;-><init>(Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;I)V

    .line 142
    invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 145
    return-void
    .line 148
.end method

.method public final registerBatteryStatusCallback(Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "registerBatteryStatusCallback: keyguardUpdateMonitor="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiBatteryControllerImpl"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    if-eqz p1, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mKeyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$1;

    .line 24
    invoke-virtual {p1, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method public final setPowerSave(Z)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mPowerSave:Z

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->firePowerSaveChanged()V

    .line 9
    return-void
    .line 12
.end method

.method public final updatePowerSave()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mUpdatePowerSave:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->mBgHandler:Landroid/os/Handler;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl;->mUpdatePowerSave:Lcom/android/systemui/statusbar/policy/MiuiBatteryControllerImpl$2;

    .line 11
    invoke-virtual {v0, p0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 13
    return-void
    .line 16
.end method
