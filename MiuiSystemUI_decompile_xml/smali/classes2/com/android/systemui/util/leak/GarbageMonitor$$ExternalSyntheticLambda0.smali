.class public final synthetic Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/util/concurrency/MessageRouter$SimpleMessageListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Lcom/android/systemui/util/leak/GarbageMonitor;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/util/leak/GarbageMonitor;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onMessage()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    throw v1

    .line 14
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor$$ExternalSyntheticLambda0;->f$0:Lcom/android/systemui/util/leak/GarbageMonitor;

    .line 15
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 17
    monitor-enter v0

    .line 19
    const/4 v2, 0x0

    .line 20
    move v3, v2

    .line 21
    :goto_1
    :try_start_0
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    .line 24
    move-result v4

    .line 27
    if-ge v3, v4, :cond_3

    .line 28
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 30
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 32
    move-result-object v4

    .line 35
    check-cast v4, Ljava/lang/Long;

    .line 36
    invoke-virtual {v4}, Ljava/lang/Long;->intValue()I

    .line 38
    move-result v4

    .line 41
    invoke-static {v4}, Landroid/os/Process;->getRss(I)[J

    .line 42
    move-result-object v5

    .line 45
    if-nez v5, :cond_0

    .line 46
    array-length v6, v5

    .line 48
    if-nez v6, :cond_0

    .line 49
    sget-boolean v2, Lcom/android/systemui/util/leak/GarbageMonitor;->DEBUG:Z

    .line 51
    if-eqz v2, :cond_3

    .line 53
    const-string v2, "GarbageMonitor"

    .line 55
    const-string/jumbo v3, "update: Process.getRss() didn\'t provide any values."

    .line 57
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    goto :goto_2

    .line 63
    :cond_0
    aget-wide v5, v5, v2

    .line 64
    iget-object v7, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 66
    int-to-long v8, v4

    .line 68
    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 69
    move-result-object v4

    .line 72
    check-cast v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;

    .line 73
    iget-object v7, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->rss:[J

    .line 75
    iget v10, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 77
    iput-wide v5, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->currentRss:J

    .line 79
    aput-wide v5, v7, v10

    .line 81
    add-int/lit8 v10, v10, 0x1

    .line 83
    array-length v7, v7

    .line 85
    rem-int/2addr v10, v7

    .line 86
    iput v10, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->head:I

    .line 87
    iget-wide v10, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 89
    cmp-long v7, v5, v10

    .line 91
    if-lez v7, :cond_1

    .line 93
    iput-wide v5, v4, Lcom/android/systemui/util/leak/GarbageMonitor$ProcessMemInfo;->max:J

    .line 95
    :cond_1
    const-wide/16 v10, 0x0

    .line 97
    cmp-long v4, v5, v10

    .line 99
    if-nez v4, :cond_2

    .line 101
    iget-object v4, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 103
    invoke-virtual {v4, v8, v9}, Landroid/util/LongSparseArray;->remove(J)V

    .line 105
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 108
    goto :goto_1

    .line 110
    :cond_3
    :goto_2
    iget-object v2, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 111
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 113
    move-result v2

    .line 116
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, -0x1

    .line 117
    if-ltz v2, :cond_5

    .line 119
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 121
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v3

    .line 126
    check-cast v3, Ljava/lang/Long;

    .line 127
    invoke-virtual {v3}, Ljava/lang/Long;->intValue()I

    .line 129
    move-result v3

    .line 132
    int-to-long v3, v3

    .line 133
    iget-object v5, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mData:Landroid/util/LongSparseArray;

    .line 134
    invoke-virtual {v5, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    .line 136
    move-result-object v3

    .line 139
    if-nez v3, :cond_4

    .line 140
    iget-object v3, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mPids:Ljava/util/ArrayList;

    .line 142
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 144
    invoke-virtual {p0}, Lcom/android/systemui/util/leak/GarbageMonitor;->logPids()V

    .line 147
    goto :goto_3

    .line 150
    :cond_5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mQSTile:Lcom/android/systemui/util/leak/GarbageMonitor$MemoryTile;

    .line 152
    if-eqz v0, :cond_6

    .line 154
    invoke-virtual {v0, v1}, Lcom/android/systemui/qs/tileimpl/QSTileImpl;->refreshState(Ljava/lang/Object;)V

    .line 156
    :cond_6
    iget-object v0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 159
    check-cast v0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 161
    const/16 v1, 0xbb8

    .line 163
    invoke-virtual {v0, v1}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->cancelMessages(I)V

    .line 165
    iget-object p0, p0, Lcom/android/systemui/util/leak/GarbageMonitor;->mMessageRouter:Lcom/android/systemui/util/concurrency/MessageRouter;

    .line 168
    const-wide/32 v2, 0xea60

    .line 170
    check-cast p0, Lcom/android/systemui/util/concurrency/MessageRouterImpl;

    .line 173
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/systemui/util/concurrency/MessageRouterImpl;->sendMessageDelayed(IJ)V

    .line 175
    return-void

    .line 178
    :catchall_0
    move-exception p0

    .line 179
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 180
    throw p0

    .line 181
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 182
.end method
