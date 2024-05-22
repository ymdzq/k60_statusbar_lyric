.class public final Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;


# instance fields
.field public final logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

.field public final mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

.field public final mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

.field public final mediaListeners:Ljava/util/Map;

.field public final recommendationListeners:Ljava/util/Map;

.field public sessionCallback:Lkotlin/jvm/functions/Function1;

.field public stateCallback:Lkotlin/jvm/functions/Function2;

.field public final systemClock:Lcom/android/systemui/util/time/SystemClock;

.field public timeoutCallback:Lkotlin/jvm/functions/Function2;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/util/MediaControllerFactory;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;Lcom/android/systemui/statusbar/SysuiStatusBarStateController;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/media/controls/util/MediaFlags;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 9
    iput-object p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 11
    iput-object p6, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 20
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 22
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->recommendationListeners:Ljava/util/Map;

    .line 27
    new-instance p1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$1;

    .line 29
    invoke-direct {p1, p0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;)V

    .line 31
    check-cast p4, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;

    .line 34
    invoke-virtual {p4, p1}, Lcom/android/systemui/statusbar/StatusBarStateControllerImpl;->addCallback(Lcom/android/systemui/plugins/statusbar/StatusBarStateController$StateListener;)V

    .line 36
    return-void
    .line 39
.end method


# virtual methods
.method public final onMediaDataLoaded(Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZ)V
    .locals 6

    .line 1
    iget-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 2
    move-object p5, p4

    .line 4
    check-cast p5, Ljava/util/LinkedHashMap;

    .line 5
    invoke-virtual {p5, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p5

    .line 10
    check-cast p5, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 11
    const-string p6, "MediaTimeout"

    .line 13
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 15
    const/4 v1, 0x0

    .line 17
    if-eqz p5, :cond_1

    .line 18
    iget-boolean v2, p5, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    .line 20
    if-nez v2, :cond_0

    .line 22
    return-void

    .line 24
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 28
    sget-object v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logReuseListener$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logReuseListener$2;

    .line 30
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 32
    invoke-virtual {v4, p6, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 34
    move-result-object v2

    .line 37
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 38
    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_1
    move-object p5, v1

    .line 45
    :goto_0
    const/4 v2, 0x1

    .line 46
    const/4 v3, 0x0

    .line 47
    if-eqz p2, :cond_2

    .line 48
    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 54
    move v4, v2

    .line 56
    goto :goto_1

    .line 57
    :cond_2
    move v4, v3

    .line 58
    :goto_1
    if-eqz v4, :cond_4

    .line 59
    invoke-static {p4}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 61
    move-result-object p5

    .line 64
    invoke-interface {p5, p2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object p5

    .line 68
    if-eqz p5, :cond_3

    .line 69
    goto :goto_2

    .line 71
    :cond_3
    move v2, v3

    .line 72
    :goto_2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 73
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 76
    sget-object v4, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logMigrateListener$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logMigrateListener$2;

    .line 78
    iget-object v5, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 80
    invoke-virtual {v5, p6, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 82
    move-result-object v3

    .line 85
    invoke-interface {v3, p2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 86
    invoke-interface {v3, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 89
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 92
    invoke-virtual {v5, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 95
    :cond_4
    check-cast p5, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 98
    if-eqz p5, :cond_6

    .line 100
    invoke-virtual {p5}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 102
    move-result p2

    .line 105
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 106
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 109
    sget-object v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logUpdateListener$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logUpdateListener$2;

    .line 111
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 113
    invoke-virtual {v0, p6, v2, v3, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 115
    move-result-object p6

    .line 118
    invoke-interface {p6, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 119
    invoke-interface {p6, p2}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 122
    invoke-virtual {v0, p6}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 125
    invoke-virtual {p5, p3}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 128
    iput-object p1, p5, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 131
    invoke-interface {p4, p1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-virtual {p5}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 136
    move-result p3

    .line 139
    if-eq p2, p3, :cond_5

    .line 140
    new-instance p2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;

    .line 142
    invoke-direct {p2, p0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$onMediaDataLoaded$2$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Ljava/lang/String;)V

    .line 144
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 147
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 149
    invoke-virtual {p0, p2}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 151
    :cond_5
    return-void

    .line 154
    :cond_6
    new-instance p2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 155
    invoke-direct {p2, p0, p1, p3}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 157
    invoke-interface {p4, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 160
    return-void
    .line 163
.end method

.method public final onMediaDataRemoved(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaListeners:Ljava/util/Map;

    .line 2
    invoke-interface {p0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;

    .line 8
    if-eqz p0, :cond_2

    .line 10
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 16
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 19
    if-eqz p1, :cond_1

    .line 21
    invoke-virtual {p1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 23
    :cond_1
    const/4 p1, 0x1

    .line 26
    iput-boolean p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    .line 27
    :cond_2
    return-void
    .line 29
.end method

.method public final onSmartspaceMediaDataLoaded(Ljava/lang/String;Lcom/android/systemui/media/controls/models/recommendation/SmartspaceMediaData;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 4
    return-void
    .line 7
.end method

.method public final onSmartspaceMediaDataRemoved(Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaFlags:Lcom/android/systemui/media/controls/util/MediaFlags;

    .line 2
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/util/MediaFlags;->isPersistentSsCardEnabled()V

    .line 4
    return-void
    .line 7
.end method
