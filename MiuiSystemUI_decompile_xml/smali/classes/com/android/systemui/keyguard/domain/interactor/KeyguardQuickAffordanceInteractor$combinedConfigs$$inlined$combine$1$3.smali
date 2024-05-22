.class public final Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.domain.interactor.KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3"
    f = "KeyguardQuickAffordanceInteractor.kt"
    l = {
        0x124
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $configs$inlined:Ljava/util/List;

.field final synthetic $position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 4
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 6
    const/4 p2, 0x3

    .line 8
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p2, [Ljava/lang/Object;

    .line 4
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 6
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    .line 10
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 14
    invoke-direct {v0, p3, v1, v2, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;-><init>(Lkotlin/coroutines/Continuation;Ljava/util/List;Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    .line 16
    iput-object p1, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 19
    iput-object p2, v0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 21
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 23
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    return-object p0
    .line 29
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->label:I

    .line 4
    const/4 v2, 0x1

    .line 6
    if-eqz v1, :cond_1

    .line 7
    if-ne v1, v2, :cond_0

    .line 9
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 11
    goto/16 :goto_3

    .line 14
    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 16
    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0

    .line 23
    :cond_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 24
    iget-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$0:Ljava/lang/Object;

    .line 27
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 29
    iget-object v1, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->L$1:Ljava/lang/Object;

    .line 31
    check-cast v1, [Ljava/lang/Object;

    .line 33
    check-cast v1, [Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState;

    .line 35
    array-length v3, v1

    .line 37
    const/4 v4, 0x0

    .line 38
    :goto_0
    const/4 v5, -0x1

    .line 39
    if-ge v4, v3, :cond_3

    .line 40
    aget-object v6, v1, v4

    .line 42
    instance-of v6, v6, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 44
    if-eqz v6, :cond_2

    .line 46
    goto :goto_1

    .line 48
    :cond_2
    add-int/lit8 v4, v4, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    move v4, v5

    .line 52
    :goto_1
    if-eq v4, v5, :cond_5

    .line 53
    aget-object v1, v1, v4

    .line 55
    check-cast v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;

    .line 57
    iget-object v3, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$configs$inlined:Ljava/util/List;

    .line 59
    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 61
    move-result-object v3

    .line 64
    check-cast v3, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;

    .line 65
    invoke-interface {v3}, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig;->getKey()Ljava/lang/String;

    .line 67
    move-result-object v3

    .line 70
    new-instance v4, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;

    .line 71
    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 73
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    sget-object v6, Lcom/android/systemui/flags/Flags;->CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES:Lcom/android/systemui/flags/ReleasedFlag;

    .line 78
    iget-object v5, v5, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 80
    check-cast v5, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 82
    invoke-virtual {v5, v6}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 84
    move-result v5

    .line 87
    if-eqz v5, :cond_4

    .line 88
    iget-object v5, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->this$0:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 90
    iget-object v6, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 92
    invoke-virtual {v6}, Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;->toSlotId()Ljava/lang/String;

    .line 94
    move-result-object v6

    .line 97
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    new-instance v5, Ljava/lang/StringBuilder;

    .line 101
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 103
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, "::"

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object v3

    .line 120
    :cond_4
    iget-object v5, v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;->icon:Lcom/android/systemui/common/shared/model/Icon;

    .line 121
    iget-object v6, v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;->activationState:Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;

    .line 123
    iget-object v1, v1, Lcom/android/systemui/keyguard/data/quickaffordance/KeyguardQuickAffordanceConfig$LockScreenState$Visible;->touchListener:Landroid/view/View$OnTouchListener;

    .line 125
    invoke-direct {v4, v3, v5, v6, v1}, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Visible;-><init>(Ljava/lang/String;Lcom/android/systemui/common/shared/model/Icon;Lcom/android/systemui/keyguard/shared/quickaffordance/ActivationState;Landroid/view/View$OnTouchListener;)V

    .line 127
    goto :goto_2

    .line 130
    :cond_5
    sget-object v4, Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;->INSTANCE:Lcom/android/systemui/keyguard/domain/model/KeyguardQuickAffordanceModel$Hidden;

    .line 131
    :goto_2
    iput v2, p0, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$combinedConfigs$$inlined$combine$1$3;->label:I

    .line 133
    invoke-interface {p1, v4, p0}, Lkotlinx/coroutines/flow/FlowCollector;->emit(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 135
    move-result-object p0

    .line 138
    if-ne p0, v0, :cond_6

    .line 139
    return-object v0

    .line 141
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 142
    return-object p0
.end method
