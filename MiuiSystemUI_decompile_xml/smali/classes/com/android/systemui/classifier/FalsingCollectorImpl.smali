.class public final Lcom/android/systemui/classifier/FalsingCollectorImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/classifier/FalsingCollector;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public mAvoidGesture:Z

.field public final mBatteryListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$3;

.field public final mDockEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

.field public final mDockManager:Lcom/android/systemui/dock/DockManager;

.field public final mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

.field public final mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mPendingDownEvent:Landroid/view/MotionEvent;

.field public final mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

.field public mScreenOn:Z

.field public final mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

.field public mSessionStarted:Z

.field public mShowingAod:Z

.field public mState:I

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mStatusBarStateListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

.field public final mSystemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "FalsingCollector"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/classifier/FalsingDataProvider;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/classifier/HistoryTracker;Lcom/android/systemui/util/sensors/ProximitySensor;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/policy/BatteryController;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 8

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p5

    .line 3
    move-object v2, p6

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    new-instance v3, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 8
    invoke-direct {v3, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    .line 10
    iput-object v3, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 13
    new-instance v3, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    .line 15
    invoke-direct {v3, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$1;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    .line 17
    iput-object v3, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$1;

    .line 20
    new-instance v4, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;

    .line 22
    invoke-direct {v4, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    .line 24
    iput-object v4, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardUpdateCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 27
    new-instance v5, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;

    .line 29
    invoke-direct {v5, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$3;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    .line 31
    iput-object v5, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mBatteryListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$3;

    .line 34
    new-instance v6, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

    .line 36
    invoke-direct {v6}, Lcom/android/systemui/classifier/FalsingCollectorImpl$4;-><init>()V

    .line 38
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$4;

    .line 41
    move-object v6, p1

    .line 43
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 44
    move-object v6, p2

    .line 46
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 47
    move-object v6, p4

    .line 49
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mHistoryTracker:Lcom/android/systemui/classifier/HistoryTracker;

    .line 50
    iput-object v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 52
    iput-object v2, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 54
    move-object v6, p7

    .line 56
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 57
    move-object/from16 v6, p10

    .line 59
    iput-object v6, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mDockManager:Lcom/android/systemui/dock/DockManager;

    .line 61
    move-object/from16 v7, p11

    .line 63
    iput-object v7, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 65
    move-object/from16 v7, p12

    .line 67
    iput-object v7, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 69
    check-cast v1, Lcom/android/systemui/util/sensors/ProximitySensorImpl;

    .line 71
    const-string v7, "FalsingCollector"

    .line 73
    invoke-virtual {v1, v7}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->setTag(Ljava/lang/String;)V

    .line 75
    invoke-virtual {v1}, Lcom/android/systemui/util/sensors/ProximitySensorImpl;->setDelay()V

    .line 78
    invoke-interface {p6, v3}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 81
    invoke-interface {p6}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 84
    move-result v1

    .line 87
    iput v1, v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 88
    move-object v1, p3

    .line 90
    invoke-virtual {p3, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 91
    new-instance v1, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;

    .line 94
    invoke-direct {v1, p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/classifier/FalsingCollectorImpl;)V

    .line 96
    move-object/from16 v0, p8

    .line 99
    invoke-virtual {v0, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addQsExpansionListener(Lcom/android/systemui/shade/ShadeQsExpansionListener;)V

    .line 101
    move-object/from16 v0, p9

    .line 104
    invoke-interface {v0, v5}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 106
    invoke-virtual/range {p10 .. p10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    return-void
    .line 112
.end method


# virtual methods
.method public final avoidGesture()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    .line 3
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 9
    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 13
    :cond_0
    return-void
    .line 15
.end method

.method public onQsExpansionChanged(Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 2
    move-result p1

    .line 5
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 8
    if-eqz p1, :cond_0

    .line 10
    invoke-interface {v1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    iget-boolean p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 16
    if-eqz p0, :cond_1

    .line 18
    invoke-interface {v1, v0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 20
    :cond_1
    :goto_0
    return-void
    .line 23
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->avoidGesture()V

    .line 10
    return-void

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x4

    .line 18
    if-ne v0, v1, :cond_1

    .line 19
    return-void

    .line 21
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_2

    .line 26
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    .line 28
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 32
    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mAvoidGesture:Z

    .line 38
    if-nez v0, :cond_4

    .line 40
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 42
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 44
    if-eqz v0, :cond_3

    .line 46
    invoke-virtual {v1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 48
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 51
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 53
    const/4 v0, 0x0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mPendingDownEvent:Landroid/view/MotionEvent;

    .line 57
    :cond_3
    invoke-virtual {v1, p1}, Lcom/android/systemui/classifier/FalsingDataProvider;->onMotionEvent(Landroid/view/MotionEvent;)V

    .line 59
    :cond_4
    :goto_0
    return-void
    .line 62
.end method

.method public final sessionEnd()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const-string v0, "FalsingCollector"

    .line 10
    const/4 v1, 0x0

    .line 12
    const-string v2, "Ending Session"

    .line 13
    invoke-static {v0, v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 15
    :cond_0
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 19
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 21
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 23
    invoke-interface {v1, v2}, Lcom/android/systemui/util/sensors/ThresholdSensor;->unregister(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 28
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 30
    invoke-virtual {v1}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->iterator()Ljava/util/Iterator;

    .line 32
    move-result-object v1

    .line 35
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 36
    move-result v2

    .line 39
    if-eqz v2, :cond_1

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 42
    move-result-object v2

    .line 45
    check-cast v2, Landroid/view/MotionEvent;

    .line 46
    invoke-virtual {v2}, Landroid/view/MotionEvent;->recycle()V

    .line 48
    goto :goto_0

    .line 51
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mRecentMotionEvents:Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;

    .line 52
    invoke-virtual {v1}, Lcom/android/systemui/classifier/TimeLimitedMotionEventBuffer;->clear()V

    .line 54
    const/4 v1, 0x1

    .line 57
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mDirty:Z

    .line 58
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    .line 60
    new-instance v1, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;

    .line 62
    invoke-direct {v1, v0}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;-><init>(I)V

    .line 64
    check-cast p0, Ljava/util/ArrayList;

    .line 67
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 69
    :cond_2
    return-void
    .line 72
.end method

.method public final updateSessionActive()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mScreenOn:Z

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget v3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 8
    if-ne v3, v1, :cond_0

    .line 10
    iget-boolean v3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShowingAod:Z

    .line 12
    if-nez v3, :cond_0

    .line 14
    move v3, v1

    .line 16
    goto :goto_0

    .line 17
    :cond_0
    move v3, v2

    .line 18
    :goto_0
    if-eqz v3, :cond_3

    .line 19
    iget-boolean v3, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 21
    if-nez v3, :cond_4

    .line 23
    if-eqz v0, :cond_1

    .line 25
    iget v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mState:I

    .line 27
    if-ne v0, v1, :cond_1

    .line 29
    iget-boolean v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mShowingAod:Z

    .line 31
    if-nez v0, :cond_1

    .line 33
    move v0, v1

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    move v0, v2

    .line 37
    :goto_1
    if-eqz v0, :cond_4

    .line 38
    sget-boolean v0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->DEBUG:Z

    .line 40
    if-eqz v0, :cond_2

    .line 42
    const-string v0, "FalsingCollector"

    .line 44
    const/4 v3, 0x0

    .line 46
    const-string v4, "Starting Session"

    .line 47
    invoke-static {v0, v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 49
    :cond_2
    iput-boolean v1, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSessionStarted:Z

    .line 52
    iget-object v0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mFalsingDataProvider:Lcom/android/systemui/classifier/FalsingDataProvider;

    .line 54
    iput-boolean v2, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mJustUnlockedWithFace:Z

    .line 56
    iget-object v2, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mProximitySensor:Lcom/android/systemui/util/sensors/ProximitySensor;

    .line 58
    iget-object p0, p0, Lcom/android/systemui/classifier/FalsingCollectorImpl;->mSensorEventListener:Lcom/android/systemui/classifier/FalsingCollectorImpl$$ExternalSyntheticLambda1;

    .line 60
    invoke-interface {v2, p0}, Lcom/android/systemui/util/sensors/ThresholdSensor;->register(Lcom/android/systemui/util/sensors/ThresholdSensor$Listener;)V

    .line 62
    iget-object p0, v0, Lcom/android/systemui/classifier/FalsingDataProvider;->mSessionListeners:Ljava/util/List;

    .line 65
    new-instance v0, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;

    .line 67
    invoke-direct {v0, v1}, Lcom/android/systemui/classifier/FalsingDataProvider$$ExternalSyntheticLambda1;-><init>(I)V

    .line 69
    check-cast p0, Ljava/util/ArrayList;

    .line 72
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 74
    goto :goto_2

    .line 77
    :cond_3
    invoke-virtual {p0}, Lcom/android/systemui/classifier/FalsingCollectorImpl;->sessionEnd()V

    .line 78
    :cond_4
    :goto_2
    return-void
    .line 81
.end method
