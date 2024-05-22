.class public final Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/app/StatsManager$StatsPullAtomCallback;


# instance fields
.field public final mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

.field public final notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;Landroid/app/StatsManager;Lkotlinx/coroutines/CoroutineDispatcher;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->notificationPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 5
    iput-object p3, p0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onPullAtom(ILjava/util/List;)I
    .locals 33

    .line 1
    move-object/from16 v0, p0

    .line 2
    move/from16 v1, p1

    .line 4
    move-object/from16 v2, p2

    .line 6
    const-wide/16 v3, 0x1000

    .line 8
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 10
    move-result v5

    .line 13
    const/4 v6, 0x0

    .line 14
    const/4 v7, 0x2

    .line 15
    const/4 v8, 0x3

    .line 16
    const-string v9, "Failed to measure notification memory."

    .line 17
    const-string v10, "Timed out when measuring notification memory."

    .line 19
    const/16 v11, 0x27be

    .line 21
    const/4 v12, 0x0

    .line 23
    const-string v13, "NotificationLogger"

    .line 24
    const/4 v14, 0x1

    .line 26
    if-eqz v5, :cond_2

    .line 27
    const-string v5, "NML#onPullAtom"

    .line 29
    invoke-static {v3, v4, v5}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 31
    if-eq v1, v11, :cond_0

    .line 34
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 36
    return v14

    .line 39
    :cond_0
    :try_start_0
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 40
    new-instance v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;

    .line 42
    invoke-direct {v5, v0, v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;Lkotlin/coroutines/Continuation;)V

    .line 44
    invoke-static {v1, v5}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 47
    move-result-object v0

    .line 50
    check-cast v0, Ljava/util/Collection;

    .line 51
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 53
    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 55
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 58
    new-instance v5, Lkotlin/sequences/TransformingSequence;

    .line 60
    invoke-direct {v5, v1, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 62
    invoke-static {v5}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 65
    move-result-object v0

    .line 68
    new-array v1, v8, [Lkotlin/jvm/functions/Function1;

    .line 69
    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;

    .line 71
    aput-object v5, v1, v12

    .line 73
    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;

    .line 75
    aput-object v5, v1, v14

    .line 77
    sget-object v5, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;

    .line 79
    aput-object v5, v1, v7

    .line 81
    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    .line 83
    move-result-object v1

    .line 86
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 87
    move-result-object v0

    .line 90
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->aggregateMemoryUsageData(Ljava/util/List;)Ljava/util/Map;

    .line 91
    move-result-object v0

    .line 94
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 95
    move-result-object v0

    .line 98
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 99
    move-result-object v0

    .line 102
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 103
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 109
    move-result-object v1

    .line 112
    check-cast v1, Ljava/util/Map$Entry;

    .line 113
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 115
    move-result-object v1

    .line 118
    check-cast v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    .line 119
    iget v15, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->uid:I

    .line 121
    iget v5, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->style:I

    .line 123
    iget v6, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    .line 125
    iget v7, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    .line 127
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    .line 129
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 131
    move-result v19

    .line 134
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    .line 135
    iget v11, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    .line 137
    invoke-static {v11}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 139
    move-result v21

    .line 142
    iget v11, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    .line 143
    iget v14, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    .line 145
    invoke-static {v14}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 147
    move-result v23

    .line 150
    iget v14, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    .line 151
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    .line 153
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 155
    move-result v25

    .line 158
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    .line 159
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 161
    move-result v26

    .line 164
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    .line 165
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 167
    move-result v27

    .line 170
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    .line 171
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 173
    move-result v28

    .line 176
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    .line 177
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 179
    move-result v29

    .line 182
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    .line 183
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 185
    move-result v30

    .line 188
    iget v12, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    .line 189
    invoke-static {v12}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 191
    move-result v31

    .line 194
    iget v1, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    .line 195
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 197
    move-result v32

    .line 200
    move/from16 v16, v5

    .line 201
    move/from16 v17, v6

    .line 203
    move/from16 v18, v7

    .line 205
    move/from16 v20, v8

    .line 207
    move/from16 v22, v11

    .line 209
    move/from16 v24, v14

    .line 211
    invoke-static/range {v15 .. v32}, Lcom/android/systemui/shared/system/SysUiStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 213
    move-result-object v1

    .line 216
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 217
    const/4 v12, 0x0

    .line 220
    const/4 v14, 0x1

    .line 221
    goto :goto_0

    .line 222
    :cond_1
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 223
    const/4 v0, 0x0

    .line 226
    return v0

    .line 227
    :catchall_0
    move-exception v0

    .line 228
    goto :goto_4

    .line 229
    :catch_0
    move-exception v0

    .line 230
    goto :goto_1

    .line 231
    :catch_1
    move-exception v0

    .line 232
    goto :goto_2

    .line 233
    :goto_1
    :try_start_1
    invoke-static {v13, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 234
    goto :goto_3

    .line 237
    :goto_2
    invoke-static {v13, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 238
    :goto_3
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 241
    goto/16 :goto_8

    .line 244
    :goto_4
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 246
    throw v0

    .line 249
    :cond_2
    if-eq v1, v11, :cond_3

    .line 250
    const/4 v1, 0x1

    .line 252
    return v1

    .line 253
    :cond_3
    :try_start_2
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;->mainDispatcher:Lkotlinx/coroutines/CoroutineDispatcher;

    .line 254
    new-instance v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;

    .line 256
    invoke-direct {v3, v0, v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$getAllNotificationsOnMainThread$1;-><init>(Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger;Lkotlin/coroutines/Continuation;)V

    .line 258
    invoke-static {v1, v3}, Lkotlinx/coroutines/BuildersKt;->runBlocking(Lkotlin/coroutines/CoroutineContext;Lkotlin/jvm/functions/Function2;)Ljava/lang/Object;

    .line 261
    move-result-object v0

    .line 264
    check-cast v0, Ljava/util/Collection;

    .line 265
    new-instance v1, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 267
    invoke-direct {v1, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 269
    sget-object v0, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryMeter$notificationMemoryUse$1;

    .line 272
    new-instance v3, Lkotlin/sequences/TransformingSequence;

    .line 274
    invoke-direct {v3, v1, v0}, Lkotlin/sequences/TransformingSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)V

    .line 276
    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->toList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 279
    move-result-object v0

    .line 282
    new-array v1, v8, [Lkotlin/jvm/functions/Function1;

    .line 283
    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$1;

    .line 285
    const/4 v4, 0x0

    .line 287
    aput-object v3, v1, v4

    .line 288
    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$2;

    .line 290
    const/4 v4, 0x1

    .line 292
    aput-object v3, v1, v4

    .line 293
    sget-object v3, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;->INSTANCE:Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$onPullAtom$1$notificationMemoryUse$3;

    .line 295
    aput-object v3, v1, v7

    .line 297
    invoke-static {v1}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    .line 299
    move-result-object v1

    .line 302
    invoke-static {v0, v1}, Lkotlin/collections/CollectionsKt___CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 303
    move-result-object v0

    .line 306
    invoke-static {v0}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->aggregateMemoryUsageData(Ljava/util/List;)Ljava/util/Map;

    .line 307
    move-result-object v0

    .line 310
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 311
    move-result-object v0

    .line 314
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 315
    move-result-object v0

    .line 318
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 319
    move-result v1

    .line 322
    if-eqz v1, :cond_4

    .line 323
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 328
    check-cast v1, Ljava/util/Map$Entry;

    .line 329
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 331
    move-result-object v1

    .line 334
    check-cast v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;

    .line 335
    iget v14, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->uid:I

    .line 337
    iget v15, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->style:I

    .line 339
    iget v3, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->count:I

    .line 341
    iget v4, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->countWithInflatedViews:I

    .line 343
    iget v5, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconObject:I

    .line 345
    invoke-static {v5}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 347
    move-result v18

    .line 350
    iget v5, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconBitmapCount:I

    .line 351
    iget v6, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconObject:I

    .line 353
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 355
    move-result v20

    .line 358
    iget v6, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconBitmapCount:I

    .line 359
    iget v7, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureObject:I

    .line 361
    invoke-static {v7}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 363
    move-result v22

    .line 366
    iget v7, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->bigPictureBitmapCount:I

    .line 367
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extras:I

    .line 369
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 371
    move-result v24

    .line 374
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->extenders:I

    .line 375
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 377
    move-result v25

    .line 380
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->smallIconViews:I

    .line 381
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 383
    move-result v26

    .line 386
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->largeIconViews:I

    .line 387
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 389
    move-result v27

    .line 392
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->systemIconViews:I

    .line 393
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 395
    move-result v28

    .line 398
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->styleViews:I

    .line 399
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 401
    move-result v29

    .line 404
    iget v8, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->customViews:I

    .line 405
    invoke-static {v8}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 407
    move-result v30

    .line 410
    iget v1, v1, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLogger$NotificationMemoryUseAtomBuilder;->softwareBitmaps:I

    .line 411
    invoke-static {v1}, Lcom/android/systemui/statusbar/notification/logging/NotificationMemoryLoggerKt;->access$toKb(I)I

    .line 413
    move-result v31

    .line 416
    move/from16 v16, v3

    .line 417
    move/from16 v17, v4

    .line 419
    move/from16 v19, v5

    .line 421
    move/from16 v21, v6

    .line 423
    move/from16 v23, v7

    .line 425
    invoke-static/range {v14 .. v31}, Lcom/android/systemui/shared/system/SysUiStatsLog;->buildStatsEvent(IIIIIIIIIIIIIIIIII)Landroid/util/StatsEvent;

    .line 427
    move-result-object v1

    .line 430
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 431
    goto :goto_5

    .line 434
    :cond_4
    const/4 v0, 0x0

    .line 435
    return v0

    .line 436
    :catch_2
    move-exception v0

    .line 437
    goto :goto_6

    .line 438
    :catch_3
    move-exception v0

    .line 439
    goto :goto_7

    .line 440
    :goto_6
    invoke-static {v13, v9, v0}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 441
    goto :goto_8

    .line 444
    :goto_7
    invoke-static {v13, v10, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 445
    :goto_8
    const/4 v1, 0x1

    .line 448
    return v1
    .line 449
.end method
