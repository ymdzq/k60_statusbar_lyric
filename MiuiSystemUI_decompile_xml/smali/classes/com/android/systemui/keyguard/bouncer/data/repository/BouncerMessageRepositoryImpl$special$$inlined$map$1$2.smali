.class public final Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/FlowCollector;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 7

    .line 1
    instance-of v0, p2, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    move-object v0, p2

    .line 6
    check-cast v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;

    .line 7
    iget v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 9
    const/high16 v2, -0x80000000

    .line 11
    and-int v3, v1, v2

    .line 13
    if-eqz v3, :cond_0

    .line 15
    sub-int/2addr v1, v2

    .line 17
    iput v1, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;

    .line 21
    invoke-direct {v0, p0, p2}, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;-><init>(Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2;Lkotlin/coroutines/Continuation;)V

    .line 23
    :goto_0
    iget-object p2, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;->result:Ljava/lang/Object;

    .line 26
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 28
    iget v2, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 30
    const/4 v3, 0x1

    .line 32
    if-eqz v2, :cond_2

    .line 33
    if-ne v2, v3, :cond_1

    .line 35
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 37
    goto/16 :goto_5

    .line 40
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 42
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 46
    throw p0

    .line 49
    :cond_2
    invoke-static {p2}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 50
    check-cast p1, Lkotlin/Triple;

    .line 53
    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 55
    move-result-object p2

    .line 58
    check-cast p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;

    .line 59
    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 61
    move-result-object v2

    .line 64
    check-cast v2, Ljava/lang/Boolean;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 67
    move-result v2

    .line 70
    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 71
    move-result-object p1

    .line 74
    check-cast p1, Ljava/lang/Boolean;

    .line 75
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 77
    move-result p1

    .line 80
    const/4 v4, 0x0

    .line 81
    if-nez v2, :cond_4

    .line 82
    if-eqz p1, :cond_3

    .line 84
    goto :goto_1

    .line 86
    :cond_3
    move p1, v4

    .line 87
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    move p1, v3

    .line 89
    :goto_2
    if-eqz p1, :cond_5

    .line 90
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterReboot:Z

    .line 92
    if-eqz v5, :cond_5

    .line 94
    move v4, v3

    .line 96
    goto :goto_4

    .line 97
    :cond_5
    if-eqz p1, :cond_6

    .line 98
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterTimeout:Z

    .line 100
    if-eqz v5, :cond_6

    .line 102
    const/4 v4, 0x2

    .line 104
    goto :goto_4

    .line 105
    :cond_6
    iget-boolean v5, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isPrimaryAuthRequiredAfterDpmLockdown:Z

    .line 106
    if-eqz v5, :cond_7

    .line 108
    const/4 v4, 0x3

    .line 110
    goto :goto_4

    .line 111
    :cond_7
    const/16 v5, 0x8

    .line 112
    if-eqz v2, :cond_8

    .line 114
    iget-boolean v6, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterUserRequest:Z

    .line 116
    if-eqz v6, :cond_8

    .line 118
    :goto_3
    move v4, v5

    .line 120
    goto :goto_4

    .line 121
    :cond_8
    if-eqz v2, :cond_9

    .line 122
    iget-boolean v2, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->someAuthRequiredAfterTrustAgentExpired:Z

    .line 124
    if-eqz v2, :cond_9

    .line 126
    goto :goto_3

    .line 128
    :cond_9
    if-eqz p1, :cond_a

    .line 129
    iget-boolean v2, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->isInUserLockdown:Z

    .line 131
    if-eqz v2, :cond_a

    .line 133
    const/4 v4, 0x4

    .line 135
    goto :goto_4

    .line 136
    :cond_a
    if-eqz p1, :cond_b

    .line 137
    iget-boolean v2, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->primaryAuthRequiredForUnattendedUpdate:Z

    .line 139
    if-eqz v2, :cond_b

    .line 141
    const/4 v4, 0x6

    .line 143
    goto :goto_4

    .line 144
    :cond_b
    if-eqz p1, :cond_c

    .line 145
    iget-boolean p1, p2, Lcom/android/systemui/keyguard/shared/model/AuthenticationFlags;->strongerAuthRequiredAfterNonStrongBiometricsTimeout:Z

    .line 147
    if-eqz p1, :cond_c

    .line 149
    const/4 v4, 0x7

    .line 151
    :cond_c
    :goto_4
    new-instance p1, Ljava/lang/Integer;

    .line 152
    invoke-direct {p1, v4}, Ljava/lang/Integer;-><init>(I)V

    .line 154
    iput v3, v0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2$1;->label:I

    .line 157
    iget-object p0, p0, Lcom/android/systemui/keyguard/bouncer/data/repository/BouncerMessageRepositoryImpl$special$$inlined$map$1$2;->$this_unsafeFlow:Lkotlinx/coroutines/flow/FlowCollector;

    .line 159
    invoke-interface {p0, p1, v0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 161
    move-result-object p0

    .line 164
    if-ne p0, v1, :cond_d

    .line 165
    return-object v1

    .line 167
    :cond_d
    :goto_5
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 168
    return-object p0
    .line 170
.end method
