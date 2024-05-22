.class public final Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.systemui.keyguard.ui.viewmodel.KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1"
    f = "KeyguardBottomAreaViewModel.kt"
    l = {
        0xdb,
        0xbe
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

.field private synthetic L$0:Ljava/lang/Object;

.field synthetic L$1:Ljava/lang/Object;

.field label:I

.field final synthetic this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;


# direct methods
.method public constructor <init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 2
    iput-object p3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 4
    const/4 p2, 0x3

    .line 6
    invoke-direct {p0, p2, p1}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 2
    check-cast p3, Lkotlin/coroutines/Continuation;

    .line 4
    new-instance v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;

    .line 6
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 10
    invoke-direct {v0, p3, v1, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;-><init>(Lkotlin/coroutines/Continuation;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)V

    .line 12
    iput-object p1, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 15
    iput-object p2, v0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 17
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 19
    invoke-virtual {v0, p0}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    return-object p0
    .line 25
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 13

    .line 1
    sget-object v0, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 2
    iget v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->label:I

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
    goto/16 :goto_3

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
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 27
    check-cast v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    .line 29
    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 31
    check-cast v3, Lkotlinx/coroutines/flow/FlowCollector;

    .line 33
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 35
    goto :goto_0

    .line 38
    :cond_2
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 39
    iget-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 42
    check-cast p1, Lkotlinx/coroutines/flow/FlowCollector;

    .line 44
    iget-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 46
    check-cast v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;

    .line 48
    iget-boolean v4, v1, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;->isInPreviewMode:Z

    .line 50
    if-eqz v4, :cond_3

    .line 52
    iget-object v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 54
    iget-object v3, v3, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 56
    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 58
    invoke-virtual {v3, v4}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->quickAffordanceAlwaysVisible(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;)Lkotlinx/coroutines/flow/Flow;

    .line 60
    move-result-object v3

    .line 63
    goto :goto_1

    .line 64
    :cond_3
    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 65
    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 67
    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 69
    iput-object p1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 71
    iput-object v1, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 73
    iput v3, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->label:I

    .line 75
    invoke-virtual {v4, v5, p0}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->quickAffordance(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 77
    move-result-object v3

    .line 80
    if-ne v3, v0, :cond_4

    .line 81
    return-object v0

    .line 83
    :cond_4
    move-object v12, v3

    .line 84
    move-object v3, p1

    .line 85
    move-object p1, v12

    .line 86
    :goto_0
    check-cast p1, Lkotlinx/coroutines/flow/Flow;

    .line 87
    move-object v12, v3

    .line 89
    move-object v3, p1

    .line 90
    move-object p1, v12

    .line 91
    :goto_1
    iget-object v4, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 92
    iget-object v4, v4, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->bottomAreaInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;

    .line 94
    iget-object v4, v4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardBottomAreaInteractor;->animateDozingTransitions:Lkotlinx/coroutines/flow/StateFlow;

    .line 96
    invoke-static {v4}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 98
    move-result-object v4

    .line 101
    iget-object v5, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 102
    iget-object v6, v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->areQuickAffordancesFullyOpaque:Lkotlinx/coroutines/flow/Flow;

    .line 104
    iget-object v7, v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->quickAffordanceInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;

    .line 106
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    sget-object v8, Lcom/android/systemui/flags/Flags;->CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES:Lcom/android/systemui/flags/ReleasedFlag;

    .line 111
    iget-object v9, v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 113
    check-cast v9, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 115
    invoke-virtual {v9, v8}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 117
    move-result v8

    .line 120
    if-eqz v8, :cond_5

    .line 121
    iget-object v7, v7, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor;->dockManager:Lcom/android/systemui/dock/DockManager;

    .line 123
    invoke-static {v7}, Lcom/android/systemui/dock/DockManagerExtensionsKt;->retrieveIsDocked(Lcom/android/systemui/dock/DockManager;)Lkotlinx/coroutines/flow/Flow;

    .line 125
    move-result-object v7

    .line 128
    new-instance v8, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$useLongPress$$inlined$map$1;

    .line 129
    invoke-direct {v8, v7}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardQuickAffordanceInteractor$useLongPress$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;)V

    .line 131
    goto :goto_2

    .line 134
    :cond_5
    sget-object v7, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 135
    new-instance v8, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;

    .line 137
    invoke-direct {v8, v7}, Lkotlinx/coroutines/flow/FlowKt__BuildersKt$flowOf$$inlined$unsafeFlow$2;-><init>(Ljava/lang/Object;)V

    .line 139
    :goto_2
    new-instance v7, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;

    .line 142
    iget-object v9, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->$position$inlined:Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;

    .line 144
    iget-object v10, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->this$0:Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;

    .line 146
    const/4 v11, 0x0

    .line 148
    invoke-direct {v7, v9, v10, v1, v11}, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$1$1;-><init>(Lcom/android/systemui/keyguard/shared/quickaffordance/KeyguardQuickAffordancePosition;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$PreviewMode;Lkotlin/coroutines/Continuation;)V

    .line 149
    iget-object v1, v5, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel;->selectedPreviewSlotId:Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 152
    filled-new-array {v3, v4, v6, v1, v8}, [Lkotlinx/coroutines/flow/Flow;

    .line 154
    move-result-object v1

    .line 157
    new-instance v3, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;

    .line 158
    invoke-direct {v3, v1, v7, v2}, Lkotlinx/coroutines/flow/FlowKt__ZipKt$combine$$inlined$combineUnsafe$FlowKt__ZipKt$1;-><init>([Lkotlinx/coroutines/flow/Flow;Lkotlin/Function;I)V

    .line 160
    invoke-static {v3}, Lkotlinx/coroutines/flow/FlowKt;->distinctUntilChanged(Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/Flow;

    .line 163
    move-result-object v1

    .line 166
    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$0:Ljava/lang/Object;

    .line 167
    iput-object v11, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->L$1:Ljava/lang/Object;

    .line 169
    iput v2, p0, Lcom/android/systemui/keyguard/ui/viewmodel/KeyguardBottomAreaViewModel$button$$inlined$flatMapLatest$1;->label:I

    .line 171
    invoke-static {p0, v1, p1}, Lkotlinx/coroutines/flow/FlowKt;->emitAll(Lkotlin/coroutines/Continuation;Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/flow/FlowCollector;)Ljava/lang/Object;

    .line 173
    move-result-object p0

    .line 176
    if-ne p0, v0, :cond_6

    .line 177
    return-object v0

    .line 179
    :cond_6
    :goto_3
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 180
    return-object p0
    .line 182
.end method
