.class public final Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final foregroundExecutor:Ljava/util/concurrent/Executor;

.field public final keyedTokens:Ljava/util/Map;

.field public final listeners:Ljava/util/Set;

.field public final packageControllers:Ljava/util/LinkedHashMap;

.field public final sessionListener:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;

.field public final sessionManager:Landroid/media/session/MediaSessionManager;

.field public final tokensWithNotifications:Ljava/util/Set;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/media/session/MediaSessionManager;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->sessionManager:Landroid/media/session/MediaSessionManager;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    .line 7
    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 9
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 11
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 13
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    .line 16
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 18
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 20
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    .line 23
    new-instance p2, Ljava/util/LinkedHashMap;

    .line 25
    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 27
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 30
    new-instance p2, Ljava/util/LinkedHashSet;

    .line 32
    invoke-direct {p2}, Ljava/util/LinkedHashSet;-><init>()V

    .line 34
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 37
    new-instance p2, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;

    .line 39
    invoke-direct {p2, p0}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;)V

    .line 41
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->sessionListener:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$sessionListener$1;

    .line 44
    new-instance p2, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;

    .line 46
    invoke-direct {p2, p1, p0}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;-><init>(Landroid/content/Context;Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;)V

    .line 48
    invoke-interface {p4, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 51
    return-void
    .line 54
.end method

.method public static final access$handleControllersChanged(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    .line 2
    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->clear()V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v1

    .line 10
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v2

    .line 14
    if-eqz v2, :cond_1

    .line 15
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Landroid/media/session/MediaController;

    .line 21
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v0, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v3

    .line 30
    check-cast v3, Ljava/util/List;

    .line 31
    if-eqz v3, :cond_0

    .line 33
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 35
    goto :goto_0

    .line 38
    :cond_0
    filled-new-array {v2}, [Landroid/media/session/MediaController;

    .line 39
    move-result-object v3

    .line 42
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->mutableListOf([Ljava/lang/Object;)Ljava/util/List;

    .line 43
    move-result-object v3

    .line 46
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {v0, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v2

    .line 54
    check-cast v2, Ljava/util/List;

    .line 55
    goto :goto_0

    .line 57
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/ArrayList;

    .line 60
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 62
    move-result v1

    .line 65
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 66
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 69
    move-result-object p1

    .line 72
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v1

    .line 76
    if-eqz v1, :cond_2

    .line 77
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 79
    move-result-object v1

    .line 82
    check-cast v1, Landroid/media/session/MediaController;

    .line 83
    new-instance v2, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 85
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 87
    move-result-object v1

    .line 90
    invoke-direct {v2, v1}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 91
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_1

    .line 97
    :cond_2
    invoke-interface {p0, v0}, Ljava/util/Set;->retainAll(Ljava/util/Collection;)Z

    .line 98
    return-void
    .line 101
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 6

    .line 1
    new-instance p5, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;

    .line 2
    move-object v0, p5

    .line 4
    move-object v1, p3

    .line 5
    move-object v2, p2

    .line 6
    move-object v3, p1

    .line 7
    move-object v4, p0

    .line 8
    move v5, p4

    .line 9
    invoke-direct/range {v0 .. v5}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Z)V

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 13
    invoke-interface {p0, p5}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 15
    return-void
    .line 18
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;

    .line 2
    const/4 v1, 0x2

    .line 4
    invoke-direct {v0, p0, p1, v1}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 1

    .line 1
    new-instance p3, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;

    .line 2
    const/4 v0, 0x0

    .line 4
    invoke-direct {p3, p0, p1, p2, v0}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;I)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, p3}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 2

    .line 1
    new-instance v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, p0, p1, p2, v1}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onSmartspaceMediaDataRemoved$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;ZI)V

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 8
    invoke-interface {p0, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 10
    return-void
    .line 13
.end method
