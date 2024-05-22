.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    packed-switch v2, :pswitch_data_0

    .line 10
    goto/16 :goto_0

    .line 13
    :pswitch_0
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$2$2;

    .line 15
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 17
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    if-ne p0, v1, :cond_0

    .line 24
    move-object v0, p0

    .line 26
    :cond_0
    return-object v0

    .line 27
    :pswitch_1
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$6$2;

    .line 28
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$6$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 30
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 33
    move-result-object p0

    .line 36
    if-ne p0, v1, :cond_1

    .line 37
    move-object v0, p0

    .line 39
    :cond_1
    return-object v0

    .line 40
    :pswitch_2
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$5$2;

    .line 41
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$5$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 43
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 46
    move-result-object p0

    .line 49
    if-ne p0, v1, :cond_2

    .line 50
    move-object v0, p0

    .line 52
    :cond_2
    return-object v0

    .line 53
    :pswitch_3
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$4$2;

    .line 54
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$4$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 56
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 59
    move-result-object p0

    .line 62
    if-ne p0, v1, :cond_3

    .line 63
    move-object v0, p0

    .line 65
    :cond_3
    return-object v0

    .line 66
    :pswitch_4
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3$2;

    .line 67
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 69
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 72
    move-result-object p0

    .line 75
    if-ne p0, v1, :cond_4

    .line 76
    move-object v0, p0

    .line 78
    :cond_4
    return-object v0

    .line 79
    :pswitch_5
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2$2;

    .line 80
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$2$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 82
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 85
    move-result-object p0

    .line 88
    if-ne p0, v1, :cond_5

    .line 89
    move-object v0, p0

    .line 91
    :cond_5
    return-object v0

    .line 92
    :pswitch_6
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$1$2;

    .line 93
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 95
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 98
    move-result-object p0

    .line 101
    if-ne p0, v1, :cond_6

    .line 102
    move-object v0, p0

    .line 104
    :cond_6
    return-object v0

    .line 105
    :pswitch_7
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1$2;

    .line 106
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 108
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 111
    move-result-object p0

    .line 114
    if-ne p0, v1, :cond_7

    .line 115
    move-object v0, p0

    .line 117
    :cond_7
    return-object v0

    .line 118
    :goto_0
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$3$2;

    .line 119
    invoke-direct {v2, p1}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$3$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;)V

    .line 121
    invoke-interface {p0, v2, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 124
    move-result-object p0

    .line 127
    if-ne p0, v1, :cond_8

    .line 128
    move-object v0, p0

    .line 130
    :cond_8
    return-object v0

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
