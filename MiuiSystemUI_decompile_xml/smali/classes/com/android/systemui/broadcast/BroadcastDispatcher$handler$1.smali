.class public final Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 11

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, -0x1

    .line 4
    const/4 v2, -0x2

    .line 5
    const/4 v3, 0x1

    .line 6
    if-eqz v0, :cond_5

    .line 7
    if-eq v0, v3, :cond_3

    .line 9
    const/4 v1, 0x2

    .line 11
    if-eq v0, v1, :cond_0

    .line 12
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 14
    goto/16 :goto_5

    .line 17
    :cond_0
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 19
    if-ne v0, v2, :cond_1

    .line 21
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 23
    iget-object v0, v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 25
    check-cast v0, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 27
    invoke-virtual {v0}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 29
    move-result v0

    .line 32
    :cond_1
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 33
    iget-object v1, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 35
    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 41
    if-eqz v1, :cond_2

    .line 43
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 45
    check-cast v2, Landroid/content/BroadcastReceiver;

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 52
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 54
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 56
    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 58
    iget-object v1, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 60
    monitor-enter v1

    .line 62
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 63
    invoke-virtual {v2, v0, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 65
    monitor-exit v1

    .line 68
    iget-object p0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 69
    invoke-virtual {p0, v0, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V

    .line 71
    goto/16 :goto_5

    .line 74
    :catchall_0
    move-exception p0

    .line 76
    monitor-exit v1

    .line 77
    throw p0

    .line 78
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 79
    iget-object v0, v0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 81
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    .line 83
    move-result v0

    .line 86
    const/4 v2, 0x0

    .line 87
    :goto_0
    if-ge v2, v0, :cond_4

    .line 88
    iget-object v3, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 90
    iget-object v3, v3, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 92
    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 97
    check-cast v3, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 98
    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 100
    check-cast v4, Landroid/content/BroadcastReceiver;

    .line 102
    invoke-virtual {v3, v4}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 104
    add-int/lit8 v2, v2, 0x1

    .line 107
    goto :goto_0

    .line 109
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 110
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->removalPendingStore:Lcom/android/systemui/broadcast/PendingRemovalStore;

    .line 112
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 114
    check-cast p1, Landroid/content/BroadcastReceiver;

    .line 116
    iget-object v0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 118
    monitor-enter v0

    .line 120
    :try_start_1
    iget-object v2, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->pendingRemoval:Landroid/util/SparseSetArray;

    .line 121
    invoke-virtual {v2, v1, p1}, Landroid/util/SparseSetArray;->remove(ILjava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 123
    monitor-exit v0

    .line 126
    iget-object p0, p0, Lcom/android/systemui/broadcast/PendingRemovalStore;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 127
    invoke-virtual {p0, v1, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logClearedAfterRemoval(ILandroid/content/BroadcastReceiver;)V

    .line 129
    goto/16 :goto_5

    .line 132
    :catchall_1
    move-exception p0

    .line 134
    monitor-exit v0

    .line 135
    throw p0

    .line 136
    :cond_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 137
    check-cast v0, Lcom/android/systemui/broadcast/ReceiverData;

    .line 139
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 141
    iget-object v4, v0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    .line 143
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    .line 145
    move-result v4

    .line 148
    if-ne v4, v2, :cond_6

    .line 149
    iget-object v2, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 151
    iget-object v2, v2, Lcom/android/systemui/broadcast/BroadcastDispatcher;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 153
    check-cast v2, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 155
    invoke-virtual {v2}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 157
    move-result v2

    .line 160
    goto :goto_1

    .line 161
    :cond_6
    iget-object v2, v0, Lcom/android/systemui/broadcast/ReceiverData;->user:Landroid/os/UserHandle;

    .line 162
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 164
    move-result v2

    .line 167
    :goto_1
    if-lt v2, v1, :cond_f

    .line 168
    iget-object v1, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 170
    iget-object v4, v1, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 172
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->createUBRForUser(I)Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 174
    move-result-object v1

    .line 177
    invoke-virtual {v4, v2, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    .line 178
    move-result-object v1

    .line 181
    check-cast v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;

    .line 182
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher$handler$1;->this$0:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 184
    iget-object p0, p0, Lcom/android/systemui/broadcast/BroadcastDispatcher;->receiversByUser:Landroid/util/SparseArray;

    .line 186
    invoke-virtual {p0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 188
    iget-object p0, v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->workerLooper:Landroid/os/Looper;

    .line 191
    invoke-virtual {p0}, Landroid/os/Looper;->isCurrentThread()Z

    .line 193
    move-result p0

    .line 196
    const-string v2, "This method should only be called from the worker thread (which is expected to be the BroadcastRunning thread)"

    .line 197
    invoke-static {p0, v2}, Lcom/android/internal/util/Preconditions;->checkState(ZLjava/lang/String;)V

    .line 199
    iget-object p0, v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->receiverToActions:Landroid/util/ArrayMap;

    .line 202
    iget-object v2, v0, Lcom/android/systemui/broadcast/ReceiverData;->receiver:Landroid/content/BroadcastReceiver;

    .line 204
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    move-result-object v4

    .line 209
    if-nez v4, :cond_7

    .line 210
    new-instance v4, Landroid/util/ArraySet;

    .line 212
    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 214
    invoke-virtual {p0, v2, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 217
    :cond_7
    check-cast v4, Ljava/util/Collection;

    .line 220
    iget-object p0, v0, Lcom/android/systemui/broadcast/ReceiverData;->filter:Landroid/content/IntentFilter;

    .line 222
    invoke-virtual {p0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 224
    move-result-object v5

    .line 227
    sget-object v6, Lkotlin/sequences/EmptySequence;->INSTANCE:Lkotlin/sequences/EmptySequence;

    .line 228
    if-eqz v5, :cond_8

    .line 230
    invoke-static {v5}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 232
    move-result-object v5

    .line 235
    goto :goto_2

    .line 236
    :cond_8
    move-object v5, v6

    .line 237
    :goto_2
    invoke-static {v4, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 238
    invoke-virtual {p0}, Landroid/content/IntentFilter;->actionsIterator()Ljava/util/Iterator;

    .line 241
    move-result-object v4

    .line 244
    :cond_9
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 245
    move-result v5

    .line 248
    if-eqz v5, :cond_e

    .line 249
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 251
    move-result-object v5

    .line 254
    check-cast v5, Ljava/lang/String;

    .line 255
    new-instance v7, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;

    .line 257
    iget-object v8, v0, Lcom/android/systemui/broadcast/ReceiverData;->permission:Ljava/lang/String;

    .line 259
    invoke-direct {v7, v5, v8, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher$ReceiverProperties;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    .line 261
    iget-object v9, v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->actionsToActionsReceivers:Landroid/util/ArrayMap;

    .line 264
    invoke-virtual {v9, v7}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 266
    move-result-object v10

    .line 269
    if-nez v10, :cond_a

    .line 270
    invoke-virtual {v1, v5, v8, p1}, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->createActionReceiver$packages__apps__MiuiSystemUI__packages__SystemUI__android_common__MiuiSystemUI_core(Ljava/lang/String;Ljava/lang/String;I)Lcom/android/systemui/broadcast/ActionReceiver;

    .line 272
    move-result-object v10

    .line 275
    invoke-virtual {v9, v7, v10}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    :cond_a
    check-cast v10, Lcom/android/systemui/broadcast/ActionReceiver;

    .line 279
    iget-object v5, v10, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 281
    invoke-virtual {p0, v5}, Landroid/content/IntentFilter;->hasAction(Ljava/lang/String;)Z

    .line 283
    move-result v5

    .line 286
    if-eqz v5, :cond_d

    .line 287
    iget-object v5, v10, Lcom/android/systemui/broadcast/ActionReceiver;->activeCategories:Landroid/util/ArraySet;

    .line 289
    invoke-virtual {p0}, Landroid/content/IntentFilter;->categoriesIterator()Ljava/util/Iterator;

    .line 291
    move-result-object v7

    .line 294
    if-eqz v7, :cond_b

    .line 295
    invoke-static {v7}, Lkotlin/sequences/SequencesKt___SequencesJvmKt;->asSequence(Ljava/util/Iterator;)Lkotlin/sequences/Sequence;

    .line 297
    move-result-object v7

    .line 300
    goto :goto_4

    .line 301
    :cond_b
    move-object v7, v6

    .line 302
    :goto_4
    invoke-static {v5, v7}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/util/Collection;Lkotlin/sequences/Sequence;)Z

    .line 303
    move-result v5

    .line 306
    iget-object v7, v10, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 307
    invoke-virtual {v7, v0}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 309
    move-result v7

    .line 312
    if-eqz v7, :cond_c

    .line 313
    iget-object v7, v10, Lcom/android/systemui/broadcast/ActionReceiver;->receiverDatas:Landroid/util/ArraySet;

    .line 315
    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    .line 317
    move-result v7

    .line 320
    if-ne v7, v3, :cond_c

    .line 321
    iget-object v5, v10, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    .line 323
    invoke-virtual {v10}, Lcom/android/systemui/broadcast/ActionReceiver;->createFilter()Landroid/content/IntentFilter;

    .line 325
    move-result-object v7

    .line 328
    invoke-interface {v5, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    iput-boolean v3, v10, Lcom/android/systemui/broadcast/ActionReceiver;->registered:Z

    .line 332
    goto :goto_3

    .line 334
    :cond_c
    if-eqz v5, :cond_9

    .line 335
    iget-object v5, v10, Lcom/android/systemui/broadcast/ActionReceiver;->unregisterAction:Lkotlin/jvm/functions/Function1;

    .line 337
    invoke-interface {v5, v10}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    iget-object v5, v10, Lcom/android/systemui/broadcast/ActionReceiver;->registerAction:Lkotlin/jvm/functions/Function2;

    .line 342
    invoke-virtual {v10}, Lcom/android/systemui/broadcast/ActionReceiver;->createFilter()Landroid/content/IntentFilter;

    .line 344
    move-result-object v7

    .line 347
    invoke-interface {v5, v10, v7}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 348
    goto :goto_3

    .line 351
    :cond_d
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 352
    iget-object p1, v10, Lcom/android/systemui/broadcast/ActionReceiver;->action:Ljava/lang/String;

    .line 354
    new-instance v0, Ljava/lang/StringBuilder;

    .line 356
    const-string v1, "Trying to attach to "

    .line 358
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 363
    const-string p1, " without correct action,receiver: "

    .line 366
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 371
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    move-result-object p1

    .line 377
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 378
    throw p0

    .line 381
    :cond_e
    iget-object p0, v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->logger:Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;

    .line 382
    iget v0, v1, Lcom/android/systemui/broadcast/UserBroadcastDispatcher;->userId:I

    .line 384
    invoke-virtual {p0, v0, v2, p1}, Lcom/android/systemui/broadcast/logging/BroadcastDispatcherLogger;->logReceiverRegistered(ILandroid/content/BroadcastReceiver;I)V

    .line 386
    :goto_5
    return-void

    .line 389
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 390
    const-string p1, "Attempting to register receiver for invalid user {"

    .line 392
    const-string/jumbo v0, "}"

    .line 394
    invoke-static {p1, v2, v0}, Landroidx/emoji2/text/FontRequestEmojiCompatConfig$FontRequestMetadataLoader$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 397
    move-result-object p1

    .line 400
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 401
    throw p0
    .line 404
.end method
