.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic $state$inlined:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;


# direct methods
.method public synthetic constructor <init>(Lkotlinx/coroutines/flow/Flow;I)V
    .locals 1

    .line 1
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->PRIMARY_BOUNCER:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    iput p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$r8$classId:I

    .line 4
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$state$inlined:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 4

    .line 1
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 2
    sget-object v1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 4
    iget v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$r8$classId:I

    .line 6
    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;->$state$inlined:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 10
    packed-switch v2, :pswitch_data_0

    .line 12
    goto :goto_0

    .line 15
    :pswitch_0
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1$2;

    .line 16
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

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
    :goto_0
    new-instance v2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$filter$1$2;

    .line 29
    invoke-direct {v2, p1, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$filter$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Lcom/android/systemui/keyguard/shared/model/KeyguardState;)V

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
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 42
.end method
