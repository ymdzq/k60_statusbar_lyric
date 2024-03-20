.class public final Lcom/android/systemui/keyguard/ResourceTrimmer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/keyguard/WakefulnessLifecycle$Observer;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final applicationScope:Lkotlinx/coroutines/CoroutineScope;

.field public final bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final globalWindowManager:Lcom/android/systemui/utils/GlobalWindowManager;

.field public final keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

.field public final keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "ResourceTrimmer"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/keyguard/ResourceTrimmer;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;Lcom/android/systemui/utils/GlobalWindowManager;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;Lcom/android/systemui/flags/FeatureFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->keyguardInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardInteractor;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->keyguardTransitionInteractor:Lcom/android/systemui/keyguard/domain/interactor/KeyguardTransitionInteractor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->globalWindowManager:Lcom/android/systemui/utils/GlobalWindowManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final start()V
    .locals 5

    .line 1
    const-string v0, "ResourceTrimmer"

    .line 2
    const-string v1, "Resource trimmer registered."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    sget-object v0, Lcom/android/systemui/flags/Flags;->TRIM_RESOURCES_WITH_BACKGROUND_TRIM_AT_LOCK:Lcom/android/systemui/flags/ReleasedFlag;

    .line 9
    iget-object v1, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 11
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 13
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_0

    .line 19
    sget-object v0, Lcom/android/systemui/flags/Flags;->TRIM_FONT_CACHES_AT_UNLOCK:Lcom/android/systemui/flags/ReleasedFlag;

    .line 21
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 23
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    return-void

    .line 29
    :cond_0
    new-instance v0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$1;-><init>(Lcom/android/systemui/keyguard/ResourceTrimmer;Lkotlin/coroutines/Continuation;)V

    .line 33
    iget-object v2, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->applicationScope:Lkotlinx/coroutines/CoroutineScope;

    .line 36
    iget-object v3, p0, Lcom/android/systemui/keyguard/ResourceTrimmer;->bgDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 38
    const/4 v4, 0x2

    .line 40
    invoke-static {v2, v3, v1, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 41
    new-instance v0, Lcom/android/systemui/keyguard/ResourceTrimmer$start$2;

    .line 44
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/keyguard/ResourceTrimmer$start$2;-><init>(Lcom/android/systemui/keyguard/ResourceTrimmer;Lkotlin/coroutines/Continuation;)V

    .line 46
    invoke-static {v2, v3, v1, v0, v4}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 49
    return-void
    .line 52
.end method
