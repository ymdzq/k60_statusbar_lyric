.class final Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.user.domain.interactor.GuestUserInteractor$exit$1"
    f = "GuestUserInteractor.kt"
    l = {
        0x94,
        0xa1
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $currentUserInfo:Landroid/content/pm/UserInfo;

.field final synthetic $dismissDialog:Lkotlin/jvm/functions/Function0;

.field final synthetic $forceRemoveGuestOnExit:Z

.field final synthetic $showDialog:Lkotlin/jvm/functions/Function1;

.field final synthetic $switchUser:Lkotlin/jvm/functions/Function1;

.field final synthetic $targetUserId:I

.field I$0:I

.field label:I

.field final synthetic this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;


# direct methods
.method public constructor <init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILandroid/content/pm/UserInfo;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 2
    iput p2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$targetUserId:I

    .line 4
    iput-object p3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$currentUserInfo:Landroid/content/pm/UserInfo;

    .line 6
    iput-boolean p4, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$forceRemoveGuestOnExit:Z

    .line 8
    iput-object p5, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$showDialog:Lkotlin/jvm/functions/Function1;

    .line 10
    iput-object p6, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    .line 12
    iput-object p7, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$switchUser:Lkotlin/jvm/functions/Function1;

    .line 14
    const/4 p1, 0x2

    .line 16
    invoke-direct {p0, p1, p8}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 17
    return-void
    .line 20
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 9

    .line 1
    new-instance p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 4
    iget v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$targetUserId:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$currentUserInfo:Landroid/content/pm/UserInfo;

    .line 8
    iget-boolean v4, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$forceRemoveGuestOnExit:Z

    .line 10
    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$showDialog:Lkotlin/jvm/functions/Function1;

    .line 12
    iget-object v6, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    .line 14
    iget-object v7, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$switchUser:Lkotlin/jvm/functions/Function1;

    .line 16
    move-object v0, p1

    .line 18
    move-object v8, p2

    .line 19
    invoke-direct/range {v0 .. v8}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILandroid/content/pm/UserInfo;ZLkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 20
    return-object p1
    .line 23
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 12

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->label:I

    .line 4
    const/4 v2, 0x2

    .line 6
    const/4 v3, 0x1

    .line 7
    if-eqz v1, :cond_2

    .line 8
    if-eq v1, v3, :cond_1

    .line 10
    if-ne v1, v2, :cond_0

    .line 12
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 14
    goto/16 :goto_4

    .line 17
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 19
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 21
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 23
    throw p0

    .line 26
    :cond_1
    iget v1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->I$0:I

    .line 27
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 33
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 36
    iget-object v1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->repository:Lcom/android/systemui/user/data/repository/UserRepository;

    .line 38
    move-object v4, v1

    .line 40
    check-cast v4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 41
    iget v4, v4, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    .line 43
    iget v5, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$targetUserId:I

    .line 45
    const/16 v6, -0x2710

    .line 47
    if-ne v5, v6, :cond_6

    .line 49
    move-object v5, v1

    .line 51
    check-cast v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 52
    iget v5, v5, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->lastSelectedNonGuestUserId:I

    .line 54
    check-cast v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;

    .line 56
    iget v1, v1, Lcom/android/systemui/user/data/repository/UserRepositoryImpl;->mainUserId:I

    .line 58
    if-eq v5, v1, :cond_5

    .line 60
    iget-object v1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 62
    new-instance v6, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1$info$1;

    .line 64
    const/4 v7, 0x0

    .line 66
    invoke-direct {v6, p1, v5, v7}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1$info$1;-><init>(Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;ILkotlin/coroutines/Continuation;)V

    .line 67
    iput v4, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->I$0:I

    .line 70
    iput v3, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->label:I

    .line 72
    invoke-static {v1, v6, p0}, Lkotlinx/coroutines/BuildersKt;->withContext(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    move-result-object p1

    .line 77
    if-ne p1, v0, :cond_3

    .line 78
    return-object v0

    .line 80
    :cond_3
    move v1, v4

    .line 81
    :goto_0
    check-cast p1, Landroid/content/pm/UserInfo;

    .line 82
    if-eqz p1, :cond_4

    .line 84
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    .line 86
    move-result v3

    .line 89
    if-eqz v3, :cond_4

    .line 90
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->supportsSwitchTo()Z

    .line 92
    move-result v3

    .line 95
    if-eqz v3, :cond_4

    .line 96
    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    .line 98
    goto :goto_1

    .line 100
    :cond_4
    move v7, v1

    .line 101
    goto :goto_2

    .line 102
    :cond_5
    :goto_1
    move v7, v4

    .line 103
    goto :goto_2

    .line 104
    :cond_6
    move v7, v5

    .line 105
    :goto_2
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$currentUserInfo:Landroid/content/pm/UserInfo;

    .line 106
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEphemeral()Z

    .line 108
    move-result p1

    .line 111
    if-nez p1, :cond_8

    .line 112
    iget-boolean p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$forceRemoveGuestOnExit:Z

    .line 114
    if-eqz p1, :cond_7

    .line 116
    goto :goto_3

    .line 118
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 119
    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 121
    sget-object v0, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_SWITCH:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 123
    invoke-interface {p1, v0}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 125
    iget-object p0, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$switchUser:Lkotlin/jvm/functions/Function1;

    .line 128
    new-instance p1, Ljava/lang/Integer;

    .line 130
    invoke-direct {p1, v7}, Ljava/lang/Integer;-><init>(I)V

    .line 132
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    goto :goto_4

    .line 138
    :cond_8
    :goto_3
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 139
    iget-object p1, p1, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->uiEventLogger:Lcom/android/internal/logging/UiEventLogger;

    .line 141
    sget-object v1, Lcom/android/systemui/qs/QSUserSwitcherEvent;->QS_USER_GUEST_REMOVE:Lcom/android/systemui/qs/QSUserSwitcherEvent;

    .line 143
    invoke-interface {p1, v1}, Lcom/android/internal/logging/UiEventLogger;->log(Lcom/android/internal/logging/UiEventLogger$UiEventEnum;)V

    .line 145
    iget-object v5, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->this$0:Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;

    .line 148
    iget-object p1, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$currentUserInfo:Landroid/content/pm/UserInfo;

    .line 150
    iget v6, p1, Landroid/content/pm/UserInfo;->id:I

    .line 152
    iget-object v8, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$showDialog:Lkotlin/jvm/functions/Function1;

    .line 154
    iget-object v9, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$dismissDialog:Lkotlin/jvm/functions/Function0;

    .line 156
    iget-object v10, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->$switchUser:Lkotlin/jvm/functions/Function1;

    .line 158
    iput v2, p0, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor$exit$1;->label:I

    .line 160
    move-object v11, p0

    .line 162
    invoke-virtual/range {v5 .. v11}, Lcom/android/systemui/user/domain/interactor/GuestUserInteractor;->remove(IILkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 163
    move-result-object p0

    .line 166
    if-ne p0, v0, :cond_9

    .line 167
    return-object v0

    .line 169
    :cond_9
    :goto_4
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 170
    return-object p0
    .line 172
.end method
