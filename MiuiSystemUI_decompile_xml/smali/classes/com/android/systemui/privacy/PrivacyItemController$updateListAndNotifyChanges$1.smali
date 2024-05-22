.class public final Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public final synthetic this$0:Lcom/android/systemui/privacy/PrivacyItemController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/privacy/PrivacyItemController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->$uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 4
    iget-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-eqz v2, :cond_0

    .line 9
    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;->run()V

    .line 11
    iput-object v3, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 14
    :cond_0
    iget-boolean v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->listening:Z

    .line 16
    if-nez v2, :cond_1

    .line 18
    sget-object v2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 20
    iput-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 22
    goto/16 :goto_a

    .line 24
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iget-object v4, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyItemMonitors:Ljava/util/Set;

    .line 31
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v4

    .line 36
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v5

    .line 40
    if-eqz v5, :cond_2

    .line 41
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v5

    .line 46
    check-cast v5, Lcom/android/systemui/privacy/PrivacyItemMonitor;

    .line 47
    invoke-interface {v5}, Lcom/android/systemui/privacy/PrivacyItemMonitor;->getActivePrivacyItems()Ljava/util/List;

    .line 49
    move-result-object v5

    .line 52
    invoke-static {v5, v2}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->distinct(Ljava/lang/Iterable;)Ljava/util/List;

    .line 57
    move-result-object v2

    .line 60
    iget-object v4, v1, Lcom/android/systemui/privacy/PrivacyItemController;->logger:Lcom/android/systemui/privacy/logging/PrivacyLogger;

    .line 61
    invoke-virtual {v4, v2}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logRetrievedPrivacyItemsList(Ljava/util/List;)V

    .line 63
    iget-object v5, v1, Lcom/android/systemui/privacy/PrivacyItemController;->systemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 66
    check-cast v5, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 68
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 73
    move-result-wide v5

    .line 76
    const-wide/16 v7, 0x12c

    .line 77
    sub-long/2addr v5, v7

    .line 79
    monitor-enter v1

    .line 80
    :try_start_0
    iget-object v7, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 81
    invoke-static {v7}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toList(Ljava/lang/Iterable;)Ljava/util/List;

    .line 83
    move-result-object v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    monitor-exit v1

    .line 87
    new-instance v8, Ljava/util/ArrayList;

    .line 88
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 90
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 93
    move-result-object v7

    .line 96
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 97
    move-result v9

    .line 100
    const/4 v10, 0x1

    .line 101
    if-eqz v9, :cond_a

    .line 102
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 104
    move-result-object v9

    .line 107
    move-object v11, v9

    .line 108
    check-cast v11, Lcom/android/systemui/privacy/PrivacyItem;

    .line 109
    iget-wide v12, v11, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 111
    cmp-long v12, v12, v5

    .line 113
    if-lez v12, :cond_8

    .line 115
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 117
    move-result v12

    .line 120
    if-eqz v12, :cond_3

    .line 121
    goto :goto_4

    .line 123
    :cond_3
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 124
    move-result-object v12

    .line 127
    :goto_2
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    .line 128
    move-result v14

    .line 131
    if-eqz v14, :cond_7

    .line 132
    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 134
    move-result-object v14

    .line 137
    check-cast v14, Lcom/android/systemui/privacy/PrivacyItem;

    .line 138
    iget-object v15, v14, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 140
    iget-object v3, v11, Lcom/android/systemui/privacy/PrivacyItem;->privacyType:Lcom/android/systemui/privacy/PrivacyType;

    .line 142
    if-ne v15, v3, :cond_4

    .line 144
    iget-object v3, v14, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 146
    iget-object v15, v11, Lcom/android/systemui/privacy/PrivacyItem;->application:Lcom/android/systemui/privacy/PrivacyApplication;

    .line 148
    invoke-static {v3, v15}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 150
    move-result v3

    .line 153
    if-eqz v3, :cond_4

    .line 154
    iget-wide v14, v14, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 156
    move-object/from16 v16, v12

    .line 158
    iget-wide v12, v11, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 160
    cmp-long v12, v14, v12

    .line 162
    if-nez v12, :cond_5

    .line 164
    move v12, v10

    .line 166
    goto :goto_3

    .line 167
    :cond_4
    move-object/from16 v16, v12

    .line 168
    :cond_5
    const/4 v12, 0x0

    .line 170
    :goto_3
    if-eqz v12, :cond_6

    .line 171
    move v11, v10

    .line 173
    goto :goto_5

    .line 174
    :cond_6
    move-object/from16 v12, v16

    .line 175
    const/4 v3, 0x0

    .line 177
    goto :goto_2

    .line 178
    :cond_7
    :goto_4
    const/4 v11, 0x0

    .line 179
    :goto_5
    if-nez v11, :cond_8

    .line 180
    goto :goto_6

    .line 182
    :cond_8
    const/4 v10, 0x0

    .line 183
    :goto_6
    if-eqz v10, :cond_9

    .line 184
    invoke-virtual {v8, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    :cond_9
    const/4 v3, 0x0

    .line 189
    goto :goto_1

    .line 190
    :cond_a
    invoke-virtual {v8}, Ljava/util/ArrayList;->isEmpty()Z

    .line 191
    move-result v3

    .line 194
    xor-int/2addr v3, v10

    .line 195
    if-eqz v3, :cond_f

    .line 196
    invoke-virtual {v4, v8}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsToHold(Ljava/util/List;)V

    .line 198
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object v3

    .line 204
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result v7

    .line 208
    if-nez v7, :cond_b

    .line 209
    const/4 v3, 0x0

    .line 211
    goto :goto_8

    .line 212
    :cond_b
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 213
    move-result-object v7

    .line 216
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 217
    move-result v9

    .line 220
    if-nez v9, :cond_c

    .line 221
    :goto_7
    move-object v3, v7

    .line 223
    goto :goto_8

    .line 224
    :cond_c
    move-object v9, v7

    .line 225
    check-cast v9, Lcom/android/systemui/privacy/PrivacyItem;

    .line 226
    iget-wide v11, v9, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 228
    :cond_d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 230
    move-result-object v9

    .line 233
    move-object v13, v9

    .line 234
    check-cast v13, Lcom/android/systemui/privacy/PrivacyItem;

    .line 235
    iget-wide v13, v13, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 237
    cmp-long v15, v11, v13

    .line 239
    if-lez v15, :cond_e

    .line 241
    move-object v7, v9

    .line 243
    move-wide v11, v13

    .line 244
    :cond_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v9

    .line 248
    if-nez v9, :cond_d

    .line 249
    goto :goto_7

    .line 251
    :goto_8
    invoke-static {v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 252
    check-cast v3, Lcom/android/systemui/privacy/PrivacyItem;

    .line 255
    iget-wide v11, v3, Lcom/android/systemui/privacy/PrivacyItem;->timeStampElapsed:J

    .line 257
    sub-long/2addr v11, v5

    .line 259
    invoke-virtual {v4, v11, v12}, Lcom/android/systemui/privacy/logging/PrivacyLogger;->logPrivacyItemsUpdateScheduled(J)V

    .line 260
    iget-object v3, v1, Lcom/android/systemui/privacy/PrivacyItemController;->updateListAndNotifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;

    .line 263
    iget-object v4, v1, Lcom/android/systemui/privacy/PrivacyItemController;->bgExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 265
    invoke-interface {v4, v3, v11, v12}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 267
    move-result-object v3

    .line 270
    iput-object v3, v1, Lcom/android/systemui/privacy/PrivacyItemController;->holdingRunnableCanceler:Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 271
    :cond_f
    new-instance v3, Ljava/util/ArrayList;

    .line 273
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 275
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 278
    move-result-object v2

    .line 281
    :cond_10
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 282
    move-result v4

    .line 285
    if-eqz v4, :cond_11

    .line 286
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 288
    move-result-object v4

    .line 291
    move-object v5, v4

    .line 292
    check-cast v5, Lcom/android/systemui/privacy/PrivacyItem;

    .line 293
    iget-boolean v5, v5, Lcom/android/systemui/privacy/PrivacyItem;->paused:Z

    .line 295
    xor-int/2addr v5, v10

    .line 297
    if-eqz v5, :cond_10

    .line 298
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 300
    goto :goto_9

    .line 303
    :cond_11
    invoke-static {v8, v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 304
    move-result-object v2

    .line 307
    iput-object v2, v1, Lcom/android/systemui/privacy/PrivacyItemController;->privacyList:Ljava/util/List;

    .line 308
    :goto_a
    iget-object v1, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->$uiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 310
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItemController$updateListAndNotifyChanges$1;->this$0:Lcom/android/systemui/privacy/PrivacyItemController;

    .line 312
    iget-object v0, v0, Lcom/android/systemui/privacy/PrivacyItemController;->notifyChanges:Lcom/android/systemui/privacy/PrivacyItemController$update$1;

    .line 314
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 316
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 318
    return-void

    .line 321
    :catchall_0
    move-exception v0

    .line 322
    monitor-exit v1

    .line 323
    throw v0
    .line 324
.end method
