.class final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.GuestUserInteractor$createInBackground$2"
    f = "GuestUserInteractor.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 2
    const/4 p1, 0x2

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 0

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 4
    invoke-direct {p1, p0, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;Lkotlin/coroutines/Continuation;)V

    .line 6
    return-object p1
    .line 9
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const-string v0, "GuestUserInteractor"

    .line 2
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->label:I

    .line 4
    if-nez v1, :cond_1

    .line 6
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    const/16 p1, -0x2710

    .line 11
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$createInBackground$2;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 13
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->manager:Landroid/os/UserManager;

    .line 15
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->applicationContext:Landroid/content/Context;

    .line 17
    invoke-virtual {v1, p0}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;)Landroid/content/pm/UserInfo;

    .line 19
    move-result-object p0

    .line 22
    if-eqz p0, :cond_0

    .line 23
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 25
    move p1, p0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const-string p0, "Couldn\'t create guest, most likely because there already exists one!"

    .line 29
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/UserManager$UserOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    goto :goto_0

    .line 34
    :catch_0
    move-exception p0

    .line 35
    const-string v1, "Couldn\'t create guest user!"

    .line 36
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 38
    :goto_0
    new-instance p0, Ljava/lang/Integer;

    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Integer;-><init>(I)V

    .line 43
    return-object p0

    .line 46
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 47
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 51
    throw p0
    .line 54
.end method
