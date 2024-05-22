.class public final Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final isAnyShadeExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final isBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

.field public final multiShadeInteractor:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

.field public final shadeController:Lcom/android/systemui/shade/ShadeController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/shade/ShadeController;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->multiShadeInteractor:Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;

    .line 5
    iput-object p5, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 7
    iput-object p6, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->shadeController:Lcom/android/systemui/shade/ShadeController;

    .line 9
    sget-object p1, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 11
    sget-object p1, Lkotlinx/coroutines/flow/SharingStarted$Companion;->Eagerly:Lkotlinx/coroutines/flow/StartedEagerly;

    .line 13
    sget-object p5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 15
    iget-object p3, p3, Lcom/android/systemui/multishade/domain/interactor/MultiShadeInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/Flow;

    .line 17
    invoke-static {p3, p2, p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 19
    move-result-object p3

    .line 22
    iput-object p3, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->isAnyShadeExpanded:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 23
    iget-object p3, p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->repository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 25
    check-cast p3, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 27
    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 29
    new-instance p4, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;

    .line 31
    const/4 p6, 0x1

    .line 33
    invoke-direct {p4, p3, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 34
    new-instance p3, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;

    .line 37
    const/4 p6, 0x0

    .line 39
    invoke-direct {p3, p4, p6}, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 40
    new-instance p4, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor$special$$inlined$map$1;

    .line 43
    invoke-direct {p4, p3}, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor$special$$inlined$map$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$transitionValue$$inlined$map$1;)V

    .line 45
    invoke-static {p4, p2, p1, p5}, Lkotlinx/coroutines/flow/FlowKt;->stateIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/flow/SharingStarted;Ljava/lang/Object;)Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 48
    move-result-object p1

    .line 51
    iput-object p1, p0, Lcom/android/systemui/multishade/domain/interactor/MultiShadeMotionEventInteractor;->isBouncerShowing:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 52
    return-void
    .line 54
.end method
