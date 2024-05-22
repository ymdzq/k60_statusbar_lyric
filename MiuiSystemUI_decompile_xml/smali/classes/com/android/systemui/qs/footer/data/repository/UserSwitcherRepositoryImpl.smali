.class public final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepository;


# instance fields
.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final bgHandler:Landroid/os/Handler;

.field public final currentUserInfo:Lkotlinx/coroutines/flow/Flow;

.field public final currentUserName:Lkotlinx/coroutines/flow/Flow;

.field public final globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

.field public final showUserSwitcherForSingleUser:Z

.field public final userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

.field public final userManager:Landroid/os/UserManager;

.field public final userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

.field public final userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;Lkotlinx/coroutines/CoroutineDispatcher;Landroid/os/UserManager;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/statusbar/policy/UserSwitcherController;Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;Lcom/android/systemui/util/settings/GlobalSettings;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->bgHandler:Landroid/os/Handler;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userManager:Landroid/os/UserManager;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userSwitcherController:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    .line 13
    iput-object p7, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userInfoController:Lcom/android/systemui/statusbar/policy/UserInfoControllerImpl;

    .line 15
    iput-object p8, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->globalSetting:Lcom/android/systemui/util/settings/GlobalSettings;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 19
    move-result-object p1

    .line 22
    const p2, 0x7f05009c    # @bool/qs_show_user_switcher_for_single_user 'false'

    .line 23
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 26
    move-result p1

    .line 29
    iput-boolean p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->showUserSwitcherForSingleUser:Z

    .line 30
    new-instance p1, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;

    .line 32
    const/4 p2, 0x0

    .line 34
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isEnabled$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 35
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 38
    move-result-object p1

    .line 41
    const/4 p3, -0x1

    .line 42
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 43
    move-result-object p1

    .line 46
    new-instance p4, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;

    .line 47
    invoke-direct {p4, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserName$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 49
    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 52
    move-result-object p4

    .line 55
    invoke-static {p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 56
    move-result-object p4

    .line 59
    iput-object p4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->currentUserName:Lkotlinx/coroutines/flow/Flow;

    .line 60
    new-instance p4, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1;

    .line 62
    invoke-direct {p4, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 64
    invoke-static {p4}, Lkotlinx/coroutines/flow/FlowKt;->callbackFlow(Lkotlin/jvm/functions/Function2;)Lkotlinx/coroutines/flow/CallbackFlowBuilder;

    .line 67
    move-result-object p4

    .line 70
    invoke-static {p4, p3}, Lkotlinx/coroutines/flow/FlowKt;->buffer$default(Lkotlinx/coroutines/flow/Flow;I)Lkotlinx/coroutines/flow/Flow;

    .line 71
    move-result-object p3

    .line 74
    iput-object p3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->currentUserInfo:Lkotlinx/coroutines/flow/Flow;

    .line 75
    new-instance p3, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$special$$inlined$flatMapLatest$1;

    .line 77
    invoke-direct {p3, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$special$$inlined$flatMapLatest$1;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 79
    invoke-static {p1, p3}, Lkotlinx/coroutines/flow/FlowKt;->transformLatest(Lkotlinx/coroutines/flow/Flow;Lkotlin/jvm/functions/Function3;)Lkotlinx/coroutines/flow/internal/ChannelFlowTransformLatest;

    .line 82
    move-result-object p1

    .line 85
    invoke-static {p1}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 86
    move-result-object p1

    .line 89
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->userSwitcherStatus:Lkotlinx/coroutines/flow/Flow;

    .line 90
    return-void
    .line 92
.end method
