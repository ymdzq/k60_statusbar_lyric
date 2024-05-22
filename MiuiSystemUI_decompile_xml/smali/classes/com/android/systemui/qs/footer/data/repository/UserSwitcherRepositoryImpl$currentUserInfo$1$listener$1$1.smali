.class final Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.qs.footer.data.repository.UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1"
    f = "UserSwitcherRepository.kt"
    l = {
        0x72
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

.field final synthetic $picture:Landroid/graphics/drawable/Drawable;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

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
    new-instance p1, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    .line 6
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;-><init>(Lkotlinx/coroutines/channels/ProducerScope;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

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
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    iget-object v0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$2:Ljava/lang/Object;

    .line 11
    check-cast v0, Landroid/graphics/drawable/Drawable;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$1:Ljava/lang/Object;

    .line 15
    check-cast v1, Lkotlinx/coroutines/channels/SendChannel;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$0:Ljava/lang/Object;

    .line 19
    check-cast p0, Lcom/android/systemui/common/coroutine/ChannelExt;

    .line 21
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 27
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 29
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 31
    throw p0

    .line 34
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    sget-object p1, Lcom/android/systemui/common/coroutine/ChannelExt;->INSTANCE:Lcom/android/systemui/common/coroutine/ChannelExt;

    .line 38
    iget-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$$this$conflatedCallbackFlow:Lkotlinx/coroutines/channels/ProducerScope;

    .line 40
    iget-object v3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->$picture:Landroid/graphics/drawable/Drawable;

    .line 42
    iget-object v4, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->this$0:Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;

    .line 44
    iput-object p1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$0:Ljava/lang/Object;

    .line 46
    iput-object v1, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$1:Ljava/lang/Object;

    .line 48
    iput-object v3, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->L$2:Ljava/lang/Object;

    .line 50
    iput v2, p0, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$currentUserInfo$1$listener$1$1;->label:I

    .line 52
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    new-instance v2, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isGuestUser$2;

    .line 57
    const/4 v5, 0x0

    .line 59
    invoke-direct {v2, v4, v5}, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl$isGuestUser$2;-><init>(Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 60
    iget-object v4, v4, Lcom/android/systemui/qs/footer/data/repository/UserSwitcherRepositoryImpl;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 63
    invoke-static {v4, v2, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 65
    move-result-object p0

    .line 68
    if-ne p0, v0, :cond_2

    .line 69
    return-object v0

    .line 71
    :cond_2
    move-object v0, v3

    .line 72
    move-object v6, p1

    .line 73
    move-object p1, p0

    .line 74
    move-object p0, v6

    .line 75
    :goto_0
    new-instance v2, Lkotlin/Pair;

    .line 76
    invoke-direct {v2, v0, p1}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 78
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    invoke-interface {v1, v2}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    move-result-object p0

    .line 87
    instance-of p1, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 88
    if-eqz p1, :cond_3

    .line 90
    invoke-static {p0}, Lkotlinx/coroutines/channels/ChannelResult;->exceptionOrNull-impl(Ljava/lang/Object;)Ljava/lang/Throwable;

    .line 92
    move-result-object p0

    .line 95
    const-string p1, "Failed to send updated state - downstream canceled or failed."

    .line 96
    const-string v0, "UserSwitcherRepositoryImpl"

    .line 98
    invoke-static {v0, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    :cond_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 103
    return-object p0
    .line 105
.end method
