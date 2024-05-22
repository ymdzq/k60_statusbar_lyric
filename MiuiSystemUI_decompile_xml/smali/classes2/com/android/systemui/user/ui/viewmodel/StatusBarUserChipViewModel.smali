.class public final Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final chipEnabled:Z

.field public final isChipVisible:Lkotlinx/coroutines/flow/Flow;

.field public final onClick:Lkotlin/jvm/functions/Function1;

.field public final userAvatar:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

.field public final userName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->isStatusBarUserChipEnabled:Z

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->chipEnabled:Z

    .line 7
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 12
    new-instance v2, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 14
    invoke-direct {v2, v0}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 20
    move-result-object v0

    .line 23
    new-instance v2, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;

    .line 24
    invoke-direct {v2, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$isChipVisible$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 26
    invoke-static {v2, v0}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 29
    move-result-object v2

    .line 32
    :goto_0
    iput-object v2, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->isChipVisible:Lkotlinx/coroutines/flow/Flow;

    .line 33
    iget-object v0, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 35
    move-object v2, v0

    .line 37
    check-cast v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 38
    iget-object v2, v2, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 40
    new-instance v3, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;

    .line 42
    const/4 v4, 0x1

    .line 44
    invoke-direct {v3, v2, p1, v4}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserInteractor;I)V

    .line 45
    new-instance v2, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userName$1;

    .line 48
    invoke-direct {v2, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userName$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 50
    invoke-static {v2, v3}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 53
    move-result-object v2

    .line 56
    iput-object v2, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->userName:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 57
    check-cast v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 59
    iget-object v0, v0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->selectedUserInfo:Lkotlinx/coroutines/flow/FlowKt__TransformKt$filterNotNull$$inlined$unsafeTransform$1;

    .line 61
    new-instance v2, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;

    .line 63
    invoke-direct {v2, v0, p1, v4}, Lcom/android/systemui/user/domain/interactor/UserInteractor$special$$inlined$map$2;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/domain/interactor/UserInteractor;I)V

    .line 65
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userAvatar$1;

    .line 68
    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$userAvatar$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 70
    invoke-static {v0, v2}, Lkotlinx/coroutines/flow/FlowKt;->mapLatest(Lkotlin/jvm/functions/Function2;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 73
    move-result-object v0

    .line 76
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->userAvatar:Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 77
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$onClick$1;

    .line 79
    invoke-direct {v0, p1}, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel$onClick$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 81
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/StatusBarUserChipViewModel;->onClick:Lkotlin/jvm/functions/Function1;

    .line 84
    return-void
    .line 86
.end method
