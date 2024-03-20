.class public final Lcom/android/systemui/qs/AutoAddTracker;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# static fields
.field public static final FILTER:Landroid/content/IntentFilter;


# instance fields
.field public final autoAdded:Landroid/util/ArraySet;

.field public final backgroundExecutor:Ljava/util/concurrent/Executor;

.field public final broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

.field public final contentObserver:Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;

.field public final dumpManager:Lcom/android/systemui/dump/DumpManager;

.field public final qsHost:Lcom/android/systemui/qs/QSHost;

.field public final restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

.field public restoredTiles:Ljava/util/Map;

.field public final secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public userId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/IntentFilter;

    .line 2
    const-string v1, "android.os.action.SETTING_RESTORED"

    .line 4
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/android/systemui/qs/AutoAddTracker;->FILTER:Landroid/content/IntentFilter;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/broadcast/BroadcastDispatcher;Lcom/android/systemui/qs/QSHost;Lcom/android/systemui/dump/DumpManager;Landroid/os/Handler;Ljava/util/concurrent/Executor;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/qs/AutoAddTracker;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/qs/AutoAddTracker;->dumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/qs/AutoAddTracker;->backgroundExecutor:Ljava/util/concurrent/Executor;

    .line 13
    iput p7, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 15
    new-instance p1, Landroid/util/ArraySet;

    .line 17
    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 22
    new-instance p1, Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;

    .line 24
    invoke-direct {p1, p0, p5}, Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;Landroid/os/Handler;)V

    .line 26
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->contentObserver:Lcom/android/systemui/qs/AutoAddTracker$contentObserver$1;

    .line 29
    new-instance p1, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    .line 31
    invoke-direct {p1, p0}, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;-><init>(Lcom/android/systemui/qs/AutoAddTracker;)V

    .line 33
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoreReceiver:Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;

    .line 36
    return-void
    .line 38
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    iget p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 4
    const-string v1, "Current user: "

    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 8
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 14
    move-result-object p2

    .line 17
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    new-instance p2, Ljava/lang/StringBuilder;

    .line 21
    const-string v0, "Added tiles: "

    .line 23
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 28
    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 37
    return-void
    .line 40
.end method

.method public final isAdded(Ljava/lang/String;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {p0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    .line 7
    move-result p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 10
    monitor-exit v0

    .line 11
    return p0

    .line 12
    :catchall_0
    move-exception p0

    .line 13
    monitor-exit v0

    .line 14
    throw p0
    .line 15
.end method

.method public final loadTiles()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 7
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 10
    iget v2, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 14
    check-cast p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 16
    const-string v3, "qs_auto_tiles"

    .line 18
    invoke-virtual {p0, v2, v3}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->getStringForUser(ILjava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const-string v2, ","

    .line 26
    filled-new-array {v2}, [Ljava/lang/String;

    .line 28
    move-result-object v2

    .line 31
    invoke-static {p0, v2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 32
    move-result-object p0

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    sget-object p0, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 37
    :goto_0
    invoke-virtual {v1, p0}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    monitor-exit v0

    .line 42
    return-void

    .line 43
    :catchall_0
    move-exception p0

    .line 44
    monitor-exit v0

    .line 45
    throw p0
    .line 46
.end method

.method public final saveTiles(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 4
    check-cast p0, Lcom/android/systemui/util/settings/SecureSettingsImpl;

    .line 6
    const-string v1, "qs_auto_tiles"

    .line 8
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v0, v1, p1, v2}, Lcom/android/systemui/util/settings/SecureSettingsImpl;->putStringForUser(ILjava/lang/String;Ljava/lang/String;Z)Z

    .line 11
    return-void
    .line 14
.end method

.method public final setTileAdded(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 5
    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    const-string p1, ","

    .line 13
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 15
    invoke-static {p1, v1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 17
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 p1, 0x0

    .line 22
    :goto_0
    monitor-exit v0

    .line 23
    if-eqz p1, :cond_1

    .line 24
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles(Ljava/lang/String;)V

    .line 26
    :cond_1
    return-void

    .line 29
    :catchall_0
    move-exception p0

    .line 30
    monitor-exit v0

    .line 31
    throw p0
    .line 32
.end method
