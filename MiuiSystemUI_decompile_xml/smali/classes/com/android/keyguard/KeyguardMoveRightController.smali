.class public final Lcom/android/keyguard/KeyguardMoveRightController;
.super Lcom/android/keyguard/BaseKeyguardMoveController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCameraViewShowing:Z

.field public mIsLightLockWallpaper:Z

.field public mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

.field public final mKeyguardCameraViewCallBack:Lcom/android/keyguard/KeyguardMoveRightController$1;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mUserAuthenticatedSinceBoot:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveHelper$2;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/BaseKeyguardMoveController;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveHelper$2;)V

    .line 2
    new-instance p1, Lcom/android/keyguard/KeyguardMoveRightController$1;

    .line 5
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMoveRightController$1;-><init>(Lcom/android/keyguard/KeyguardMoveRightController;)V

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraViewCallBack:Lcom/android/keyguard/KeyguardMoveRightController$1;

    .line 10
    new-instance p1, Lcom/android/keyguard/KeyguardMoveRightController$2;

    .line 12
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMoveRightController$2;-><init>(Lcom/android/keyguard/KeyguardMoveRightController;)V

    .line 14
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 17
    new-instance p1, Lcom/android/keyguard/KeyguardMoveRightController$3;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardMoveRightController$3;-><init>(Lcom/android/keyguard/KeyguardMoveRightController;)V

    .line 21
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 24
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 26
    const/4 p2, 0x1

    .line 28
    if-nez p1, :cond_0

    .line 29
    iput-boolean p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mEnableErrorTips:Z

    .line 31
    :cond_0
    const-class p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 33
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 35
    move-result-object p1

    .line 38
    check-cast p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 39
    iget-boolean p1, p1, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 41
    xor-int/2addr p1, p2

    .line 43
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mIsLightLockWallpaper:Z

    .line 44
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 46
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 51
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 52
    iget-object p1, p1, Lcom/android/keyguard/KeyguardUpdateMonitor;->mStrongAuthTracker:Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;

    .line 54
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$StrongAuthTracker;->hasUserAuthenticatedSinceBoot()Z

    .line 56
    move-result p1

    .line 59
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mUserAuthenticatedSinceBoot:Z

    .line 60
    const-class p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 62
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 64
    move-result-object p1

    .line 67
    check-cast p1, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 68
    iput-object p1, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 70
    iget-object p2, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 72
    invoke-virtual {p1, p2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 74
    const-class p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 77
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 79
    move-result-object p1

    .line 82
    check-cast p1, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 83
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 85
    invoke-virtual {p1, p0}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 87
    return-void
    .line 90
.end method


# virtual methods
.method public final onTouchDown(FFZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 2
    iget-object v1, v0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 4
    invoke-virtual {v1}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_4

    .line 11
    iget-object v0, v0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 13
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardMoveHelper;->mIsRightMove:Z

    .line 15
    if-nez v0, :cond_4

    .line 17
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 19
    if-eqz v0, :cond_0

    .line 21
    const-string v0, "KeyguardMoveRightController"

    .line 23
    const-string v1, "onTouchDown mTouchDownInitial = true"

    .line 25
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :cond_0
    iput-boolean p3, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 30
    if-eqz p3, :cond_3

    .line 32
    iget-object p3, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 34
    if-nez p3, :cond_2

    .line 36
    new-instance p3, Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 38
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraViewCallBack:Lcom/android/keyguard/KeyguardMoveRightController$1;

    .line 40
    iget-object v1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mContext:Landroid/content/Context;

    .line 42
    invoke-direct {p3, v1, v0}, Lcom/android/keyguard/MiuiKeyguardCameraView;-><init>(Landroid/content/Context;Lcom/android/keyguard/KeyguardMoveRightController$1;)V

    .line 44
    iput-object p3, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 47
    sget-boolean p3, Lmiui/os/Build;->IS_MIUI_LITE_VERSION:Z

    .line 49
    if-eqz p3, :cond_1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    new-instance p3, Lcom/android/keyguard/KeyguardMoveRightController$4;

    .line 54
    invoke-direct {p3, p0}, Lcom/android/keyguard/KeyguardMoveRightController$4;-><init>(Lcom/android/keyguard/KeyguardMoveRightController;)V

    .line 56
    sget-object v0, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 59
    new-array v1, v2, [Ljava/lang/Void;

    .line 61
    invoke-virtual {p3, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 63
    :goto_0
    iget-boolean p3, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mIsLightLockWallpaper:Z

    .line 66
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 68
    if-eqz v0, :cond_2

    .line 70
    iget-object v1, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 72
    new-instance v3, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;

    .line 74
    invoke-direct {v3, v2, v0, p3}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda3;-><init>(ILjava/lang/Object;Z)V

    .line 76
    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 79
    :cond_2
    iget-object p3, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 82
    iget-object v0, p3, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 84
    new-instance v1, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;

    .line 86
    invoke-direct {v1, p3, p1, p2, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;FFI)V

    .line 88
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 91
    const/16 p1, 0x8

    .line 94
    invoke-static {p1}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateRightMoveIconLayoutVisibility(I)V

    .line 96
    invoke-static {v2}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 99
    goto :goto_1

    .line 102
    :cond_3
    iput p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchX:F

    .line 103
    iput p2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchY:F

    .line 105
    :goto_1
    const/4 p1, 0x1

    .line 107
    iput-boolean p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 108
    goto :goto_2

    .line 110
    :cond_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 111
    if-eqz p0, :cond_5

    .line 113
    iget-object p1, p0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 115
    new-instance p2, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;

    .line 117
    invoke-direct {p2, p0, v2}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;I)V

    .line 119
    invoke-virtual {p1, p2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 122
    :cond_5
    :goto_2
    return-void
    .line 125
.end method

.method public final onTouchMove(FF)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 4
    const/4 v2, 0x1

    .line 6
    const/4 v3, 0x0

    .line 7
    if-eqz v0, :cond_4

    .line 8
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 10
    if-nez v0, :cond_4

    .line 12
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mEnableErrorTips:Z

    .line 14
    if-eqz v0, :cond_4

    .line 16
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMakeMistakes:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    goto :goto_2

    .line 22
    :cond_0
    iget v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchX:F

    .line 23
    cmpl-float v4, p1, v0

    .line 25
    if-lez v4, :cond_1

    .line 27
    move v4, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_1
    move v4, p1

    .line 31
    :goto_0
    iget v5, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchY:F

    .line 32
    cmpl-float v6, p2, v5

    .line 34
    if-lez v6, :cond_2

    .line 36
    goto :goto_1

    .line 38
    :cond_2
    move v5, p2

    .line 39
    :goto_1
    sub-float/2addr v0, v4

    .line 40
    float-to-double v6, v0

    .line 41
    const-wide/high16 v8, 0x4000000000000000L    # 2.0

    .line 42
    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 44
    move-result-wide v6

    .line 47
    iget v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mInitialTouchY:F

    .line 48
    sub-float/2addr v0, v5

    .line 50
    float-to-double v4, v0

    .line 51
    invoke-static {v4, v5, v8, v9}, Ljava/lang/Math;->pow(DD)D

    .line 52
    move-result-wide v4

    .line 55
    add-double/2addr v4, v6

    .line 56
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    .line 57
    move-result-wide v4

    .line 60
    double-to-float v0, v4

    .line 61
    iput v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMovingLength:F

    .line 62
    iget-object v4, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mScreenPoint:Landroid/graphics/Point;

    .line 64
    iget v4, v4, Landroid/graphics/Point;->x:I

    .line 66
    int-to-float v4, v4

    .line 68
    const/high16 v5, 0x40400000    # 3.0f

    .line 69
    div-float/2addr v4, v5

    .line 71
    div-float v4, v0, v4

    .line 72
    const v5, 0x3e99999a    # 0.3f

    .line 74
    cmpl-float v4, v4, v5

    .line 77
    if-lez v4, :cond_3

    .line 79
    const-class v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 81
    invoke-static {v0}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 83
    move-result-object v0

    .line 86
    check-cast v0, Lcom/miui/interfaces/IHapticFeedBack;

    .line 87
    check-cast v0, Lcom/miui/systemui/functions/HapticFeedBackImpl;

    .line 89
    const/16 v4, 0x3c

    .line 91
    const/4 v5, 0x0

    .line 93
    const/16 v6, 0xa5

    .line 94
    invoke-virtual {v0, v3, v5, v6, v4}, Lcom/miui/systemui/functions/HapticFeedBackImpl;->extExtHapticFeedback(ILjava/lang/String;II)V

    .line 96
    invoke-virtual {p0}, Lcom/android/keyguard/BaseKeyguardMoveController;->startBackAnimationOfMistakeTouch()V

    .line 99
    iput-boolean v2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMakeMistakes:Z

    .line 102
    goto :goto_2

    .line 104
    :cond_3
    iput-boolean v2, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsNoMistakeTouch:Z

    .line 105
    iget-object v4, v1, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 107
    iget-object v4, v4, Lcom/android/keyguard/KeyguardMoveHelper;->mCallback:Lcom/android/keyguard/KeyguardMoveHelper$Callback;

    .line 109
    check-cast v4, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 111
    invoke-virtual {v4, v0, v2}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->onHorizontalMove(FZ)V

    .line 113
    :cond_4
    :goto_2
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 116
    if-eqz v0, :cond_6

    .line 118
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 120
    if-eqz v0, :cond_6

    .line 122
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 124
    if-eqz p0, :cond_5

    .line 126
    iget-object v0, p0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 128
    new-instance v4, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;

    .line 130
    const/4 v5, 0x2

    .line 132
    invoke-direct {v4, p0, p1, p2, v5}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;FFI)V

    .line 133
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 136
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 139
    invoke-static {v3}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 142
    return v2

    .line 145
    :cond_6
    return v3
    .line 146
.end method

.method public final onTouchUp(FF)V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_1

    .line 5
    iget-boolean v0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 7
    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 15
    new-instance v3, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;

    .line 17
    const/4 v4, 0x1

    .line 19
    invoke-direct {v3, v0, p1, p2, v4}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda1;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;FFI)V

    .line 20
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 26
    iget-object p1, p1, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 28
    iput-boolean v1, p1, Lcom/android/keyguard/KeyguardMoveHelper;->mSwipingInProgress:Z

    .line 30
    :cond_1
    iget-boolean p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 32
    if-eqz p1, :cond_2

    .line 34
    iput-boolean v1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mTouchDownInitial:Z

    .line 36
    iget-boolean p1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsOnIconTouchDown:Z

    .line 38
    if-nez p1, :cond_2

    .line 40
    invoke-virtual {p0}, Lcom/android/keyguard/BaseKeyguardMoveController;->startBackAnimationOfMistakeTouch()V

    .line 42
    :cond_2
    iput-boolean v1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mIsNoMistakeTouch:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mMakeMistakes:Z

    .line 47
    return-void
    .line 49
.end method

.method public final reset()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardMoveRightController;->mKeyguardCameraView:Lcom/android/keyguard/MiuiKeyguardCameraView;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v2, v0, Lcom/android/keyguard/MiuiKeyguardCameraView;->mThreadHandler:Landroid/os/Handler;

    .line 7
    new-instance v3, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;

    .line 9
    invoke-direct {v3, v0, v1}, Lcom/android/keyguard/MiuiKeyguardCameraView$$ExternalSyntheticLambda2;-><init>(Lcom/android/keyguard/MiuiKeyguardCameraView;I)V

    .line 11
    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/BaseKeyguardMoveController;->mCallBack:Lcom/android/keyguard/KeyguardMoveHelper$2;

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/KeyguardMoveHelper$2;->this$0:Lcom/android/keyguard/KeyguardMoveHelper;

    .line 19
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardMoveHelper;->isInCenterScreen()Z

    .line 21
    move-result p0

    .line 24
    if-eqz p0, :cond_1

    .line 25
    const/4 p0, 0x1

    .line 27
    invoke-static {p0}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateCanShowGxzw(Z)V

    .line 28
    :cond_1
    invoke-static {v1}, Lcom/android/keyguard/KeyguardMoveHelper$2;->updateRightMoveIconLayoutVisibility(I)V

    .line 31
    return-void
    .line 34
.end method
