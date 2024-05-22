.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$canSwitchUsers$2"
    f = "UserInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $selectedUserId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 2
    iput p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->$selectedUserId:I

    .line 4
    const/4 p1, 0x2

    .line 6
    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 1

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    iget p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->$selectedUserId:I

    .line 6
    invoke-direct {p1, v0, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 8
    return-object p1
    .line 11
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->label:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->manager:Landroid/os/UserManager;

    .line 11
    iget p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$canSwitchUsers$2;->$selectedUserId:I

    .line 13
    invoke-static {p0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p1, p0}, Landroid/os/UserManager;->getUserSwitchability(Landroid/os/UserHandle;)I

    .line 19
    move-result p0

    .line 22
    new-instance p1, Ljava/lang/Integer;

    .line 23
    invoke-direct {p1, p0}, Ljava/lang/Integer;-><init>(I)V

    .line 25
    return-object p1

    .line 28
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 29
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 31
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 33
    throw p0
    .line 36
.end method
