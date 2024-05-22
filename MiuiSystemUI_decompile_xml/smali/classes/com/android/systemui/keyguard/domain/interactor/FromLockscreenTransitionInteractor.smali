.class public final Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;
.super Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final synthetic $r8$clinit:I

.field public static final DEFAULT_DURATION:J

.field public static final TO_DREAMING_DURATION:J

.field public static final TO_OCCLUDED_DURATION:J


# instance fields
.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

.field public final keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

.field public final scope:Lkotlinx/coroutines/CoroutineScope;

.field public final shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    sget v0, Lkotlin/time/Duration;->$r8$clinit:I

    .line 2
    sget-object v0, Lkotlin/time/DurationUnit;->MILLISECONDS:Lkotlin/time/DurationUnit;

    .line 4
    const/16 v1, 0x1f4

    .line 6
    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 8
    move-result-wide v1

    .line 11
    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->DEFAULT_DURATION:J

    .line 12
    const/16 v1, 0x3a5

    .line 14
    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 16
    move-result-wide v1

    .line 19
    sput-wide v1, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_DREAMING_DURATION:J

    .line 20
    const/16 v1, 0x1c2

    .line 22
    invoke-static {v1, v0}, Lkotlin/time/DurationKt;->toDuration(ILkotlin/time/DurationUnit;)J

    .line 24
    move-result-wide v0

    .line 27
    sput-wide v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->TO_OCCLUDED_DURATION:J

    .line 28
    return-void
    .line 30
.end method

.method public constructor <init>(Lkotlinx/coroutines/CoroutineScope;Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/shade/data/repository/ShadeRepository;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;)V
    .locals 1

    .line 1
    const-class v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;

    .line 2
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Lkotlin/jvm/internal/ClassReference;->getSimpleName()Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 12
    invoke-direct {p0, v0}, Lcom/android/systemui/keyguard/domain/interactor/TransitionInteractor;-><init>(Ljava/lang/String;)V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 18
    iput-object p2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 20
    iput-object p3, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->shadeRepository:Lcom/android/systemui/shade/data/repository/ShadeRepository;

    .line 22
    iput-object p4, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 24
    iput-object p5, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->keyguardTransitionRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardTransitionRepository;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final getAnimator-LRDsOJo(J)Landroid/animation/ValueAnimator;
    .locals 1

    .line 1
    new-instance p0, Landroid/animation/ValueAnimator;

    .line 2
    invoke-direct {p0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    sget-object v0, Lcom/android/app/animation/Interpolators;->LINEAR:Landroid/view/animation/Interpolator;

    .line 7
    invoke-virtual {p0, v0}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 9
    invoke-static {p1, p2}, Lkotlin/time/Duration;->getInWholeMilliseconds-impl(J)J

    .line 12
    move-result-wide p1

    .line 15
    invoke-virtual {p0, p1, p2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 16
    return-object p0
    .line 19
.end method

.method public final start()V
    .locals 5

    .line 1
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToGone$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToGone$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 5
    iget-object v2, p0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 8
    const/4 v3, 0x3

    .line 10
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 11
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToOccluded$1;

    .line 14
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToOccluded$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 16
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 19
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToCamera$1;

    .line 22
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToCamera$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 24
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 27
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAodOrDozing$1;

    .line 30
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAodOrDozing$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 32
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 35
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncer$1;

    .line 38
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncer$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 40
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 43
    sget-object v0, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->AOD:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 46
    sget-object v4, Lcom/android/systemui/keyguard/shared/model/KeyguardState;->DOZING:Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 48
    filled-new-array {v0, v4}, [Lcom/android/systemui/keyguard/shared/model/KeyguardState;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v0}, Lkotlin/collections/SetsKt__SetsKt;->setOf([Ljava/lang/Object;)Ljava/util/Set;

    .line 54
    move-result-object v0

    .line 57
    new-instance v4, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1;

    .line 58
    invoke-direct {v4, p0, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToDreaming$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Ljava/util/Set;Lkotlin/coroutines/Continuation;)V

    .line 60
    invoke-static {v2, v1, v1, v4, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 63
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 66
    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 68
    new-instance v4, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1;

    .line 71
    invoke-direct {v4, p0, v0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToPrimaryBouncerDragging$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/jvm/internal/Ref$ObjectRef;Lkotlin/coroutines/Continuation;)V

    .line 73
    invoke-static {v2, v1, v1, v4, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 76
    new-instance v0, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAlternateBouncer$1;

    .line 79
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor$listenForLockscreenToAlternateBouncer$1;-><init>(Lcom/android/systemui/keyguard/domain/interactor/FromLockscreenTransitionInteractor;Lkotlin/coroutines/Continuation;)V

    .line 81
    invoke-static {v2, v1, v1, v0, v3}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 84
    return-void
    .line 87
.end method
