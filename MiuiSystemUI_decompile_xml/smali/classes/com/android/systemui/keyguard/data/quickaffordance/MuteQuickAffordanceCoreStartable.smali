.class public final Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final coroutineScope:Lkotlinx/coroutines/CoroutineScope;

.field public final featureFlags:Lcom/android/systemui/flags/FeatureFlags;

.field public final keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

.field public final observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

.field public final ringerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

.field public final userFileManager:Lcom/android/systemui/settings/UserFileManager;

.field public final userTracker:Lcom/android/systemui/settings/UserTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/flags/FeatureFlags;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/util/RingerModeTrackerImpl;Lcom/android/systemui/settings/UserFileManager;Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;Lkotlinx/coroutines/CoroutineScope;Lkotlinx/coroutines/CoroutineDispatcher;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->ringerModeTracker:Lcom/android/systemui/util/RingerModeTrackerImpl;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 15
    iput-object p7, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->backgroundDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 17
    new-instance p1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    .line 19
    invoke-direct {p1, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;-><init>(Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V

    .line 21
    iput-object p1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->observer:Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$observer$1;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final start()V
    .locals 2

    .line 1
    sget-object v0, Lcom/android/systemui/flags/Flags;->CUSTOMIZABLE_LOCK_SCREEN_QUICK_AFFORDANCES:Lcom/android/systemui/flags/ReleasedFlag;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 4
    check-cast v1, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 6
    invoke-virtual {v1, v0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->keyguardQuickAffordanceRepository:Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;

    .line 15
    iget-object v0, v0, Lcom/android/systemui/keyguard/data/repository/KeyguardQuickAffordanceRepository;->selections:Lkotlinx/coroutines/flow/ReadonlyStateFlow;

    .line 17
    new-instance v1, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1;

    .line 19
    invoke-direct {v1, v0, p0}, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable$start$$inlined$map$1;-><init>(Lkotlinx/coroutines/flow/ReadonlyStateFlow;Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/keyguard/data/quickaffordance/MuteQuickAffordanceCoreStartable;->coroutineScope:Lkotlinx/coroutines/CoroutineScope;

    .line 24
    invoke-static {v1, p0}, Lkotlinx/coroutines/flow/FlowKt;->launchIn(Lkotlinx/coroutines/flow/Flow;Lkotlinx/coroutines/CoroutineScope;)V

    .line 26
    return-void
    .line 29
.end method
