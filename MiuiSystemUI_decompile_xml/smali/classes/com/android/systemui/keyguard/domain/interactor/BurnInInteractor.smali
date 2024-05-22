.class public final Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final _dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

.field public final configurationRepository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

.field public final context:Landroid/content/Context;

.field public final dozeTimeTick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/doze/util/BurnInHelperWrapper;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;Lcom/android/systemui/util/time/SystemClock;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->context:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->configurationRepository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 13
    const-wide/16 p1, 0x0

    .line 15
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 17
    move-result-object p1

    .line 20
    invoke-static {p1}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 21
    move-result-object p1

    .line 24
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->_dozeTimeTick:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 25
    new-instance p2, Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 27
    invoke-direct {p2, p1}, Lkotlinx/coroutines/flow/ReadonlyStateFlow;-><init>(Lkotlinx/coroutines/flow/StateFlow;)V

    .line 29
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->dozeTimeTick:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 32
    const p1, 0x7f07121f    # @dimen/udfps_burn_in_offset_x '7.0px'

    .line 34
    const/4 p4, 0x1

    .line 37
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInOffsetDefinedInPixels(IZ)V

    .line 38
    const p1, 0x7f071220    # @dimen/udfps_burn_in_offset_y '20.0px'

    .line 41
    const/4 p4, 0x0

    .line 44
    invoke-virtual {p0, p1, p4}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInOffsetDefinedInPixels(IZ)V

    .line 45
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$udfpsBurnInProgress$1;

    .line 48
    const/4 p4, 0x0

    .line 50
    invoke-direct {p1, p0, p4}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$udfpsBurnInProgress$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;Lkotlin/coroutines/Continuation;)V

    .line 51
    invoke-static {p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 54
    move-result-object p0

    .line 57
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Lazily:Lkotlinx/coroutines/flow/StartedLazily;

    .line 58
    invoke-static {}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInProgressOffset()F

    .line 60
    move-result p2

    .line 63
    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 64
    move-result-object p2

    .line 67
    invoke-static {p0, p3, p1, p2}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 68
    return-void
    .line 71
.end method


# virtual methods
.method public final burnInOffsetDefinedInPixels(IZ)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->configurationRepository:Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;

    .line 2
    iget-object v1, v0, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->scaleForResolution:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 4
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;

    .line 6
    const/4 v3, 0x0

    .line 8
    invoke-direct {v2, v3, p0, p1, p2}, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor$burnInOffsetDefinedInPixels$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;IZ)V

    .line 9
    invoke-static {v1, v2}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {}, Lkotlinx/coroutines/flow/SharingStarted$Companion;->WhileSubscribed$default()Lkotlinx/coroutines/flow/StartedWhileSubscribed;

    .line 16
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->context:Landroid/content/Context;

    .line 20
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v3, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 26
    move-result p1

    .line 29
    invoke-virtual {v0}, Lcom/android/systemui/common/ui/data/repository/ConfigurationRepositoryImpl;->getResolutionScale()F

    .line 30
    move-result v0

    .line 33
    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->burnInHelperWrapper:Lcom/android/systemui/doze/util/BurnInHelperWrapper;

    .line 34
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    invoke-static {p1, p2}, Lcom/android/systemui/doze/util/BurnInHelperKt;->getBurnInOffset(IZ)I

    .line 39
    move-result p1

    .line 42
    int-to-float p1, p1

    .line 43
    mul-float/2addr p1, v0

    .line 44
    float-to-int p1, p1

    .line 45
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 46
    move-result-object p1

    .line 49
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/BurnInInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 50
    invoke-static {v1, p0, v2, p1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    return-void
    .line 55
.end method
