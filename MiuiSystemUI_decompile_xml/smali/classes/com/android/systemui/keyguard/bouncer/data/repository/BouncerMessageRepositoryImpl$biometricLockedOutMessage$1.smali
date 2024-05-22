.class final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.bouncer.data.repository.BouncerMessageRepositoryImpl$biometricLockedOutMessage$1"
    f = "BouncerMessageRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field synthetic Z$0:Z

.field synthetic Z$1:Z

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->this$0:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 2
    const/4 p1, 0x3

    .line 4
    invoke-direct {p0, p1, p2}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 5
    return-void
    .line 8
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 4
    move-result p1

    .line 7
    check-cast p2, Ljava/lang/Boolean;

    .line 8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 10
    move-result p2

    .line 13
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 14
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;

    .line 16
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->this$0:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 18
    invoke-direct {v0, p0, p3}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;-><init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;Lkotlin/coroutines/Continuation;)V

    .line 20
    iput-boolean p1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->Z$0:Z

    .line 23
    iput-boolean p2, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->Z$1:Z

    .line 25
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 27
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    return-object p0
    .line 33
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->label:I

    .line 2
    if-nez v0, :cond_2

    .line 4
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 6
    iget-boolean p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->Z$0:Z

    .line 9
    iget-boolean v0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->Z$1:Z

    .line 11
    if-eqz p1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->this$0:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 15
    iget-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 19
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 21
    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 23
    move-result-object p0

    .line 26
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 27
    const/16 v0, 0xd

    .line 29
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->createFromPromptReason(II)Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 31
    move-result-object p0

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    if-eqz v0, :cond_1

    .line 36
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$biometricLockedOutMessage$1;->this$0:Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;

    .line 38
    iget-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->bouncerMessageFactory:Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;

    .line 40
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl;->userRepository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 42
    check-cast p0, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 44
    invoke-virtual {p0}, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->getSelectedUserInfo()Landroid/content/pm/UserInfo;

    .line 46
    move-result-object p0

    .line 49
    iget p0, p0, Landroid/content/pm/UserInfo;->id:I

    .line 50
    const/16 v0, 0xc

    .line 52
    invoke-virtual {p1, v0, p0}, Lcom/android/systemui/keyguard/bouncer/data/factory/BouncerMessageFactory;->createFromPromptReason(II)Lcom/android/systemui/keyguard/bouncer/shared/model/BouncerMessageModel;

    .line 54
    move-result-object p0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    const/4 p0, 0x0

    .line 59
    :goto_0
    return-object p0

    .line 60
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 61
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 63
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 65
    throw p0
    .line 68
.end method
