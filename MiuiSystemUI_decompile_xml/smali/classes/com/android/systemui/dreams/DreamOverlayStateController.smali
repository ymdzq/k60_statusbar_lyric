.class public final Lcom/android/systemui/dreams/DreamOverlayStateController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/CallbackController;


# static fields
.field public static final DEBUG:Z


# instance fields
.field public final mCallbacks:Ljava/util/ArrayList;

.field public final mComplications:Ljava/util/Collection;

.field public final mExecutor:Ljava/util/concurrent/Executor;

.field public final mOverlayEnabled:Z

.field public mState:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "DreamOverlayStateCtlr"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/dreams/DreamOverlayStateController;->DEBUG:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Ljava/util/concurrent/Executor;ZLcom/android/systemui/flags/FeatureFlags;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 10
    new-instance v0, Ljava/util/HashSet;

    .line 12
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 19
    iput-boolean p2, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mOverlayEnabled:Z

    .line 21
    sget-object p0, Lcom/android/systemui/flags/Flags;->ALWAYS_SHOW_HOME_CONTROLS_ON_DREAMS:Lcom/android/systemui/flags/ReleasedFlag;

    .line 23
    check-cast p3, Lcom/android/systemui/flags/FeatureFlagsRelease;

    .line 25
    invoke-virtual {p3, p0}, Lcom/android/systemui/flags/FeatureFlagsRelease;->isEnabled(Lcom/android/systemui/flags/ReleasedFlag;)Z

    .line 27
    sget-boolean p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->DEBUG:Z

    .line 30
    if-eqz p0, :cond_0

    .line 32
    const-string p0, "Dream overlay enabled:"

    .line 34
    const-string p1, "DreamOverlayStateCtlr"

    .line 36
    invoke-static {p0, p2, p1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/lang/String;)V

    .line 38
    :cond_0
    return-void
    .line 41
.end method


# virtual methods
.method public final addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic addCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->addCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void
.end method

.method public final containsState(I)Z
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    .line 2
    and-int/2addr p0, p1

    .line 4
    if-eqz p0, :cond_0

    .line 5
    const/4 p0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 p0, 0x0

    .line 9
    :goto_0
    return p0
    .line 10
.end method

.method public final getComplications()Ljava/util/Collection;
    .locals 2

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 3
    move-result v0

    .line 6
    if-eqz v0, :cond_0

    .line 7
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 9
    move-result-object p0

    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mComplications:Ljava/util/Collection;

    .line 14
    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    .line 16
    move-result-object v0

    .line 19
    new-instance v1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;

    .line 20
    invoke-direct {v1, p0}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda3;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;)V

    .line 22
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    .line 25
    move-result-object p0

    .line 28
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;

    .line 29
    invoke-direct {v0}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda4;-><init>()V

    .line 31
    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    .line 34
    move-result-object v0

    .line 37
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Ljava/util/Collection;

    .line 42
    invoke-static {p0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    .line 44
    move-result-object p0

    .line 47
    :goto_0
    return-object p0
    .line 48
.end method

.method public final isOverlayActive()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mOverlayEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 7
    move-result p0

    .line 10
    if-eqz p0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x0

    .line 14
    :goto_0
    return v0
    .line 15
.end method

.method public final modifyState(II)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    .line 2
    const/4 v1, 0x2

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eq p1, v2, :cond_1

    .line 6
    if-eq p1, v1, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    or-int p1, v0, p2

    .line 11
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    .line 13
    goto :goto_0

    .line 15
    :cond_1
    not-int p1, p2

    .line 16
    and-int/2addr p1, v0

    .line 17
    iput p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    .line 18
    :goto_0
    iget p1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mState:I

    .line 20
    if-eq v0, p1, :cond_2

    .line 22
    new-instance p1, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    .line 24
    invoke-direct {p1, v2}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 26
    new-instance p2, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;

    .line 29
    invoke-direct {p2, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    .line 34
    invoke-interface {p0, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 36
    :cond_2
    return-void
    .line 39
.end method

.method public final removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V
    .locals 2

    .line 2
    new-instance v0, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/dreams/DreamOverlayStateController;Ljava/lang/Object;I)V

    iget-object p0, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mExecutor:Ljava/util/concurrent/Executor;

    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final bridge synthetic removeCallback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;

    invoke-virtual {p0, p1}, Lcom/android/systemui/dreams/DreamOverlayStateController;->removeCallback(Lcom/android/systemui/dreams/DreamOverlayStateController$Callback;)V

    return-void
.end method

.method public final setLowLightActive(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x2

    .line 2
    invoke-virtual {p0, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->containsState(I)Z

    .line 3
    move-result v1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    if-nez p1, :cond_0

    .line 9
    iget-object v1, p0, Lcom/android/systemui/dreams/DreamOverlayStateController;->mCallbacks:Ljava/util/ArrayList;

    .line 11
    new-instance v2, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;

    .line 13
    const/4 v3, 0x0

    .line 15
    invoke-direct {v2, v3}, Lcom/android/systemui/dreams/DreamOverlayStateController$$ExternalSyntheticLambda0;-><init>(I)V

    .line 16
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 19
    :cond_0
    if-eqz p1, :cond_1

    .line 22
    move p1, v0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    const/4 p1, 0x1

    .line 26
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/dreams/DreamOverlayStateController;->modifyState(II)V

    .line 27
    return-void
    .line 30
.end method
