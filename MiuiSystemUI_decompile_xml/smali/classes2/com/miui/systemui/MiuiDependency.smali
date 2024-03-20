.class public final Lcom/miui/systemui/MiuiDependency;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static sDependency:Lcom/miui/systemui/MiuiDependency;


# instance fields
.field public final mDependencies:Landroid/util/ArrayMap;

.field public mEventTracker:Ldagger/Lazy;

.field public mHapticFeedBack:Ldagger/Lazy;

.field public mMiuiTopActivityObserver:Ldagger/Lazy;

.field public mPanelExpansionObserver:Ldagger/Lazy;

.field public final mProviders:Landroid/util/ArrayMap;

.field public mSettingsObserver:Ldagger/Lazy;

.field public mUiOffloadThread:Ldagger/Lazy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/systemui/MiuiDependency;->mDependencies:Landroid/util/ArrayMap;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/systemui/MiuiDependency;->mProviders:Landroid/util/ArrayMap;

    .line 17
    return-void
    .line 19
.end method

.method public static get(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/systemui/MiuiDependency;->sDependency:Lcom/miui/systemui/MiuiDependency;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, v0, Lcom/miui/systemui/MiuiDependency;->mDependencies:Landroid/util/ArrayMap;

    .line 5
    invoke-virtual {v1, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    if-nez v1, :cond_0

    .line 11
    invoke-virtual {v0, p0}, Lcom/miui/systemui/MiuiDependency;->createDependency(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    iget-object v2, v0, Lcom/miui/systemui/MiuiDependency;->mDependencies:Landroid/util/ArrayMap;

    .line 17
    invoke-virtual {v2, p0, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 19
    :cond_0
    monitor-exit v0

    .line 22
    return-object v1

    .line 23
    :catchall_0
    move-exception p0

    .line 24
    monitor-exit v0

    .line 25
    throw p0
    .line 26
.end method


# virtual methods
.method public final createDependency(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    instance-of v0, p1, Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 4
    iget-object p0, p0, Lcom/miui/systemui/MiuiDependency;->mProviders:Landroid/util/ArrayMap;

    .line 7
    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    move-result-object v0

    .line 12
    check-cast v0, Lcom/miui/systemui/MiuiDependency$MiuiLazyDependencyCreator;

    .line 13
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {v0}, Lcom/miui/systemui/MiuiDependency$MiuiLazyDependencyCreator;->createDependency()Ljava/lang/Object;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    const-string v1, "Unsupported dependency "

    .line 24
    const-string v2, ". "

    .line 26
    invoke-static {v1, p1, v2}, Landroidx/fragment/app/DefaultSpecialEffectsController$TransitionInfo$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 28
    move-result-object p1

    .line 31
    invoke-virtual {p0}, Landroid/util/ArrayMap;->size()I

    .line 32
    move-result p0

    .line 35
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 36
    const-string p0, " providers known."

    .line 39
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 44
    move-result-object p0

    .line 47
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 48
    throw v0
    .line 51
.end method
