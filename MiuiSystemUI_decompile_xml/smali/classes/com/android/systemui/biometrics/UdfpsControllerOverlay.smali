.class public final Lcom/android/systemui/biometrics/UdfpsControllerOverlay;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

.field public final activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

.field public final alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final controllerCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

.field public final coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field public final dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final inflater:Landroid/view/LayoutInflater;

.field public final isDebuggable:Z

.field public final keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

.field public final keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

.field public final onTouch:Lkotlin/jvm/functions/Function3;

.field public overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

.field public overlayTouchListener:Lcom/android/systemui/biometrics/UdfpsControllerOverlay$show$1$1;

.field public overlayView:Lcom/android/systemui/biometrics/UdfpsView;

.field public final primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final requestId:J

.field public final requestReason:I

.field public sensorBounds:Landroid/graphics/Rect;

.field public final shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

.field public final statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public touchExplorationEnabled:Z

.field public final transitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

.field public final udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

.field public final udfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

.field public final unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/view/WindowManager;Landroid/view/accessibility/AccessibilityManager;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;JILandroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;Lcom/android/systemui/biometrics/UdfpsController$UdfpsOverlayController$$ExternalSyntheticLambda2;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lcom/android/settingslib/udfps/UdfpsUtils;)V
    .locals 6

    .line 1
    move-object v0, p0

    .line 2
    move-object/from16 v1, p22

    .line 3
    sget-boolean v2, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    move-object v3, p1

    .line 10
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->context:Landroid/content/Context;

    .line 11
    move-object v3, p2

    .line 13
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    .line 14
    move-object v3, p3

    .line 16
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->windowManager:Landroid/view/WindowManager;

    .line 17
    move-object v3, p4

    .line 19
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 20
    move-object v3, p5

    .line 22
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 23
    move-object v3, p6

    .line 25
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 26
    move-object v3, p7

    .line 28
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 29
    move-object v3, p8

    .line 31
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 32
    move-object v3, p9

    .line 34
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 35
    move-object/from16 v3, p10

    .line 37
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 39
    move-object/from16 v3, p11

    .line 41
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->transitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 43
    move-object/from16 v3, p12

    .line 45
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 47
    move-object/from16 v3, p13

    .line 49
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 51
    move-object/from16 v3, p14

    .line 53
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 55
    move-object/from16 v3, p15

    .line 57
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsDisplayModeProvider:Lcom/android/systemui/biometrics/UdfpsDisplayModeProvider;

    .line 59
    move-wide/from16 v3, p16

    .line 61
    iput-wide v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 63
    move/from16 v3, p18

    .line 65
    iput v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 67
    move-object/from16 v3, p19

    .line 69
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->controllerCallback:Landroid/hardware/fingerprint/IUdfpsOverlayControllerCallback;

    .line 71
    move-object/from16 v3, p20

    .line 73
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->onTouch:Lkotlin/jvm/functions/Function3;

    .line 75
    move-object/from16 v3, p21

    .line 77
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 79
    iput-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 81
    move-object/from16 v3, p23

    .line 83
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 85
    move-object/from16 v3, p24

    .line 87
    iput-object v3, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 89
    iput-boolean v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->isDebuggable:Z

    .line 91
    move-object/from16 v2, p25

    .line 93
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->udfpsUtils:Lcom/android/settingslib/udfps/UdfpsUtils;

    .line 95
    new-instance v2, Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 97
    invoke-direct {v2}, Lcom/android/settingslib/udfps/UdfpsOverlayParams;-><init>()V

    .line 99
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 102
    new-instance v2, Landroid/graphics/Rect;

    .line 104
    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 106
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 109
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 111
    const/16 v3, 0x7e8

    .line 113
    const/4 v4, 0x0

    .line 115
    const/4 v5, -0x3

    .line 116
    invoke-direct {v2, v3, v4, v5}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 117
    const-string v3, "UdfpsControllerOverlay"

    .line 120
    invoke-virtual {v2, v3}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 125
    const/16 v3, 0x33

    .line 128
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 130
    const/4 v3, 0x3

    .line 132
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 133
    const v3, 0x1800128

    .line 135
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 138
    const/high16 v3, 0x20000000

    .line 140
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 142
    const-string v3, " "

    .line 144
    iput-object v3, v2, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 146
    sget-object v3, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 148
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 150
    invoke-virtual {v1, v3}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 152
    move-result v1

    .line 155
    if-eqz v1, :cond_0

    .line 156
    const/4 v1, 0x4

    .line 158
    iput v1, v2, Landroid/view/WindowManager$LayoutParams;->inputFeatures:I

    .line 159
    :cond_0
    iput-object v2, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->coreLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 161
    return-void
.end method


# virtual methods
.method public final inflateUdfpsAnimation(Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/biometrics/UdfpsView;)Lcom/android/systemui/biometrics/UdfpsAnimationViewController;
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p2

    .line 4
    const/4 v2, 0x0

    .line 6
    const/4 v3, 0x1

    .line 7
    iget v4, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 8
    if-eq v4, v3, :cond_0

    .line 10
    const/4 v5, 0x2

    .line 12
    if-eq v4, v5, :cond_0

    .line 13
    move v5, v2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v5, v3

    .line 17
    :goto_0
    if-eqz v5, :cond_2

    .line 18
    iget-boolean v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->isDebuggable:Z

    .line 20
    if-eqz v5, :cond_1

    .line 22
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->context:Landroid/content/Context;

    .line 24
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v5

    .line 29
    const-string/jumbo v6, "udfps_overlay_remove_enrollment_ui"

    .line 30
    invoke-static {v5, v6, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 33
    move-result v5

    .line 36
    if-eqz v5, :cond_1

    .line 37
    move v2, v3

    .line 39
    :cond_1
    if-eqz v2, :cond_2

    .line 40
    const/4 v2, 0x5

    .line 42
    goto :goto_1

    .line 43
    :cond_2
    move v2, v4

    .line 44
    :goto_1
    const-string v3, "null cannot be cast to non-null type com.android.systemui.biometrics.UdfpsFpmEmptyView"

    .line 45
    const v5, 0x7f0d03d4    # @layout/udfps_fpm_empty_view 'res/layout/udfps_fpm_empty_view.xml'

    .line 47
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->inflater:Landroid/view/LayoutInflater;

    .line 50
    const/4 v7, 0x0

    .line 52
    packed-switch v2, :pswitch_data_0

    .line 53
    new-instance v0, Ljava/lang/StringBuilder;

    .line 56
    const-string v1, "Animation for reason "

    .line 58
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 60
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 63
    const-string v1, " not supported yet"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    const-string v1, "UdfpsControllerOverlay"

    .line 75
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    goto/16 :goto_3

    .line 80
    :pswitch_0
    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    move-result-object v2

    .line 85
    if-eqz v2, :cond_3

    .line 86
    move-object v5, v2

    .line 88
    check-cast v5, Lcom/android/systemui/biometrics/UdfpsFpmEmptyView;

    .line 89
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 91
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 94
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 96
    iget-object v8, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 98
    iget-object v9, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 100
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsFpmEmptyViewController;

    .line 102
    move-object v4, v0

    .line 104
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/biometrics/UdfpsFpmEmptyViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsFpmEmptyView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    .line 105
    goto/16 :goto_2

    .line 108
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    .line 110
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v0

    .line 115
    :pswitch_1
    const v2, 0x7f0d03d7    # @layout/udfps_keyguard_view_legacy 'res/layout/udfps_keyguard_view_legacy.xml'

    .line 116
    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 119
    move-result-object v2

    .line 122
    if-eqz v2, :cond_4

    .line 123
    check-cast v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;

    .line 125
    move-object v4, v2

    .line 127
    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 128
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 131
    iget-object v2, v2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;->mSensorBounds:Landroid/graphics/Rect;

    .line 133
    invoke-virtual {v2, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 135
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 138
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 140
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarKeyguardViewManager:Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;

    .line 142
    iget-object v8, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 144
    iget-object v9, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 146
    iget-object v10, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->transitionController:Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;

    .line 148
    iget-object v11, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 150
    iget-object v12, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 152
    iget-object v13, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->unlockedScreenOffAnimationController:Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;

    .line 154
    iget-object v14, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 156
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->activityLaunchAnimator:Lcom/android/systemui/animation/ActivityLaunchAnimator;

    .line 158
    move-object/from16 v16, v1

    .line 160
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 162
    move-object/from16 v17, v1

    .line 164
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->primaryBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 166
    move-object/from16 v18, v1

    .line 168
    iget-object v0, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 170
    move-object/from16 v19, v0

    .line 172
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 174
    move-object v3, v0

    .line 176
    move-object/from16 v15, p1

    .line 177
    invoke-direct/range {v3 .. v19}, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;-><init>(Lcom/android/systemui/biometrics/UdfpsKeyguardViewLegacy;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/StatusBarKeyguardViewManager;Lcom/android/keyguard/KeyguardUpdateMonitor;Lcom/android/systemui/dump/DumpManager;Lcom/android/systemui/statusbar/LockscreenShadeTransitionController;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/systemui/statusbar/policy/KeyguardStateController;Lcom/android/systemui/statusbar/phone/UnlockedScreenOffAnimationController;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/biometrics/UdfpsController;Lcom/android/systemui/animation/ActivityLaunchAnimator;Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;)V

    .line 179
    goto :goto_2

    .line 182
    :cond_4
    new-instance v0, Ljava/lang/NullPointerException;

    .line 183
    const-string v1, "null cannot be cast to non-null type com.android.systemui.biometrics.UdfpsKeyguardViewLegacy"

    .line 185
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 187
    throw v0

    .line 190
    :pswitch_2
    const v2, 0x7f0d03d2    # @layout/udfps_bp_view 'res/layout/udfps_bp_view.xml'

    .line 191
    invoke-virtual {v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 194
    move-result-object v2

    .line 197
    if-eqz v2, :cond_5

    .line 198
    move-object v4, v2

    .line 200
    check-cast v4, Lcom/android/systemui/biometrics/UdfpsBpView;

    .line 201
    invoke-virtual {v1, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 203
    iget-object v5, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 206
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 208
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 210
    iget-object v8, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 212
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsBpViewController;

    .line 214
    move-object v3, v0

    .line 216
    invoke-direct/range {v3 .. v8}, Lcom/android/systemui/biometrics/UdfpsBpViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsBpView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    .line 217
    goto :goto_2

    .line 220
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    .line 221
    const-string v1, "null cannot be cast to non-null type com.android.systemui.biometrics.UdfpsBpView"

    .line 223
    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 225
    throw v0

    .line 228
    :pswitch_3
    invoke-virtual {v6, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 229
    move-result-object v2

    .line 232
    if-eqz v2, :cond_6

    .line 233
    move-object v5, v2

    .line 235
    check-cast v5, Lcom/android/systemui/biometrics/UdfpsFpmEmptyView;

    .line 236
    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 238
    iget-object v1, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 241
    const v2, 0x7f0a0a1e    # @id/udfps_enroll_accessibility_view

    .line 243
    invoke-virtual {v5, v2}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    .line 246
    move-result-object v2

    .line 249
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 250
    move-result-object v3

    .line 253
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    .line 254
    move-result v4

    .line 257
    iput v4, v3, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 258
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    .line 260
    move-result v1

    .line 263
    iput v1, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 264
    invoke-virtual {v2, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 266
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    .line 269
    iget-object v6, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 272
    iget-object v7, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 274
    iget-object v8, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dialogManager:Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;

    .line 276
    iget-object v9, v0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 278
    new-instance v0, Lcom/android/systemui/biometrics/UdfpsFpmEmptyViewController;

    .line 280
    move-object v4, v0

    .line 282
    invoke-direct/range {v4 .. v9}, Lcom/android/systemui/biometrics/UdfpsFpmEmptyViewController;-><init>(Lcom/android/systemui/biometrics/UdfpsFpmEmptyView;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeExpansionStateManager;Lcom/android/systemui/statusbar/phone/SystemUIDialogManager;Lcom/android/systemui/dump/DumpManager;)V

    .line 283
    :goto_2
    move-object v7, v0

    .line 286
    goto :goto_3

    .line 287
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    .line 288
    invoke-direct {v0, v3}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 290
    throw v0

    .line 293
    :goto_3
    return-object v7

    .line 294
    nop

    .line 295
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
    .line 296
.end method

.method public final matchesRequestId(J)Z
    .locals 4

    .line 1
    const-wide/16 v0, -0x1

    .line 2
    iget-wide v2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestId:J

    .line 4
    cmp-long p0, v2, v0

    .line 6
    if-eqz p0, :cond_1

    .line 8
    cmp-long p0, v2, p1

    .line 10
    if-nez p0, :cond_0

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

.method public final updateDimensions(Landroid/view/WindowManager$LayoutParams;Lcom/android/systemui/biometrics/UdfpsAnimationViewController;)V
    .locals 9

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->UDFPS_NEW_TOUCH_DETECTION:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result v2

    .line 11
    if-nez v2, :cond_0

    .line 12
    if-eqz p2, :cond_0

    .line 14
    instance-of v2, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 16
    if-eqz v2, :cond_0

    .line 18
    iget v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 20
    const/high16 v3, 0x40000

    .line 22
    or-int/2addr v2, v3

    .line 24
    iput v2, p1, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 25
    :cond_0
    const/4 v2, 0x1

    .line 27
    const/4 v3, 0x0

    .line 28
    iget v4, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->requestReason:I

    .line 29
    if-eq v4, v2, :cond_1

    .line 31
    const/4 v5, 0x2

    .line 33
    if-eq v4, v5, :cond_1

    .line 34
    move v4, v3

    .line 36
    goto :goto_0

    .line 37
    :cond_1
    move v4, v2

    .line 38
    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 39
    move-result v5

    .line 42
    if-eqz v5, :cond_3

    .line 43
    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 45
    invoke-virtual {v5}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    .line 47
    move-result v5

    .line 50
    if-eqz v5, :cond_2

    .line 51
    if-eqz v4, :cond_2

    .line 53
    new-instance v4, Landroid/graphics/Rect;

    .line 55
    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 57
    iget-object v5, v5, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 59
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 61
    goto :goto_1

    .line 64
    :cond_2
    new-instance v4, Landroid/graphics/Rect;

    .line 65
    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 67
    iget v6, v5, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 69
    iget v5, v5, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 71
    invoke-direct {v4, v3, v3, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 73
    goto :goto_1

    .line 76
    :cond_3
    new-instance v4, Landroid/graphics/Rect;

    .line 77
    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 79
    iget-object v5, v5, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->sensorBounds:Landroid/graphics/Rect;

    .line 81
    invoke-direct {v4, v5}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 83
    :goto_1
    iget-object v5, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 86
    iget v5, v5, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->rotation:I

    .line 88
    if-eq v5, v2, :cond_4

    .line 90
    const/4 v6, 0x3

    .line 92
    if-eq v5, v6, :cond_4

    .line 93
    goto :goto_3

    .line 95
    :cond_4
    instance-of v6, p2, Lcom/android/systemui/biometrics/UdfpsKeyguardViewControllerLegacy;

    .line 96
    iget-object v7, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardStateController:Lcom/android/systemui/statusbar/policy/KeyguardStateController;

    .line 98
    iget-object v8, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 100
    if-nez v6, :cond_5

    .line 102
    goto :goto_2

    .line 104
    :cond_5
    iget-boolean v6, v8, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 105
    if-nez v6, :cond_6

    .line 107
    move-object v6, v7

    .line 109
    check-cast v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 110
    iget-boolean v6, v6, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 112
    if-eqz v6, :cond_6

    .line 114
    goto :goto_2

    .line 116
    :cond_6
    move v2, v3

    .line 117
    :goto_2
    if-nez v2, :cond_7

    .line 118
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 120
    iget-boolean p0, v8, Lcom/android/keyguard/KeyguardUpdateMonitor;->mGoingToSleep:Z

    .line 123
    check-cast v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;

    .line 125
    iget-boolean p0, v7, Lcom/android/systemui/statusbar/policy/KeyguardStateControllerImpl;->mOccluded:Z

    .line 127
    invoke-static {p2}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    .line 129
    goto :goto_3

    .line 132
    :cond_7
    invoke-static {v5}, Landroid/view/Surface;->rotationToString(I)Ljava/lang/String;

    .line 133
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 136
    iget v2, p2, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 138
    iget p2, p2, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 140
    invoke-static {v4, v2, p2, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 142
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 145
    move-result p2

    .line 148
    if-eqz p2, :cond_8

    .line 149
    iget-object p2, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->sensorBounds:Landroid/graphics/Rect;

    .line 151
    iget-object p0, p0, Lcom/android/systemui/biometrics/UdfpsControllerOverlay;->overlayParams:Lcom/android/settingslib/udfps/UdfpsOverlayParams;

    .line 153
    iget v0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayWidth:I

    .line 155
    iget p0, p0, Lcom/android/settingslib/udfps/UdfpsOverlayParams;->naturalDisplayHeight:I

    .line 157
    invoke-static {p2, v0, p0, v5}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;III)V

    .line 159
    :cond_8
    :goto_3
    iget p0, v4, Landroid/graphics/Rect;->left:I

    .line 162
    sub-int/2addr p0, v3

    .line 164
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 165
    iget p0, v4, Landroid/graphics/Rect;->top:I

    .line 167
    sub-int/2addr p0, v3

    .line 169
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 170
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    .line 172
    move-result p0

    .line 175
    add-int/2addr p0, v3

    .line 176
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 177
    invoke-virtual {v4}, Landroid/graphics/Rect;->width()I

    .line 179
    move-result p0

    .line 182
    add-int/2addr p0, v3

    .line 183
    iput p0, p1, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 184
    return-void
    .line 186
.end method
