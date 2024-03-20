.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

.field public final isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final shouldUpdateSideFps:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

.field public final startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final updateResources:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

.field public final view:Lcom/android/systemui/keyguard/data/BouncerViewImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/BouncerViewImpl;Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->view:Lcom/android/systemui/keyguard/data/BouncerViewImpl;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->interactor:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;

    .line 7
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->panelExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 9
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->bouncerExpansionAmount:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 11
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 13
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->isInteractable:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 15
    iget-object p1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->isShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 19
    iget-object v0, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 21
    iput-object v0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->startingToHide:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 23
    iget-object v1, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->startingDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 25
    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->startDisappearAnimation:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 27
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 29
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->keyguardPosition:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 31
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->resourceUpdateRequests:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 33
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->updateResources:Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor$special$$inlined$map$1;

    .line 35
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->showMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 37
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->bouncerShowMessage:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 39
    iget-object v2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 41
    iput-object v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->keyguardAuthenticated:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 43
    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/PrimaryBouncerInteractor;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 45
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->sideFpsShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 47
    new-instance p2, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;

    .line 49
    const/4 v2, 0x0

    .line 51
    invoke-direct {p2, p1, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 52
    new-instance p1, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 55
    invoke-direct {p1, v1}, Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 57
    new-instance v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;

    .line 60
    const/4 v2, 0x1

    .line 62
    invoke-direct {v1, p1, v2}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 63
    filled-new-array {p2, v0, v1}, [Lkotlinx/coroutines/flow/Flow;

    .line 66
    move-result-object p1

    .line 69
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 70
    move-result-object p1

    .line 73
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBouncerViewModel;->shouldUpdateSideFps:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 74
    return-void
    .line 76
.end method
