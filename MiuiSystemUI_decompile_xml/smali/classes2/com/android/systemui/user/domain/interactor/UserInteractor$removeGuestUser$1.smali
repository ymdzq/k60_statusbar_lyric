.class final Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.UserInteractor$removeGuestUser$1"
    f = "UserInteractor.kt"
    l = {
        0x203
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $guestUserId:I

.field final synthetic $targetUserId:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;IILkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 2
    iput p2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$guestUserId:I

    .line 4
    iput p3, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$targetUserId:I

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 4
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$guestUserId:I

    .line 6
    iget p0, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$targetUserId:I

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;IILkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 15
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 17
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 19
    throw p0

    .line 22
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 26
    iget-object v3, p1, Lcom/android/systemui/user/domain/interactor/UserInteractor;->guestUserInteractor:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 28
    iget v4, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$guestUserId:I

    .line 30
    iget v5, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->$targetUserId:I

    .line 32
    new-instance v6, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$1;

    .line 34
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 36
    invoke-direct {v6, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$1;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 38
    new-instance v7, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$2;

    .line 41
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->this$0:Lcom/android/systemui/user/domain/interactor/UserInteractor;

    .line 43
    invoke-direct {v7, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$2;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 45
    new-instance v8, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$3;

    .line 48
    invoke-direct {v8, p1}, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1$3;-><init>(Lcom/android/systemui/user/domain/interactor/UserInteractor;)V

    .line 50
    iput v2, p0, Lcom/android/systemui/user/domain/interactor/UserInteractor$removeGuestUser$1;->label:I

    .line 53
    move-object v9, p0

    .line 55
    invoke-virtual/range {v3 .. v9}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->remove(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 56
    move-result-object p0

    .line 59
    if-ne p0, v0, :cond_2

    .line 60
    return-object v0

    .line 62
    :cond_2
    :goto_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 63
    return-object p0
    .line 65
.end method
