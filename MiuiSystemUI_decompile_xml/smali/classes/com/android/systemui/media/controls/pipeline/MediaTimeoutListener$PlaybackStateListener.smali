.class public final Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

.field public destroyed:Z

.field public expiration:J

.field public key:Ljava/lang/String;

.field public lastState:Landroid/media/session/PlaybackState;

.field public mediaController:Landroid/media/session/MediaController;

.field public resumption:Ljava/lang/Boolean;

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

.field public timedOut:Z


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 7
    const-wide p1, 0x7fffffffffffffffL

    .line 9
    iput-wide p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    .line 14
    invoke-virtual {p0, p3}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->setMediaData(Lcom/android/systemui/media/controls/models/player/MediaData;)V

    .line 16
    return-void
    .line 19
.end method


# virtual methods
.method public final doTimeout()V
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 5
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 7
    iget-object v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 9
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 14
    sget-object v4, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeout$2;

    .line 16
    const-string v5, "MediaTimeout"

    .line 18
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 20
    invoke-virtual {v1, v5, v3, v4, v0}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 22
    move-result-object v3

    .line 25
    invoke-interface {v3, v2}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 29
    const/4 v1, 0x1

    .line 32
    iput-boolean v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    .line 33
    const-wide v2, 0x7fffffffffffffffL

    .line 35
    iput-wide v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    .line 40
    iget-object v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 42
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    .line 44
    if-eqz v2, :cond_0

    .line 46
    move-object v0, v2

    .line 48
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 49
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 51
    move-result-object v1

    .line 54
    invoke-interface {v0, p0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    return-void
    .line 58
.end method

.method public final expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    iget-object v2, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 7
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 9
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    sget-object v3, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 14
    sget-object v4, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logTimeoutCancelled$2;

    .line 16
    const-string v5, "MediaTimeout"

    .line 18
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 20
    invoke-virtual {v2, v5, v3, v4, v1}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 22
    move-result-object v3

    .line 25
    invoke-interface {v3, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 26
    invoke-interface {v3, p2}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 32
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 35
    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    .line 38
    iput-wide p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    .line 43
    iput-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 45
    return-void
    .line 47
.end method

.method public final isPlaying$1()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/media/session/PlaybackState;->getState()I

    .line 6
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 10
    move-result p0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    :goto_0
    return p0
    .line 16
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 3
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V

    .line 5
    return-void
    .line 8
.end method

.method public final onSessionDestroyed()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 4
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 11
    sget-object v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logSessionDestroyed$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logSessionDestroyed$2;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 15
    const-string v4, "MediaTimeout"

    .line 17
    const/4 v5, 0x0

    .line 19
    invoke-virtual {v0, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 20
    move-result-object v2

    .line 23
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v0, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 27
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 30
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 32
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 34
    move-result v0

    .line 37
    if-eqz v0, :cond_0

    .line 38
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 40
    if-eqz v0, :cond_4

    .line 42
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 48
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->sessionCallback:Lkotlin/jvm/functions/Function1;

    .line 50
    if-eqz v0, :cond_1

    .line 52
    move-object v5, v0

    .line 54
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 55
    invoke-interface {v5, v0}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 60
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 64
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 67
    if-eqz v0, :cond_3

    .line 69
    invoke-virtual {v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 71
    :cond_3
    const/4 v0, 0x1

    .line 74
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    .line 75
    :cond_4
    :goto_0
    return-void
    .line 77
.end method

.method public final processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    move-object/from16 v2, p3

    .line 6
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 8
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 10
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 12
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    sget-object v5, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 17
    sget-object v6, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logPlaybackState$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logPlaybackState$2;

    .line 19
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 21
    const-string v7, "MediaTimeout"

    .line 23
    const/4 v8, 0x0

    .line 25
    invoke-virtual {v3, v7, v5, v6, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 26
    move-result-object v5

    .line 29
    invoke-interface {v5, v4}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 30
    if-eqz v1, :cond_0

    .line 33
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->toString()Ljava/lang/String;

    .line 35
    move-result-object v4

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    move-object v4, v8

    .line 40
    :goto_0
    invoke-interface {v5, v4}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v3, v5}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 44
    const/4 v4, 0x1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getState()I

    .line 50
    move-result v5

    .line 53
    invoke-static {v5}, Lcom/android/systemui/statusbar/NotificationMediaManager;->isPlayingState(I)Z

    .line 54
    move-result v5

    .line 57
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 58
    move-result v6

    .line 61
    if-ne v5, v6, :cond_1

    .line 62
    move v5, v4

    .line 64
    goto :goto_1

    .line 65
    :cond_1
    const/4 v5, 0x0

    .line 66
    :goto_1
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    .line 67
    if-eqz v6, :cond_2

    .line 69
    invoke-virtual {v6}, Landroid/media/session/PlaybackState;->getActions()J

    .line 71
    move-result-wide v9

    .line 74
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 75
    move-result-object v6

    .line 78
    goto :goto_2

    .line 79
    :cond_2
    move-object v6, v8

    .line 80
    :goto_2
    if-eqz v1, :cond_3

    .line 81
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getActions()J

    .line 83
    move-result-wide v9

    .line 86
    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 87
    move-result-object v9

    .line 90
    goto :goto_3

    .line 91
    :cond_3
    move-object v9, v8

    .line 92
    :goto_3
    invoke-static {v6, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 93
    move-result v6

    .line 96
    if-eqz v6, :cond_13

    .line 97
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 99
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    .line 101
    if-eqz v9, :cond_4

    .line 103
    invoke-virtual {v9}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    .line 105
    move-result-object v9

    .line 108
    goto :goto_4

    .line 109
    :cond_4
    move-object v9, v8

    .line 110
    :goto_4
    if-eqz v1, :cond_5

    .line 111
    invoke-virtual/range {p1 .. p1}, Landroid/media/session/PlaybackState;->getCustomActions()Ljava/util/List;

    .line 113
    move-result-object v10

    .line 116
    goto :goto_5

    .line 117
    :cond_5
    move-object v10, v8

    .line 118
    :goto_5
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 119
    if-ne v9, v10, :cond_6

    .line 122
    goto/16 :goto_b

    .line 124
    :cond_6
    if-eqz v9, :cond_12

    .line 126
    if-eqz v10, :cond_12

    .line 128
    invoke-interface {v9}, Ljava/util/List;->size()I

    .line 130
    move-result v6

    .line 133
    invoke-interface {v10}, Ljava/util/List;->size()I

    .line 134
    move-result v11

    .line 137
    if-eq v6, v11, :cond_7

    .line 138
    goto/16 :goto_c

    .line 140
    :cond_7
    new-instance v6, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 142
    invoke-direct {v6, v9}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 144
    new-instance v9, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 147
    invoke-direct {v9, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 149
    invoke-static {v6, v9}, Lkotlin/sequences/SequencesKt;->zip(Lkotlin/sequences/Sequence;Lkotlin/sequences/Sequence;)Lkotlin/sequences/MergingSequence;

    .line 152
    move-result-object v6

    .line 155
    iget-object v9, v6, Lkotlin/sequences/MergingSequence;->sequence1:Lkotlin/sequences/Sequence;

    .line 156
    invoke-interface {v9}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 158
    move-result-object v9

    .line 161
    iget-object v10, v6, Lkotlin/sequences/MergingSequence;->sequence2:Lkotlin/sequences/Sequence;

    .line 162
    invoke-interface {v10}, Lkotlin/sequences/Sequence;->iterator()Ljava/util/Iterator;

    .line 164
    move-result-object v10

    .line 167
    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 168
    move-result v11

    .line 171
    if-eqz v11, :cond_9

    .line 172
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 174
    move-result v11

    .line 177
    if-eqz v11, :cond_9

    .line 178
    move v11, v4

    .line 180
    goto :goto_6

    .line 181
    :cond_9
    const/4 v11, 0x0

    .line 182
    :goto_6
    if-eqz v11, :cond_11

    .line 183
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 185
    move-result-object v11

    .line 188
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 189
    move-result-object v12

    .line 192
    iget-object v13, v6, Lkotlin/sequences/MergingSequence;->transform:Lkotlin/jvm/functions/Function2;

    .line 193
    invoke-interface {v13, v11, v12}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    move-result-object v11

    .line 198
    check-cast v11, Lkotlin/Pair;

    .line 199
    invoke-virtual {v11}, Lkotlin/Pair;->component1()Ljava/lang/Object;

    .line 201
    move-result-object v12

    .line 204
    check-cast v12, Landroid/media/session/PlaybackState$CustomAction;

    .line 205
    invoke-virtual {v11}, Lkotlin/Pair;->component2()Ljava/lang/Object;

    .line 207
    move-result-object v11

    .line 210
    check-cast v11, Landroid/media/session/PlaybackState$CustomAction;

    .line 211
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    .line 213
    move-result-object v13

    .line 216
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getAction()Ljava/lang/String;

    .line 217
    move-result-object v14

    .line 220
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 221
    move-result v13

    .line 224
    if-eqz v13, :cond_10

    .line 225
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    .line 227
    move-result-object v13

    .line 230
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getName()Ljava/lang/CharSequence;

    .line 231
    move-result-object v14

    .line 234
    invoke-static {v13, v14}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 235
    move-result v13

    .line 238
    if-eqz v13, :cond_10

    .line 239
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    .line 241
    move-result v13

    .line 244
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getIcon()I

    .line 245
    move-result v14

    .line 248
    if-eq v13, v14, :cond_a

    .line 249
    goto :goto_9

    .line 251
    :cond_a
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 252
    move-result-object v13

    .line 255
    if-nez v13, :cond_b

    .line 256
    move v13, v4

    .line 258
    goto :goto_7

    .line 259
    :cond_b
    const/4 v13, 0x0

    .line 260
    :goto_7
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 261
    move-result-object v14

    .line 264
    if-nez v14, :cond_c

    .line 265
    move v14, v4

    .line 267
    goto :goto_8

    .line 268
    :cond_c
    const/4 v14, 0x0

    .line 269
    :goto_8
    if-eq v13, v14, :cond_d

    .line 270
    goto :goto_9

    .line 272
    :cond_d
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 273
    move-result-object v13

    .line 276
    if-eqz v13, :cond_f

    .line 277
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 279
    move-result-object v13

    .line 282
    invoke-virtual {v13}, Landroid/os/Bundle;->keySet()Ljava/util/Set;

    .line 283
    move-result-object v13

    .line 286
    invoke-interface {v13}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 287
    move-result-object v13

    .line 290
    :cond_e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    .line 291
    move-result v14

    .line 294
    if-eqz v14, :cond_f

    .line 295
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 297
    move-result-object v14

    .line 300
    check-cast v14, Ljava/lang/String;

    .line 301
    invoke-virtual {v12}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 303
    move-result-object v15

    .line 306
    invoke-virtual {v15, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 307
    move-result-object v15

    .line 310
    invoke-virtual {v11}, Landroid/media/session/PlaybackState$CustomAction;->getExtras()Landroid/os/Bundle;

    .line 311
    move-result-object v3

    .line 314
    invoke-virtual {v3, v14}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 315
    move-result-object v3

    .line 318
    invoke-static {v15, v3}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 319
    move-result v3

    .line 322
    if-nez v3, :cond_e

    .line 323
    goto :goto_9

    .line 325
    :cond_f
    move v3, v4

    .line 326
    goto :goto_a

    .line 327
    :cond_10
    :goto_9
    const/4 v3, 0x0

    .line 328
    :goto_a
    if-nez v3, :cond_8

    .line 329
    goto :goto_c

    .line 331
    :cond_11
    :goto_b
    move v3, v4

    .line 332
    goto :goto_d

    .line 333
    :cond_12
    :goto_c
    const/4 v3, 0x0

    .line 334
    :goto_d
    if-eqz v3, :cond_13

    .line 335
    move v3, v4

    .line 337
    goto :goto_e

    .line 338
    :cond_13
    const/4 v3, 0x0

    .line 339
    :goto_e
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 340
    invoke-static {v6, v2}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 342
    move-result v6

    .line 345
    xor-int/2addr v4, v6

    .line 346
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->lastState:Landroid/media/session/PlaybackState;

    .line 347
    if-eqz v3, :cond_14

    .line 349
    if-nez v5, :cond_16

    .line 351
    :cond_14
    if-eqz v1, :cond_16

    .line 353
    if-eqz p2, :cond_16

    .line 355
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 357
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 359
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 361
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 363
    sget-object v9, Lcom/android/systemui/log/LogLevel;->VERBOSE:Lcom/android/systemui/log/LogLevel;

    .line 366
    new-instance v10, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logStateCallback$2;

    .line 368
    invoke-direct {v10, v6}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logStateCallback$2;-><init>(Ljava/lang/String;)V

    .line 370
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 373
    invoke-virtual {v3, v7, v9, v10, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 375
    move-result-object v9

    .line 378
    invoke-interface {v9, v6}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 379
    invoke-virtual {v3, v9}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 382
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 385
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->stateCallback:Lkotlin/jvm/functions/Function2;

    .line 387
    if-eqz v3, :cond_15

    .line 389
    goto :goto_f

    .line 391
    :cond_15
    move-object v3, v8

    .line 392
    :goto_f
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 393
    invoke-interface {v3, v6, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 395
    :cond_16
    if-eqz v5, :cond_17

    .line 398
    if-nez v4, :cond_17

    .line 400
    return-void

    .line 402
    :cond_17
    iput-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->isPlaying$1()Z

    .line 405
    move-result v3

    .line 408
    const-string v5, ", "

    .line 409
    if-nez v3, :cond_1a

    .line 411
    iget-object v6, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 413
    iget-object v6, v6, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 415
    iget-object v9, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 417
    iget-object v10, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 419
    invoke-static {v10}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 421
    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    .line 424
    move-result v10

    .line 427
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 428
    sget-object v11, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 431
    sget-object v12, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logScheduleTimeout$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logScheduleTimeout$2;

    .line 433
    iget-object v6, v6, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 435
    invoke-virtual {v6, v7, v11, v12, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 437
    move-result-object v12

    .line 440
    invoke-interface {v12, v9}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 441
    invoke-interface {v12, v3}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 444
    invoke-interface {v12, v10}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 447
    invoke-virtual {v6, v12}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 450
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 453
    if-eqz v3, :cond_18

    .line 455
    if-nez v4, :cond_18

    .line 457
    iget-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 459
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->logger:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;

    .line 461
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 463
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 465
    sget-object v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logCancelIgnored$2;->INSTANCE:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger$logCancelIgnored$2;

    .line 468
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 470
    invoke-virtual {v1, v7, v11, v2, v8}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 472
    move-result-object v2

    .line 475
    invoke-interface {v2, v0}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 476
    invoke-virtual {v1, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 479
    return-void

    .line 482
    :cond_18
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 483
    iget-object v4, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->resumption:Ljava/lang/Boolean;

    .line 485
    new-instance v6, Ljava/lang/StringBuilder;

    .line 487
    const-string v7, "PLAYBACK STATE CHANGED - "

    .line 489
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 491
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 494
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 497
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 500
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 503
    move-result-object v1

    .line 506
    invoke-virtual {v0, v3, v1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 507
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 510
    invoke-static {v2, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 512
    move-result v1

    .line 515
    if-eqz v1, :cond_19

    .line 516
    sget-wide v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListenerKt;->RESUME_MEDIA_TIMEOUT:J

    .line 518
    goto :goto_10

    .line 520
    :cond_19
    sget-wide v1, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListenerKt;->PAUSED_MEDIA_TIMEOUT:J

    .line 521
    :goto_10
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 523
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 525
    check-cast v3, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 527
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 529
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 532
    move-result-wide v3

    .line 535
    add-long/2addr v3, v1

    .line 536
    iput-wide v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expiration:J

    .line 537
    iget-object v3, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 539
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 541
    new-instance v4, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener$processState$1;

    .line 543
    const/4 v5, 0x0

    .line 545
    invoke-direct {v4, v5, v0}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener$processState$1;-><init>(ILjava/lang/Object;)V

    .line 546
    invoke-interface {v3, v4, v1, v2}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 549
    move-result-object v1

    .line 552
    iput-object v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->cancellation:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 553
    goto :goto_11

    .line 555
    :cond_1a
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 556
    new-instance v3, Ljava/lang/StringBuilder;

    .line 558
    const-string v4, "playback started - "

    .line 560
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 562
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 565
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 568
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 571
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 574
    move-result-object v1

    .line 577
    invoke-virtual {v0, v2, v1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->expireMediaTimeout(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v1, 0x0

    .line 581
    iput-boolean v1, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->timedOut:Z

    .line 582
    if-eqz p2, :cond_1c

    .line 584
    iget-object v2, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 586
    iget-object v2, v2, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->timeoutCallback:Lkotlin/jvm/functions/Function2;

    .line 588
    if-eqz v2, :cond_1b

    .line 590
    move-object v8, v2

    .line 592
    :cond_1b
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->key:Ljava/lang/String;

    .line 593
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 595
    move-result-object v1

    .line 598
    invoke-interface {v8, v0, v1}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    :cond_1c
    :goto_11
    return-void
    .line 602
.end method

.method public final setMediaData(Lcom/android/systemui/media/controls/models/player/MediaData;)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->destroyed:Z

    .line 3
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1, p0}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 9
    :cond_0
    iget-object v1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 12
    const/4 v2, 0x0

    .line 14
    if-eqz v1, :cond_1

    .line 15
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;

    .line 17
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener;->mediaControllerFactory:Lcom/android/systemui/media/controls/util/MediaControllerFactory;

    .line 19
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    new-instance v4, Landroid/media/session/MediaController;

    .line 24
    iget-object v3, v3, Lcom/android/systemui/media/controls/util/MediaControllerFactory;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {v4, v3, v1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_1
    move-object v4, v2

    .line 32
    :goto_0
    iput-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 33
    if-eqz v4, :cond_2

    .line 35
    invoke-virtual {v4, p0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;)V

    .line 37
    :cond_2
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->mediaController:Landroid/media/session/MediaController;

    .line 40
    if-eqz v1, :cond_3

    .line 42
    invoke-virtual {v1}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 44
    move-result-object v2

    .line 47
    :cond_3
    iget-boolean p1, p1, Lcom/android/systemui/media/controls/models/player/MediaData;->resumption:Z

    .line 48
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 50
    move-result-object p1

    .line 53
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/systemui/media/controls/pipeline/MediaTimeoutListener$PlaybackStateListener;->processState(Landroid/media/session/PlaybackState;ZLjava/lang/Boolean;)V

    .line 54
    return-void
    .line 57
.end method
