.class public final Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

.field public final context:Landroid/content/Context;

.field public final displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

.field public final scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/ConfigurationController;Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->context:Landroid/content/Context;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

    .line 9
    new-instance p1, Landroid/view/DisplayInfo;

    .line 11
    invoke-direct {p1}, Landroid/view/DisplayInfo;-><init>()V

    .line 13
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 16
    move-result-object p1

    .line 19
    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 20
    new-instance p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1;

    .line 22
    const/4 p2, 0x0

    .line 24
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$onAnyConfigurationChange$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 25
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 28
    move-result-object p1

    .line 31
    const/4 p4, -0x1

    .line 32
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 33
    new-instance p1, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$configurationChange$1;

    .line 36
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$configurationChange$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 38
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 41
    move-result-object p1

    .line 44
    invoke-static {p1, p4}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 45
    move-result-object p1

    .line 48
    new-instance p4, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$scaleForResolution$1;

    .line 49
    invoke-direct {p4, p0, p2}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl$scaleForResolution$1;-><init>(Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 51
    invoke-static {p4, p1}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 54
    move-result-object p1

    .line 57
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 58
    move-result-object p1

    .line 61
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 62
    move-result-object p2

    .line 65
    invoke-virtual {p0}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->getResolutionScale()F

    .line 66
    move-result p4

    .line 69
    invoke-static {p4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 70
    move-result-object p4

    .line 73
    invoke-static {p1, p3, p2, p4}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 74
    move-result-object p1

    .line 77
    iput-object p1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 78
    return-void
    .line 80
.end method


# virtual methods
.method public final getResolutionScale()F
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->context:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 4
    move-result-object v0

    .line 7
    iget-object v1, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayInfo:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 8
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 10
    move-result-object v2

    .line 13
    check-cast v2, Landroid/view/DisplayInfo;

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/Display;->getDisplayInfo(Landroid/view/DisplayInfo;)Z

    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/DisplayInfo;

    .line 23
    iget-object v0, v0, Landroid/view/DisplayInfo;->supportedModes:[Landroid/view/Display$Mode;

    .line 25
    iget-object p0, p0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->displayUtils:Lcom/android/systemui/util/wrapper/DisplayUtilsWrapper;

    .line 27
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 29
    invoke-static {v0}, Landroid/util/DisplayUtils;->getMaximumResolutionDisplayMode([Landroid/view/Display$Mode;)Landroid/view/Display$Mode;

    .line 32
    move-result-object p0

    .line 35
    if-eqz p0, :cond_1

    .line 36
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalWidth()I

    .line 38
    move-result v0

    .line 41
    invoke-virtual {p0}, Landroid/view/Display$Mode;->getPhysicalHeight()I

    .line 42
    move-result p0

    .line 45
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 46
    move-result-object v2

    .line 49
    check-cast v2, Landroid/view/DisplayInfo;

    .line 50
    invoke-virtual {v2}, Landroid/view/DisplayInfo;->getNaturalWidth()I

    .line 52
    move-result v2

    .line 55
    invoke-virtual {v1}, Lkotlinx/coroutines/flow/StateFlowImpl;->getValue()Ljava/lang/Object;

    .line 56
    move-result-object v1

    .line 59
    check-cast v1, Landroid/view/DisplayInfo;

    .line 60
    invoke-virtual {v1}, Landroid/view/DisplayInfo;->getNaturalHeight()I

    .line 62
    move-result v1

    .line 65
    invoke-static {v0, p0, v2, v1}, Landroid/util/DisplayUtils;->getPhysicalPixelDisplaySizeRatio(IIII)F

    .line 66
    move-result p0

    .line 69
    const/high16 v0, 0x7f800000    # Float.POSITIVE_INFINITY

    .line 70
    cmpg-float v0, p0, v0

    .line 72
    if-nez v0, :cond_0

    .line 74
    const/4 v0, 0x1

    .line 76
    goto :goto_0

    .line 77
    :cond_0
    const/4 v0, 0x0

    .line 78
    :goto_0
    if-eqz v0, :cond_2

    .line 79
    :cond_1
    const/high16 p0, 0x3f800000    # 1.0f

    .line 81
    :cond_2
    return p0
    .line 83
.end method
