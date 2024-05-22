.class public final Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final biometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final context:Landroid/content/Context;

.field public final faceRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

.field public final fingerprintRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

.field public final nonBiometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final powerButtonRevealEffect:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

.field public final revealEffect:Lkotlinx/coroutines/flow/Flow;

.field public final tapRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardRepository;Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->context:Landroid/content/Context;

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/PowerButtonReveal;

    .line 7
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object p2

    .line 12
    const v1, 0x7f070e6e    # @dimen/physical_power_button_center_screen_location_y '620.0px'

    .line 13
    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result p2

    .line 19
    int-to-float p2, p2

    .line 20
    invoke-direct {v0, p2}, Lcom/android/systemui/statusbar/PowerButtonReveal;-><init>(F)V

    .line 21
    new-instance p2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 24
    invoke-direct {p2, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 26
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->powerButtonRevealEffect:Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 29
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;

    .line 31
    iget-object p2, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->lastDozeTapToWakePosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 33
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 35
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p2, p0, v1}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;I)V

    .line 38
    iput-object v0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->tapRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 41
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 43
    const/4 v0, 0x1

    .line 45
    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->fingerprintSensorLocation:Lkotlinx/coroutines/flow/Flow;

    .line 46
    invoke-direct {p2, v1, p0, v0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;I)V

    .line 48
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->fingerprintRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 51
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 53
    const/4 v0, 0x2

    .line 55
    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->faceSensorLocation:Lkotlinx/coroutines/flow/Flow;

    .line 56
    invoke-direct {p2, v1, p0, v0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;I)V

    .line 58
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->faceRevealEffect:Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$map$1;

    .line 61
    new-instance p2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;

    .line 63
    const/4 v0, 0x0

    .line 65
    invoke-direct {p2, v0, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    .line 66
    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockSource:Lkotlinx/coroutines/flow/Flow;

    .line 69
    invoke-static {v1, p2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 71
    move-result-object p2

    .line 74
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->biometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 75
    new-instance v1, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2;

    .line 77
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$special$$inlined$flatMapLatest$2;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V

    .line 79
    iget-object v2, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->wakefulness:Lkotlinx/coroutines/flow/Flow;

    .line 82
    invoke-static {v2, v1}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 84
    move-result-object v1

    .line 87
    iput-object v1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->nonBiometricRevealEffect:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 88
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealEffect$1;

    .line 90
    invoke-direct {v2, v0}, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl$revealEffect$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 92
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardRepositoryImpl;->biometricUnlockState:Lkotlinx/coroutines/flow/Flow;

    .line 95
    invoke-static {p1, p2, v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->combine(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function4;)Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 97
    move-result-object p1

    .line 100
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 101
    move-result-object p1

    .line 104
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealEffect:Lkotlinx/coroutines/flow/Flow;

    .line 105
    return-void
    .line 107
.end method

.method public static final access$constructCircleRevealFromPoint(Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;Landroid/graphics/Point;)Lcom/android/systemui/statusbar/CircleReveal;
    .locals 5

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    new-instance v0, Lcom/android/systemui/statusbar/CircleReveal;

    .line 5
    iget v1, p1, Landroid/graphics/Point;->x:I

    .line 7
    iget v2, p1, Landroid/graphics/Point;->y:I

    .line 9
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->context:Landroid/content/Context;

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 13
    move-result-object v3

    .line 16
    invoke-virtual {v3}, Landroid/view/Display;->getWidth()I

    .line 17
    move-result v3

    .line 20
    iget v4, p1, Landroid/graphics/Point;->x:I

    .line 21
    sub-int/2addr v3, v4

    .line 23
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 24
    move-result v3

    .line 27
    iget v4, p1, Landroid/graphics/Point;->y:I

    .line 28
    invoke-virtual {p0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {p0}, Landroid/view/Display;->getHeight()I

    .line 34
    move-result p0

    .line 37
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 38
    sub-int/2addr p0, p1

    .line 40
    invoke-static {v4, p0}, Ljava/lang/Math;->max(II)I

    .line 41
    move-result p0

    .line 44
    invoke-static {v3, p0}, Ljava/lang/Math;->max(II)I

    .line 45
    move-result p0

    .line 48
    invoke-direct {v0, v1, v2, p0}, Lcom/android/systemui/statusbar/CircleReveal;-><init>(III)V

    .line 49
    return-object v0
    .line 52
.end method
