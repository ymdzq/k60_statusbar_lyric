.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final anyStateToAodTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

.field public final anyStateToGoneTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

.field public final aodToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final canceledKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

.field public final dozeAmountTransition:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

.field public final dozingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final dreamingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

.field public final fromDreamingTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

.field public final goneToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final lockscreenToAodTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final lockscreenToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final lockscreenToOccludedTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final occludedToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final offToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final primaryBouncerToGoneTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

.field public final repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

.field public final startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lkotlinx/coroutines/CoroutineScope;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 5
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 7
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 9
    iget-object v1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 11
    const/4 v2, 0x1

    .line 13
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->anyStateToGoneTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 17
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 19
    const/4 v2, 0x2

    .line 21
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->anyStateToAodTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 25
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 27
    const/4 v2, 0x3

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 30
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->fromDreamingTransition:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 33
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 35
    sget-object v1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 37
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 39
    move-result-object v2

    .line 42
    iput-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->aodToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 43
    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 45
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 47
    move-result-object v4

    .line 50
    iput-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->dreamingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 51
    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->GONE:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 53
    invoke-virtual {p1, v4, v3}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 55
    move-result-object v5

    .line 58
    iput-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->goneToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 59
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 61
    move-result-object v0

    .line 64
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToAodTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 65
    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 67
    move-result-object v3

    .line 70
    iput-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToDreamingTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 71
    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OCCLUDED:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 73
    invoke-virtual {p1, v1, v3}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 75
    move-result-object v5

    .line 78
    iput-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->lockscreenToOccludedTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 79
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 81
    move-result-object v3

    .line 84
    iput-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->occludedToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 85
    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 87
    invoke-virtual {p1, v3, v4}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 89
    move-result-object v3

    .line 92
    iput-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->primaryBouncerToGoneTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 93
    sget-object v3, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->OFF:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 95
    invoke-virtual {p1, v3, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 97
    move-result-object v4

    .line 100
    iput-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->offToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 101
    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 103
    invoke-virtual {p1, v4, v1}, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transition(Lcom/android/systemui/keyguard/shared/model/KeyguardState;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 105
    move-result-object v4

    .line 108
    iput-object v4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->dozingToLockscreenTransition:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository$DefaultImpls$transition$$inlined$filter$1;

    .line 109
    new-instance v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 111
    const/4 v5, 0x0

    .line 113
    invoke-direct {v4, v2, v5}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 114
    filled-new-array {v4, v0}, [Lkotlinx/coroutines/flow/Flow;

    .line 117
    move-result-object v0

    .line 120
    invoke-static {v0}, Lkotlinx/coroutines/flow/FlowKt;->merge([Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 121
    move-result-object v0

    .line 124
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->dozeAmountTransition:Lkotlinx/coroutines/flow/internal/ChannelLimitedFlowMerge;

    .line 125
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 127
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 129
    const/4 v2, 0x4

    .line 131
    invoke-direct {v0, p1, v2}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 132
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 135
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 137
    const/4 v4, 0x5

    .line 139
    invoke-direct {v2, p1, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 140
    iput-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->canceledKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 143
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 145
    const/4 v4, 0x6

    .line 147
    invoke-direct {v2, p1, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 148
    iput-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 151
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 153
    const/4 v4, 0x7

    .line 155
    invoke-direct {p1, v0, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 156
    sget-object v0, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 159
    invoke-static {p1, p2, v0, v3}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 161
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 164
    const/16 v3, 0x8

    .line 166
    invoke-direct {p1, v2, v3}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 168
    invoke-static {p1, p2, v0, v1}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 171
    move-result-object p1

    .line 174
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->finishedKeyguardState:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 175
    return-void
    .line 177
.end method
