.class public final Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGone$1$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/FlowCollector;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGone$1$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGone$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object p2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DREAMING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 2
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 4
    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGone$1$1;->$r8$classId:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor$listenForDreamingToGone$1$1;->this$0:Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;

    .line 8
    packed-switch v1, :pswitch_data_0

    .line 10
    goto :goto_0

    .line 13
    :pswitch_0
    check-cast p1, Lkotlin/Pair;

    .line 14
    invoke-virtual {p1}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/android/systemui/keyguard/shared/model/DozeTransitionModel;

    .line 20
    invoke-virtual {p1}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 26
    iget-object v1, v1, Lcom/android/systemui/keyguard/shared/model/DozeTransitionModel;->to:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 28
    sget-object v2, Lcom/android/systemui/keyguard/shared/model/DozeStateModel;->DOZE:Lcom/android/systemui/keyguard/shared/model/DozeStateModel;

    .line 30
    if-ne v1, v2, :cond_0

    .line 32
    if-ne p1, p2, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 36
    invoke-static {p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->getAnimator-LRDsOJo$default(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;)V

    .line 38
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 41
    :cond_0
    return-object v0

    .line 44
    :pswitch_1
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 45
    sget-object p2, Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;->WAKE_AND_UNLOCK_FROM_DREAM:Lcom/android/systemui/keyguard/shared/model/BiometricUnlockModel;

    .line 47
    if-ne p1, p2, :cond_1

    .line 49
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 51
    invoke-static {p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->getAnimator-LRDsOJo$default(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;)V

    .line 53
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 56
    :cond_1
    return-object v0

    .line 59
    :goto_0
    check-cast p1, Lkotlin/Triple;

    .line 60
    invoke-virtual {p1}, Lkotlin/Triple;->component1()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Ljava/lang/Boolean;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 68
    move-result v1

    .line 71
    invoke-virtual {p1}, Lkotlin/Triple;->component2()Ljava/lang/Object;

    .line 72
    move-result-object v2

    .line 75
    check-cast v2, Ljava/lang/Boolean;

    .line 76
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 78
    move-result v2

    .line 81
    invoke-virtual {p1}, Lkotlin/Triple;->component3()Ljava/lang/Object;

    .line 82
    move-result-object p1

    .line 85
    check-cast p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;

    .line 86
    if-eqz v2, :cond_3

    .line 88
    if-nez v1, :cond_3

    .line 90
    iget-object p1, p1, Lcom/android/systemui/keyguard/shared/model/TransitionStep;->to:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 92
    if-eq p1, p2, :cond_2

    .line 94
    sget-object p2, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->LOCKSCREEN:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 96
    if-ne p1, p2, :cond_3

    .line 98
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 100
    invoke-static {p0}, Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;->getAnimator-LRDsOJo$default(Lcom/android/systemui/keyguard/domain/interactor/FromDreamingTransitionInteractor;)V

    .line 102
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    :cond_3
    return-object v0

    .line 108
    nop

    .line 109
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 110
.end method
