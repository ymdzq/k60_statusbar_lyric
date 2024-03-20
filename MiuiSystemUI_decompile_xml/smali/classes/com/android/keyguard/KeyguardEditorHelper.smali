.class public final Lcom/android/keyguard/KeyguardEditorHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final DEBUG:Z

.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final editorReady:Lcom/android/keyguard/KeyguardEditorHelper$9;

.field public isFirst:Z

.field public final listeners:Ljava/util/List;

.field public final mContext:Landroid/content/Context;

.field public mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

.field public mEditLeash:Landroid/view/SurfaceControl;

.field public mEditModeAreaMarginBottom:I

.field public mEditModeAreaMarginLeft:I

.field public mEditModeAreaMarginRight:I

.field public mEditModeAreaMarginTop:I

.field public mEditParentSurfaceControl:Landroid/view/SurfaceControl;

.field public mEditSurfaceControl:Landroid/view/SurfaceControl;

.field public mEditorReadyStartWaitingTime:J

.field public mEditorReadyWaitingLeach:Z

.field public mEditorServiceBinded:Z

.field public mExitFromBouncerAnimRunning:Z

.field public mFinalScaleX:Ljava/lang/Float;

.field public mFinalScaleXWithShowBouncer:Ljava/lang/Float;

.field public mFinalScaleY:Ljava/lang/Float;

.field public mFinalScaleYWithShowBouncer:Ljava/lang/Float;

.field public mFinalTranslationY:Ljava/lang/Float;

.field public mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

.field public mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

.field public mGxzwAreaMargin:I

.field public final mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

.field public mHasNotification:Z

.field public mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

.field public mIsMagazinePreViewVisibility:Z

.field public final mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

.field public final mKeyguardEditorCallback:Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;

.field public final mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

.field public mLoadingCountDownFinish:Z

.field public mLoadingCountDownMill:J

.field public mLoadingCountDownOver500:Z

.field public mLoadingCountdownTimer:Lcom/android/keyguard/KeyguardEditorHelper$2;

.field public mLongPressTimeout:I

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

.field public mNextCanBindTime:J

.field public mScreenHeight:F

.field public mScreenWidth:F

.field public mStartServiceTimeout:I

.field public mStartTouchTime:J

.field public mStartX:F

.field public mStartY:F

.field public mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

.field public mTouchSlop:I

.field public final mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public final mWakefulnessObserver:Lcom/android/keyguard/KeyguardEditorHelper$8;

.field public final serviceConnection:Lcom/android/keyguard/KeyguardEditorHelper$10;


# direct methods
.method public static -$$Nest$minitAnimationParams(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string v0, "finalScaleX"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 7
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleX:Ljava/lang/Float;

    .line 15
    const-string v0, "finalScaleY"

    .line 17
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 19
    move-result v0

    .line 22
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 23
    move-result-object v0

    .line 26
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleY:Ljava/lang/Float;

    .line 27
    const-string v0, "finalTranslationY"

    .line 29
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 31
    move-result v0

    .line 34
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 35
    move-result-object v0

    .line 38
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 39
    const-string v0, "finalScaleXWithShowBouncer"

    .line 41
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 43
    move-result v0

    .line 46
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 47
    move-result-object v0

    .line 50
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleXWithShowBouncer:Ljava/lang/Float;

    .line 51
    const-string v0, "finalScaleYWithShowBouncer"

    .line 53
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 55
    move-result v0

    .line 58
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 59
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleYWithShowBouncer:Ljava/lang/Float;

    .line 63
    const-string v0, "finalTranslationYWithShowBouncer"

    .line 65
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 67
    move-result v0

    .line 70
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 71
    move-result-object v0

    .line 74
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 75
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 77
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 79
    move-result v0

    .line 82
    sput v0, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->sEditorTargetTranslationY:F

    .line 83
    const-string/jumbo v0, "templateReallyWidth"

    .line 85
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    .line 88
    move-result p1

    .line 91
    sput p1, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->sEditorTargetWidth:F

    .line 92
    new-instance p1, Ljava/lang/StringBuilder;

    .line 94
    const-string v0, "initExtraAnimationParams, mFinalTranslationY = "

    .line 96
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 101
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 103
    const-string v0, ", mFinalTranslationYWithShowBouncer = "

    .line 106
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 111
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 113
    const-string p0, ", translationY = "

    .line 116
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    sget p0, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->sEditorTargetTranslationY:F

    .line 121
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 123
    const-string p0, ", targetWidth = "

    .line 126
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget p0, Lcom/android/systemui/statusbar/phone/CustomValueAnim;->sEditorTargetWidth:F

    .line 131
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    move-result-object p0

    .line 139
    sget-object p1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 140
    invoke-static {p1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void
    .line 145
.end method

.method public static -$$Nest$minitSurfaceControl(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    const-string/jumbo v0, "surfaceControl"

    .line 5
    const-class v1, Landroid/view/SurfaceControl;

    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/view/SurfaceControl;

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 16
    const-string v0, "parentSurfaceControl"

    .line 18
    const-class v1, Landroid/view/SurfaceControl;

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Landroid/view/SurfaceControl;

    .line 26
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 28
    new-instance p1, Ljava/lang/StringBuilder;

    .line 30
    const-string v0, "get sc = "

    .line 32
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 37
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v0, ", parent sc = "

    .line 42
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 47
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object p1

    .line 55
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 56
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :try_start_0
    new-instance p1, Landroid/view/SurfaceControl$Transaction;

    .line 61
    invoke-direct {p1}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :try_start_1
    new-instance v1, Landroid/view/SurfaceControl$Builder;

    .line 66
    invoke-direct {v1}, Landroid/view/SurfaceControl$Builder;-><init>()V

    .line 68
    const-string v2, "edit leash"

    .line 71
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setName(Ljava/lang/String;)Landroid/view/SurfaceControl$Builder;

    .line 73
    move-result-object v1

    .line 76
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 77
    invoke-virtual {v1, v2}, Landroid/view/SurfaceControl$Builder;->setParent(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Builder;

    .line 79
    move-result-object v1

    .line 82
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    .line 83
    move-result-object v1

    .line 86
    invoke-virtual {v1}, Landroid/view/SurfaceControl$Builder;->build()Landroid/view/SurfaceControl;

    .line 87
    move-result-object v1

    .line 90
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 91
    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 93
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 96
    const/4 v2, 0x0

    .line 98
    invoke-virtual {p1, v1, v2, v2}, Landroid/view/SurfaceControl$Transaction;->setPosition(Landroid/view/SurfaceControl;FF)Landroid/view/SurfaceControl$Transaction;

    .line 99
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 102
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 104
    invoke-virtual {p1, v1, p0}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 106
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 109
    :try_start_2
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 112
    goto :goto_1

    .line 115
    :catchall_0
    move-exception p0

    .line 116
    :try_start_3
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 117
    goto :goto_0

    .line 120
    :catchall_1
    move-exception p1

    .line 121
    :try_start_4
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 122
    :goto_0
    throw p0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 125
    :catch_0
    move-exception p0

    .line 126
    const-string p1, "initSurfaceControl fail"

    .line 127
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 129
    :goto_1
    return-void
    .line 132
.end method

.method public static -$$Nest$misUnlocked(Lcom/android/keyguard/KeyguardEditorHelper;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 2
    check-cast p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->isMethodSecure(I)Z

    .line 13
    move-result v1

    .line 16
    if-eqz v1, :cond_0

    .line 17
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 19
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserCanSkipBouncer(I)Z

    .line 21
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 27
    const/4 p0, 0x0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x1

    .line 31
    :goto_0
    return p0
    .line 32
.end method

.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/utils/configs/MiuiDebugConfig;->DEBUG_KEYGUARD:Z

    .line 2
    sput-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 4
    const-string v0, "KeyguardEditorHelper"

    .line 6
    sput-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 8
    return-void
    .line 10
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/keyguard/KeyguardViewMediator;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/injector/KeyguardClockInjector;Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;Lcom/android/systemui/keyguard/WakefulnessLifecycle;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 9
    move-result-object v1

    .line 12
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleX:Ljava/lang/Float;

    .line 13
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleY:Ljava/lang/Float;

    .line 15
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 17
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleXWithShowBouncer:Ljava/lang/Float;

    .line 19
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleYWithShowBouncer:Ljava/lang/Float;

    .line 21
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 23
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 25
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 27
    const/4 v1, 0x0

    .line 29
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->listeners:Ljava/util/List;

    .line 30
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHasNotification:Z

    .line 32
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIsMagazinePreViewVisibility:Z

    .line 34
    new-instance v1, Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 36
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 38
    move-result-object v2

    .line 41
    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/KeyguardEditorHelper$1;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;Landroid/os/Looper;)V

    .line 42
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 45
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownFinish:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownOver500:Z

    .line 49
    const-wide/16 v1, 0x4b0

    .line 51
    iput-wide v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 53
    const/4 v1, 0x1

    .line 55
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->isFirst:Z

    .line 56
    new-instance v1, Lcom/android/keyguard/KeyguardEditorHelper$6;

    .line 58
    invoke-direct {v1, p0}, Lcom/android/keyguard/KeyguardEditorHelper$6;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 60
    iput-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 63
    new-instance v2, Lcom/android/keyguard/KeyguardEditorHelper$7;

    .line 65
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardEditorHelper$7;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 67
    iput-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 70
    new-instance v2, Lcom/android/keyguard/KeyguardEditorHelper$8;

    .line 72
    invoke-direct {v2, p0}, Lcom/android/keyguard/KeyguardEditorHelper$8;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 74
    iput-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mWakefulnessObserver:Lcom/android/keyguard/KeyguardEditorHelper$8;

    .line 77
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 79
    new-instance v3, Lcom/android/keyguard/KeyguardEditorHelper$9;

    .line 81
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardEditorHelper$9;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 83
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->editorReady:Lcom/android/keyguard/KeyguardEditorHelper$9;

    .line 86
    new-instance v3, Lcom/android/keyguard/KeyguardEditorHelper$10;

    .line 88
    invoke-direct {v3, p0}, Lcom/android/keyguard/KeyguardEditorHelper$10;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 90
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->serviceConnection:Lcom/android/keyguard/KeyguardEditorHelper$10;

    .line 93
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 95
    iput-object p2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 97
    iput-object p4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 99
    invoke-virtual {p4, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 101
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 104
    invoke-virtual {p7, p1}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 106
    iget-object p1, p8, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 109
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 111
    iput-object p3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 114
    iput-object p6, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 116
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->updateConfigurations()V

    .line 118
    new-instance p1, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;

    .line 121
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 123
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardEditorCallback:Lcom/android/keyguard/KeyguardEditorHelper$KeyguardEditorCallback;

    .line 126
    new-instance p1, Ljava/util/ArrayList;

    .line 128
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 130
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->listeners:Ljava/util/List;

    .line 133
    new-instance p1, Lcom/android/keyguard/KeyguardEditorHelper$3;

    .line 135
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardEditorHelper$3;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 137
    check-cast p2, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 140
    invoke-virtual {p2, p1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 142
    const-class p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 145
    invoke-static {p1}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 150
    check-cast p1, Lcom/miui/systemui/functions/MiuiTopActivityObserver;

    .line 151
    new-instance p2, Lcom/android/keyguard/KeyguardEditorHelper$4;

    .line 153
    invoke-direct {p2, p0}, Lcom/android/keyguard/KeyguardEditorHelper$4;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 155
    invoke-virtual {p1, p2}, Lcom/miui/systemui/functions/MiuiTopActivityObserver;->addTopActivityMayChangeListener(Lcom/miui/interfaces/IMiuiTopActivityObserver$TopActivityMayChangeListener;)V

    .line 158
    new-instance p1, Lcom/android/keyguard/KeyguardEditorHelper$5;

    .line 161
    invoke-direct {p1, p0}, Lcom/android/keyguard/KeyguardEditorHelper$5;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 163
    check-cast p5, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 166
    invoke-virtual {p5, p1}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 168
    return-void
    .line 171
.end method


# virtual methods
.method public final addEditorStateListener(Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;)V
    .locals 2

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "addEditorStateListener, listener="

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->listeners:Ljava/util/List;

    .line 25
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 27
    move-result v0

    .line 30
    if-nez v0, :cond_1

    .line 31
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    :cond_1
    return-void
    .line 36
.end method

.method public final cancelLongPressAction()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 2
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    .line 5
    move-result v2

    .line 8
    const/4 v3, 0x2

    .line 9
    if-nez v2, :cond_0

    .line 10
    invoke-virtual {v0, v3}, Landroid/os/Handler;->hasMessages(I)Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 18
    :cond_0
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 21
    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 24
    return-void
    .line 27
.end method

.method public final checkIfStartEditActivity()V
    .locals 8

    .line 1
    const-class v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 2
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Lcom/miui/systemui/controller/SuperSaveModeController;

    .line 8
    iget-boolean v0, v0, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 10
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    const/4 v2, 0x1

    .line 14
    const/4 v3, 0x0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 18
    const v4, 0x7f1305c3    # @string/keyguard_editor_super_save_mode_toast 'Can't edit Lock screen when Ultra battery saver is on'

    .line 20
    invoke-static {v0, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 27
    goto/16 :goto_0

    .line 30
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 34
    move-result v4

    .line 37
    invoke-virtual {v0, v4}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 38
    move-result v0

    .line 41
    if-nez v0, :cond_1

    .line 42
    const-class v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 44
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 50
    check-cast v0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 52
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->collapsePanels()V

    .line 54
    goto/16 :goto_0

    .line 57
    :cond_1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 59
    if-nez v0, :cond_2

    .line 61
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 63
    const-string v4, "isSupportStartEditor = false : editor service unbind"

    .line 65
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    goto/16 :goto_0

    .line 70
    :cond_2
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 72
    const-class v4, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 74
    const-class v5, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 76
    if-eqz v0, :cond_3

    .line 78
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 80
    new-instance v6, Ljava/lang/StringBuilder;

    .line 82
    const-string v7, "isSupportStartEditor, mState="

    .line 84
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 86
    iget-object v7, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 89
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 91
    const-string v7, "; mIsMagazinePreViewVisibility="

    .line 94
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    iget-boolean v7, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIsMagazinePreViewVisibility:Z

    .line 99
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 101
    const-string v7, "; isFastUnlock="

    .line 104
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-static {v5}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 109
    move-result-object v7

    .line 112
    check-cast v7, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 113
    iget-boolean v7, v7, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 115
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 117
    const-string v7, "; isKeyguardShowing="

    .line 120
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 125
    move-result-object v7

    .line 128
    check-cast v7, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 129
    iget-boolean v7, v7, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardShowing:Z

    .line 131
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 133
    const-string v7, "isOnKeyguard ="

    .line 136
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    iget-object v7, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 141
    invoke-virtual {v7}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 143
    move-result v7

    .line 146
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 147
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 150
    move-result-object v6

    .line 153
    invoke-static {v0, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 157
    if-ne v0, v1, :cond_4

    .line 159
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIsMagazinePreViewVisibility:Z

    .line 161
    if-nez v0, :cond_4

    .line 163
    invoke-static {v5}, Lcom/miui/systemui/MiuiDependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;

    .line 169
    iget-boolean v0, v0, Lcom/miui/keyguard/biometrics/MiuiFastUnlockController;->mFastUnlock:Z

    .line 171
    if-nez v0, :cond_4

    .line 173
    invoke-static {v4}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 175
    move-result-object v0

    .line 178
    check-cast v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;

    .line 179
    iget-boolean v0, v0, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->mKeyguardShowing:Z

    .line 181
    if-eqz v0, :cond_4

    .line 183
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 185
    invoke-virtual {v0}, Lcom/android/systemui/shade/NotificationPanelViewController;->isOnKeyguard()Z

    .line 187
    move-result v0

    .line 190
    if-eqz v0, :cond_4

    .line 191
    move v0, v2

    .line 193
    goto :goto_1

    .line 194
    :cond_4
    :goto_0
    move v0, v3

    .line 195
    :goto_1
    if-eqz v0, :cond_8

    .line 196
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 198
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 200
    :try_start_0
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 203
    const-string/jumbo v4, "startEditActivity: "

    .line 205
    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    new-instance v0, Landroid/content/Intent;

    .line 211
    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 213
    new-instance v4, Landroid/os/Bundle;

    .line 216
    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 218
    iget-object v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 221
    iget-object v5, v5, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 223
    if-eqz v5, :cond_5

    .line 225
    const-string v6, "health"

    .line 227
    invoke-virtual {v5}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getHealthJson()Ljava/lang/String;

    .line 229
    move-result-object v7

    .line 232
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    const-string/jumbo v6, "weather"

    .line 236
    invoke-virtual {v5}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getWeatherJson()Ljava/lang/String;

    .line 239
    move-result-object v7

    .line 242
    invoke-virtual {v4, v6, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    const-string v6, "localCity"

    .line 246
    invoke-virtual {v5}, Lcom/android/keyguard/clock/KeyguardClockContainer;->getLocalCity()Ljava/lang/String;

    .line 248
    move-result-object v5

    .line 251
    invoke-virtual {v4, v6, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    const-string v5, "hasNotification"

    .line 255
    iget-boolean v6, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHasNotification:Z

    .line 257
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 259
    :cond_5
    const-string v5, "isWallpaperDeep"

    .line 262
    const-class v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 264
    invoke-static {v6}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 266
    move-result-object v6

    .line 269
    check-cast v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;

    .line 270
    iget-boolean v6, v6, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 272
    invoke-virtual {v4, v5, v6}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 274
    const-string v5, "clock_extra"

    .line 277
    invoke-virtual {v0, v5, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 279
    const-string v4, "launched_from_package"

    .line 282
    const-string/jumbo v5, "systemui"

    .line 284
    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 287
    const-string v4, "miui.keyguard.editor"

    .line 290
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v4, "android.intent.category.DEFAULT"

    .line 295
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 297
    const-string v4, "com.miui.aod"

    .line 300
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string v4, "com.miui.aod/com.miui.keyguard.editor.EditorActivity"

    .line 305
    invoke-static {v4}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    .line 307
    move-result-object v4

    .line 310
    invoke-virtual {v0, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 311
    const/high16 v4, 0x10000000

    .line 314
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 316
    const v4, 0x8000

    .line 319
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const/high16 v4, 0x800000

    .line 325
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    const/16 v4, 0x400

    .line 330
    invoke-virtual {v0, v4}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 332
    iget-object v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 335
    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 337
    const/4 v6, 0x0

    .line 339
    invoke-virtual {v4, v0, v6, v5}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/Bundle;Landroid/os/UserHandle;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    move v0, v2

    .line 343
    goto :goto_2

    .line 344
    :catch_0
    move v0, v3

    .line 345
    :goto_2
    if-nez v0, :cond_6

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 348
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 351
    goto :goto_4

    .line 354
    :cond_6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 355
    const/16 v1, 0x16

    .line 357
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 359
    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 362
    move-result-object v1

    .line 365
    const-wide/16 v4, 0xbb8

    .line 366
    invoke-virtual {v0, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 368
    iput-boolean v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->isFirst:Z

    .line 371
    const-wide/16 v0, 0x4b0

    .line 373
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 375
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownOver500:Z

    .line 377
    iput-boolean v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownFinish:Z

    .line 379
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountdownTimer:Lcom/android/keyguard/KeyguardEditorHelper$2;

    .line 381
    if-nez v0, :cond_7

    .line 383
    new-instance v0, Lcom/android/keyguard/KeyguardEditorHelper$2;

    .line 385
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardEditorHelper$2;-><init>(Lcom/android/keyguard/KeyguardEditorHelper;)V

    .line 387
    iput-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountdownTimer:Lcom/android/keyguard/KeyguardEditorHelper$2;

    .line 390
    goto :goto_3

    .line 392
    :cond_7
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 393
    :goto_3
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountdownTimer:Lcom/android/keyguard/KeyguardEditorHelper$2;

    .line 396
    invoke-virtual {p0}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    .line 398
    goto :goto_4

    .line 401
    :cond_8
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->unBindEditorService()V

    .line 402
    :goto_4
    return-void
    .line 405
.end method

.method public final getEditorSurfaceControl()Landroid/view/SurfaceControl;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 12
    return-object p0

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 15
    return-object p0
    .line 17
.end method

.method public final handlerEditorReady()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownFinish:Z

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->editorReady:Lcom/android/keyguard/KeyguardEditorHelper$9;

    .line 4
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 6
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownOver500:Z

    .line 14
    if-eqz v0, :cond_1

    .line 16
    invoke-virtual {v2, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    iget-wide v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 22
    invoke-virtual {v2, v1, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 24
    new-instance v0, Ljava/lang/StringBuilder;

    .line 27
    const-string v1, "keyguard loading hide delay:"

    .line 29
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 31
    iget-wide v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountDownMill:J

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p0

    .line 42
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 43
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :goto_0
    return-void
    .line 48
.end method

.method public final isInEnterAndExitEditorMode()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterEditorMode()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInExitEditorMode()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    return p0
    .line 18
.end method

.method public final isInEnterEditorMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    if-eq p0, v0, :cond_1

    .line 10
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 12
    if-ne p0, v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 19
    :goto_1
    return p0
    .line 20
.end method

.method public final isInExitEditorMode()Z
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITINGFROMBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->EXITING:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 8
    if-ne p0, v0, :cond_0

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

.method public final notificationPanelViewStartAnimation(Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 7
    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    .line 9
    move-result v0

    .line 12
    const/4 v1, 0x2

    .line 13
    const/4 v2, 0x0

    .line 14
    if-eq v0, v1, :cond_8

    .line 15
    const/4 v1, 0x3

    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 18
    if-eq v0, v1, :cond_7

    .line 20
    const/4 v1, 0x5

    .line 22
    iget-object v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 23
    const/4 v5, 0x0

    .line 25
    if-eq v0, v1, :cond_6

    .line 26
    const/4 v1, 0x6

    .line 28
    if-eq v0, v1, :cond_1

    .line 29
    goto :goto_2

    .line 31
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 32
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleX:Ljava/lang/Float;

    .line 34
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 36
    move-result v1

    .line 39
    iget-object v6, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleY:Ljava/lang/Float;

    .line 40
    invoke-virtual {v6}, Ljava/lang/Float;->floatValue()F

    .line 42
    move-result v6

    .line 45
    iget-object v7, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 46
    invoke-virtual {v7}, Ljava/lang/Float;->floatValue()F

    .line 48
    move-result v7

    .line 51
    iget-boolean v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardShowing:Z

    .line 52
    if-nez v8, :cond_2

    .line 54
    goto :goto_1

    .line 56
    :cond_2
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationShadeWindowController:Lcom/android/systemui/statusbar/NotificationShadeWindowController;

    .line 57
    check-cast v8, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;

    .line 59
    const/4 v9, 0x1

    .line 61
    invoke-virtual {v8, v9}, Lcom/android/systemui/shade/NotificationShadeWindowControllerImpl;->setPanelVisible(Z)V

    .line 62
    iget-object v8, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 65
    invoke-virtual {v8}, Lcom/android/keyguard/injector/KeyguardPanelViewInjector;->updateKeyguardElementsVisibility()V

    .line 67
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardInfoLayer:Landroid/widget/FrameLayout;

    .line 70
    if-eqz v8, :cond_3

    .line 72
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 74
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 77
    :cond_3
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 80
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 82
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardStatusBar:Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;

    .line 85
    invoke-virtual {v8, v5}, Lcom/android/systemui/statusbar/phone/KeyguardStatusBarView;->setVisibility(I)V

    .line 87
    iget-object v8, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mView:Lcom/android/systemui/shade/NotificationPanelView;

    .line 90
    invoke-virtual {v8, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 92
    invoke-virtual {v8, v1}, Landroid/widget/FrameLayout;->setScaleX(F)V

    .line 95
    invoke-virtual {v8, v6}, Landroid/widget/FrameLayout;->setScaleY(F)V

    .line 98
    invoke-virtual {v8, v7}, Landroid/widget/FrameLayout;->setTranslationY(F)V

    .line 101
    if-eqz p1, :cond_4

    .line 104
    move p1, v3

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move p1, v2

    .line 108
    :goto_0
    invoke-virtual {v8, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 109
    iget-object p1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mNotificationContainerParent:Lcom/android/systemui/shade/NotificationsQuickSettingsContainer;

    .line 112
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setAlpha(F)V

    .line 114
    iget-object p1, v0, Lcom/android/systemui/shade/NotificationPanelViewController;->mKeyguardBottomArea:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

    .line 117
    invoke-virtual {p1, v2}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 119
    iget-object p1, v0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mKeyguardClockInjector:Lcom/android/keyguard/injector/KeyguardClockInjector;

    .line 122
    iget-object p1, p1, Lcom/android/keyguard/injector/KeyguardClockInjector;->mKeyguardClockView:Lcom/android/keyguard/clock/KeyguardClockContainer;

    .line 124
    if-nez p1, :cond_5

    .line 126
    goto :goto_1

    .line 128
    :cond_5
    invoke-virtual {p1, v5}, Lcom/android/keyguard/clock/KeyguardClockContainer;->setVisibility(I)V

    .line 129
    :goto_1
    invoke-virtual {v4, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 132
    goto :goto_2

    .line 135
    :cond_6
    invoke-virtual {v4, v5, v5}, Lcom/android/systemui/keyguard/KeyguardViewMediator;->setOccluded(ZZ)V

    .line 136
    :goto_2
    move v8, v2

    .line 139
    move v6, v3

    .line 140
    move v7, v6

    .line 141
    move v9, v7

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleXWithShowBouncer:Ljava/lang/Float;

    .line 144
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 146
    move-result p1

    .line 149
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleYWithShowBouncer:Ljava/lang/Float;

    .line 150
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 152
    move-result v0

    .line 155
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationYWithShowBouncer:Ljava/lang/Float;

    .line 156
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 158
    move-result v2

    .line 161
    move v6, p1

    .line 162
    move v7, v0

    .line 163
    move v8, v2

    .line 164
    move v9, v3

    .line 165
    goto :goto_3

    .line 166
    :cond_8
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleX:Ljava/lang/Float;

    .line 167
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 169
    move-result v3

    .line 172
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalScaleY:Ljava/lang/Float;

    .line 173
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 175
    move-result p1

    .line 178
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinalTranslationY:Ljava/lang/Float;

    .line 179
    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    .line 181
    move-result v0

    .line 184
    move v7, p1

    .line 185
    move v8, v0

    .line 186
    move v9, v2

    .line 187
    move v6, v3

    .line 188
    :goto_3
    iget-object v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 189
    iget-object v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 191
    const/4 v10, 0x0

    .line 193
    invoke-virtual/range {v4 .. v10}, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->startAnimationForEditor(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;FFFFZ)V

    .line 194
    return-void
    .line 197
.end method

.method public final onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIsMagazinePreViewVisibility:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x1

    .line 11
    if-eqz v0, :cond_4

    .line 12
    if-eq v0, v1, :cond_3

    .line 14
    const/4 v1, 0x2

    .line 16
    if-eq v0, v1, :cond_1

    .line 17
    const/4 p1, 0x3

    .line 19
    if-eq v0, p1, :cond_3

    .line 20
    const/4 p1, 0x5

    .line 22
    if-eq v0, p1, :cond_3

    .line 23
    goto/16 :goto_4

    .line 25
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 27
    move-result v0

    .line 30
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 31
    move-result p1

    .line 34
    iget v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartX:F

    .line 35
    sub-float/2addr v0, v1

    .line 37
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    .line 38
    move-result v0

    .line 41
    iget v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mTouchSlop:I

    .line 42
    int-to-float v1, v1

    .line 44
    cmpl-float v0, v0, v1

    .line 45
    if-gtz v0, :cond_2

    .line 47
    iget v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartY:F

    .line 49
    sub-float/2addr p1, v0

    .line 51
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    .line 52
    move-result p1

    .line 55
    iget v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mTouchSlop:I

    .line 56
    int-to-float v0, v0

    .line 58
    cmpl-float p1, p1, v0

    .line 59
    if-lez p1, :cond_b

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->cancelLongPressAction()V

    .line 63
    goto/16 :goto_4

    .line 66
    :cond_3
    const/4 p1, 0x0

    .line 68
    iput p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartX:F

    .line 69
    iput p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartY:F

    .line 71
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->cancelLongPressAction()V

    .line 73
    goto/16 :goto_4

    .line 76
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    .line 78
    move-result v0

    .line 81
    iput v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartX:F

    .line 82
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    .line 84
    move-result p1

    .line 87
    iput p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartY:F

    .line 88
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInEnterAndExitEditorMode()Z

    .line 90
    move-result p1

    .line 93
    const/4 v0, 0x0

    .line 94
    sget-object v2, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 95
    if-eqz p1, :cond_5

    .line 97
    new-instance p1, Ljava/lang/StringBuilder;

    .line 99
    const-string v3, "isSupportStartEditorService = false : isInEnterAndExitEditorMode mState = "

    .line 101
    invoke-direct {p1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 103
    iget-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 106
    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 108
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    move-result-object p1

    .line 114
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    goto/16 :goto_3

    .line 118
    :cond_5
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 120
    move-result-wide v3

    .line 123
    iget-boolean p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mExitFromBouncerAnimRunning:Z

    .line 124
    if-nez p1, :cond_9

    .line 126
    iget-wide v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mNextCanBindTime:J

    .line 128
    cmp-long p1, v3, v5

    .line 130
    if-gez p1, :cond_6

    .line 132
    goto :goto_2

    .line 134
    :cond_6
    iget p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartX:F

    .line 135
    iget v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartY:F

    .line 137
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginLeft:I

    .line 139
    int-to-float v3, v3

    .line 141
    cmpg-float v3, v3, p1

    .line 142
    if-gez v3, :cond_a

    .line 144
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenWidth:F

    .line 146
    iget v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginRight:I

    .line 148
    int-to-float v4, v4

    .line 150
    sub-float/2addr v3, v4

    .line 151
    cmpg-float p1, p1, v3

    .line 152
    if-gez p1, :cond_a

    .line 154
    iget p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginTop:I

    .line 156
    int-to-float p1, p1

    .line 158
    cmpg-float p1, p1, v2

    .line 159
    if-gez p1, :cond_a

    .line 161
    iget p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenHeight:F

    .line 163
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->GXZW_SENSOR:Z

    .line 165
    if-eqz v3, :cond_8

    .line 167
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiFingerPrintFactory;->getFingerPrintManager()Lcom/miui/keyguard/biometrics/fod/IFingerPrintManager;

    .line 169
    move-result-object v3

    .line 172
    instance-of v4, v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 173
    if-eqz v4, :cond_7

    .line 175
    check-cast v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;

    .line 177
    iget-boolean v3, v3, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->mShowed:Z

    .line 179
    goto :goto_0

    .line 181
    :cond_7
    move v3, v0

    .line 182
    :goto_0
    if-eqz v3, :cond_8

    .line 183
    iget-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 185
    invoke-static {v3}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->getFodPosition(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 187
    move-result-object v3

    .line 190
    iget v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginBottom:I

    .line 191
    int-to-float v4, v4

    .line 193
    iget v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenHeight:F

    .line 194
    iget v3, v3, Landroid/graphics/Rect;->top:I

    .line 196
    int-to-float v3, v3

    .line 198
    sub-float/2addr v5, v3

    .line 199
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mGxzwAreaMargin:I

    .line 200
    int-to-float v3, v3

    .line 202
    add-float/2addr v5, v3

    .line 203
    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    .line 204
    move-result v3

    .line 207
    goto :goto_1

    .line 208
    :cond_8
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginBottom:I

    .line 209
    int-to-float v3, v3

    .line 211
    :goto_1
    sub-float/2addr p1, v3

    .line 212
    cmpg-float p1, v2, p1

    .line 213
    if-gez p1, :cond_a

    .line 215
    move v0, v1

    .line 217
    goto :goto_3

    .line 218
    :cond_9
    :goto_2
    new-instance p1, Ljava/lang/StringBuilder;

    .line 219
    const-string v5, "isSupportStartEditorService = false : mEditAnimRunning = "

    .line 221
    invoke-direct {p1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 223
    iget-boolean v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mExitFromBouncerAnimRunning:Z

    .line 226
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 228
    const-string v5, ", time diff = "

    .line 231
    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    iget-wide v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mNextCanBindTime:J

    .line 236
    sub-long/2addr v5, v3

    .line 238
    invoke-virtual {p1, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 239
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 242
    move-result-object p1

    .line 245
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_a
    :goto_3
    if-eqz v0, :cond_b

    .line 249
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 251
    move-result-wide v2

    .line 254
    iput-wide v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartTouchTime:J

    .line 255
    iget p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartServiceTimeout:I

    .line 257
    int-to-long v2, p1

    .line 259
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 260
    invoke-virtual {p0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 262
    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 265
    move-result-object p1

    .line 268
    invoke-virtual {p0, p1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 269
    :cond_b
    :goto_4
    return-void
    .line 272
.end method

.method public final releaseCreateSurfaceControl()V
    .locals 6

    .line 1
    sget-boolean v0, Lcom/android/keyguard/KeyguardEditorHelper;->DEBUG:Z

    .line 2
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "releaseSurfaceControl, mEditAnimationSurfaceControl = "

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 16
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", mEditParentSurfaceControl = "

    .line 21
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 26
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 28
    const-string v2, ", mEditSurfaceControl = "

    .line 31
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 36
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 38
    const-string v2, ", mEditLeash = "

    .line 41
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 46
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 58
    const-string/jumbo v2, "reparent fail"

    .line 60
    const/4 v3, 0x0

    .line 63
    if-eqz v0, :cond_1

    .line 64
    :try_start_0
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 66
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :try_start_1
    iget-object v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 71
    invoke-virtual {v0, v4, v3}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :try_start_2
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 76
    goto :goto_1

    .line 79
    :catchall_0
    move-exception v4

    .line 80
    :try_start_3
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 81
    goto :goto_0

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    :try_start_4
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 86
    :goto_0
    throw v4
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 89
    :catch_0
    move-exception v0

    .line 90
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 91
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 94
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 96
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditAnimationSurfaceControl:Landroid/view/SurfaceControl;

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 101
    if-eqz v0, :cond_2

    .line 103
    :try_start_5
    new-instance v0, Landroid/view/SurfaceControl$Transaction;

    .line 105
    invoke-direct {v0}, Landroid/view/SurfaceControl$Transaction;-><init>()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_1

    .line 107
    :try_start_6
    iget-object v4, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 110
    iget-object v5, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 112
    invoke-virtual {v0, v4, v5}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 114
    :try_start_7
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 117
    goto :goto_3

    .line 120
    :catchall_2
    move-exception v4

    .line 121
    :try_start_8
    invoke-virtual {v0}, Landroid/view/SurfaceControl$Transaction;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 122
    goto :goto_2

    .line 125
    :catchall_3
    move-exception v0

    .line 126
    :try_start_9
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 127
    :goto_2
    throw v4
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_1

    .line 130
    :catch_1
    move-exception v0

    .line 131
    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 132
    :goto_3
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditSurfaceControl:Landroid/view/SurfaceControl;

    .line 135
    :cond_2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 137
    if-eqz v0, :cond_3

    .line 139
    iput-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditParentSurfaceControl:Landroid/view/SurfaceControl;

    .line 141
    :cond_3
    return-void
    .line 143
.end method

.method public final releaseEnterSurfaceControl()V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "releaseEnterSurfaceControl mFinishCallback="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 12
    const-string v1, ", mEditLeash = "

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 25
    move-result-object v0

    .line 28
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 29
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 34
    const/4 v2, 0x0

    .line 36
    if-eqz v0, :cond_0

    .line 37
    :try_start_0
    invoke-interface {v0}, Landroid/view/IRemoteAnimationFinishedCallback;->onAnimationFinished()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 42
    :catch_0
    move-exception v0

    .line 43
    const-string/jumbo v3, "releaseEnterSurfaceControl finish animation fail"

    .line 44
    invoke-static {v1, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 47
    :goto_0
    iput-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mFinishedCallback:Landroid/view/IRemoteAnimationFinishedCallback;

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 52
    if-eqz v0, :cond_1

    .line 54
    invoke-virtual {v0}, Landroid/view/SurfaceControl;->release()V

    .line 56
    iput-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditLeash:Landroid/view/SurfaceControl;

    .line 59
    :cond_1
    return-void
    .line 61
.end method

.method public final reset(Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "reset("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    const-string v1, ")"

    .line 13
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 22
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 24
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 27
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->START:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 29
    if-eq v0, v1, :cond_0

    .line 31
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->EDITOR_READY_IN_IDEL:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 33
    if-ne p1, v0, :cond_1

    .line 35
    :cond_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->releaseEnterSurfaceControl()V

    .line 37
    new-instance v0, Landroid/os/Bundle;

    .line 40
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 42
    const-string v1, "action_finish_editor"

    .line 45
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 47
    :cond_1
    const/4 v0, 0x0

    .line 50
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorReadyWaitingLeach:Z

    .line 51
    const/16 v0, 0xb

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 55
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 57
    const/16 v0, 0x16

    .line 60
    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 62
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardEditorHelper;->setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 67
    sget-object p0, Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;->INIT:Lcom/android/keyguard/KeyguardEditorHelper$ResetReason;

    .line 70
    if-eq p1, p0, :cond_2

    .line 72
    const/16 p0, 0x21

    .line 74
    invoke-virtual {v1, p0}, Landroid/os/Handler;->removeMessages(I)V

    .line 76
    invoke-virtual {v1, p0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 79
    move-result-object p0

    .line 82
    invoke-virtual {v1, p0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 83
    :cond_2
    return-void
    .line 86
.end method

.method public final sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-string/jumbo v0, "sendCommandToEditor "

    .line 2
    const-string v1, "  "

    .line 5
    invoke-static {v0, p2, v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    move-result-object v0

    .line 10
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 11
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 20
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 22
    :try_start_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 25
    if-eqz p0, :cond_0

    .line 27
    check-cast p0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;

    .line 29
    iget-object v0, p0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 31
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 33
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    :try_start_1
    const-string v2, "com.miui.keyguardeditor.IMiuiKeyguardEditorService"

    .line 37
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 39
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 42
    const/4 p2, 0x0

    .line 45
    invoke-virtual {v0, p1, p2}, Landroid/os/Parcel;->writeTypedObject(Landroid/os/Parcelable;I)V

    .line 46
    iget-object p0, p0, Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 49
    const/4 p1, 0x3

    .line 51
    const/4 p2, 0x0

    .line 52
    const/4 v2, 0x1

    .line 53
    invoke-interface {p0, p1, v0, p2, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 54
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 57
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 62
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 65
    :catch_0
    move-exception p0

    .line 66
    const-string/jumbo p1, "sendCommandToEditor fail"

    .line 67
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 70
    :cond_0
    :goto_0
    return-void
    .line 73
.end method

.method public final sendKeyguardBouncerStateChangedCommandToEditor(Z)V
    .locals 1

    .line 1
    new-instance v0, Landroid/os/Bundle;

    .line 2
    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 4
    if-eqz p1, :cond_0

    .line 7
    const-string p1, "action_keyguard_unlocked"

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const-string p1, "action_exit_without_unlock"

    .line 12
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/keyguard/KeyguardEditorHelper;->sendCommandToEditor(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 14
    return-void
    .line 17
.end method

.method public final sendServiceConnectedTimeoutMessage()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 6
    const/16 v0, 0xb

    .line 8
    invoke-virtual {p0, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    invoke-virtual {p0, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 13
    move-result-object v0

    .line 16
    const-wide/16 v1, 0x7d0

    .line 17
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "ignore sendServiceConnectedTimeout: service is connected "

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mIMiuiKeyguardEditorService:Lcom/miui/keyguardeditor/IMiuiKeyguardEditorService;

    .line 30
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 39
    invoke-static {v0, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    :goto_0
    return-void
    .line 44
.end method

.method public final setEditorState(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 2
    if-eq v0, p1, :cond_6

    .line 4
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 8
    const-string/jumbo v2, "setEditorState, mState="

    .line 10
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 16
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 18
    const-string v2, ", state="

    .line 21
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v1

    .line 32
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 36
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->listeners:Ljava/util/List;

    .line 38
    if-eqz v0, :cond_0

    .line 40
    check-cast v0, Ljava/util/ArrayList;

    .line 42
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 44
    move-result-object v0

    .line 47
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 48
    move-result v1

    .line 51
    if-eqz v1, :cond_0

    .line 52
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;

    .line 58
    invoke-interface {v1, p1}, Lcom/android/keyguard/KeyguardEditorHelper$EditorStateListener;->onEditorStateChanged(Lcom/android/keyguard/KeyguardEditorHelper$EditorState;)V

    .line 60
    goto :goto_0

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 64
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWNEDITOR:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 66
    if-eq p1, v0, :cond_1

    .line 68
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 70
    if-ne p1, v0, :cond_4

    .line 72
    :cond_1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mKeyguardViewMediator:Lcom/android/systemui/keyguard/KeyguardViewMediator;

    .line 74
    if-eqz p1, :cond_4

    .line 76
    const-string v0, "KeyguardViewMediator"

    .line 78
    new-instance v1, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v2, "updateOccluded(), mTargetOccluded="

    .line 82
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    iget-boolean v2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTargetOccluded:Z

    .line 88
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 90
    const-string v2, ", mSendOccluded="

    .line 93
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-boolean v2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendOccluded:Z

    .line 98
    invoke-static {v1, v2, v0}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 100
    monitor-enter p1

    .line 103
    :try_start_0
    iget-boolean v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendOccluded:Z

    .line 104
    iget-boolean v1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTargetOccluded:Z

    .line 106
    if-eq v0, v1, :cond_3

    .line 108
    iput-boolean v1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mSendOccluded:Z

    .line 110
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    .line 112
    const/16 v1, 0x17

    .line 114
    invoke-virtual {v0, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->cancel(I)Z

    .line 116
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 119
    const/16 v1, 0x9

    .line 121
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 123
    iget-object v0, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 126
    iget-boolean v2, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mTargetOccluded:Z

    .line 128
    const/4 v3, 0x0

    .line 130
    if-eqz v2, :cond_2

    .line 131
    const/4 v2, 0x1

    .line 133
    goto :goto_1

    .line 134
    :cond_2
    move v2, v3

    .line 135
    :goto_1
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    .line 136
    move-result-object v0

    .line 139
    iget-object v1, p1, Lcom/android/systemui/keyguard/KeyguardViewMediator;->mHandler:Lcom/android/systemui/keyguard/KeyguardViewMediator$12;

    .line 140
    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 142
    :cond_3
    monitor-exit p1

    .line 145
    goto :goto_2

    .line 146
    :catchall_0
    move-exception p0

    .line 147
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    throw p0

    .line 149
    :cond_4
    :goto_2
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 150
    sget-object v0, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->IDEL:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 152
    if-eq p1, v0, :cond_5

    .line 154
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->isInExitEditorMode()Z

    .line 156
    move-result p1

    .line 159
    if-eqz p1, :cond_6

    .line 160
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 162
    const/16 v0, 0x16

    .line 164
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 166
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 169
    const/16 p1, 0x21

    .line 171
    invoke-virtual {p0, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 173
    invoke-virtual {p0, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 176
    move-result-object p1

    .line 179
    invoke-virtual {p0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 180
    :cond_6
    return-void
    .line 183
.end method

.method public final setExitFromBouncerAnimIsRunning(Z)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setExitFromBouncerAnimIsRunning = "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    sget-object v1, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iput-boolean p1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mExitFromBouncerAnimRunning:Z

    .line 22
    if-nez p1, :cond_0

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 26
    move-result-wide v0

    .line 29
    const-wide/16 v2, 0xc8

    .line 30
    add-long/2addr v0, v2

    .line 32
    const-wide/16 v2, 0x3c

    .line 33
    add-long/2addr v0, v2

    .line 35
    iput-wide v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mNextCanBindTime:J

    .line 36
    :cond_0
    return-void
    .line 38
.end method

.method public final stopLoadingCountDownAndAnim()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLoadingCountdownTimer:Lcom/android/keyguard/KeyguardEditorHelper$2;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Landroid/os/CountDownTimer;->cancel()V

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mMiuiNotificationPanelViewController:Lcom/android/systemui/shade/MiuiNotificationPanelViewController;

    .line 9
    if-eqz p0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/android/systemui/shade/MiuiNotificationPanelViewController;->mMiuiKeyguardEditLoadingContainer:Lcom/android/keyguard/widget/KeyguardLoadingRoundView;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/android/keyguard/widget/KeyguardLoadingRoundView;->stopEditLoadingAnim()V

    .line 17
    :cond_1
    return-void
    .line 20
.end method

.method public final unBindEditorService()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mHandler:Lcom/android/keyguard/KeyguardEditorHelper$1;

    .line 6
    const/16 v1, 0xb

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 10
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->serviceConnection:Lcom/android/keyguard/KeyguardEditorHelper$10;

    .line 13
    iget-object v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 15
    invoke-virtual {v1, v0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 17
    const/4 v0, 0x0

    .line 20
    iput-boolean v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditorServiceBinded:Z

    .line 21
    :cond_0
    return-void
    .line 23
.end method

.method public final updateConfigurations()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 8
    move-result-object v1

    .line 11
    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 12
    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getMaxBounds()Landroid/graphics/Rect;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 18
    move-result v2

    .line 21
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 22
    move-result v1

    .line 25
    iget-object v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mState:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 26
    sget-object v4, Lcom/android/keyguard/KeyguardEditorHelper$EditorState;->SHOWINGBOUNCER:Lcom/android/keyguard/KeyguardEditorHelper$EditorState;

    .line 28
    if-ne v3, v4, :cond_0

    .line 30
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenWidth:F

    .line 32
    int-to-float v4, v2

    .line 34
    cmpl-float v3, v3, v4

    .line 35
    if-eqz v3, :cond_0

    .line 37
    iget v3, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenHeight:F

    .line 39
    int-to-float v4, v1

    .line 41
    cmpl-float v3, v3, v4

    .line 42
    if-eqz v3, :cond_0

    .line 44
    :try_start_0
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardEditorHelper;->getEditorSurfaceControl()Landroid/view/SurfaceControl;

    .line 46
    move-result-object v3

    .line 49
    invoke-virtual {v3, v2, v1}, Landroid/view/SurfaceControl;->resize(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    goto :goto_0

    .line 53
    :catch_0
    move-exception v3

    .line 54
    sget-object v4, Lcom/android/keyguard/KeyguardEditorHelper;->TAG:Ljava/lang/String;

    .line 55
    const-string/jumbo v5, "resize fail"

    .line 57
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 60
    :cond_0
    :goto_0
    int-to-float v2, v2

    .line 63
    iput v2, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenWidth:F

    .line 64
    int-to-float v1, v1

    .line 66
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mScreenHeight:F

    .line 67
    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    .line 73
    move-result v1

    .line 76
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mTouchSlop:I

    .line 77
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    .line 79
    move-result v1

    .line 82
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLongPressTimeout:I

    .line 83
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 85
    move-result-object v0

    .line 88
    const v1, 0x7f07088a    # @dimen/miui_keyguard_edit_mode_area_margin_left '50.0dp'

    .line 89
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 92
    move-result v1

    .line 95
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginLeft:I

    .line 96
    const v1, 0x7f07088b    # @dimen/miui_keyguard_edit_mode_area_margin_right '50.0dp'

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 101
    move-result v1

    .line 104
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginRight:I

    .line 105
    const v1, 0x7f07088c    # @dimen/miui_keyguard_edit_mode_area_margin_top '50.0dp'

    .line 107
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 110
    move-result v1

    .line 113
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginTop:I

    .line 114
    const v1, 0x7f070889    # @dimen/miui_keyguard_edit_mode_area_margin_bottom '165.0dp'

    .line 116
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 119
    move-result v1

    .line 122
    iput v1, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mEditModeAreaMarginBottom:I

    .line 123
    const v1, 0x7f070888    # @dimen/miui_keyguard_edit_mode_area_gxzw_margin '55.0dp'

    .line 125
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 128
    move-result v0

    .line 131
    iput v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mGxzwAreaMargin:I

    .line 132
    iget v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mLongPressTimeout:I

    .line 134
    mul-int/lit8 v0, v0, 0x2

    .line 136
    div-int/lit8 v0, v0, 0x3

    .line 138
    iput v0, p0, Lcom/android/keyguard/KeyguardEditorHelper;->mStartServiceTimeout:I

    .line 140
    return-void
    .line 142
.end method
