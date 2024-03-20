.class public final Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;
.super Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final activityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;

.field public activityLaunchProgress:F

.field public final alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final configurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

.field public inputBouncerExpansion:F

.field public isLaunchingActivity:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public lastDozeAmount:F

.field public launchTransitionFadingAway:Z

.field public final lockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

.field public panelExpansionFraction:F

.field public final primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public qsExpansion:F

.field public final shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;

.field public showingUdfpsBouncer:Z

.field public final stateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

.field public final statusBarKeyguardViewManagerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

.field public statusBarState:I

.field public transitionToFullShadeProgress:F

.field public final udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

.field public udfpsRequested:Z

.field public final unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final unlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;

.field public final useExpandedOverlay:Z

.field public final view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;)V
    .locals 8

    .line 1
    move-object v6, p0

    .line 2
    move-object v7, p1

    .line 3
    move-object v0, p0

    .line 4
    move-object v1, p1

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p3

    .line 7
    move-object/from16 v4, p11

    .line 8
    move-object v5, p6

    .line 10
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsAnimationView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    .line 11
    iput-object v7, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 14
    move-object v0, p4

    .line 16
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 17
    move-object v0, p5

    .line 19
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 20
    move-object v0, p7

    .line 22
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->lockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 23
    move-object/from16 v0, p8

    .line 25
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 27
    move-object/from16 v0, p9

    .line 29
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 31
    move-object/from16 v0, p10

    .line 33
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 35
    move-object/from16 v0, p12

    .line 37
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 39
    move-object/from16 v0, p13

    .line 41
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 43
    move-object/from16 v0, p15

    .line 45
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 47
    move-object/from16 v0, p16

    .line 49
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 51
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 53
    move-object/from16 v1, p14

    .line 55
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 57
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 59
    move-result v0

    .line 62
    iput-boolean v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->useExpandedOverlay:Z

    .line 63
    const/4 v0, 0x2

    .line 65
    new-array v0, v0, [F

    .line 66
    fill-array-data v0, :array_0

    .line 68
    invoke-static {v0}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 71
    move-result-object v0

    .line 74
    const-wide/16 v1, 0x168

    .line 75
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 77
    sget-object v1, Lcom/android/app/animation/Interpolators;->ALPHA_IN:Landroid/view/animation/Interpolator;

    .line 80
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 82
    new-instance v1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$unlockedScreenOffDozeAnimator$1$1;

    .line 85
    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$unlockedScreenOffDozeAnimator$1$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 87
    invoke-virtual {v0, v1}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 90
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->unlockedScreenOffDozeAnimator:Landroid/animation/ValueAnimator;

    .line 93
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

    .line 95
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 97
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->stateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

    .line 100
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

    .line 102
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 104
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

    .line 107
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;

    .line 109
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 111
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;

    .line 114
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

    .line 116
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 118
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

    .line 121
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;

    .line 123
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 125
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;

    .line 128
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

    .line 130
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 132
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarKeyguardViewManagerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

    .line 135
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 137
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;)V

    .line 139
    iput-object v0, v6, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 142
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$1;

    .line 144
    const/4 v1, 0x0

    .line 146
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$1;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    .line 147
    invoke-static {p1, v0}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 150
    return-void

    .line 153
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 154
.end method

.method public static final access$showUdfpsBouncer(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Z)V
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    goto/16 :goto_2

    .line 6
    :cond_0
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->shouldPauseAuth()Z

    .line 8
    move-result v0

    .line 11
    iput-boolean p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 12
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 14
    if-eqz p1, :cond_4

    .line 16
    iget-object p1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 18
    if-eqz v0, :cond_2

    .line 20
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 22
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    iget-boolean v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mFullyInflated:Z

    .line 30
    if-nez v0, :cond_1

    .line 32
    goto :goto_0

    .line 34
    :cond_1
    new-instance v0, Landroid/animation/AnimatorSet;

    .line 35
    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 37
    iput-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 40
    iget-object v2, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 42
    sget-object v3, Landroid/view/View;->ALPHA:Landroid/util/Property;

    .line 44
    const/4 v4, 0x2

    .line 46
    new-array v5, v4, [F

    .line 47
    fill-array-data v5, :array_0

    .line 49
    invoke-static {v2, v3, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 52
    move-result-object v2

    .line 55
    iget-object v3, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 56
    sget-object v5, Landroid/view/View;->SCALE_X:Landroid/util/Property;

    .line 58
    new-array v6, v4, [F

    .line 60
    fill-array-data v6, :array_1

    .line 62
    invoke-static {v3, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 65
    move-result-object v3

    .line 68
    iget-object v5, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBgProtection:Landroid/widget/ImageView;

    .line 69
    sget-object v6, Landroid/view/View;->SCALE_Y:Landroid/util/Property;

    .line 71
    new-array v4, v4, [F

    .line 73
    fill-array-data v4, :array_2

    .line 75
    invoke-static {v5, v6, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    .line 78
    move-result-object v4

    .line 81
    filled-new-array {v2, v3, v4}, [Landroid/animation/Animator;

    .line 82
    move-result-object v2

    .line 85
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 86
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 89
    sget-object v2, Lcom/android/app/animation/Interpolators;->FAST_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    .line 91
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 93
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 96
    const-wide/16 v2, 0x1f4

    .line 98
    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 100
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 103
    new-instance v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$1;

    .line 105
    invoke-direct {v2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy$1;-><init>()V

    .line 107
    invoke-virtual {v0, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 110
    iget-object v0, p1, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mBackgroundInAnimator:Landroid/animation/AnimatorSet;

    .line 113
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 115
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 118
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 120
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 122
    if-eqz v0, :cond_3

    .line 124
    const/4 v0, 0x1

    .line 126
    invoke-virtual {v1, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 127
    :cond_3
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    .line 130
    move-result-object v0

    .line 133
    const v1, 0x7f13007e    # @string/accessibility_fingerprint_bouncer 'Authentication required. Touch the fingerprint sensor to authenticate.'

    .line 134
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 140
    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 141
    goto :goto_1

    .line 144
    :cond_4
    const/4 p1, 0x0

    .line 145
    invoke-virtual {v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 146
    :goto_1
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->updateAlpha()V

    .line 149
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 152
    :goto_2
    return-void

    .line 155
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 156
    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    .line 164
    :array_2
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
    .line 172
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2
    iget-boolean p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 5
    const-string/jumbo v0, "showingUdfpsAltBouncer="

    .line 7
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 10
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 13
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->isVisibleState()Z

    .line 15
    move-result v0

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    .line 19
    const-string v2, "altBouncerInteractor#isAlternateBouncerVisible="

    .line 21
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 33
    invoke-virtual {p2}, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->canShowAlternateBouncerForFingerprint()Z

    .line 36
    move-result p2

    .line 39
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "altBouncerInteractor#canShowAlternateBouncerForFingerprint="

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object p2

    .line 53
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 54
    const-string p2, "faceDetectRunning=false"

    .line 57
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarState:I

    .line 62
    invoke-static {p2}, Lcom/android/systemui/statusbar/StatusBarState;->toString(I)Ljava/lang/String;

    .line 64
    move-result-object p2

    .line 67
    const-string/jumbo v0, "statusBarState="

    .line 68
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 71
    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionToFullShadeProgress:F

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    .line 76
    const-string/jumbo v1, "transitionToFullShadeProgress="

    .line 78
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object p2

    .line 90
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 91
    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->qsExpansion:F

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    .line 96
    const-string v1, "qsExpansion="

    .line 98
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object p2

    .line 109
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 110
    iget p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->panelExpansionFraction:F

    .line 113
    new-instance v0, Ljava/lang/StringBuilder;

    .line 115
    const-string v1, "panelExpansionFraction="

    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 119
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 122
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 125
    move-result-object p2

    .line 128
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 129
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 132
    invoke-virtual {p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->getUnpausedAlpha()I

    .line 134
    move-result v0

    .line 137
    const-string/jumbo v1, "unpausedAlpha="

    .line 138
    invoke-static {v1, v0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 141
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 144
    const-string/jumbo v1, "udfpsRequestedByApp="

    .line 146
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 149
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->launchTransitionFadingAway:Z

    .line 152
    const-string v1, "launchTransitionFadingAway="

    .line 154
    invoke-static {v1, v0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 156
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->lastDozeAmount:F

    .line 159
    new-instance v1, Ljava/lang/StringBuilder;

    .line 161
    const-string v2, "lastDozeAmount="

    .line 163
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object v0

    .line 174
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 175
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    .line 180
    const-string v1, "inputBouncerExpansion="

    .line 182
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 184
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 187
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 190
    move-result-object p0

    .line 193
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 197
    new-instance p0, Ljava/lang/StringBuilder;

    .line 200
    const-string v0, "UdfpsKeyguardView ("

    .line 202
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 204
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 207
    const-string v0, ")"

    .line 210
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 215
    move-result-object p0

    .line 218
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 219
    new-instance p0, Ljava/lang/StringBuilder;

    .line 222
    const-string v0, "    mPauseAuth="

    .line 224
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 226
    iget-boolean v0, p2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mPauseAuth:Z

    .line 229
    const-string v1, "    mUnpausedAlpha="

    .line 231
    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 233
    move-result-object p0

    .line 236
    invoke-virtual {p2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->getUnpausedAlpha()I

    .line 237
    move-result v0

    .line 240
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object p0

    .line 247
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    new-instance p0, Ljava/lang/StringBuilder;

    .line 251
    const-string v0, "    mUdfpsRequested="

    .line 253
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 255
    iget-boolean v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mUdfpsRequested:Z

    .line 258
    const-string v1, "    mInterpolatedDarkAmount="

    .line 260
    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 262
    move-result-object p0

    .line 265
    iget v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mInterpolatedDarkAmount:F

    .line 266
    const-string v1, "    mAnimationType="

    .line 268
    invoke-static {p0, v0, p1, v1}, Lcom/android/keyguard/LockIconView$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;FLjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 270
    move-result-object p0

    .line 273
    iget v0, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAnimationType:I

    .line 274
    const-string v1, "    mUseExpandedOverlay="

    .line 276
    invoke-static {p0, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 278
    move-result-object p0

    .line 281
    iget-boolean p2, p2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUseExpandedOverlay:Z

    .line 282
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 284
    return-void
    .line 287
.end method

.method public final getTag()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, "UdfpsKeyguardViewController"

    .line 2
    return-object p0
    .line 4
.end method

.method public final listenForAlternateBouncerVisibility(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerVisibility$2;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForAlternateBouncerVisibility$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final listenForBouncerExpansion(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForBouncerExpansion$2;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p2, p0, v0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$listenForBouncerExpansion$2;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;Lkotlin/coroutines/Continuation;)V

    .line 5
    const/4 p0, 0x3

    .line 8
    invoke-static {p1, v0, v0, p2, p0}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public final onInit()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 6
    invoke-static {v1, p0}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    iput-object p0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 14
    :cond_0
    return-void
    .line 16
.end method

.method public final onViewAttached()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewAttached()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 18
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getDozeAmount()F

    .line 20
    move-result v1

    .line 23
    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->lastDozeAmount:F

    .line 24
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->stateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

    .line 26
    invoke-virtual {v2, v1, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;->onDozeAmountChanged(FF)V

    .line 28
    invoke-interface {v0, v2}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 31
    const/4 v1, 0x0

    .line 34
    iput-boolean v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 35
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 37
    check-cast v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 39
    iget-boolean v2, v1, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mLaunchTransitionFadingAway:Z

    .line 41
    iput-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->launchTransitionFadingAway:Z

    .line 43
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

    .line 45
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 47
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarState:I

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 56
    iget v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mQsExpansion:F

    .line 58
    iput v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->qsExpansion:F

    .line 60
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 62
    check-cast v1, Ljava/util/HashSet;

    .line 64
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarKeyguardViewManagerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

    .line 66
    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 68
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 71
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 73
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

    .line 75
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 80
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;

    .line 82
    invoke-virtual {v1, v2}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 84
    move-result-object v1

    .line 87
    invoke-virtual {v2, v1}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;->onPanelExpansionChanged(Lcom/android/systemui/shade/ShadeExpansionChangeEvent;)V

    .line 88
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsController:Lcom/android/systemui/biometrics/UdfpsController;

    .line 91
    iget-object v1, v1, Lcom/android/systemui/biometrics/UdfpsController;->mOverlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 93
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 95
    if-eqz v1, :cond_0

    .line 97
    iget v1, v1, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->scaleFactor:F

    .line 99
    iput v1, v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mScaleFactor:F

    .line 101
    :cond_0
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updatePadding()V

    .line 103
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->updateAlpha()V

    .line 106
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->updatePauseAuth()V

    .line 109
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 112
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 114
    invoke-static {v1, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 116
    move-result v1

    .line 119
    if-nez v1, :cond_1

    .line 120
    iput-object v3, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 122
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->lockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 124
    iput-object p0, v0, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mUdfpsKeyguardViewControllerLegacy:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 126
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 128
    iget-object v0, v0, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 130
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;

    .line 132
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    .line 134
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->useExpandedOverlay:Z

    .line 137
    iput-boolean p0, v2, Lcom/android/systemui/biometrics/UdfpsAnimationView;->mUseExpandedOverlay:Z

    .line 139
    invoke-virtual {v2}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->startIconAsyncInflate()V

    .line 141
    return-void
    .line 144
.end method

.method public final onViewDetached()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->onViewDetached()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;->bouncerRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepository;

    .line 7
    check-cast v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardBouncerRepositoryImpl;->_alternateBouncerUIAvailable:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 11
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 13
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 15
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 18
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 20
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateControllerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$keyguardStateControllerCallback$1;

    .line 22
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 24
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->stateListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$stateListener$1;

    .line 27
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 29
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->removeCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 31
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 34
    iget-object v1, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 36
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->occludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 38
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    const/4 v2, 0x0

    .line 44
    if-eqz v1, :cond_0

    .line 45
    iput-object v2, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mOccludingAppBiometricUI:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$occludingAppBiometricUI$1;

    .line 47
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 49
    const/4 v3, 0x0

    .line 51
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->requestFaceAuthOnOccludingApp(Z)V

    .line 52
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 55
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 57
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->configurationListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$configurationListener$1;

    .line 59
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 61
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 64
    iget-object v1, v1, Lcom/android/systemui/shade/ShadeExpansionStateManager;->expansionListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 66
    iget-object v3, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->shadeExpansionListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$shadeExpansionListener$1;

    .line 68
    invoke-virtual {v1, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 70
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->lockScreenShadeTransitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 73
    iget-object v3, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mUdfpsKeyguardViewControllerLegacy:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 75
    if-ne v3, p0, :cond_1

    .line 77
    iput-object v2, v1, Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;->mUdfpsKeyguardViewControllerLegacy:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 79
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 81
    iget-object v1, v1, Lcom/android/systemui/animation/ActivityLaunchAnimator;->listeners:Ljava/util/LinkedHashSet;

    .line 83
    iget-object v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchAnimatorListener:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$activityLaunchAnimatorListener$1;

    .line 85
    invoke-virtual {v1, v2}, Ljava/util/LinkedHashSet;->remove(Ljava/lang/Object;)Z

    .line 87
    iget-object v0, v0, Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;->mCallbacks:Ljava/util/Set;

    .line 90
    check-cast v0, Ljava/util/HashSet;

    .line 92
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarKeyguardViewManagerCallback:Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy$statusBarKeyguardViewManagerCallback$1;

    .line 94
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 96
    return-void
    .line 99
.end method

.method public final shouldPauseAuth()Z
    .locals 7

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    return v1

    .line 7
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 8
    const/4 v2, 0x1

    .line 10
    if-eqz v0, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsAnimationViewController;->notificationShadeVisible:Z

    .line 13
    if-nez v0, :cond_2

    .line 15
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    .line 17
    const/high16 v3, 0x3f800000    # 1.0f

    .line 19
    cmpg-float v0, v0, v3

    .line 21
    if-nez v0, :cond_1

    .line 23
    move v0, v2

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_0
    if-nez v0, :cond_2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 30
    check-cast v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 32
    iget-boolean v0, v0, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mShowing:Z

    .line 34
    if-eqz v0, :cond_2

    .line 36
    return v1

    .line 38
    :cond_2
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->launchTransitionFadingAway:Z

    .line 39
    if-eqz v0, :cond_3

    .line 41
    return v2

    .line 43
    :cond_3
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->statusBarState:I

    .line 44
    if-eq v0, v2, :cond_4

    .line 46
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 48
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;->isAnimationPlaying()Z

    .line 50
    move-result v0

    .line 53
    if-nez v0, :cond_4

    .line 54
    return v2

    .line 56
    :cond_4
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    .line 57
    const/high16 v3, 0x3f000000    # 0.5f

    .line 59
    cmpl-float v0, v0, v3

    .line 61
    if-ltz v0, :cond_5

    .line 63
    move v0, v2

    .line 65
    goto :goto_1

    .line 66
    :cond_5
    move v0, v1

    .line 67
    :goto_1
    if-eqz v0, :cond_6

    .line 68
    return v2

    .line 70
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 71
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 73
    move-result v3

    .line 76
    invoke-virtual {v0, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getUserUnlockedWithBiometric(I)Z

    .line 77
    move-result v0

    .line 80
    if-eqz v0, :cond_7

    .line 81
    return v2

    .line 83
    :cond_7
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 84
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->getUnpausedAlpha()I

    .line 86
    move-result p0

    .line 89
    int-to-double v3, p0

    .line 90
    const-wide v5, 0x4039800000000000L    # 25.5

    .line 91
    cmpg-double p0, v3, v5

    .line 96
    if-gez p0, :cond_8

    .line 98
    move v1, v2

    .line 100
    :cond_8
    return v1
    .line 101
.end method

.method public final updateAlpha()V
    .locals 9

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    if-eqz v0, :cond_0

    .line 6
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->inputBouncerExpansion:F

    .line 8
    sub-float v0, v1, v0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->panelExpansionFraction:F

    .line 13
    :goto_0
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 15
    const/4 v3, 0x0

    .line 17
    if-eqz v2, :cond_1

    .line 18
    const/16 v0, 0xff

    .line 20
    goto :goto_1

    .line 22
    :cond_1
    const/high16 v2, 0x3f000000    # 0.5f

    .line 23
    const v4, 0x3f666666    # 0.9f

    .line 25
    const/high16 v5, 0x437f0000    # 255.0f

    .line 28
    invoke-static {v2, v4, v3, v5, v0}, Landroid/util/MathUtils;->map(FFFFF)F

    .line 30
    move-result v0

    .line 33
    invoke-static {v0, v3, v5}, Landroid/util/MathUtils;->constrain(FFF)F

    .line 34
    move-result v0

    .line 37
    float-to-int v0, v0

    .line 38
    :goto_1
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->showingUdfpsBouncer:Z

    .line 39
    iget-object v4, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->view:Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 41
    if-nez v2, :cond_3

    .line 43
    int-to-float v0, v0

    .line 45
    sget-object v2, Lcom/android/app/animation/Interpolators;->EMPHASIZED_DECELERATE:Landroid/view/animation/Interpolator;

    .line 46
    iget v5, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->qsExpansion:F

    .line 48
    check-cast v2, Landroid/view/animation/PathInterpolator;

    .line 50
    invoke-virtual {v2, v5}, Landroid/view/animation/PathInterpolator;->getInterpolation(F)F

    .line 52
    move-result v2

    .line 55
    sub-float v2, v1, v2

    .line 56
    mul-float/2addr v2, v0

    .line 58
    float-to-int v0, v2

    .line 59
    int-to-float v0, v0

    .line 60
    iget v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->transitionToFullShadeProgress:F

    .line 61
    sub-float v2, v1, v2

    .line 63
    mul-float/2addr v2, v0

    .line 65
    float-to-int v0, v2

    .line 66
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->isLaunchingActivity:Z

    .line 67
    if-eqz v2, :cond_2

    .line 69
    iget-boolean v2, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->udfpsRequested:Z

    .line 71
    if-nez v2, :cond_2

    .line 73
    iget p0, p0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;->activityLaunchProgress:F

    .line 75
    sget-object v2, Lcom/android/systemui/animation/ActivityLaunchAnimator;->TIMINGS:Lcom/android/systemui/animation/LaunchAnimator$Timings;

    .line 77
    const/16 v2, 0x53

    .line 79
    int-to-long v5, v2

    .line 81
    const-wide/16 v7, 0x1f4

    .line 82
    div-long/2addr v7, v5

    .line 84
    long-to-float v2, v7

    .line 85
    mul-float/2addr p0, v2

    .line 86
    invoke-static {p0, v3, v1}, Lkotlin/ranges/RangesKt___RangesKt;->coerceIn(FFF)F

    .line 87
    move-result p0

    .line 90
    sub-float/2addr v1, p0

    .line 91
    int-to-float p0, v0

    .line 92
    mul-float/2addr p0, v1

    .line 93
    float-to-int v0, p0

    .line 94
    :cond_2
    int-to-float p0, v0

    .line 95
    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsAnimationView;->getDialogSuggestedAlpha()F

    .line 96
    move-result v0

    .line 99
    mul-float/2addr v0, p0

    .line 100
    float-to-int v0, v0

    .line 101
    :cond_3
    iput v0, v4, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mAlpha:I

    .line 102
    invoke-virtual {v4}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->updateAlpha()I

    .line 104
    return-void
    .line 107
.end method
