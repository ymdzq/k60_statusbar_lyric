.class public final Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lkotlinx/coroutines/flow/Flow;


# instance fields
.field public final synthetic $this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

.field public final synthetic $userHandle$inlined:Landroid/os/UserHandle;

.field public final synthetic this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;


# direct methods
.method public constructor <init>(Lkotlinx/coroutines/flow/Flow;Landroid/os/UserHandle;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->$userHandle$inlined:Landroid/os/UserHandle;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1$2;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->$userHandle$inlined:Landroid/os/UserHandle;

    .line 4
    iget-object v2, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->this$0:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 6
    invoke-direct {v0, p1, v1, v2}, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1$2;-><init>(Lkotlinx/coroutines/flow/FlowCollector;Landroid/os/UserHandle;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;)V

    .line 8
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository$special$$inlined$map$1;->$this_unsafeTransform$inlined:Lkotlinx/coroutines/flow/Flow;

    .line 11
    invoke-interface {p0, v0, p2}, Lkotlinx/coroutines/flow/Flow;->collect(Lkotlinx/coroutines/flow/FlowCollector;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 13
    move-result-object p0

    .line 16
    sget-object p1, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 17
    if-ne p0, p1, :cond_0

    .line 19
    return-object p0

    .line 21
    :cond_0
    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 22
    return-object p0
    .line 24
.end method
