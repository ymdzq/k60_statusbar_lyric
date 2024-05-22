.class public final synthetic Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnBeforeFinalizeFilterListener;


# instance fields
.field public final synthetic $tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBeforeFinalizeFilter(Ljava/util/List;)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$attach$1;->$tmp0:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;

    .line 4
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 6
    if-eqz v1, :cond_0

    .line 8
    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 10
    :cond_0
    const/4 v1, 0x0

    .line 13
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 14
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->notificationGroupTimes:Landroid/util/ArrayMap;

    .line 16
    invoke-virtual {v1}, Landroid/util/ArrayMap;->clear()V

    .line 18
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 21
    check-cast v2, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 23
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 28
    move-result-wide v2

    .line 31
    new-instance v4, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 32
    move-object/from16 v5, p1

    .line 34
    invoke-direct {v4, v5}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 36
    sget-object v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$onBeforeFinalizeFilterListener$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$onBeforeFinalizeFilterListener$$inlined$filterIsInstance$1;

    .line 39
    invoke-static {v4, v5}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 41
    move-result-object v4

    .line 44
    new-instance v5, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 45
    invoke-direct {v5, v4}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 47
    const-wide v8, 0x7fffffffffffffffL

    .line 50
    :cond_1
    :goto_0
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 55
    move-result v4

    .line 58
    if-eqz v4, :cond_8

    .line 59
    invoke-virtual {v5}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 61
    move-result-object v4

    .line 64
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 65
    iget-object v10, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 67
    new-instance v11, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 69
    invoke-direct {v11, v10}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 71
    sget-object v10, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$calculateGroupNotificationTime$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$calculateGroupNotificationTime$1;

    .line 74
    invoke-static {v11, v10}, Lkotlin/sequences/SequencesKt;->mapNotNull(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 76
    move-result-object v10

    .line 79
    new-instance v11, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 80
    invoke-direct {v11, v10}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 82
    const-wide v6, 0x7fffffffffffffffL

    .line 85
    const-wide/high16 v14, -0x8000000000000000L

    .line 90
    :goto_1
    invoke-virtual {v11}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 92
    move-result v10

    .line 95
    if-eqz v10, :cond_4

    .line 96
    invoke-virtual {v11}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 98
    move-result-object v10

    .line 101
    check-cast v10, Ljava/lang/Number;

    .line 102
    invoke-virtual {v10}, Ljava/lang/Number;->longValue()J

    .line 104
    move-result-wide v12

    .line 107
    sub-long v16, v2, v12

    .line 108
    const-wide/16 v18, 0x0

    .line 110
    cmp-long v10, v16, v18

    .line 112
    if-lez v10, :cond_2

    .line 114
    const/4 v10, 0x1

    .line 116
    goto :goto_2

    .line 117
    :cond_2
    const/4 v10, 0x0

    .line 118
    :goto_2
    if-eqz v10, :cond_3

    .line 119
    invoke-static {v14, v15, v12, v13}, Ljava/lang/Math;->max(JJ)J

    .line 121
    move-result-wide v14

    .line 124
    goto :goto_1

    .line 125
    :cond_3
    invoke-static {v6, v7, v12, v13}, Ljava/lang/Math;->min(JJ)J

    .line 126
    move-result-wide v6

    .line 129
    goto :goto_1

    .line 130
    :cond_4
    const-wide/high16 v12, -0x8000000000000000L

    .line 131
    cmp-long v10, v14, v12

    .line 133
    if-nez v10, :cond_6

    .line 135
    const-wide v10, 0x7fffffffffffffffL

    .line 137
    cmp-long v12, v6, v10

    .line 142
    if-nez v12, :cond_6

    .line 144
    iget-object v6, v4, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 146
    if-eqz v6, :cond_5

    .line 148
    iget-wide v6, v6, Lcom/android/systemui/statusbar/notification/collection/ListEntry;->mCreationTime:J

    .line 150
    goto :goto_3

    .line 152
    :cond_5
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 153
    const-string v1, "Required value was null."

    .line 155
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 157
    move-result-object v1

    .line 160
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 161
    throw v0

    .line 164
    :cond_6
    const-wide v10, 0x7fffffffffffffffL

    .line 165
    cmp-long v12, v6, v10

    .line 170
    if-eqz v12, :cond_7

    .line 172
    move-wide v14, v6

    .line 174
    :cond_7
    move-wide v6, v14

    .line 175
    :goto_3
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 176
    move-result-object v10

    .line 179
    invoke-virtual {v1, v4, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    cmp-long v4, v6, v2

    .line 183
    if-lez v4, :cond_1

    .line 185
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->min(JJ)J

    .line 187
    move-result-wide v8

    .line 190
    goto/16 :goto_0

    .line 191
    :cond_8
    const-wide v6, 0x7fffffffffffffffL

    .line 193
    cmp-long v1, v8, v6

    .line 198
    if-eqz v1, :cond_9

    .line 200
    sub-long/2addr v8, v2

    .line 202
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->delayableExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 203
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->invalidateListRunnable:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator$invalidateListRunnable$1;

    .line 205
    invoke-interface {v1, v2, v8, v9}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 207
    move-result-object v1

    .line 210
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupWhenCoordinator;->cancelInvalidateListRunnable:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 211
    :cond_9
    return-void
    .line 213
.end method
