.class public final Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final _isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

.field public final hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isFinishRequested:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

.field public final isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

.field public final isOpenMenuButtonVisible:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

.field public final maximumUserColumns:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

.field public final menu:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

.field public final userInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

.field public final users:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->userInteractor:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 7
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getUsers()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 9
    move-result-object p2

    .line 12
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 13
    const/4 v1, 0x0

    .line 15
    invoke-direct {v0, p2, p0, v1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;I)V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->users:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 19
    new-instance p2, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 21
    const/4 v1, 0x1

    .line 23
    invoke-direct {p2, v0, p0, v1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;I)V

    .line 24
    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->maximumUserColumns:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 27
    sget-object p2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 29
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->_isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 35
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isMenuVisible:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 37
    invoke-virtual {p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor;->getActions()Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 39
    move-result-object p1

    .line 42
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 43
    const/4 v1, 0x2

    .line 45
    invoke-direct {v0, p1, p0, v1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;I)V

    .line 46
    iput-object v0, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->menu:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;

    .line 49
    new-instance p1, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

    .line 51
    invoke-direct {p1, v0}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;-><init>(Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$1;)V

    .line 53
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isOpenMenuButtonVisible:Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$special$$inlined$map$4;

    .line 56
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 58
    move-result-object p1

    .line 61
    iput-object p1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->hasCancelButtonBeenClicked:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 62
    invoke-static {p2}, Lkotlinx/coroutines/flow/StateFlowKt;->MutableStateFlow(Ljava/lang/Object;)Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 64
    move-result-object p2

    .line 67
    iput-object p2, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequiredDueToExecutedAction:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 68
    new-instance v0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createFinishRequestedFlow$1;

    .line 70
    const/4 v1, 0x0

    .line 72
    invoke-direct {v0, v1}, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel$createFinishRequestedFlow$1;-><init>(Lkotlin/coroutines/Continuation;)V

    .line 73
    new-instance v1, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 76
    invoke-direct {v1, p1, p2, v0}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;-><init>(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)V

    .line 78
    iput-object v1, p0, Lcom/android/systemui/user/ui/viewmodel/UserSwitcherViewModel;->isFinishRequested:Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;

    .line 81
    return-void
    .line 83
.end method
