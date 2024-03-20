.class public final Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final lightRevealEffect:Lkotlinx/coroutines/flow/SafeFlow;

.field public final revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;


# direct methods
.method public constructor <init>(Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iget-object p2, p2, Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;->startedKeyguardTransitionStep:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;

    .line 5
    iget-object p3, p3, Lcom/android/systemui/keyguard/data/repository/LightRevealScrimRepositoryImpl;->revealEffect:Lkotlinx/coroutines/flow/Flow;

    .line 7
    invoke-static {p2, p3}, Lcom/android/systemui/util/kotlin/FlowKt;->sample(Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor$special$$inlined$map$1;Lkotlinx/coroutines/flow/Flow;)Lkotlinx/coroutines/flow/SafeFlow;

    .line 9
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->lightRevealEffect:Lkotlinx/coroutines/flow/SafeFlow;

    .line 13
    check-cast p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;

    .line 15
    new-instance p2, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;

    .line 17
    const/4 p3, 0x1

    .line 19
    iget-object p1, p1, Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepositoryImpl;->transitions:Lkotlinx/coroutines/flow/Flow;

    .line 20
    invoke-direct {p2, p1, p3}, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 22
    new-instance p1, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;

    .line 25
    const/4 p3, 0x0

    .line 27
    invoke-direct {p1, p2, p3}, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/Flow;I)V

    .line 28
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor;->revealAmount:Lcom/android/systemui/keyguard/domain/interactor/LightRevealScrimInteractor$special$$inlined$map$1;

    .line 31
    return-void
    .line 33
.end method
