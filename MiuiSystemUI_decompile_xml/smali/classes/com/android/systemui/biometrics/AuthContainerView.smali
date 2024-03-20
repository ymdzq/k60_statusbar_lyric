.class public Lcom/android/systemui/biometrics/AuthContainerView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/biometrics/AuthDialog;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;
.implements Lcom/android/systemui/biometrics/ui/CredentialView$Host;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

.field public final mBackgroundView:Landroid/widget/ImageView;

.field final mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

.field public final mBiometricScrollView:Landroid/widget/ScrollView;

.field public mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

.field public final mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

.field mContainerState:I

.field public mCredentialAttestation:[B

.field public mCredentialView:Landroid/view/View;

.field public final mCredentialViewModelProvider:Ljavax/inject/Provider;

.field public final mEffectiveUserId:I

.field public final mFailedModalities:Ljava/util/Set;

.field public final mFrameLayout:Landroid/widget/FrameLayout;

.field public final mHandler:Landroid/os/Handler;

.field public final mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

.field public final mLinearOutSlowIn:Landroid/view/animation/Interpolator;

.field public final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field public final mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

.field public final mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

.field public final mPanelView:Landroid/view/View;

.field public mPendingCallbackReason:Ljava/lang/Integer;

.field public final mPromptSelectorInteractorProvider:Ljavax/inject/Provider;

.field public final mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

.field public final mTranslationY:F

.field public final mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

.field public final mWindowManager:Landroid/view/WindowManager;

.field public final mWindowToken:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Lcom/android/systemui/biometrics/AuthContainerView$Config;Lcom/android/systemui/flags/FeatureFlags;Lkotlinx/coroutines/CoroutineScope;Ljava/util/List;Ljava/util/List;Lcom/android/systemui/keyguard/WakefulnessLifecycle;Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;Landroid/os/UserManager;Lcom/android/internal/widget/LockPatternUtils;Lcom/android/internal/jank/InteractionJankMonitor;Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;Ljavax/inject/Provider;Landroid/os/Handler;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 14

    move-object v0, p0

    move-object v1, p1

    .line 1
    iget-object v2, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v2, Landroid/os/Binder;

    invoke-direct {v2}, Landroid/os/Binder;-><init>()V

    iput-object v2, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowToken:Landroid/os/IBinder;

    const/4 v2, 0x0

    .line 3
    iput v2, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 4
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    .line 5
    new-instance v3, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    .line 6
    iput-object v1, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    move-object/from16 v3, p9

    .line 7
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    iget v3, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    move-object/from16 v4, p8

    invoke-virtual {v4, v3}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v3

    iput v3, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    move-object/from16 v4, p16

    .line 9
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mHandler:Landroid/os/Handler;

    .line 10
    iget-object v4, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    const-class v5, Landroid/view/WindowManager;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/WindowManager;

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    move-object/from16 v4, p6

    .line 11
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    move-object/from16 v4, p7

    .line 12
    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0700e8    # @dimen/biometric_dialog_animation_translation_offset '350.0dp'

    .line 14
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v4

    iput v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 15
    sget-object v4, Lcom/android/app/animation/Interpolators;->LINEAR_OUT_SLOW_IN:Landroid/view/animation/Interpolator;

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mLinearOutSlowIn:Landroid/view/animation/Interpolator;

    .line 16
    new-instance v4, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    invoke-direct {v4, p0}, Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    iput-object v4, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricCallback:Lcom/android/systemui/biometrics/AuthContainerView$BiometricCallback;

    .line 17
    iget-object v5, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d0046    # @layout/auth_container_view 'res/layout/auth_container_view.xml'

    .line 18
    invoke-virtual {v5, v6, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/FrameLayout;

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    const v7, 0x7f0a0139    # @id/biometric_scrollview

    .line 20
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ScrollView;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    const v7, 0x7f0a0100    # @id/background

    .line 21
    invoke-virtual {v6, v7}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    const v8, 0x7f0a06e3    # @id/panel

    .line 22
    invoke-virtual {v6, v8}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v6

    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    .line 23
    new-instance v8, Lcom/android/systemui/biometrics/AuthPanelController;

    iget-object v9, v0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    invoke-direct {v8, v9, v6}, Lcom/android/systemui/biometrics/AuthPanelController;-><init>(Landroid/content/Context;Landroid/view/View;)V

    iput-object v8, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    move-object/from16 v6, p10

    .line 24
    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mInteractionJankMonitor:Lcom/android/internal/jank/InteractionJankMonitor;

    move-object/from16 v6, p12

    .line 25
    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptSelectorInteractorProvider:Ljavax/inject/Provider;

    move-object/from16 v6, p15

    .line 26
    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    move-object/from16 v6, p14

    .line 27
    iput-object v6, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    .line 28
    sget-object v6, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    invoke-virtual/range {p2 .. p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    iget-object v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 30
    invoke-virtual {v6}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    const/4 v9, 0x1

    if-eqz v6, :cond_0

    move v6, v9

    goto :goto_0

    :cond_0
    move v6, v2

    :goto_0
    const/4 v10, 0x2

    if-eqz v6, :cond_5

    .line 31
    iget-object v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    move-object/from16 v11, p4

    .line 32
    invoke-static {v11, v6}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v6

    check-cast v6, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 33
    iget-object v11, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    move-object/from16 v12, p5

    .line 34
    invoke-static {v12, v11}, Lcom/android/systemui/biometrics/Utils;->findFirstSensorProperties(Ljava/util/List;[I)Landroid/hardware/biometrics/SensorPropertiesInternal;

    move-result-object v11

    check-cast v11, Landroid/hardware/face/FaceSensorPropertiesInternal;

    const/4 v12, 0x0

    if-eqz v6, :cond_2

    if-eqz v11, :cond_2

    const v13, 0x7f0d0043    # @layout/auth_biometric_fingerprint_and_face_view 'res/layout/auth_biometric_fingerprint_and_face_view.xml'

    .line 35
    invoke-virtual {v5, v13, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;

    .line 36
    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 37
    iget-object v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mScaleProvider:Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->setScaleFactorProvider(Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;)V

    .line 38
    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->updateOverrideIconLayoutParamsSize()V

    .line 39
    iget v6, v11, Landroid/hardware/face/FaceSensorPropertiesInternal;->sensorStrength:I

    if-ne v6, v10, :cond_1

    move v6, v9

    goto :goto_1

    :cond_1
    move v6, v2

    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintAndFaceView;->setFaceClass3(Z)V

    .line 40
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 41
    invoke-static {v5, v6}, Lcom/android/systemui/biometrics/ui/binder/AuthBiometricFingerprintViewBinder;->bind(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;)V

    .line 42
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    goto :goto_2

    :cond_2
    if-eqz v6, :cond_3

    const v11, 0x7f0d0044    # @layout/auth_biometric_fingerprint_view 'res/layout/auth_biometric_fingerprint_view.xml'

    .line 43
    invoke-virtual {v5, v11, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    .line 44
    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->setSensorProperties(Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;)V

    .line 45
    iget-object v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mScaleProvider:Lcom/android/systemui/biometrics/AuthController$$ExternalSyntheticLambda2;

    invoke-virtual {v5, v6}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->setScaleFactorProvider(Lcom/android/systemui/biometrics/AuthController$ScaleFactorProvider;)V

    .line 46
    invoke-virtual {v5}, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->updateOverrideIconLayoutParamsSize()V

    .line 47
    invoke-interface/range {p11 .. p11}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;

    .line 48
    invoke-static {v5, v6}, Lcom/android/systemui/biometrics/ui/binder/AuthBiometricFingerprintViewBinder;->bind(Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;Lcom/android/systemui/biometrics/ui/viewmodel/AuthBiometricFingerprintViewModel;)V

    .line 49
    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    goto :goto_2

    :cond_3
    if-eqz v11, :cond_4

    const v6, 0x7f0d0042    # @layout/auth_biometric_face_view 'res/layout/auth_biometric_face_view.xml'

    .line 50
    invoke-virtual {v5, v6, v12, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    check-cast v5, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    iput-object v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    goto :goto_2

    :cond_4
    const-string v5, "AuthContainerView"

    const-string v6, "No sensors found!"

    .line 51
    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    :cond_5
    :goto_2
    iget-object v5, v0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    if-eqz v5, :cond_7

    .line 53
    check-cast v5, Lcom/android/systemui/biometrics/AuthBiometricView;

    .line 54
    iget-boolean v6, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    if-eqz v6, :cond_6

    .line 55
    instance-of v6, v5, Lcom/android/systemui/biometrics/AuthBiometricFaceView;

    if-eqz v6, :cond_6

    move v2, v9

    .line 56
    :cond_6
    iput-boolean v2, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mRequireConfirmation:Z

    .line 57
    iput-object v8, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 58
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 59
    iput-object v1, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 60
    iput-object v4, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mCallback:Lcom/android/systemui/biometrics/AuthBiometricView$Callback;

    .line 61
    iget-object v1, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mBackgroundClickListener:Lcom/android/systemui/biometrics/AuthBiometricView$$ExternalSyntheticLambda1;

    invoke-virtual {v7, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 62
    iput v3, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mEffectiveUserId:I

    const-string/jumbo v1, "transit"

    const-wide/16 v2, 0x1c2

    .line 63
    new-instance v4, Lcom/android/systemui/biometrics/AuthContainerView$1;

    move-object p1, v4

    move-object/from16 p2, p0

    move-object/from16 p3, v5

    move-object/from16 p4, v1

    move-wide/from16 p5, v2

    invoke-direct/range {p1 .. p6}, Lcom/android/systemui/biometrics/AuthContainerView$1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Landroid/view/View;Ljava/lang/String;J)V

    .line 64
    iput-object v4, v5, Lcom/android/systemui/biometrics/AuthBiometricView;->mJankListener:Landroid/animation/Animator$AnimatorListener;

    .line 65
    :cond_7
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda1;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 66
    invoke-virtual {p0, v10}, Landroid/widget/LinearLayout;->setImportantForAccessibility(I)V

    .line 67
    invoke-virtual {p0, v9}, Landroid/widget/LinearLayout;->setFocusableInTouchMode(Z)V

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->requestFocus()Z

    return-void
.end method

.method public static getLayoutParams(Landroid/os/IBinder;Ljava/lang/CharSequence;)Landroid/view/WindowManager$LayoutParams;
    .locals 7

    .line 1
    new-instance v6, Landroid/view/WindowManager$LayoutParams;

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x1

    .line 5
    const/16 v3, 0x7d9

    .line 6
    const v4, 0x1082002

    .line 8
    const/4 v5, -0x3

    .line 11
    move-object v0, v6

    .line 12
    invoke-direct/range {v0 .. v5}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 13
    iget v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 16
    or-int/lit8 v0, v0, 0x10

    .line 18
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 20
    invoke-virtual {v6}, Landroid/view/WindowManager$LayoutParams;->getFitInsetsTypes()I

    .line 22
    move-result v0

    .line 25
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 26
    move-result v1

    .line 29
    not-int v1, v1

    .line 30
    and-int/2addr v0, v1

    .line 31
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    .line 32
    move-result v1

    .line 35
    not-int v1, v1

    .line 36
    and-int/2addr v0, v1

    .line 37
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 38
    const/4 v0, 0x3

    .line 41
    iput v0, v6, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 42
    const-string v0, "BiometricPrompt"

    .line 44
    invoke-virtual {v6, v0}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 46
    iput-object p1, v6, Landroid/view/WindowManager$LayoutParams;->accessibilityTitle:Ljava/lang/CharSequence;

    .line 49
    const/high16 p1, 0x3f000000    # 0.5f

    .line 51
    iput p1, v6, Landroid/view/WindowManager$LayoutParams;->dimAmount:F

    .line 53
    iput-object p0, v6, Landroid/view/WindowManager$LayoutParams;->token:Landroid/os/IBinder;

    .line 55
    return-object v6
    .line 57
.end method


# virtual methods
.method public final addCredentialView(ZZ)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 2
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 8
    iget v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mEffectiveUserId:I

    .line 10
    invoke-static {v1, v2}, Lcom/android/systemui/biometrics/Utils;->getCredentialType(Lcom/android/internal/widget/LockPatternUtils;I)I

    .line 12
    move-result v1

    .line 15
    const/4 v2, 0x0

    .line 16
    const/4 v3, 0x3

    .line 17
    const/4 v4, 0x1

    .line 18
    const/4 v5, 0x2

    .line 19
    const/4 v6, 0x0

    .line 20
    if-eq v1, v4, :cond_2

    .line 21
    if-eq v1, v5, :cond_1

    .line 23
    if-ne v1, v3, :cond_0

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 28
    const-string p1, "Unknown credential type: "

    .line 30
    invoke-static {p1, v1}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 32
    move-result-object p1

    .line 35
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 36
    throw p0

    .line 39
    :cond_1
    const v7, 0x7f0d0048    # @layout/auth_credential_pattern_view 'res/layout/auth_credential_pattern_view.xml'

    .line 40
    invoke-virtual {v0, v7, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 43
    move-result-object v0

    .line 46
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    :goto_0
    const v7, 0x7f0d0047    # @layout/auth_credential_password_view 'res/layout/auth_credential_password_view.xml'

    .line 50
    invoke-virtual {v0, v7, v6, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 53
    move-result-object v0

    .line 56
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 59
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 61
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackgroundView:Landroid/widget/ImageView;

    .line 64
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImportantForAccessibility(I)V

    .line 66
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptSelectorInteractorProvider:Ljavax/inject/Provider;

    .line 69
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;

    .line 75
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 77
    iget-object v6, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 79
    iget v7, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mUserId:I

    .line 81
    iget-wide v8, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOperationId:J

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 88
    move-result-object v2

    .line 91
    if-eq v1, v4, :cond_5

    .line 92
    if-eq v1, v5, :cond_4

    .line 94
    if-eq v1, v3, :cond_3

    .line 96
    new-instance v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;

    .line 98
    invoke-direct {v1}, Lcom/android/systemui/biometrics/shared/model/PromptKind$Biometric;-><init>()V

    .line 100
    goto :goto_2

    .line 103
    :cond_3
    sget-object v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$1:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 104
    goto :goto_2

    .line 106
    :cond_4
    sget-object v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE$2:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 107
    goto :goto_2

    .line 109
    :cond_5
    sget-object v1, Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;->INSTANCE:Lcom/android/systemui/biometrics/shared/model/PromptKind$Pin;

    .line 110
    :goto_2
    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/PromptSelectorInteractorImpl;->promptRepository:Lcom/android/systemui/biometrics/data/repository/PromptRepository;

    .line 112
    check-cast v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;

    .line 114
    iget-object v3, v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_kind:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 116
    invoke-virtual {v3, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 118
    iget-object v1, v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_userId:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 121
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 123
    move-result-object v3

    .line 126
    invoke-virtual {v1, v3}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 127
    iget-object v1, v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_challenge:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 130
    invoke-virtual {v1, v2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 132
    iget-object v1, v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_promptInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 135
    invoke-virtual {v1, v6}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 137
    iget-object v0, v0, Lcom/android/systemui/biometrics/data/repository/PromptRepositoryImpl;->_isConfirmationRequired:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 140
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 142
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialViewModelProvider:Ljavax/inject/Provider;

    .line 147
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    .line 149
    move-result-object v0

    .line 152
    check-cast v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;

    .line 153
    iget-object v1, v0, Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;->_animateContents:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 155
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 157
    move-result-object p2

    .line 160
    invoke-virtual {v1, p2}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 161
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 164
    check-cast p2, Lcom/android/systemui/biometrics/ui/CredentialView;

    .line 166
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 168
    invoke-interface {p2, v0, p0, v1, p1}, Lcom/android/systemui/biometrics/ui/CredentialView;->init(Lcom/android/systemui/biometrics/ui/viewmodel/CredentialViewModel;Lcom/android/systemui/biometrics/ui/CredentialView$Host;Lcom/android/systemui/biometrics/AuthPanelController;Z)V

    .line 170
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFrameLayout:Landroid/widget/FrameLayout;

    .line 173
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 175
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 177
    return-void
    .line 180
.end method

.method public final animateAway(IZ)V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x2

    .line 5
    const-string v3, "AuthContainerView"

    .line 6
    if-ne v0, v1, :cond_0

    .line 8
    const-string/jumbo p1, "startDismiss(): waiting for onDialogAnimatedIn"

    .line 10
    invoke-static {v3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 13
    iput v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 16
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-ne v0, v1, :cond_1

    .line 20
    new-instance p0, Ljava/lang/StringBuilder;

    .line 22
    const-string v0, "Already dismissing, sendReason: "

    .line 24
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 29
    const-string p2, " reason: "

    .line 32
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p0

    .line 43
    invoke-static {v3, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    return-void

    .line 47
    :cond_1
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 48
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 50
    move-result v0

    .line 53
    if-eqz v0, :cond_2

    .line 54
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getRootWindowInsets()Landroid/view/WindowInsets;

    .line 56
    move-result-object v0

    .line 59
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 60
    move-result v1

    .line 63
    invoke-virtual {v0, v1}, Landroid/view/WindowInsets;->isVisible(I)Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_2

    .line 68
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getWindowInsetsController()Landroid/view/WindowInsetsController;

    .line 70
    move-result-object v0

    .line 73
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 74
    move-result v1

    .line 77
    invoke-interface {v0, v1}, Landroid/view/WindowInsetsController;->hide(I)V

    .line 78
    :cond_2
    if-eqz p2, :cond_3

    .line 81
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    move-result-object p1

    .line 86
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 87
    goto :goto_0

    .line 89
    :cond_3
    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 91
    :goto_0
    new-instance p1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;

    .line 93
    invoke-direct {p1, v2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 95
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 98
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;

    .line 103
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda4;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;)V

    .line 105
    invoke-virtual {p0, p2}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 108
    return-void
    .line 111
.end method

.method public final dismissWithoutCallback(Z)V
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-virtual {p0, p1, p1}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 5
    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 9
    const/4 v0, 0x1

    .line 11
    if-ne p1, v0, :cond_2

    .line 12
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 14
    if-eqz p1, :cond_1

    .line 16
    invoke-virtual {p1}, Landroid/view/View;->isAttachedToWindow()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_1

    .line 22
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialView:Landroid/view/View;

    .line 24
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 30
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    .line 35
    move-result-object p1

    .line 38
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 42
    invoke-interface {p1}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->cancelAnimation()V

    .line 44
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    .line 47
    move-result-object p1

    .line 50
    invoke-virtual {p1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 51
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->onDialogAnimatedIn()V

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->removeWindowIfAttached()V

    .line 57
    :goto_0
    return-void
    .line 60
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "    isAttachedToWindow="

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 9
    move-result v0

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    move-result-object p2

    .line 19
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 20
    new-instance p2, Ljava/lang/StringBuilder;

    .line 23
    const-string v0, "    containerState="

    .line 25
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 30
    const-string v1, "    pendingCallbackReason="

    .line 32
    invoke-static {p2, v0, p1, v1}, Lcom/android/systemui/accessibility/WindowMagnification$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/io/PrintWriter;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    move-result-object p2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 38
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 43
    move-result-object p2

    .line 46
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 47
    new-instance p2, Ljava/lang/StringBuilder;

    .line 50
    const-string v0, "    config exist="

    .line 52
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 57
    const/4 v1, 0x1

    .line 59
    const/4 v2, 0x0

    .line 60
    if-eqz v0, :cond_0

    .line 61
    move v0, v1

    .line 63
    goto :goto_0

    .line 64
    :cond_0
    move v0, v2

    .line 65
    :goto_0
    invoke-static {p2, v0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 66
    iget-object p2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 69
    if-eqz p2, :cond_2

    .line 71
    new-instance p2, Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "    config.sensorIds exist="

    .line 75
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 80
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSensorIds:[I

    .line 82
    if-eqz p0, :cond_1

    .line 84
    goto :goto_1

    .line 86
    :cond_1
    move v1, v2

    .line 87
    :goto_1
    invoke-static {p2, v1, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 88
    :cond_2
    return-void
    .line 91
.end method

.method public getOpPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mOpPackageName:Ljava/lang/String;

    .line 4
    return-object p0
    .line 6
.end method

.method public getRequestId()J
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 2
    iget-wide v0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequestId:J

    .line 4
    return-wide v0
    .line 6
.end method

.method public getViewModel()Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPromptViewModel:Lcom/android/systemui/biometrics/ui/viewmodel/PromptViewModel;

    .line 2
    return-object p0
    .line 4
.end method

.method public final maybeUpdatePositionForUdfps(Z)V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getDisplay()Landroid/view/Display;

    .line 2
    move-result-object v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 9
    if-eqz v1, :cond_7

    .line 11
    invoke-interface {v1}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->asView()Landroid/view/View;

    .line 13
    move-result-object v1

    .line 16
    instance-of v2, v1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    .line 17
    const/4 v3, 0x1

    .line 19
    if-eqz v2, :cond_1

    .line 20
    check-cast v1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;

    .line 22
    iget-boolean v1, v1, Lcom/android/systemui/biometrics/AuthBiometricFingerprintView;->isUdfps:Z

    .line 24
    goto :goto_0

    .line 26
    :cond_1
    instance-of v1, v1, Lcom/android/systemui/biometrics/ui/BiometricPromptLayout;

    .line 27
    if-eqz v1, :cond_2

    .line 29
    move v1, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const/4 v1, 0x0

    .line 33
    :goto_0
    if-nez v1, :cond_3

    .line 34
    goto :goto_2

    .line 36
    :cond_3
    invoke-virtual {v0}, Landroid/view/Display;->getRotation()I

    .line 37
    move-result v0

    .line 40
    const/16 v1, 0x51

    .line 41
    if-eqz v0, :cond_6

    .line 43
    const/4 v2, 0x3

    .line 45
    if-eq v0, v3, :cond_5

    .line 46
    if-eq v0, v2, :cond_4

    .line 48
    const-string v2, "Unsupported display rotation: "

    .line 50
    const-string v4, "AuthContainerView"

    .line 52
    invoke-static {v2, v0, v4}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 54
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 57
    iput v3, v0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 59
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    .line 61
    goto :goto_1

    .line 64
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 65
    const/4 v1, 0x2

    .line 67
    iput v1, v0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 68
    const/16 v0, 0x13

    .line 70
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    .line 72
    goto :goto_1

    .line 75
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 76
    iput v2, v0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 78
    const/16 v0, 0x15

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    .line 82
    goto :goto_1

    .line 85
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 86
    iput v3, v0, Lcom/android/systemui/biometrics/AuthPanelController;->mPosition:I

    .line 88
    invoke-virtual {p0, v1}, Lcom/android/systemui/biometrics/AuthContainerView;->setScrollViewGravity(I)V

    .line 90
    :goto_1
    if-eqz p1, :cond_7

    .line 93
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelView:Landroid/view/View;

    .line 95
    invoke-virtual {p1}, Landroid/view/View;->invalidateOutline()V

    .line 97
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 100
    invoke-interface {p0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->requestLayout()V

    .line 102
    :cond_7
    :goto_2
    return-void
    .line 105
.end method

.method public final onAttachedToWindow()V
    .locals 5

    .line 1
    invoke-super {p0}, Landroid/widget/LinearLayout;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 5
    iget-object v0, v0, Lcom/android/systemui/keyguard/Lifecycle;->mObservers:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 12
    new-instance v1, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;

    .line 14
    const/4 v2, 0x0

    .line 16
    invoke-direct {v1, v2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;-><init>(ILjava/lang/Object;)V

    .line 17
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->action:Lcom/android/systemui/biometrics/Action;

    .line 20
    if-nez v3, :cond_0

    .line 22
    new-instance v3, Lcom/android/systemui/biometrics/Action;

    .line 24
    invoke-direct {v3, v1}, Lcom/android/systemui/biometrics/Action;-><init>(Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda2;)V

    .line 26
    iput-object v3, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->action:Lcom/android/systemui/biometrics/Action;

    .line 29
    new-instance v1, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$1;

    .line 31
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$1;-><init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;I)V

    .line 33
    iget-object v3, v0, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->shadeExpansionStateManager:Lcom/android/systemui/shade/ShadeExpansionStateManager;

    .line 36
    iget-object v4, v3, Lcom/android/systemui/shade/ShadeExpansionStateManager;->stateListeners:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 38
    invoke-virtual {v4, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 40
    new-instance v1, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;

    .line 43
    invoke-direct {v1, v0, v2}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector$enable$2;-><init>(Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;I)V

    .line 45
    invoke-virtual {v3, v1}, Lcom/android/systemui/shade/ShadeExpansionStateManager;->addExpansionListener(Lcom/android/systemui/shade/ShadeExpansionListener;)Lcom/android/systemui/shade/ShadeExpansionChangeEvent;

    .line 48
    goto :goto_0

    .line 51
    :cond_0
    const-string v0, "AuthDialogPanelInteractionDetector"

    .line 52
    const-string v1, "Already enabled"

    .line 54
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 61
    invoke-virtual {v0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 63
    move-result v0

    .line 66
    and-int/lit16 v0, v0, 0xff

    .line 67
    const/4 v1, 0x1

    .line 69
    if-eqz v0, :cond_1

    .line 70
    move v0, v1

    .line 72
    goto :goto_1

    .line 73
    :cond_1
    move v0, v2

    .line 74
    :goto_1
    if-eqz v0, :cond_2

    .line 75
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 77
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 79
    invoke-interface {v3}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->asView()Landroid/view/View;

    .line 81
    move-result-object v3

    .line 84
    invoke-virtual {v0, v3}, Landroid/widget/ScrollView;->addView(Landroid/view/View;)V

    .line 85
    goto :goto_2

    .line 88
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 91
    invoke-static {v0}, Lcom/android/systemui/biometrics/Utils;->isDeviceCredentialAllowed(Landroid/hardware/biometrics/PromptInfo;)Z

    .line 93
    move-result v0

    .line 96
    if-eqz v0, :cond_5

    .line 97
    invoke-virtual {p0, v1, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->addCredentialView(ZZ)V

    .line 99
    :goto_2
    invoke-virtual {p0, v2}, Lcom/android/systemui/biometrics/AuthContainerView;->maybeUpdatePositionForUdfps(Z)V

    .line 102
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 105
    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mSkipIntro:Z

    .line 107
    if-eqz v0, :cond_3

    .line 109
    const/4 v0, 0x3

    .line 111
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 112
    goto :goto_3

    .line 114
    :cond_3
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 115
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mTranslationY:F

    .line 117
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setY(F)V

    .line 119
    const/4 v0, 0x0

    .line 122
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setAlpha(F)V

    .line 123
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 126
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 128
    new-instance v0, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;

    .line 131
    invoke-direct {v0, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 133
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->postOnAnimation(Ljava/lang/Runnable;)V

    .line 136
    :goto_3
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 139
    move-result-object v0

    .line 142
    if-eqz v0, :cond_4

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    .line 145
    invoke-interface {v0, v2, p0}, Landroid/window/OnBackInvokedDispatcher;->registerOnBackInvokedCallback(ILandroid/window/OnBackInvokedCallback;)V

    .line 147
    :cond_4
    return-void

    .line 150
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 151
    new-instance v1, Ljava/lang/StringBuilder;

    .line 153
    const-string v2, "Unknown configuration: "

    .line 155
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 157
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 160
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mPromptInfo:Landroid/hardware/biometrics/PromptInfo;

    .line 162
    invoke-virtual {p0}, Landroid/hardware/biometrics/PromptInfo;->getAuthenticators()I

    .line 164
    move-result p0

    .line 167
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 171
    move-result-object p0

    .line 174
    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 175
    throw v0
    .line 178
.end method

.method public final onAuthenticationFailed(ILjava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mFailedModalities:Ljava/util/Set;

    .line 6
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 8
    move-result-object v1

    .line 11
    check-cast v0, Ljava/util/HashSet;

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 14
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 17
    invoke-interface {p0, p1, p2}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onAuthenticationFailed(ILjava/lang/String;)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    const-string p0, "AuthContainerView"

    .line 23
    const-string p1, "onAuthenticationFailed(): mBiometricView is null"

    .line 25
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    :goto_0
    return-void
    .line 30
.end method

.method public final onCredentialAttemptsRemaining(ILjava/lang/String;)V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/16 v1, 0x7e1

    .line 3
    const/4 v2, 0x0

    .line 5
    if-ne p1, v0, :cond_0

    .line 6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 8
    iget-object p0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 10
    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 12
    const p0, 0x7f13018f    # @string/biometric_dialog_last_attempt_before_wipe_dialog_title 'Your data will be deleted'

    .line 15
    invoke-virtual {p1, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {p0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 22
    move-result-object p0

    .line 25
    const p1, 0x104000a    # @android:string/ok

    .line 26
    invoke-virtual {p0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 37
    move-result-object p1

    .line 40
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 41
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    if-gtz p1, :cond_1

    .line 48
    new-instance p1, Landroid/app/AlertDialog$Builder;

    .line 50
    iget-object v0, p0, Landroid/widget/LinearLayout;->mContext:Landroid/content/Context;

    .line 52
    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    move-result-object p1

    .line 60
    const p2, 0x7f13040f    # @string/failed_attempts_now_wiping_dialog_dismiss 'Dismiss'

    .line 61
    invoke-virtual {p1, p2, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    move-result-object p1

    .line 67
    new-instance p2, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda6;

    .line 68
    invoke-direct {p2, p0}, Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda6;-><init>(Lcom/android/systemui/biometrics/AuthContainerView;)V

    .line 70
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 77
    move-result-object p0

    .line 80
    invoke-virtual {p0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    .line 81
    move-result-object p1

    .line 84
    invoke-virtual {p1, v1}, Landroid/view/Window;->setType(I)V

    .line 85
    invoke-virtual {p0}, Landroid/app/AlertDialog;->show()V

    .line 88
    :cond_1
    :goto_0
    return-void
    .line 91
.end method

.method public final onDetachedFromWindow()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelInteractionDetector:Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/biometrics/AuthDialogPanelInteractionDetector;->disable()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 7
    move-result-object v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->findOnBackInvokedDispatcher()Landroid/window/OnBackInvokedDispatcher;

    .line 13
    move-result-object v0

    .line 16
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBackCallback:Lcom/android/systemui/biometrics/AuthContainerView$$ExternalSyntheticLambda0;

    .line 17
    invoke-interface {v0, v1}, Landroid/window/OnBackInvokedDispatcher;->unregisterOnBackInvokedCallback(Landroid/window/OnBackInvokedCallback;)V

    .line 19
    :cond_0
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 25
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/Lifecycle;->removeObserver(Ljava/lang/Object;)V

    .line 27
    return-void
    .line 30
.end method

.method public final onDialogAnimatedIn()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const-string v2, "AuthContainerView"

    .line 5
    const/4 v3, 0x1

    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    const-string v0, "onDialogAnimatedIn(): mPendingDismissDialog=true, dismissing now"

    .line 10
    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    invoke-virtual {p0, v3, v3}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 15
    return-void

    .line 18
    :cond_0
    const/4 v1, 0x4

    .line 19
    if-eq v0, v1, :cond_5

    .line 20
    const/4 v1, 0x5

    .line 22
    if-ne v0, v1, :cond_1

    .line 23
    goto :goto_2

    .line 25
    :cond_1
    const/4 v0, 0x3

    .line 26
    iput v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 27
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 29
    if-eqz v0, :cond_4

    .line 31
    invoke-interface {v0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->isCoex()Z

    .line 33
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 39
    iget-boolean v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mRequireConfirmation:Z

    .line 41
    if-nez v0, :cond_2

    .line 43
    move v0, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v0, 0x0

    .line 47
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 48
    iget-object v1, v1, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 50
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 52
    move-result-wide v4

    .line 55
    xor-int/lit8 v2, v0, 0x1

    .line 56
    invoke-virtual {v1, v4, v5}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 58
    move-result-object v1

    .line 61
    const-string v4, "AuthController"

    .line 62
    if-nez v1, :cond_3

    .line 64
    const-string v1, "Skip onDialogAnimatedIn"

    .line 66
    invoke-static {v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    goto :goto_1

    .line 71
    :cond_3
    :try_start_0
    invoke-interface {v1, v2}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onDialogAnimatedIn(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_1

    .line 75
    :catch_0
    move-exception v1

    .line 76
    const-string v2, "RemoteException when sending onDialogAnimatedIn"

    .line 77
    invoke-static {v4, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 79
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricView:Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;

    .line 82
    xor-int/2addr v0, v3

    .line 84
    invoke-interface {p0, v0}, Lcom/android/systemui/biometrics/AuthBiometricViewAdapter;->onDialogAnimatedIn(Z)V

    .line 85
    :cond_4
    return-void

    .line 88
    :cond_5
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 89
    const-string v1, "onDialogAnimatedIn(): ignore, already animating out or gone - state: "

    .line 91
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 93
    iget p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 96
    invoke-static {v0, p0, v2}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 98
    return-void
    .line 101
.end method

.method public final onMeasure(II)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPanelController:Lcom/android/systemui/biometrics/AuthPanelController;

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 7
    move-result p2

    .line 10
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredHeight()I

    .line 11
    move-result p0

    .line 14
    iput p2, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerWidth:I

    .line 15
    iput p0, p1, Lcom/android/systemui/biometrics/AuthPanelController;->mContainerHeight:I

    .line 17
    return-void
    .line 19
.end method

.method public final onStartedGoingToSleep()V
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/biometrics/AuthContainerView;->animateAway(IZ)V

    .line 3
    return-void
    .line 6
.end method

.method public final removeWindowIfAttached()V
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "pendingCallback: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    const-string v1, "AuthContainerView"

    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 23
    const/4 v1, 0x5

    .line 25
    if-eqz v0, :cond_1

    .line 26
    iget-object v2, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 28
    iget-object v2, v2, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 30
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 32
    move-result v0

    .line 35
    iget-object v3, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mCredentialAttestation:[B

    .line 36
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 38
    move-result-wide v4

    .line 41
    iget-object v6, v2, Lcom/android/systemui/biometrics/AuthController;->mCurrentDialog:Lcom/android/systemui/biometrics/AuthDialog;

    .line 42
    const-string v7, "AuthController"

    .line 44
    if-eqz v6, :cond_0

    .line 46
    invoke-interface {v6}, Lcom/android/systemui/biometrics/AuthDialog;->getRequestId()J

    .line 48
    move-result-wide v8

    .line 51
    cmp-long v4, v4, v8

    .line 52
    if-eqz v4, :cond_0

    .line 54
    const-string/jumbo v0, "requestId doesn\'t match, skip onDismissed"

    .line 56
    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    goto :goto_0

    .line 62
    :cond_0
    packed-switch v0, :pswitch_data_0

    .line 63
    const-string v2, "Unhandled reason: "

    .line 66
    invoke-static {v2, v0, v7}, Lcom/android/keyguard/widget/PasswordTextViewForPIN$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 68
    goto :goto_0

    .line 71
    :pswitch_0
    const/4 v0, 0x7

    .line 72
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 73
    goto :goto_0

    .line 76
    :pswitch_1
    const/4 v0, 0x6

    .line 77
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 78
    goto :goto_0

    .line 81
    :pswitch_2
    invoke-virtual {v2, v1, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 82
    goto :goto_0

    .line 85
    :pswitch_3
    const/4 v0, 0x4

    .line 86
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 87
    goto :goto_0

    .line 90
    :pswitch_4
    const/4 v0, 0x1

    .line 91
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 92
    goto :goto_0

    .line 95
    :pswitch_5
    const/4 v0, 0x2

    .line 96
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 97
    goto :goto_0

    .line 100
    :pswitch_6
    const/4 v0, 0x3

    .line 101
    invoke-virtual {v2, v0, v3}, Lcom/android/systemui/biometrics/AuthController;->sendResultAndCleanUp(I[B)V

    .line 102
    :goto_0
    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mPendingCallbackReason:Ljava/lang/Integer;

    .line 106
    :cond_1
    iget v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 108
    if-ne v0, v1, :cond_2

    .line 110
    return-void

    .line 112
    :cond_2
    iput v1, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mContainerState:I

    .line 113
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->isAttachedToWindow()Z

    .line 115
    move-result v0

    .line 118
    if-eqz v0, :cond_3

    .line 119
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mWindowManager:Landroid/view/WindowManager;

    .line 121
    invoke-interface {v0, p0}, Landroid/view/WindowManager;->removeViewImmediate(Landroid/view/View;)V

    .line 123
    :cond_3
    return-void

    .line 126
    nop

    .line 127
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 128
.end method

.method public final sendEarlyUserCanceled()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mConfig:Lcom/android/systemui/biometrics/AuthContainerView$Config;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/biometrics/AuthContainerView$Config;->mCallback:Lcom/android/systemui/biometrics/AuthController;

    .line 4
    invoke-virtual {p0}, Lcom/android/systemui/biometrics/AuthContainerView;->getRequestId()J

    .line 6
    move-result-wide v1

    .line 9
    invoke-virtual {v0, v1, v2}, Lcom/android/systemui/biometrics/AuthController;->getCurrentReceiver(J)Landroid/hardware/biometrics/IBiometricSysuiReceiver;

    .line 10
    move-result-object p0

    .line 13
    const-string v0, "AuthController"

    .line 14
    if-nez p0, :cond_0

    .line 16
    const-string p0, "Skip onSystemEvent"

    .line 18
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    const/4 v1, 0x1

    .line 24
    :try_start_0
    invoke-interface {p0, v1}, Landroid/hardware/biometrics/IBiometricSysuiReceiver;->onSystemEvent(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    const-string v1, "RemoteException when sending system event"

    .line 30
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 32
    :goto_0
    return-void
    .line 35
.end method

.method public final setScrollViewGravity(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/ScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 8
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 10
    iget-object p0, p0, Lcom/android/systemui/biometrics/AuthContainerView;->mBiometricScrollView:Landroid/widget/ScrollView;

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/ScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 14
    return-void
    .line 17
.end method
