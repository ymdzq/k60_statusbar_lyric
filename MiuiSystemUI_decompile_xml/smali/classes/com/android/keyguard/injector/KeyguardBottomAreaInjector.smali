.class public final Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBottomIconRectIsDeep:Z

.field public final mContext:Landroid/content/Context;

.field public mCurrentUser:I

.field public mCurrentUserSetupCompleted:Z

.field public mCurrentUserUnlocked:Z

.field public final mDeviceProvisionedControllerImpl:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

.field public mGxzwCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$initGxzwLowPosition$1;

.field public mIndicationArea:Landroid/widget/LinearLayout;

.field public mIndicationTextBottom:Landroid/widget/TextView;

.field public mKeyguardBottomAreaView:Lcom/android/systemui/statusbar/phone/KeyguardBottomAreaView;

.field public final mKeyguardIndicationInjector:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

.field public final mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

.field public final mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mKeyguardUpdateMonitorCallback$1;

.field public mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

.field public mLeftAffordanceViewTips:Landroid/widget/TextView;

.field public mLeftButton:Landroid/widget/ImageView;

.field public mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

.field public mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

.field public final mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

.field public final mPackageInstalledObserver:Lcom/miui/systemui/PackageInstalledObserver;

.field public final mPackageInstalledObserverCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;

.field public mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

.field public mRightAffordanceViewTips:Landroid/widget/TextView;

.field public mRightButton:Landroid/widget/ImageView;

.field public mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

.field public final mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;

.field public mSuperSavePowerMode:Z

.field public mTouchAtKeyguardBottomArea:Z

.field public mTouchDownX:F

.field public mTouchDownY:F

.field public mUpArrow:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/keyguard/negative/MiuiUWBController;Lcom/android/keyguard/magazine/LockScreenMagazineController;Lcom/android/keyguard/injector/KeyguardPanelViewInjector;Lcom/android/keyguard/injector/KeyguardIndicationInjector;Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;Lcom/miui/systemui/PackageInstalledObserver;Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/miui/systemui/controller/SuperSaveModeController;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 5
    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 7
    iput-object p4, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 9
    iput-object p5, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardPanelViewInjector:Lcom/android/keyguard/injector/KeyguardPanelViewInjector;

    .line 11
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardIndicationInjector:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 13
    iput-object p7, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mDeviceProvisionedControllerImpl:Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;

    .line 15
    iput-object p8, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mPackageInstalledObserver:Lcom/miui/systemui/PackageInstalledObserver;

    .line 17
    iput-object p12, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 19
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    .line 21
    move-result p3

    .line 24
    iput p3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUser:I

    .line 25
    new-instance p3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mKeyguardUpdateMonitorCallback$1;

    .line 27
    invoke-direct {p3, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 29
    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mKeyguardUpdateMonitorCallback$1;

    .line 32
    new-instance p3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;

    .line 34
    invoke-direct {p3, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mMiuiKeyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 36
    iput-object p3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 39
    new-instance p3, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mDeviceProvisionedListener$1;

    .line 41
    invoke-direct {p3, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mDeviceProvisionedListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 43
    new-instance p4, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;

    .line 46
    invoke-direct {p4, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 48
    iput-object p4, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mPackageInstalledObserverCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mPackageInstalledObserverCallback$1;

    .line 51
    new-instance p5, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mOnConfigurationController$1;

    .line 53
    invoke-direct {p5, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mOnConfigurationController$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 55
    new-instance p6, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;

    .line 58
    invoke-direct {p6, p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;-><init>(Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 60
    iput-object p6, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mSuperSaveModeChangeListener:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mSuperSaveModeChangeListener$1;

    .line 63
    iget-object p12, p7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->lock:Ljava/lang/Object;

    .line 65
    monitor-enter p12

    .line 67
    :try_start_0
    iget-object v0, p7, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->listeners:Landroid/util/ArraySet;

    .line 68
    invoke-virtual {v0, p3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 70
    monitor-exit p12

    .line 73
    iget-object p3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mMiuiKeyguardUpdateMonitorCallback:Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;

    .line 74
    invoke-virtual {p1, p3}, Lcom/android/keyguard/injector/KeyguardUpdateMonitorInjector;->registerCallback(Lcom/miui/interfaces/keyguard/MiuiKeyguardUpdateMonitorCallback;)V

    .line 76
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardUpdateMonitorCallback:Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$mKeyguardUpdateMonitorCallback$1;

    .line 79
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 81
    iget-object p1, p8, Lcom/miui/systemui/PackageInstalledObserver;->mPackageInstalledCallbacks:Ljava/util/ArrayList;

    .line 84
    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 86
    check-cast p10, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 89
    invoke-virtual {p10, p5}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p11, p6}, Lcom/miui/systemui/controller/SuperSaveModeController;->addCallback(Lcom/miui/systemui/controller/SuperSaveModeController$SuperSaveModeChangeListener;)V

    .line 94
    iget-boolean p1, p9, Lcom/android/keyguard/wallpaper/MiuiKeyguardWallPaperManager;->mBottomIconIsDeep:Z

    .line 97
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 99
    iget p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUser:I

    .line 101
    invoke-virtual {p7, p1}, Lcom/android/systemui/statusbar/policy/DeviceProvisionedControllerImpl;->isUserSetup(I)Z

    .line 103
    move-result p1

    .line 106
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserSetupCompleted:Z

    .line 107
    iget p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUser:I

    .line 109
    invoke-virtual {p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->isUserUnlocked(I)Z

    .line 111
    move-result p1

    .line 114
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserUnlocked:Z

    .line 115
    iget-boolean p1, p11, Lcom/miui/systemui/controller/SuperSaveModeController;->mSuperSaveModeOn:Z

    .line 117
    iput-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mSuperSavePowerMode:Z

    .line 119
    return-void

    .line 121
    :catchall_0
    move-exception p0

    .line 122
    monitor-exit p12

    .line 123
    throw p0
    .line 124
.end method


# virtual methods
.method public final getButtonLayoutAnimate(Landroid/view/View;Landroid/widget/TextView;Z)Landroid/animation/AnimatorSet;
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 4
    new-instance v2, Landroid/animation/AnimatorSet;

    .line 6
    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 8
    const/4 v3, 0x1

    .line 11
    if-eqz p3, :cond_0

    .line 12
    const/4 v4, -0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v4, v3

    .line 16
    :goto_0
    int-to-float v4, v4

    .line 17
    sget-object v5, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 18
    const/4 v6, 0x2

    .line 20
    new-array v7, v6, [F

    .line 21
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    aput v9, v7, v8

    .line 25
    const/16 v10, -0x32

    .line 27
    int-to-float v10, v10

    .line 29
    mul-float/2addr v10, v4

    .line 30
    aput v10, v7, v3

    .line 31
    invoke-static {v0, v5, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 33
    move-result-object v5

    .line 36
    const-wide/16 v11, 0x96

    .line 37
    invoke-virtual {v5, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 39
    sget-object v7, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 42
    new-array v13, v6, [F

    .line 44
    aput v10, v13, v8

    .line 46
    const/16 v10, 0xa

    .line 48
    int-to-float v10, v10

    .line 50
    mul-float/2addr v10, v4

    .line 51
    aput v10, v13, v3

    .line 52
    invoke-static {v0, v7, v13}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 54
    move-result-object v7

    .line 57
    invoke-virtual {v7, v11, v12}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 58
    sget-object v11, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 61
    new-array v12, v6, [F

    .line 63
    aput v10, v12, v8

    .line 65
    const/4 v10, -0x8

    .line 67
    int-to-float v10, v10

    .line 68
    mul-float/2addr v10, v4

    .line 69
    aput v10, v12, v3

    .line 70
    invoke-static {v0, v11, v12}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 72
    move-result-object v11

    .line 75
    const-wide/16 v12, 0x64

    .line 76
    invoke-virtual {v11, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 78
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 81
    new-array v15, v6, [F

    .line 83
    aput v10, v15, v8

    .line 85
    const/4 v10, 0x5

    .line 87
    int-to-float v10, v10

    .line 88
    mul-float/2addr v10, v4

    .line 89
    aput v10, v15, v3

    .line 90
    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 92
    move-result-object v4

    .line 95
    invoke-virtual {v4, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 96
    sget-object v14, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    .line 99
    new-array v15, v6, [F

    .line 101
    aput v10, v15, v8

    .line 103
    aput v9, v15, v3

    .line 105
    invoke-static {v0, v14, v15}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 107
    move-result-object v0

    .line 110
    invoke-virtual {v0, v12, v13}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 111
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 114
    new-array v6, v6, [F

    .line 116
    fill-array-data v6, :array_0

    .line 118
    invoke-static {v1, v3, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 121
    move-result-object v3

    .line 124
    const-wide/16 v8, 0x1f4

    .line 125
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 127
    const-wide/16 v8, 0x3e8

    .line 130
    invoke-virtual {v3, v8, v9}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 132
    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 135
    move-result-object v5

    .line 138
    invoke-virtual {v5, v7}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 139
    invoke-virtual {v2, v7}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 142
    move-result-object v5

    .line 145
    invoke-virtual {v5, v11}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 146
    invoke-virtual {v2, v11}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 149
    move-result-object v5

    .line 152
    invoke-virtual {v5, v4}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 153
    invoke-virtual {v2, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 156
    move-result-object v4

    .line 159
    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 160
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 163
    move-result-object v0

    .line 166
    invoke-virtual {v0, v3}, Landroid/animation/AnimatorSet$Builder;->before(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 167
    new-instance v0, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;

    .line 170
    invoke-direct {v0}, Lcom/miui/maml/animation/interpolater/SineEaseInOutInterpolater;-><init>()V

    .line 172
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 175
    new-instance v0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;

    .line 178
    move-object/from16 v3, p0

    .line 180
    invoke-direct {v0, v1, v3}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector$getButtonLayoutAnimate$1;-><init>(Landroid/widget/TextView;Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;)V

    .line 182
    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 185
    return-object v2

    .line 188
    nop

    .line 189
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 190
.end method

.method public final handleBottomButtonClickedAnimation(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardIndicationInjector:Lcom/android/keyguard/injector/KeyguardIndicationInjector;

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->isRunning()Z

    .line 10
    move-result v1

    .line 13
    if-eqz v1, :cond_0

    .line 14
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 16
    invoke-virtual {v1}, Landroid/animation/ObjectAnimator;->cancel()V

    .line 18
    :cond_0
    if-eqz p1, :cond_1

    .line 21
    const/16 p0, 0x8

    .line 23
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 25
    const/4 p0, 0x0

    .line 28
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setAlpha(F)V

    .line 29
    goto :goto_0

    .line 32
    :cond_1
    sget-object p1, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 33
    const/4 v1, 0x2

    .line 35
    new-array v1, v1, [F

    .line 36
    fill-array-data v1, :array_0

    .line 38
    invoke-static {v0, p1, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 41
    move-result-object p1

    .line 44
    iput-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 45
    sget-object v1, Lcom/miui/utils/animation/Ease$Cubic;->easeInOut:Lcom/miui/utils/animation/Ease$Sine$1;

    .line 47
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 49
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 52
    new-instance v1, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;

    .line 54
    const/4 v2, 0x1

    .line 56
    invoke-direct {v1, v0, v2}, Lcom/android/keyguard/injector/KeyguardIndicationInjector$5;-><init>(Landroid/widget/TextView;I)V

    .line 57
    invoke-virtual {p1, v1}, Landroid/animation/ObjectAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 60
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 63
    const-wide/16 v0, 0x320

    .line 65
    invoke-virtual {p1, v0, v1}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 67
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardIndicationInjector;->mBottomButtonClickAnimator:Landroid/animation/ObjectAnimator;

    .line 70
    invoke-virtual {p0}, Landroid/animation/ObjectAnimator;->start()V

    .line 72
    :goto_0
    return-void

    .line 75
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 76
.end method

.method public final initTipsView(Z)V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 3
    if-eqz p1, :cond_5

    .line 5
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 7
    if-eqz p1, :cond_7

    .line 9
    const-class p1, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 11
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 13
    move-result-object p1

    .line 16
    check-cast p1, Lcom/android/keyguard/negative/MiuiUWBController;

    .line 17
    iget-boolean p1, p1, Lcom/android/keyguard/negative/MiuiUWBController;->mUseUWB:Z

    .line 19
    if-eqz p1, :cond_0

    .line 21
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 23
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 25
    const v2, 0x7f1308bb    # @string/open_uwb_hint_text 'Swipe right to open Xiaomi Magic Control'

    .line 28
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 31
    move-result-object v2

    .line 34
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 35
    goto :goto_1

    .line 38
    :cond_0
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 39
    iget-boolean v2, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 41
    if-eqz v2, :cond_2

    .line 43
    sget-boolean v2, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 45
    if-eqz v2, :cond_1

    .line 47
    iget-boolean p1, p1, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazineClosed:Z

    .line 49
    if-eqz p1, :cond_1

    .line 51
    sget-boolean p1, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 53
    if-nez p1, :cond_2

    .line 55
    :cond_1
    const/4 p1, 0x1

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    const/4 p1, 0x0

    .line 59
    :goto_0
    if-eqz p1, :cond_3

    .line 60
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 62
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 64
    const v2, 0x7f1308b9    # @string/open_lock_screen_magazine_hint_text 'Swipe right for more options'

    .line 67
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 73
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    goto :goto_1

    .line 77
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 78
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 80
    const v2, 0x7f1308ba    # @string/open_remote_center_hint_text 'Swipe right to view controls'

    .line 83
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 86
    move-result-object v2

    .line 89
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 90
    :goto_1
    iget-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 93
    if-eqz p1, :cond_4

    .line 95
    const p1, 0x7f081231    # @drawable/keyguard_bottom_guide_right_arrow 'res/drawable-440dpi/keyguard_bottom_guide_right_arrow.webp'

    .line 97
    goto :goto_2

    .line 100
    :cond_4
    const p1, 0x7f081232    # @drawable/keyguard_bottom_guide_right_arrow_dark 'res/drawable-440dpi/keyguard_bottom_guide_right_arrow_dark.webp'

    .line 101
    :goto_2
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object p1

    .line 107
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 108
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v0, v0, p1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 113
    goto :goto_4

    .line 116
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 117
    if-eqz p1, :cond_7

    .line 119
    const v2, 0x7f1308b8    # @string/open_camera_hint_text 'Drag the icon to open Camera'

    .line 121
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 124
    move-result-object v2

    .line 127
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-boolean p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 131
    if-eqz p1, :cond_6

    .line 133
    const p1, 0x7f08122f    # @drawable/keyguard_bottom_guide_left_arrow 'res/drawable-440dpi/keyguard_bottom_guide_left_arrow.webp'

    .line 135
    goto :goto_3

    .line 138
    :cond_6
    const p1, 0x7f081230    # @drawable/keyguard_bottom_guide_left_arrow_dark 'res/drawable-440dpi/keyguard_bottom_guide_left_arrow_dark.webp'

    .line 139
    :goto_3
    invoke-virtual {v1, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 142
    move-result-object p1

    .line 145
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 146
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 148
    invoke-virtual {p0, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 151
    :cond_7
    :goto_4
    return-void
    .line 154
.end method

.method public final isGxzwLowPosAndFingerApplyForKeyguard()Z
    .locals 1

    .line 1
    sget v0, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwManager;->$r8$clinit:I

    .line 2
    invoke-static {}, Lcom/miui/keyguard/biometrics/fod/MiuiGxzwUtils;->isGxzwLowPosition()Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    const-class v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 10
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;

    .line 16
    iget-boolean v0, v0, Lcom/android/keyguard/KeyguardCommonSettingObserver;->fingerApplyForKeyguard:Z

    .line 18
    if-eqz v0, :cond_0

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mKeyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 22
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 24
    move-result v0

    .line 27
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCachedIsUnlockWithFingerprintPossible(I)Z

    .line 28
    move-result p0

    .line 31
    if-eqz p0, :cond_0

    .line 32
    const/4 p0, 0x1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    const/4 p0, 0x0

    .line 36
    :goto_0
    return p0
    .line 37
.end method

.method public final startButtonLayoutAnimate(ZZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 2
    const/4 v1, 0x1

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 7
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 9
    invoke-virtual {p0, v0, v2, v1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->getButtonLayoutAnimate(Landroid/view/View;Landroid/widget/TextView;Z)Landroid/animation/AnimatorSet;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 15
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 17
    const/4 v2, 0x0

    .line 19
    if-nez v0, :cond_1

    .line 20
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 22
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 24
    invoke-virtual {p0, v0, v3, v2}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->getButtonLayoutAnimate(Landroid/view/View;Landroid/widget/TextView;Z)Landroid/animation/AnimatorSet;

    .line 26
    move-result-object v0

    .line 29
    iput-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 30
    :cond_1
    if-nez p2, :cond_3

    .line 32
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 34
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 36
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 39
    move-result p2

    .line 42
    if-nez p2, :cond_2

    .line 43
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 45
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 47
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 50
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    :cond_2
    return-void

    .line 56
    :cond_3
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 57
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 62
    iget-object p2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 65
    invoke-static {p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 67
    invoke-virtual {p2}, Landroid/animation/AnimatorSet;->cancel()V

    .line 70
    if-eqz p1, :cond_5

    .line 73
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 75
    if-eqz p1, :cond_4

    .line 77
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 79
    move-result p1

    .line 82
    if-nez p1, :cond_4

    .line 83
    goto :goto_0

    .line 85
    :cond_4
    move v1, v2

    .line 86
    :goto_0
    if-eqz v1, :cond_7

    .line 87
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 89
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 91
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 94
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 97
    if-eqz p0, :cond_7

    .line 99
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 101
    goto :goto_2

    .line 104
    :cond_5
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 105
    if-eqz p1, :cond_6

    .line 107
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 109
    move-result p1

    .line 112
    if-nez p1, :cond_6

    .line 113
    goto :goto_1

    .line 115
    :cond_6
    move v1, v2

    .line 116
    :goto_1
    if-eqz v1, :cond_7

    .line 117
    iget-object p1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButtonLayoutAnimatorSet:Landroid/animation/AnimatorSet;

    .line 119
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 121
    invoke-virtual {p1}, Landroid/animation/AnimatorSet;->start()V

    .line 124
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 127
    if-eqz p0, :cond_7

    .line 129
    invoke-virtual {p0}, Landroid/widget/TextView;->requestFocus()Z

    .line 131
    :cond_7
    :goto_2
    return-void
    .line 134
.end method

.method public final updateAffordanceViewTipsLayoutParams()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 6
    if-nez v1, :cond_0

    .line 8
    goto/16 :goto_1

    .line 10
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v0

    .line 18
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 19
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 21
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 23
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 30
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->isGxzwLowPosAndFingerApplyForKeyguard()Z

    .line 32
    move-result v2

    .line 35
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 36
    if-eqz v2, :cond_1

    .line 38
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object v2

    .line 43
    const v4, 0x7f070447    # @dimen/keyguard_bottom_right_button_tips_margin_bottom_low '-27.5dp'

    .line 44
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 47
    move-result v2

    .line 50
    float-to-int v2, v2

    .line 51
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 52
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 54
    move-result-object v2

    .line 57
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimension(I)F

    .line 58
    move-result v2

    .line 61
    float-to-int v2, v2

    .line 62
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 63
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v2

    .line 68
    const v4, 0x7f070449    # @dimen/keyguard_bottom_right_button_tips_margin_end_low '-66.0dp'

    .line 69
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v2

    .line 75
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 76
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 79
    move-result-object v2

    .line 82
    const v3, 0x7f070446    # @dimen/keyguard_bottom_left_button_tips_margin_start_low '-66.0dp'

    .line 83
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 86
    move-result v2

    .line 89
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 90
    goto :goto_0

    .line 93
    :cond_1
    const/4 v2, 0x0

    .line 94
    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 95
    iput v2, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 99
    move-result-object v2

    .line 102
    const v4, 0x7f070448    # @dimen/keyguard_bottom_right_button_tips_margin_end '-28.0dp'

    .line 103
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 106
    move-result v2

    .line 109
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 110
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 113
    move-result-object v2

    .line 116
    const v3, 0x7f070445    # @dimen/keyguard_bottom_left_button_tips_margin_start '-28.0dp'

    .line 117
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 120
    move-result v2

    .line 123
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 124
    :goto_0
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewTips:Landroid/widget/TextView;

    .line 127
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 129
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 132
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewTips:Landroid/widget/TextView;

    .line 135
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 137
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 140
    return-void

    .line 143
    :cond_2
    :goto_1
    const-string p0, "KeyguardBottomAreaInjector"

    .line 144
    const-string/jumbo v0, "updateAffordanceViewTipsLayoutParams m(Left/Right)AffordanceViewTips is null"

    .line 146
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    return-void
    .line 152
.end method

.method public final updateIcons()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 7
    if-nez v1, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserUnlocked:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserSetupCompleted:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mSuperSavePowerMode:Z

    .line 19
    if-nez v1, :cond_1

    .line 21
    const/4 v1, 0x0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    const/16 v1, 0x8

    .line 25
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 27
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 30
    if-eqz v0, :cond_2

    .line 32
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 34
    move-result v0

    .line 37
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 38
    move-result-object v0

    .line 41
    goto :goto_2

    .line 42
    :cond_2
    const/4 v0, 0x0

    .line 43
    :goto_2
    if-eqz v0, :cond_4

    .line 44
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 46
    if-nez v1, :cond_3

    .line 48
    goto :goto_3

    .line 50
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 51
    move-result v0

    .line 54
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 55
    :cond_4
    :goto_3
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateRightAffordanceViewLayoutVisibility()V

    .line 58
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateLeftIcon()V

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->updateRightIcon()V

    .line 64
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mUpArrow:Landroid/widget/ImageView;

    .line 67
    if-eqz v0, :cond_6

    .line 69
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 71
    if-eqz v1, :cond_5

    .line 73
    const v1, 0x7f0812e0    # @drawable/miui_default_lock_screen_up_arrow 'res/drawable-xhdpi/miui_default_lock_screen_up_arrow.webp'

    .line 75
    goto :goto_4

    .line 78
    :cond_5
    const v1, 0x7f0812e1    # @drawable/miui_default_lock_screen_up_arrow_dark 'res/drawable-xhdpi/miui_default_lock_screen_up_arrow_dark.webp'

    .line 79
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 82
    invoke-virtual {p0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 84
    move-result-object p0

    .line 87
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 88
    :cond_6
    return-void
    .line 91
.end method

.method public final updateIndicationTextLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-string p0, "KeyguardBottomAreaInjector"

    .line 6
    const-string/jumbo v0, "updateIndicationTextLayoutParams mIndicationTextBottom is null"

    .line 8
    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 11
    return-void

    .line 14
    :cond_0
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 15
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 18
    move-result-object v0

    .line 21
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    invoke-virtual {p0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->isGxzwLowPosAndFingerApplyForKeyguard()Z

    .line 24
    move-result v1

    .line 27
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 28
    if-eqz v1, :cond_1

    .line 30
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v1

    .line 35
    const v2, 0x7f070444    # @dimen/keyguard_bottom_indication_text_margin_bottom_low '26.0dp'

    .line 36
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 39
    move-result v1

    .line 42
    float-to-int v1, v1

    .line 43
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v1

    .line 50
    const v2, 0x7f070443    # @dimen/keyguard_bottom_indication_text_margin_bottom '42.0dp'

    .line 51
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    .line 54
    move-result v1

    .line 57
    float-to-int v1, v1

    .line 58
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 59
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mIndicationTextBottom:Landroid/widget/TextView;

    .line 61
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 63
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 66
    return-void
    .line 69
.end method

.method public final updateLeftIcon()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mMiuiUWBController:Lcom/android/keyguard/negative/MiuiUWBController;

    .line 2
    iget-boolean v0, v0, Lcom/android/keyguard/negative/MiuiUWBController;->mUseUWB:Z

    .line 4
    const/4 v1, 0x1

    .line 6
    iget-object v2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 7
    if-eqz v0, :cond_3

    .line 9
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 15
    if-eqz v3, :cond_0

    .line 17
    const v3, 0x7f081237    # @drawable/keyguard_bottom_uwb_img 'res/drawable/keyguard_bottom_uwb_img.xml'

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const v3, 0x7f081238    # @drawable/keyguard_bottom_uwb_img_dark 'res/drawable/keyguard_bottom_uwb_img_dark.xml'

    .line 23
    :goto_0
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 26
    move-result-object v3

    .line 29
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 30
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 33
    if-nez v0, :cond_2

    .line 35
    goto/16 :goto_4

    .line 37
    :cond_2
    const v3, 0x7f13009a    # @string/accessibility_left_uwb_button 'Xiaomi Magic Control'

    .line 39
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 42
    move-result-object v2

    .line 45
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 46
    goto/16 :goto_4

    .line 49
    :cond_3
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLockScreenMagazineController:Lcom/android/keyguard/magazine/LockScreenMagazineController;

    .line 51
    iget-boolean v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsSupportLockScreenMagazineLeft:Z

    .line 53
    if-eqz v3, :cond_5

    .line 55
    sget-boolean v3, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    .line 57
    if-eqz v3, :cond_4

    .line 59
    iget-boolean v3, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mIsLockScreenMagazineClosed:Z

    .line 61
    if-eqz v3, :cond_4

    .line 63
    sget-boolean v3, Lcom/miui/utils/configs/MiuiConfigs;->IS_RSA4_FROM_WC:Z

    .line 65
    if-nez v3, :cond_5

    .line 67
    :cond_4
    move v3, v1

    .line 69
    goto :goto_1

    .line 70
    :cond_5
    const/4 v3, 0x0

    .line 71
    :goto_1
    if-eqz v3, :cond_a

    .line 72
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 74
    if-eqz v3, :cond_8

    .line 76
    iget-boolean v4, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 78
    if-eqz v4, :cond_6

    .line 80
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreMainEntryLightIcon:Landroid/graphics/drawable/Drawable;

    .line 82
    if-nez v0, :cond_7

    .line 84
    const v0, 0x7f081233    # @drawable/keyguard_bottom_lock_screen_magazine_img 'res/drawable/keyguard_bottom_lock_screen_magazine_img.xml'

    .line 86
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 89
    move-result-object v0

    .line 92
    goto :goto_2

    .line 93
    :cond_6
    iget-object v0, v0, Lcom/android/keyguard/magazine/LockScreenMagazineController;->mPreMainEntryDarkIcon:Landroid/graphics/drawable/Drawable;

    .line 94
    if-nez v0, :cond_7

    .line 96
    const v0, 0x7f081234    # @drawable/keyguard_bottom_lock_screen_magazine_img_dark 'res/drawable/keyguard_bottom_lock_screen_magazine_img_dark.xml'

    .line 98
    invoke-virtual {v2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 101
    move-result-object v0

    .line 104
    :cond_7
    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 105
    :cond_8
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 108
    if-nez v0, :cond_9

    .line 110
    goto :goto_4

    .line 112
    :cond_9
    const v3, 0x7f130099    # @string/accessibility_left_lock_screen_magazine_button 'Wallpaper Carousel'

    .line 113
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 116
    move-result-object v2

    .line 119
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 120
    goto :goto_4

    .line 123
    :cond_a
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 124
    if-eqz v0, :cond_c

    .line 126
    iget-boolean v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 128
    if-eqz v3, :cond_b

    .line 130
    const v3, 0x7f081235    # @drawable/keyguard_bottom_remote_center_img 'res/drawable/keyguard_bottom_remote_center_img.xml'

    .line 132
    goto :goto_3

    .line 135
    :cond_b
    const v3, 0x7f081236    # @drawable/keyguard_bottom_remote_center_img_dark 'res/drawable/keyguard_bottom_remote_center_img_dark.xml'

    .line 136
    :goto_3
    invoke-virtual {v2, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 139
    move-result-object v3

    .line 142
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 143
    :cond_c
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mLeftButton:Landroid/widget/ImageView;

    .line 146
    if-nez v0, :cond_d

    .line 148
    goto :goto_4

    .line 150
    :cond_d
    const v3, 0x7f130098    # @string/accessibility_left_control_center_button 'Shortcut'

    .line 151
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 154
    move-result-object v2

    .line 157
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 158
    :goto_4
    invoke-virtual {p0, v1}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->initTipsView(Z)V

    .line 161
    return-void
    .line 164
.end method

.method public final updateRightAffordanceViewLayoutVisibility()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 2
    if-nez v0, :cond_0

    .line 4
    goto :goto_1

    .line 6
    :cond_0
    sget-boolean v1, Lcom/miui/utils/configs/MiuiConfigs;->IS_PAD:Z

    .line 7
    if-nez v1, :cond_1

    .line 9
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserUnlocked:Z

    .line 11
    if-eqz v1, :cond_1

    .line 13
    iget-boolean v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUserSetupCompleted:Z

    .line 15
    if-eqz v1, :cond_1

    .line 17
    iget v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mCurrentUser:I

    .line 19
    const-string v2, "com.android.camera"

    .line 21
    iget-object v3, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mPackageInstalledObserver:Lcom/miui/systemui/PackageInstalledObserver;

    .line 23
    invoke-virtual {v3, v1, v2}, Lcom/miui/systemui/PackageInstalledObserver;->isPackageInstalled(ILjava/lang/String;)Z

    .line 25
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    const/4 v1, 0x0

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/16 v1, 0x8

    .line 33
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 35
    :goto_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightAffordanceViewLayout:Landroid/widget/LinearLayout;

    .line 38
    if-eqz v0, :cond_2

    .line 40
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    .line 42
    move-result v0

    .line 45
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object v0

    .line 49
    goto :goto_2

    .line 50
    :cond_2
    const/4 v0, 0x0

    .line 51
    :goto_2
    if-eqz v0, :cond_4

    .line 52
    iget-object p0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 54
    if-nez p0, :cond_3

    .line 56
    goto :goto_3

    .line 58
    :cond_3
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 59
    move-result v0

    .line 62
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :cond_4
    :goto_3
    return-void
    .line 66
.end method

.method public final updateRightIcon()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mContext:Landroid/content/Context;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    iget-boolean v2, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mBottomIconRectIsDeep:Z

    .line 8
    if-eqz v2, :cond_0

    .line 10
    const v2, 0x7f08122d    # @drawable/keyguard_bottom_camera_img 'res/drawable/keyguard_bottom_camera_img.xml'

    .line 12
    goto :goto_0

    .line 15
    :cond_0
    const v2, 0x7f08122e    # @drawable/keyguard_bottom_camera_img_dark 'res/drawable/keyguard_bottom_camera_img_dark.xml'

    .line 16
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 19
    move-result-object v2

    .line 22
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 23
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->mRightButton:Landroid/widget/ImageView;

    .line 26
    if-nez v0, :cond_2

    .line 28
    goto :goto_1

    .line 30
    :cond_2
    const v2, 0x7f130052    # @string/accessibility_camera_button 'Camera'

    .line 31
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 38
    :goto_1
    const/4 v0, 0x0

    .line 41
    invoke-virtual {p0, v0}, Lcom/android/keyguard/injector/KeyguardBottomAreaInjector;->initTipsView(Z)V

    .line 42
    return-void
    .line 45
.end method
