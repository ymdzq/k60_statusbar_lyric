.class public final Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final mBatches:Ljava/util/Map;

.field public final mClock:Lcom/android/systemui/util/time/SystemClock;

.field public final mCoalescedEvents:Ljava/util/Map;

.field public final mEventComparator:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;

.field public mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

.field public final mListener:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

.field public final mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

.field public final mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final mMaxGroupLingerDuration:J

.field public final mMinGroupLingerDuration:J


# direct methods
.method public static -$$Nest$mapplyRanking(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/NotificationListenerService$RankingMap;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 10
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    move-result v1

    .line 17
    if-eqz v1, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 24
    new-instance v2, Landroid/service/notification/NotificationListenerService$Ranking;

    .line 26
    invoke-direct {v2}, Landroid/service/notification/NotificationListenerService$Ranking;-><init>()V

    .line 28
    iget-object v3, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    .line 31
    invoke-virtual {p1, v3, v2}, Landroid/service/notification/NotificationListenerService$RankingMap;->getRanking(Ljava/lang/String;Landroid/service/notification/NotificationListenerService$Ranking;)Z

    .line 33
    move-result v3

    .line 36
    if-eqz v3, :cond_0

    .line 37
    iput-object v2, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->ranking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    .line 42
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    sget-object v3, Lcom/android/systemui/log/LogLevel;->WARNING:Lcom/android/systemui/log/LogLevel;

    .line 47
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logMissingRanking$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logMissingRanking$2;

    .line 49
    const/4 v5, 0x0

    .line 51
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 52
    const-string v6, "GroupCoalescer"

    .line 54
    invoke-virtual {v2, v6, v3, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 56
    move-result-object v3

    .line 59
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    .line 60
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 62
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 65
    goto :goto_0

    .line 68
    :cond_1
    return-void
    .line 69
.end method

.method public static -$$Nest$mmaybeEmitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;Landroid/service/notification/StatusBarNotification;)V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 2
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 4
    move-result-object v1

    .line 7
    check-cast v0, Landroid/util/ArrayMap;

    .line 8
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 14
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    .line 16
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 18
    move-result-object v2

    .line 21
    check-cast v1, Landroid/util/ArrayMap;

    .line 22
    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 28
    const-string v2, "GroupCoalescer"

    .line 30
    const/4 v3, 0x0

    .line 32
    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 37
    move-result-object p1

    .line 40
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->batch:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 41
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    sget-object v5, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 49
    sget-object v6, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEarlyEmit$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEarlyEmit$2;

    .line 51
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 53
    invoke-virtual {v4, v2, v5, v6, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 55
    move-result-object v2

    .line 58
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 59
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    .line 62
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 64
    invoke-virtual {v4, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 67
    iget-object p1, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->batch:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 70
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_0
    if-eqz v1, :cond_1

    .line 79
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 81
    check-cast v0, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 83
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 85
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 88
    move-result-wide v5

    .line 91
    iget-wide v7, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    .line 92
    sub-long/2addr v5, v7

    .line 94
    iget-wide v7, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMaxGroupLingerDuration:J

    .line 95
    cmp-long v0, v5, v7

    .line 97
    if-ltz v0, :cond_1

    .line 99
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    .line 101
    move-result-object p1

    .line 104
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 105
    sget-object v0, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 108
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logMaxBatchTimeout$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logMaxBatchTimeout$2;

    .line 110
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 112
    invoke-virtual {v4, v2, v0, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 114
    move-result-object v0

    .line 117
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 118
    iget-object p1, v1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    .line 121
    invoke-interface {v0, p1}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 123
    invoke-virtual {v4, v0}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 126
    invoke-virtual {p0, v1}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V

    .line 129
    :cond_1
    :goto_0
    return-void
    .line 132
.end method

.method public constructor <init>(Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/util/time/SystemClock;Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;-><init>(Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mListener:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$1;

    .line 24
    new-instance v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;

    .line 26
    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mEventComparator:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;

    .line 31
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 33
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 35
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    .line 37
    const-wide/16 p1, 0xc8

    .line 39
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMinGroupLingerDuration:J

    .line 41
    const-wide/16 p1, 0x1f4

    .line 43
    iput-wide p1, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mMaxGroupLingerDuration:J

    .line 45
    return-void
    .line 47
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 2
    check-cast p2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 9
    move-result-wide v0

    .line 12
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 13
    const-string p2, "Coalesced notifications:"

    .line 16
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 18
    iget-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    .line 21
    check-cast p2, Landroid/util/ArrayMap;

    .line 23
    invoke-virtual {p2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 25
    move-result-object p2

    .line 28
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 29
    move-result-object p2

    .line 32
    const/4 v2, 0x0

    .line 33
    :cond_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 34
    move-result v3

    .line 37
    if-eqz v3, :cond_1

    .line 38
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 40
    move-result-object v3

    .line 43
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 44
    new-instance v4, Ljava/lang/StringBuilder;

    .line 46
    const-string v5, "   Batch "

    .line 48
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 50
    iget-object v5, v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    .line 53
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    const-string v5, ":"

    .line 58
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 67
    new-instance v4, Ljava/lang/StringBuilder;

    .line 70
    const-string v5, "       Created "

    .line 72
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 74
    iget-wide v5, v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    .line 77
    sub-long v5, v0, v5

    .line 79
    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 81
    const-string v5, "ms ago"

    .line 84
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 89
    move-result-object v4

    .line 92
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 93
    iget-object v3, v3, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    .line 96
    check-cast v3, Ljava/util/ArrayList;

    .line 98
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 100
    move-result-object v3

    .line 103
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 104
    move-result v4

    .line 107
    if-eqz v4, :cond_0

    .line 108
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 110
    move-result-object v4

    .line 113
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 114
    new-instance v5, Ljava/lang/StringBuilder;

    .line 116
    const-string v6, "       "

    .line 118
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    .line 123
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v4

    .line 131
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 132
    add-int/lit8 v2, v2, 0x1

    .line 135
    goto :goto_0

    .line 137
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 138
    move-object p2, p0

    .line 140
    check-cast p2, Landroid/util/ArrayMap;

    .line 141
    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    .line 143
    move-result p2

    .line 146
    if-eq v2, p2, :cond_2

    .line 147
    new-instance p2, Ljava/lang/StringBuilder;

    .line 149
    const-string v0, "    ERROR: batches contain "

    .line 151
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    move-object v0, p0

    .line 156
    check-cast v0, Landroid/util/ArrayMap;

    .line 157
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 159
    move-result v0

    .line 162
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string v0, " events but am tracking "

    .line 166
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    move-object v0, p0

    .line 171
    check-cast v0, Landroid/util/ArrayMap;

    .line 172
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    .line 174
    move-result v0

    .line 177
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 178
    const-string v0, " total events"

    .line 181
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 186
    move-result-object p2

    .line 189
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 190
    const-string p2, "    All tracked events:"

    .line 193
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 195
    check-cast p0, Landroid/util/ArrayMap;

    .line 198
    invoke-virtual {p0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    .line 200
    move-result-object p0

    .line 203
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 204
    move-result-object p0

    .line 207
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result p2

    .line 211
    if-eqz p2, :cond_2

    .line 212
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object p2

    .line 217
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 218
    new-instance v0, Ljava/lang/StringBuilder;

    .line 220
    const-string v1, "        "

    .line 222
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 224
    iget-object p2, p2, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    .line 227
    invoke-static {v0, p2, p1}, Lcom/android/systemui/keyboard/KeyboardUI$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/io/PrintWriter;)V

    .line 229
    goto :goto_1

    .line 232
    :cond_2
    return-void
    .line 233
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 1

    .line 1
    const-string v0, "handler"

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 4
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public final emitBatch(Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mBatches:Ljava/util/Map;

    .line 2
    check-cast v0, Landroid/util/ArrayMap;

    .line 4
    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mGroupKey:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v2

    .line 11
    if-ne p1, v2, :cond_4

    .line 12
    iget-object v2, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mMembers:Ljava/util/List;

    .line 14
    move-object v3, v2

    .line 16
    check-cast v3, Ljava/util/ArrayList;

    .line 17
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    .line 19
    move-result v4

    .line 22
    if-nez v4, :cond_3

    .line 23
    iget-object v4, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 25
    const/4 v5, 0x0

    .line 27
    if-eqz v4, :cond_0

    .line 28
    invoke-virtual {v4}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 30
    iput-object v5, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCancelShortTimeout:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 33
    :cond_0
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    new-instance v0, Ljava/util/ArrayList;

    .line 38
    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 40
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 43
    move-result-object v2

    .line 46
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 47
    move-result v4

    .line 50
    if-eqz v4, :cond_1

    .line 51
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v4

    .line 56
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 57
    iget-object v6, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mCoalescedEvents:Ljava/util/Map;

    .line 59
    iget-object v7, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->key:Ljava/lang/String;

    .line 61
    check-cast v6, Landroid/util/ArrayMap;

    .line 63
    invoke-virtual {v6, v7}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    iput-object v5, v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->batch:Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;

    .line 68
    goto :goto_0

    .line 70
    :cond_1
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mEventComparator:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer$$ExternalSyntheticLambda0;

    .line 71
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 73
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mClock:Lcom/android/systemui/util/time/SystemClock;

    .line 76
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 83
    move-result-wide v6

    .line 86
    iget-wide v8, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/EventBatch;->mCreatedTimestamp:J

    .line 87
    sub-long/2addr v6, v8

    .line 89
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 90
    move-result p1

    .line 93
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 96
    sget-object v3, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 99
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEmitBatch$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger$logEmitBatch$2;

    .line 101
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescerLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 103
    const-string v8, "GroupCoalescer"

    .line 105
    invoke-virtual {v2, v8, v3, v4, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 107
    move-result-object v3

    .line 110
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 111
    invoke-interface {v3, p1}, Lcom/android/systemui/log/LogMessage;->setInt1(I)V

    .line 114
    invoke-interface {v3, v6, v7}, Lcom/android/systemui/log/LogMessage;->setLong1(J)V

    .line 117
    invoke-virtual {v2, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 120
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/coalescer/GroupCoalescer;->mHandler:Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;

    .line 123
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/NotifCollection;

    .line 125
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 127
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 130
    const/4 p1, 0x0

    .line 133
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 134
    move-result-object p1

    .line 137
    check-cast p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 138
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 140
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 142
    move-result-object p1

    .line 145
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 146
    move-result v1

    .line 149
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->mLogger:Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;

    .line 150
    invoke-virtual {v2, v1, p1}, Lcom/android/systemui/statusbar/notification/collection/notifcollection/NotifCollectionLogger;->logNotifGroupPosted(ILjava/lang/String;)V

    .line 152
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 155
    move-result-object p1

    .line 158
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 159
    move-result v0

    .line 162
    if-eqz v0, :cond_2

    .line 163
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 165
    move-result-object v0

    .line 168
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;

    .line 169
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->sbn:Landroid/service/notification/StatusBarNotification;

    .line 171
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coalescer/CoalescedEvent;->ranking:Landroid/service/notification/NotificationListenerService$Ranking;

    .line 173
    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->postNotification(Landroid/service/notification/StatusBarNotification;Landroid/service/notification/NotificationListenerService$Ranking;)V

    .line 175
    goto :goto_1

    .line 178
    :cond_2
    const-string p1, "onNotificationGroupPosted"

    .line 179
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/notification/collection/NotifCollection;->dispatchEventsAndRebuildList(Ljava/lang/String;)V

    .line 181
    return-void

    .line 184
    :cond_3
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 185
    const-string p1, "Batch "

    .line 187
    const-string v0, " cannot be empty"

    .line 189
    invoke-static {p1, v1, v0}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 191
    move-result-object p1

    .line 194
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 195
    throw p0

    .line 198
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 199
    const-string p1, "Cannot emit out-of-date batch "

    .line 201
    invoke-static {p1, v1}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 206
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 207
    throw p0
    .line 210
.end method
