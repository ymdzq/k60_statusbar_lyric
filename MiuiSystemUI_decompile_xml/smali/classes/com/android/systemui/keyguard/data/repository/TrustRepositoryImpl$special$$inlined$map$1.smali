.class public final Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$unsafeFlow$1;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :pswitch_0
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$2$2;

    .line 16
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    .line 18
    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    if-ne p0, v1, :cond_0

    .line 25
    move-object v0, p0

    .line 27
    :cond_0
    return-object v0

    .line 28
    :pswitch_1
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1$2;

    .line 29
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    .line 31
    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 34
    move-result-object p0

    .line 37
    if-ne p0, v1, :cond_1

    .line 38
    move-object v0, p0

    .line 40
    :cond_1
    return-object v0

    .line 41
    :goto_0
    new-instance v2, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$3$2;

    .line 42
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl$special$$inlined$map$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/data/repository/TrustRepositoryImpl;)V

    .line 44
    invoke-interface {v3, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 47
    move-result-object p0

    .line 50
    if-ne p0, v1, :cond_2

    .line 51
    move-object v0, p0

    .line 53
    :cond_2
    return-object v0

    .line 54
    nop

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method
