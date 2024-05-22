.class public final Lcom/android/systemui/biometrics/SideFpsController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final activityTaskManager:Landroid/app/ActivityTaskManager;

.field public final alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

.field public final context:Landroid/content/Context;

.field public final displayInfo:Landroid/view/DisplayInfo;

.field public final displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

.field public final handler:Landroid/os/Handler;

.field public final isReverseDefaultRotation:Z

.field public final layoutInflater:Landroid/view/LayoutInflater;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

.field public final orientationReasonListener:Lcom/android/systemui/biometrics/OrientationReasonListener;

.field public overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

.field public overlayView:Landroid/view/View;

.field public final overlayViewParams:Landroid/view/WindowManager$LayoutParams;

.field public final requests:Ljava/util/HashSet;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

.field public final windowManager:Landroid/view/WindowManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/LayoutInflater;Landroid/hardware/fingerprint/FingerprintManager;Landroid/view/WindowManager;Landroid/app/ActivityTaskManager;Landroid/hardware/display/DisplayManager;Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;Lcom/android/systemui/util/concurrency/DelayableExecutor;Landroid/os/Handler;Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/dump/DumpManager;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    move-object v1, p3

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    move-object v2, p1

    .line 7
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->context:Landroid/content/Context;

    .line 8
    move-object v2, p2

    .line 10
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->layoutInflater:Landroid/view/LayoutInflater;

    .line 11
    move-object v2, p4

    .line 13
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->windowManager:Landroid/view/WindowManager;

    .line 14
    move-object/from16 v2, p5

    .line 16
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->activityTaskManager:Landroid/app/ActivityTaskManager;

    .line 18
    move-object/from16 v2, p7

    .line 20
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    .line 22
    move-object/from16 v2, p8

    .line 24
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 26
    move-object/from16 v2, p9

    .line 28
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->handler:Landroid/os/Handler;

    .line 30
    move-object/from16 v2, p10

    .line 32
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->alternateBouncerInteractor:Lcom/android/systemui/keyguard/domain/interactor/AlternateBouncerInteractor;

    .line 34
    move-object/from16 v2, p11

    .line 36
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    new-instance v2, Ljava/util/HashSet;

    .line 40
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 42
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->requests:Ljava/util/HashSet;

    .line 45
    if-eqz v1, :cond_3

    .line 47
    invoke-virtual {p3}, Landroid/hardware/fingerprint/FingerprintManager;->getSensorPropertiesInternal()Ljava/util/List;

    .line 49
    move-result-object v2

    .line 52
    const/4 v3, 0x0

    .line 53
    if-eqz v2, :cond_2

    .line 54
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object v2

    .line 59
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v4

    .line 63
    if-eqz v4, :cond_1

    .line 64
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    move-object v5, v4

    .line 70
    check-cast v5, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 71
    invoke-virtual {v5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->isAnySidefpsType()Z

    .line 73
    move-result v5

    .line 76
    if-eqz v5, :cond_0

    .line 77
    goto :goto_0

    .line 79
    :cond_1
    move-object v4, v3

    .line 80
    :goto_0
    check-cast v4, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 81
    move-object v9, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    move-object v9, v3

    .line 85
    :goto_1
    if-eqz v9, :cond_3

    .line 86
    iput-object v9, v0, Lcom/android/systemui/biometrics/SideFpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 88
    new-instance v2, Lcom/android/systemui/biometrics/OrientationReasonListener;

    .line 90
    iget-object v6, v0, Lcom/android/systemui/biometrics/SideFpsController;->context:Landroid/content/Context;

    .line 92
    iget-object v8, v0, Lcom/android/systemui/biometrics/SideFpsController;->handler:Landroid/os/Handler;

    .line 94
    new-instance v10, Lcom/android/systemui/biometrics/SideFpsController$orientationReasonListener$1;

    .line 96
    invoke-direct {v10, p0}, Lcom/android/systemui/biometrics/SideFpsController$orientationReasonListener$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;)V

    .line 98
    move-object v5, v2

    .line 101
    move-object/from16 v7, p6

    .line 102
    invoke-direct/range {v5 .. v10}, Lcom/android/systemui/biometrics/OrientationReasonListener;-><init>(Landroid/content/Context;Landroid/hardware/display/DisplayManager;Landroid/os/Handler;Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;Lkotlin/jvm/functions/Function1;)V

    .line 104
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->orientationReasonListener:Lcom/android/systemui/biometrics/OrientationReasonListener;

    .line 107
    iget-object v2, v2, Lcom/android/systemui/biometrics/OrientationReasonListener;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 109
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 111
    iget-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->context:Landroid/content/Context;

    .line 113
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 115
    move-result-object v2

    .line 118
    const v4, 0x11101d3    # @android:bool/config_sensorPrivacyRequiresAuthentication

    .line 119
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 122
    move-result v2

    .line 125
    iput-boolean v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->isReverseDefaultRotation:Z

    .line 126
    sget-object v2, Landroid/hardware/biometrics/SensorLocationInternal;->DEFAULT:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 128
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 130
    new-instance v2, Landroid/view/DisplayInfo;

    .line 132
    invoke-direct {v2}, Landroid/view/DisplayInfo;-><init>()V

    .line 134
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->displayInfo:Landroid/view/DisplayInfo;

    .line 137
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    .line 139
    const/4 v4, -0x2

    .line 141
    const/4 v5, -0x2

    .line 142
    const/16 v6, 0x7e8

    .line 143
    const v7, 0x1000128

    .line 145
    const/4 v8, -0x3

    .line 148
    move-object p4, v2

    .line 149
    move/from16 p5, v4

    .line 150
    move/from16 p6, v5

    .line 152
    move/from16 p7, v6

    .line 154
    move/from16 p8, v7

    .line 156
    move/from16 p9, v8

    .line 158
    invoke-direct/range {p4 .. p9}, Landroid/view/WindowManager$LayoutParams;-><init>(IIIII)V

    .line 160
    const-string v4, "SideFpsController"

    .line 163
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 165
    const/4 v4, 0x0

    .line 168
    invoke-virtual {v2, v4}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 169
    const/16 v4, 0x33

    .line 172
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 174
    const/4 v4, 0x3

    .line 176
    iput v4, v2, Landroid/view/WindowManager$LayoutParams;->layoutInDisplayCutoutMode:I

    .line 177
    const v5, 0x20000040

    .line 179
    iput v5, v2, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 182
    iput-object v2, v0, Lcom/android/systemui/biometrics/SideFpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 184
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsController$1;

    .line 186
    invoke-direct {v2, p0}, Lcom/android/systemui/biometrics/SideFpsController$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;)V

    .line 188
    invoke-virtual {p3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->setSidefpsController(Landroid/hardware/fingerprint/ISidefpsController;)V

    .line 191
    iget-object v1, v0, Lcom/android/systemui/biometrics/SideFpsController;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 194
    new-instance v2, Lcom/android/systemui/biometrics/SideFpsController$listenForAlternateBouncerVisibility$1;

    .line 196
    invoke-direct {v2, p0, v3}, Lcom/android/systemui/biometrics/SideFpsController$listenForAlternateBouncerVisibility$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;Lkotlin/coroutines/Continuation;)V

    .line 198
    invoke-static {v1, v3, v3, v2, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 201
    move-object/from16 v1, p12

    .line 204
    invoke-virtual {v1, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 206
    return-void

    .line 209
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 210
    const-string v1, "no side fingerprint sensor"

    .line 212
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 214
    throw v0
.end method

.method public static synthetic getOrientationListener$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getOrientationReasonListener$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getOverlayOffsets$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public static synthetic getSensorProps$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final createOverlayForDisplay(I)V
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->layoutInflater:Landroid/view/LayoutInflater;

    .line 2
    const v1, 0x7f0d0349    # @layout/sidefps_view 'res/layout/sidefps_view.xml'

    .line 4
    const/4 v2, 0x0

    .line 7
    const/4 v3, 0x0

    .line 8
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {p0, v0}, Lcom/android/systemui/biometrics/SideFpsController;->setOverlayView(Landroid/view/View;)V

    .line 13
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController;->context:Landroid/content/Context;

    .line 16
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 18
    move-result-object v2

    .line 21
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 22
    iget-object v4, p0, Lcom/android/systemui/biometrics/SideFpsController;->displayInfo:Landroid/view/DisplayInfo;

    .line 25
    invoke-virtual {v2, v4}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 27
    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    .line 30
    move-result-object v5

    .line 33
    iget-object v6, p0, Lcom/android/systemui/biometrics/SideFpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 34
    invoke-virtual {v6, v5}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    .line 36
    move-result-object v5

    .line 39
    if-nez v5, :cond_0

    .line 40
    invoke-virtual {v2}, Landroid/view/Display;->getUniqueId()Ljava/lang/String;

    .line 42
    move-result-object v7

    .line 45
    const-string v8, "No location specified for display: "

    .line 46
    const-string v9, "SideFpsController"

    .line 48
    invoke-static {v8, v7, v9}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    :cond_0
    if-nez v5, :cond_1

    .line 53
    invoke-virtual {v6}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation()Landroid/hardware/biometrics/SensorLocationInternal;

    .line 55
    move-result-object v5

    .line 58
    :cond_1
    iput-object v5, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 59
    const v6, 0x7f0a0884    # @id/sidefps_animation

    .line 61
    invoke-virtual {v0, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v6

    .line 67
    check-cast v6, Lcom/airbnb/lottie/LottieAnimationView;

    .line 68
    iget v7, v5, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 70
    const/4 v8, 0x1

    .line 72
    if-eqz v7, :cond_2

    .line 73
    move v7, v8

    .line 75
    goto :goto_0

    .line 76
    :cond_2
    move v7, v3

    .line 77
    :goto_0
    iget v9, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 78
    iget-boolean v10, p0, Lcom/android/systemui/biometrics/SideFpsController;->isReverseDefaultRotation:Z

    .line 80
    if-eqz v10, :cond_3

    .line 82
    add-int/lit8 v9, v9, 0x1

    .line 84
    rem-int/lit8 v9, v9, 0x4

    .line 86
    :cond_3
    const/4 v11, 0x2

    .line 88
    if-eq v9, v8, :cond_5

    .line 89
    if-eq v9, v11, :cond_7

    .line 91
    const/4 v12, 0x3

    .line 93
    if-eq v9, v12, :cond_4

    .line 94
    goto :goto_1

    .line 96
    :cond_4
    if-eqz v7, :cond_6

    .line 97
    goto :goto_2

    .line 99
    :cond_5
    if-eqz v7, :cond_7

    .line 100
    :cond_6
    :goto_1
    const/4 v7, 0x0

    .line 102
    goto :goto_3

    .line 103
    :cond_7
    :goto_2
    const/high16 v7, 0x43340000    # 180.0f

    .line 104
    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setRotation(F)V

    .line 106
    iget v5, v5, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 109
    if-eqz v5, :cond_8

    .line 111
    move v3, v8

    .line 113
    :cond_8
    iget v4, v4, Landroid/view/DisplayInfo;->rotation:I

    .line 114
    if-eqz v10, :cond_9

    .line 116
    add-int/lit8 v4, v4, 0x1

    .line 118
    rem-int/lit8 v4, v4, 0x4

    .line 120
    :cond_9
    if-eqz v4, :cond_b

    .line 122
    if-eq v4, v11, :cond_a

    .line 124
    if-eqz v3, :cond_c

    .line 126
    goto :goto_5

    .line 128
    :cond_a
    if-eqz v3, :cond_d

    .line 129
    goto :goto_4

    .line 131
    :cond_b
    if-eqz v3, :cond_d

    .line 132
    :cond_c
    :goto_4
    const v3, 0x7f120031    # @raw/sfps_pulse 'res/raw/sfps_pulse.json'

    .line 134
    goto :goto_6

    .line 137
    :cond_d
    :goto_5
    const v3, 0x7f120032    # @raw/sfps_pulse_landscape 'res/raw/sfps_pulse_landscape.json'

    .line 138
    :goto_6
    invoke-virtual {v6, v3}, Lcom/airbnb/lottie/LottieAnimationView;->setAnimation(I)V

    .line 141
    new-instance v3, Lcom/android/systemui/biometrics/SideFpsController$createOverlayForDisplay$1;

    .line 144
    invoke-direct {v3, p0, v0, v2}, Lcom/android/systemui/biometrics/SideFpsController$createOverlayForDisplay$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;Landroid/view/View;Landroid/view/Display;)V

    .line 146
    invoke-virtual {v6, v3}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 149
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->orientationReasonListener:Lcom/android/systemui/biometrics/OrientationReasonListener;

    .line 152
    iput p1, p0, Lcom/android/systemui/biometrics/OrientationReasonListener;->reason:I

    .line 154
    invoke-virtual {v6}, Lcom/airbnb/lottie/LottieAnimationView;->getComposition()Lcom/airbnb/lottie/LottieComposition;

    .line 156
    move-result-object p0

    .line 159
    if-eqz p0, :cond_e

    .line 160
    invoke-static {p1, v1, v6}, Lcom/android/systemui/biometrics/SideFpsControllerKt;->addOverlayDynamicColor$update(ILandroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 162
    goto :goto_7

    .line 165
    :cond_e
    new-instance p0, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$1;

    .line 166
    invoke-direct {p0, p1, v1, v6}, Lcom/android/systemui/biometrics/SideFpsControllerKt$addOverlayDynamicColor$1;-><init>(ILandroid/content/Context;Lcom/airbnb/lottie/LottieAnimationView;)V

    .line 168
    invoke-virtual {v6, p0}, Lcom/airbnb/lottie/LottieAnimationView;->addLottieOnCompositionLoadedListener(Lcom/airbnb/lottie/LottieOnCompositionLoadedListener;)Z

    .line 171
    :goto_7
    new-instance p0, Lcom/android/systemui/biometrics/SideFpsController$createOverlayForDisplay$2;

    .line 174
    invoke-direct {p0}, Lcom/android/systemui/biometrics/SideFpsController$createOverlayForDisplay$2;-><init>()V

    .line 176
    invoke-virtual {v0, p0}, Landroid/view/View;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 179
    return-void
    .line 182
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 5

    .line 1
    const-string/jumbo p2, "requests:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->requests:Ljava/util/HashSet;

    .line 8
    invoke-virtual {p2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object p2

    .line 13
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v0

    .line 17
    if-eqz v0, :cond_0

    .line 18
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/android/systemui/biometrics/SideFpsUiRequestSource;

    .line 24
    new-instance v1, Ljava/lang/StringBuilder;

    .line 26
    const-string v2, "     "

    .line 28
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    const-string v0, ".name"

    .line 36
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    move-result-object v0

    .line 44
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 45
    goto :goto_0

    .line 48
    :cond_0
    const-string p2, "overlayView:"

    .line 49
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 51
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 54
    const/4 v0, 0x0

    .line 56
    if-eqz p2, :cond_1

    .line 57
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 59
    move-result p2

    .line 62
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 63
    move-result-object p2

    .line 66
    goto :goto_1

    .line 67
    :cond_1
    move-object p2, v0

    .line 68
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v2, "     width="

    .line 71
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p2

    .line 82
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 86
    if-eqz p2, :cond_2

    .line 88
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    .line 90
    move-result p2

    .line 93
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 94
    move-result-object p2

    .line 97
    goto :goto_2

    .line 98
    :cond_2
    move-object p2, v0

    .line 99
    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 100
    const-string v2, "     height="

    .line 102
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 110
    move-result-object p2

    .line 113
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 114
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 117
    if-eqz p2, :cond_3

    .line 119
    invoke-static {p2}, Lcom/android/systemui/util/ConvenienceExtensionsKt;->getBoundsOnScreen(Landroid/view/View;)Landroid/graphics/Rect;

    .line 121
    move-result-object p2

    .line 124
    goto :goto_3

    .line 125
    :cond_3
    move-object p2, v0

    .line 126
    :goto_3
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    const-string v2, "     boundsOnScreen="

    .line 129
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p2

    .line 140
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 141
    const-string p2, "displayStateInteractor:"

    .line 144
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    .line 149
    if-eqz p2, :cond_4

    .line 151
    check-cast p2, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    .line 153
    iget-object p2, p2, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 155
    if-eqz p2, :cond_4

    .line 157
    invoke-virtual {p2}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 159
    move-result-object p2

    .line 162
    check-cast p2, Ljava/lang/Boolean;

    .line 163
    goto :goto_4

    .line 165
    :cond_4
    move-object p2, v0

    .line 166
    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    .line 167
    const-string v2, "     isInRearDisplayMode="

    .line 169
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 171
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 181
    const-string/jumbo p2, "sensorProps:"

    .line 184
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 187
    iget-object p2, p0, Lcom/android/systemui/biometrics/SideFpsController;->displayInfo:Landroid/view/DisplayInfo;

    .line 190
    iget-object v1, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 192
    const-string v2, "     displayId="

    .line 194
    invoke-static {v2, v1, p1}, Lcom/android/keyguard/FaceWakeUpTriggersConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 196
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController;->sensorProps:Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;

    .line 199
    if-eqz v1, :cond_5

    .line 201
    iget v2, v1, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->sensorType:I

    .line 203
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 205
    move-result-object v2

    .line 208
    goto :goto_5

    .line 209
    :cond_5
    move-object v2, v0

    .line 210
    :goto_5
    new-instance v3, Ljava/lang/StringBuilder;

    .line 211
    const-string v4, "     sensorType="

    .line 213
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 215
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 218
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 221
    move-result-object v2

    .line 224
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 225
    if-eqz v1, :cond_6

    .line 228
    iget-object v0, p2, Landroid/view/DisplayInfo;->uniqueId:Ljava/lang/String;

    .line 230
    invoke-virtual {v1, v0}, Landroid/hardware/fingerprint/FingerprintSensorPropertiesInternal;->getLocation(Ljava/lang/String;)Landroid/hardware/biometrics/SensorLocationInternal;

    .line 232
    move-result-object v0

    .line 235
    :cond_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 236
    const-string v2, "     location="

    .line 238
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 240
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 253
    new-instance v1, Ljava/lang/StringBuilder;

    .line 255
    const-string v2, "overlayOffsets="

    .line 257
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 259
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 262
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 265
    move-result-object v0

    .line 268
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 269
    new-instance v0, Ljava/lang/StringBuilder;

    .line 272
    const-string v1, "isReverseDefaultRotation="

    .line 274
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 276
    iget-boolean p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->isReverseDefaultRotation:Z

    .line 279
    invoke-static {v0, p0, p1}, Lcom/android/keyguard/KeyguardUpdateMonitor$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/io/PrintWriter;)V

    .line 281
    iget p0, p2, Landroid/view/DisplayInfo;->rotation:I

    .line 284
    const-string p2, "currentRotation="

    .line 286
    invoke-static {p2, p0, p1}, Lcom/android/systemui/biometrics/SideFpsController$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/io/PrintWriter;)V

    .line 288
    return-void
    .line 291
.end method

.method public final hide(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->requests:Ljava/util/HashSet;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 4
    new-instance v0, Lcom/android/systemui/biometrics/SideFpsController$hide$1;

    .line 7
    invoke-direct {v0, p0, p1}, Lcom/android/systemui/biometrics/SideFpsController$hide$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;Lcom/android/systemui/biometrics/SideFpsUiRequestSource;)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 12
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 16
    return-void
    .line 19
.end method

.method public final setOverlayView(Landroid/view/View;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController;->orientationListener:Lcom/android/systemui/biometrics/BiometricDisplayListener;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/biometrics/SideFpsController;->windowManager:Landroid/view/WindowManager;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    const v3, 0x7f0a0884    # @id/sidefps_animation

    .line 10
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 13
    move-result-object v3

    .line 16
    check-cast v3, Lcom/airbnb/lottie/LottieAnimationView;

    .line 17
    invoke-virtual {v3}, Lcom/airbnb/lottie/LottieAnimationView;->pauseAnimation()V

    .line 19
    invoke-interface {v2, v0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 22
    iget-object v0, v1, Lcom/android/systemui/biometrics/BiometricDisplayListener;->displayManager:Landroid/hardware/display/DisplayManager;

    .line 25
    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->unregisterDisplayListener(Landroid/hardware/display/DisplayManager$DisplayListener;)V

    .line 27
    :cond_0
    iput-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 34
    invoke-interface {v2, p1, p0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 36
    invoke-virtual {v1}, Lcom/android/systemui/biometrics/BiometricDisplayListener;->enable()V

    .line 39
    :cond_1
    return-void
    .line 42
.end method

.method public final show(Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->displayStateInteractor:Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractor;

    .line 2
    check-cast v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/biometrics/domain/interactor/DisplayStateInteractorImpl;->isInRearDisplayMode:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 6
    invoke-virtual {v0}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;->getValue()Ljava/lang/Object;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Ljava/lang/Boolean;

    .line 12
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 14
    move-result v0

    .line 17
    if-nez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->requests:Ljava/util/HashSet;

    .line 20
    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 22
    new-instance v0, Lcom/android/systemui/biometrics/SideFpsController$show$1;

    .line 25
    invoke-direct {v0, p0, p1, p2}, Lcom/android/systemui/biometrics/SideFpsController$show$1;-><init>(Lcom/android/systemui/biometrics/SideFpsController;Lcom/android/systemui/biometrics/SideFpsUiRequestSource;I)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 30
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 32
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 34
    :cond_0
    return-void
    .line 37
.end method

.method public final updateOverlayParams(Landroid/view/Display;Landroid/graphics/Rect;)V
    .locals 8

    .line 1
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 10
    move-result v0

    .line 13
    const/4 v3, 0x2

    .line 14
    if-ne v0, v3, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    move v0, v2

    .line 18
    goto :goto_1

    .line 19
    :cond_1
    :goto_0
    move v0, v1

    .line 20
    :goto_1
    iget-boolean v3, p0, Lcom/android/systemui/biometrics/SideFpsController;->isReverseDefaultRotation:Z

    .line 21
    if-eqz v3, :cond_3

    .line 23
    if-nez v0, :cond_2

    .line 25
    move v0, v1

    .line 27
    goto :goto_2

    .line 28
    :cond_2
    move v0, v2

    .line 29
    :cond_3
    :goto_2
    iget-object v4, p0, Lcom/android/systemui/biometrics/SideFpsController;->windowManager:Landroid/view/WindowManager;

    .line 30
    invoke-interface {v4}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 32
    move-result-object v5

    .line 35
    invoke-virtual {v5}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 36
    move-result-object v5

    .line 39
    if-eqz v0, :cond_4

    .line 40
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 42
    move-result v6

    .line 45
    goto :goto_3

    .line 46
    :cond_4
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 47
    move-result v6

    .line 50
    :goto_3
    if-eqz v0, :cond_5

    .line 51
    invoke-virtual {v5}, Landroid/graphics/Rect;->height()I

    .line 53
    move-result v5

    .line 56
    goto :goto_4

    .line 57
    :cond_5
    invoke-virtual {v5}, Landroid/graphics/Rect;->width()I

    .line 58
    move-result v5

    .line 61
    :goto_4
    if-eqz v0, :cond_6

    .line 62
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 64
    move-result v7

    .line 67
    goto :goto_5

    .line 68
    :cond_6
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 69
    move-result v7

    .line 72
    :goto_5
    if-eqz v0, :cond_7

    .line 73
    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    .line 75
    move-result p2

    .line 78
    goto :goto_6

    .line 79
    :cond_7
    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    .line 80
    move-result p2

    .line 83
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 84
    iget v0, v0, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 86
    if-eqz v0, :cond_8

    .line 88
    goto :goto_7

    .line 90
    :cond_8
    move v1, v2

    .line 91
    :goto_7
    if-eqz v1, :cond_9

    .line 92
    new-instance v0, Landroid/graphics/Rect;

    .line 94
    sub-int v1, v6, v7

    .line 96
    iget-object v7, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 98
    iget v7, v7, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationY:I

    .line 100
    add-int/2addr p2, v7

    .line 102
    invoke-direct {v0, v1, v7, v6, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 103
    goto :goto_8

    .line 106
    :cond_9
    new-instance v0, Landroid/graphics/Rect;

    .line 107
    iget-object v1, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayOffsets:Landroid/hardware/biometrics/SensorLocationInternal;

    .line 109
    iget v1, v1, Landroid/hardware/biometrics/SensorLocationInternal;->sensorLocationX:I

    .line 111
    add-int/2addr v7, v1

    .line 113
    invoke-direct {v0, v1, v2, v7, p2}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 114
    :goto_8
    new-instance p2, Landroid/graphics/Rect;

    .line 117
    invoke-direct {p2, v2, v2, v6, v5}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 119
    invoke-virtual {p1}, Landroid/view/Display;->getRotation()I

    .line 122
    move-result p1

    .line 125
    if-eqz v3, :cond_a

    .line 126
    add-int/lit8 p1, p1, 0x1

    .line 128
    rem-int/lit8 p1, p1, 0x4

    .line 130
    :cond_a
    invoke-static {v0, p2, p1}, Landroid/util/RotationUtils;->rotateBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;I)V

    .line 132
    iget-object p1, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayViewParams:Landroid/view/WindowManager$LayoutParams;

    .line 135
    iget p2, v0, Landroid/graphics/Rect;->left:I

    .line 137
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 139
    iget p2, v0, Landroid/graphics/Rect;->top:I

    .line 141
    iput p2, p1, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 143
    iget-object p0, p0, Lcom/android/systemui/biometrics/SideFpsController;->overlayView:Landroid/view/View;

    .line 145
    invoke-interface {v4, p0, p1}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 147
    return-void
    .line 150
.end method
