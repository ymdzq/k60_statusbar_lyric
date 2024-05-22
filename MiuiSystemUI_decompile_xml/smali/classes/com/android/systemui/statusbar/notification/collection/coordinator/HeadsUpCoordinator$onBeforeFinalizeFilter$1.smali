.class final Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;
.super Lkotlin/jvm/internal/Lambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $list:Ljava/util/List;

.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->$list:Ljava/util/List;

    .line 4
    const/4 p1, 0x1

    .line 6
    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    .line 7
    return-void
    .line 10
.end method


# virtual methods
.method public final invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 30

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;

    .line 6
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 8
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 10
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->isEmpty()Z

    .line 12
    move-result v2

    .line 15
    if-eqz v2, :cond_0

    .line 16
    goto/16 :goto_13

    .line 18
    :cond_0
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 20
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 22
    invoke-virtual {v2}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 24
    move-result-object v2

    .line 27
    new-instance v3, Ljava/util/LinkedHashMap;

    .line 28
    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    .line 30
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 33
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_2

    .line 41
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 43
    move-result-object v4

    .line 46
    move-object v5, v4

    .line 47
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 48
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 50
    iget-object v5, v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 52
    invoke-virtual {v5}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 54
    move-result-object v5

    .line 57
    invoke-virtual {v3, v5}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    move-result-object v6

    .line 61
    if-nez v6, :cond_1

    .line 62
    new-instance v6, Ljava/util/ArrayList;

    .line 64
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    :cond_1
    check-cast v6, Ljava/util/List;

    .line 72
    invoke-interface {v6, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    goto :goto_0

    .line 77
    :cond_2
    iget-object v2, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 78
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mNotifPipeline:Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;

    .line 80
    if-nez v2, :cond_3

    .line 82
    const/4 v2, 0x0

    .line 84
    :cond_3
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/notification/collection/NotifPipeline;->getAllNotifs()Ljava/util/Collection;

    .line 85
    move-result-object v2

    .line 88
    new-instance v5, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 89
    invoke-direct {v5, v2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 91
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$logicalMembersByGroup$1;

    .line 94
    invoke-direct {v2, v3}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$logicalMembersByGroup$1;-><init>(Ljava/util/Map;)V

    .line 96
    invoke-static {v5, v2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 99
    move-result-object v2

    .line 102
    new-instance v5, Ljava/util/LinkedHashMap;

    .line 103
    invoke-direct {v5}, Ljava/util/LinkedHashMap;-><init>()V

    .line 105
    new-instance v6, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 108
    invoke-direct {v6, v2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 110
    :goto_1
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 113
    move-result v2

    .line 116
    if-eqz v2, :cond_5

    .line 117
    invoke-virtual {v6}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 119
    move-result-object v2

    .line 122
    move-object v7, v2

    .line 123
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 124
    iget-object v7, v7, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 126
    invoke-virtual {v7}, Landroid/service/notification/StatusBarNotification;->getGroupKey()Ljava/lang/String;

    .line 128
    move-result-object v7

    .line 131
    invoke-virtual {v5, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    move-result-object v8

    .line 135
    if-nez v8, :cond_4

    .line 136
    new-instance v8, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v5, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    :cond_4
    check-cast v8, Ljava/util/List;

    .line 146
    invoke-interface {v8, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    goto :goto_1

    .line 151
    :cond_5
    new-instance v2, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$groupLocationsByKey$2;

    .line 152
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 154
    iget-object v7, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->$list:Ljava/util/List;

    .line 156
    invoke-direct {v2, v6, v7}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$groupLocationsByKey$2;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Ljava/util/List;)V

    .line 158
    invoke-static {v2}, Lkotlin/LazyKt__LazyKt;->lazy$1(Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 161
    move-result-object v2

    .line 164
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 165
    iget-object v6, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 167
    invoke-interface {v3}, Ljava/util/Map;->size()I

    .line 169
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    iget-object v6, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 175
    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;

    .line 177
    move-result-object v3

    .line 180
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 181
    move-result-object v3

    .line 184
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 185
    move-result v7

    .line 188
    if-eqz v7, :cond_1a

    .line 189
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 191
    move-result-object v7

    .line 194
    check-cast v7, Ljava/util/Map$Entry;

    .line 195
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 197
    move-result-object v8

    .line 200
    check-cast v8, Ljava/lang/String;

    .line 201
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 203
    move-result-object v7

    .line 206
    check-cast v7, Ljava/util/List;

    .line 207
    invoke-virtual {v5, v8}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object v8

    .line 212
    check-cast v8, Ljava/util/List;

    .line 213
    if-nez v8, :cond_6

    .line 215
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 217
    :cond_6
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 219
    move-result-object v9

    .line 222
    :cond_7
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    .line 223
    move-result v10

    .line 226
    if-eqz v10, :cond_8

    .line 227
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 229
    move-result-object v10

    .line 232
    move-object v11, v10

    .line 233
    check-cast v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 234
    iget-object v11, v11, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 236
    invoke-virtual {v11}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 238
    move-result-object v11

    .line 241
    invoke-virtual {v11}, Landroid/app/Notification;->isGroupSummary()Z

    .line 242
    move-result v11

    .line 245
    if-eqz v11, :cond_7

    .line 246
    goto :goto_3

    .line 248
    :cond_8
    const/4 v10, 0x0

    .line 249
    :goto_3
    check-cast v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 250
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 252
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 254
    invoke-interface {v8}, Ljava/util/List;->size()I

    .line 257
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 260
    if-nez v10, :cond_9

    .line 263
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 265
    move-result-object v7

    .line 268
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 269
    move-result v8

    .line 272
    if-eqz v8, :cond_13

    .line 273
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 275
    move-result-object v8

    .line 278
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 279
    invoke-static {v6, v8, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 281
    goto :goto_4

    .line 284
    :cond_9
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 285
    iget-object v11, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 287
    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    move-result-object v12

    .line 292
    check-cast v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 293
    const/4 v15, 0x1

    .line 295
    iget-object v13, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mHeadsUpManager:Lcom/android/systemui/statusbar/policy/HeadsUpManager;

    .line 296
    if-eqz v12, :cond_c

    .line 298
    iget-boolean v14, v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpEver:Z

    .line 300
    if-eqz v14, :cond_b

    .line 302
    iget-boolean v14, v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->wasAdded:Z

    .line 304
    if-nez v14, :cond_a

    .line 306
    iget-boolean v14, v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpAgain:Z

    .line 308
    if-nez v14, :cond_a

    .line 310
    invoke-virtual {v12}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->isHeadsUpAlready()Z

    .line 312
    move-result v12

    .line 315
    if-eqz v12, :cond_b

    .line 316
    :cond_a
    :goto_5
    move v12, v15

    .line 318
    goto :goto_6

    .line 319
    :cond_b
    const/4 v12, 0x0

    .line 320
    goto :goto_6

    .line 321
    :cond_c
    invoke-virtual {v10}, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->getKey()Ljava/lang/String;

    .line 322
    move-result-object v12

    .line 325
    invoke-virtual {v13, v12}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 326
    move-result v12

    .line 329
    if-nez v12, :cond_a

    .line 330
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 332
    move-result v12

    .line 335
    if-eqz v12, :cond_b

    .line 336
    goto :goto_5

    .line 338
    :goto_6
    if-nez v12, :cond_d

    .line 339
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 341
    move-result-object v7

    .line 344
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 345
    move-result v8

    .line 348
    if-eqz v8, :cond_13

    .line 349
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 351
    move-result-object v8

    .line 354
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 355
    invoke-static {v6, v8, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 357
    goto :goto_7

    .line 360
    :cond_d
    new-instance v12, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;

    .line 361
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 363
    move-result-object v14

    .line 366
    check-cast v14, Ljava/util/Map;

    .line 367
    invoke-direct {v12, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;-><init>(Ljava/lang/Object;)V

    .line 369
    new-instance v14, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 372
    invoke-direct {v14, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 374
    sget-object v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findAlertOverride$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findAlertOverride$1;

    .line 377
    invoke-static {v14, v4}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 379
    move-result-object v4

    .line 382
    new-instance v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findAlertOverride$$inlined$sortedBy$1;

    .line 383
    invoke-direct {v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findAlertOverride$$inlined$sortedBy$1;-><init>()V

    .line 385
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 388
    move-result-object v4

    .line 391
    invoke-static {v4, v14}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 392
    check-cast v4, Ljava/util/ArrayList;

    .line 395
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 397
    move-result-object v4

    .line 400
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 401
    move-result v14

    .line 404
    if-nez v14, :cond_e

    .line 405
    const/4 v4, 0x0

    .line 407
    goto :goto_8

    .line 408
    :cond_e
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 409
    move-result-object v4

    .line 412
    :goto_8
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 413
    if-eqz v4, :cond_10

    .line 415
    iget-object v4, v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->entry:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 417
    iget-object v14, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 419
    invoke-virtual {v12, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$3;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 421
    move-result-object v12

    .line 424
    sget-object v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;->Isolated:Lcom/android/systemui/statusbar/notification/collection/coordinator/GroupLocation;

    .line 425
    if-ne v12, v14, :cond_f

    .line 427
    iget-object v12, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mSbn:Lcom/android/systemui/statusbar/notification/ExpandedNotification;

    .line 429
    invoke-virtual {v12}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    .line 431
    move-result-object v12

    .line 434
    invoke-virtual {v12}, Landroid/app/Notification;->getGroupAlertBehavior()I

    .line 435
    move-result v12

    .line 438
    if-ne v12, v15, :cond_f

    .line 439
    move v12, v15

    .line 441
    goto :goto_9

    .line 442
    :cond_f
    const/4 v12, 0x0

    .line 443
    :goto_9
    if-eqz v12, :cond_10

    .line 444
    goto :goto_a

    .line 446
    :cond_10
    const/4 v4, 0x0

    .line 447
    :goto_a
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 448
    move-result-object v12

    .line 451
    check-cast v12, Ljava/util/Map;

    .line 452
    invoke-interface {v12, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 454
    move-result v12

    .line 457
    if-nez v12, :cond_12

    .line 458
    if-nez v4, :cond_12

    .line 460
    new-instance v4, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$4;

    .line 462
    invoke-interface {v2}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 464
    move-result-object v14

    .line 467
    check-cast v14, Ljava/util/Map;

    .line 468
    invoke-direct {v4, v14}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$4;-><init>(Ljava/lang/Object;)V

    .line 470
    new-instance v14, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 473
    invoke-direct {v14, v8}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 475
    sget-object v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$1;

    .line 478
    invoke-static {v14, v8}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 480
    move-result-object v8

    .line 483
    new-instance v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$2;

    .line 484
    invoke-direct {v14, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$2;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 486
    invoke-static {v8, v14}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 489
    move-result-object v4

    .line 492
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$3;

    .line 493
    invoke-direct {v8, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$3;-><init>(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;)V

    .line 495
    sget-object v14, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$4;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$findBestTransferChild$4;

    .line 498
    filled-new-array {v8, v14}, [Lkotlin/jvm/functions/Function1;

    .line 500
    move-result-object v8

    .line 503
    invoke-static {v8}, Lkotlin/comparisons/ComparisonsKt___ComparisonsJvmKt;->compareBy([Lkotlin/jvm/functions/Function1;)Lkotlin/comparisons/ComparisonsKt__ComparisonsKt$$ExternalSyntheticLambda0;

    .line 504
    move-result-object v8

    .line 507
    invoke-static {v4}, Lkotlin/sequences/SequencesKt;->toMutableList(Lkotlin/sequences/Sequence;)Ljava/util/List;

    .line 508
    move-result-object v4

    .line 511
    invoke-static {v4, v8}, Lkotlin/collections/CollectionsKt__MutableCollectionsJVMKt;->sortWith(Ljava/util/List;Ljava/util/Comparator;)V

    .line 512
    check-cast v4, Ljava/util/ArrayList;

    .line 515
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 517
    move-result-object v4

    .line 520
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 521
    move-result v8

    .line 524
    if-nez v8, :cond_11

    .line 525
    const/4 v4, 0x0

    .line 527
    goto :goto_b

    .line 528
    :cond_11
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 529
    move-result-object v4

    .line 532
    :goto_b
    check-cast v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 533
    :cond_12
    if-nez v4, :cond_14

    .line 535
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 537
    move-result-object v4

    .line 540
    :goto_c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 541
    move-result v7

    .line 544
    if-eqz v7, :cond_13

    .line 545
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 547
    move-result-object v7

    .line 550
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 551
    invoke-static {v6, v7, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 553
    goto :goto_c

    .line 556
    :cond_13
    move-object/from16 v28, v2

    .line 557
    move-object/from16 v29, v3

    .line 559
    goto/16 :goto_10

    .line 561
    :cond_14
    invoke-virtual {v9, v11}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 563
    move-result-object v8

    .line 566
    check-cast v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 567
    iput-boolean v15, v10, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->interruption:Z

    .line 569
    iget-object v9, v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mLogger:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;

    .line 571
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 573
    sget-object v14, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 576
    sget-object v15, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logSummaryMarkedInterrupted$2;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger$logSummaryMarkedInterrupted$2;

    .line 578
    move-object/from16 v28, v2

    .line 580
    const-string v2, "HeadsUpCoordinator"

    .line 582
    iget-object v9, v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinatorLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 584
    move-object/from16 v29, v3

    .line 586
    const/4 v3, 0x0

    .line 588
    invoke-virtual {v9, v2, v14, v15, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 589
    move-result-object v2

    .line 592
    invoke-interface {v2, v11}, Lcom/android/systemui/log/LogMessage;->setStr1(Ljava/lang/String;)V

    .line 593
    iget-object v15, v4, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->mKey:Ljava/lang/String;

    .line 596
    invoke-interface {v2, v15}, Lcom/android/systemui/log/LogMessage;->setStr2(Ljava/lang/String;)V

    .line 598
    invoke-virtual {v9, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 601
    if-nez v12, :cond_16

    .line 604
    if-eqz v8, :cond_15

    .line 606
    const/4 v2, 0x0

    .line 608
    iput-boolean v2, v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpEver:Z

    .line 609
    move-object v2, v13

    .line 611
    move-object v9, v15

    .line 612
    const/4 v3, 0x1

    .line 613
    goto :goto_d

    .line 614
    :cond_15
    const/4 v2, 0x0

    .line 615
    new-instance v8, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 616
    const/4 v9, 0x0

    .line 618
    const/4 v14, 0x0

    .line 619
    const/16 v17, 0x0

    .line 620
    const/16 v18, 0x0

    .line 622
    invoke-virtual {v13, v11}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 624
    move-result v19

    .line 627
    invoke-virtual {v6, v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 628
    move-result v20

    .line 631
    move-object v11, v8

    .line 632
    move-object v12, v10

    .line 633
    move-object v2, v13

    .line 634
    move v13, v9

    .line 635
    const/4 v9, 0x0

    .line 636
    move-object v9, v15

    .line 637
    const/4 v3, 0x1

    .line 638
    move/from16 v15, v17

    .line 639
    move/from16 v16, v18

    .line 641
    move/from16 v17, v19

    .line 643
    move/from16 v18, v20

    .line 645
    invoke-direct/range {v11 .. v18}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    .line 647
    :goto_d
    invoke-static {v6, v8, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 650
    goto :goto_e

    .line 653
    :cond_16
    move-object v2, v13

    .line 654
    move-object v9, v15

    .line 655
    const/4 v3, 0x1

    .line 656
    :goto_e
    new-instance v8, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 657
    invoke-direct {v8, v7}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 659
    new-instance v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;

    .line 662
    invoke-direct {v7, v10}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1$1$6;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    .line 664
    invoke-static {v8, v7}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 667
    move-result-object v7

    .line 670
    new-instance v8, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 671
    invoke-direct {v8, v7}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 673
    const/4 v15, 0x0

    .line 676
    :goto_f
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 677
    move-result v7

    .line 680
    if-eqz v7, :cond_18

    .line 681
    invoke-virtual {v8}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 683
    move-result-object v7

    .line 686
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 687
    iget-object v10, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->key:Ljava/lang/String;

    .line 689
    invoke-static {v9, v10}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 691
    move-result v10

    .line 694
    if-eqz v10, :cond_17

    .line 695
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpEver:Z

    .line 697
    iput-boolean v3, v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;->shouldHeadsUpAgain:Z

    .line 699
    invoke-static {v6, v7, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 701
    move v15, v3

    .line 704
    goto :goto_f

    .line 705
    :cond_17
    invoke-static {v6, v7, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 706
    goto :goto_f

    .line 709
    :cond_18
    if-nez v15, :cond_19

    .line 710
    new-instance v3, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;

    .line 712
    const/16 v22, 0x0

    .line 714
    const/16 v23, 0x0

    .line 716
    const/16 v24, 0x1

    .line 718
    const/16 v25, 0x1

    .line 720
    invoke-virtual {v2, v9}, Lcom/android/systemui/statusbar/AlertingNotificationManager;->isAlerting(Ljava/lang/String;)Z

    .line 722
    move-result v26

    .line 725
    invoke-virtual {v6, v4}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->isEntryBinding(Lcom/android/systemui/statusbar/notification/collection/ListEntry;)Z

    .line 726
    move-result v27

    .line 729
    move-object/from16 v20, v3

    .line 730
    move-object/from16 v21, v4

    .line 732
    invoke-direct/range {v20 .. v27}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;-><init>(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;ZZZZZZ)V

    .line 734
    invoke-static {v6, v3, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->access$handlePostedEntry(Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$PostedEntry;Lcom/android/systemui/statusbar/notification/collection/coordinator/HunMutatorImpl;)V

    .line 737
    :cond_19
    :goto_10
    move-object/from16 v2, v28

    .line 740
    move-object/from16 v3, v29

    .line 742
    goto/16 :goto_2

    .line 744
    :cond_1a
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 746
    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mPostedEntries:Ljava/util/LinkedHashMap;

    .line 748
    invoke-virtual {v1}, Ljava/util/LinkedHashMap;->clear()V

    .line 750
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator$onBeforeFinalizeFilter$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;

    .line 753
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mSystemClock:Lcom/android/systemui/util/time/SystemClock;

    .line 755
    check-cast v1, Lcom/android/systemui/util/time/SystemClockImpl;

    .line 757
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 759
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 762
    move-result-wide v1

    .line 765
    const-wide/16 v3, 0x7d0

    .line 766
    sub-long/2addr v1, v3

    .line 768
    new-instance v3, Landroid/util/ArraySet;

    .line 769
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 771
    iget-object v4, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mEntriesUpdateTimes:Landroid/util/ArrayMap;

    .line 774
    invoke-virtual {v4}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 776
    move-result-object v5

    .line 779
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 780
    move-result-object v5

    .line 783
    :cond_1b
    :goto_11
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 784
    move-result v6

    .line 787
    if-eqz v6, :cond_1d

    .line 788
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 790
    move-result-object v6

    .line 793
    check-cast v6, Ljava/util/Map$Entry;

    .line 794
    invoke-interface {v6}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 796
    move-result-object v7

    .line 799
    check-cast v7, Ljava/lang/String;

    .line 800
    invoke-interface {v6}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 802
    move-result-object v6

    .line 805
    check-cast v6, Ljava/lang/Long;

    .line 806
    if-eqz v6, :cond_1c

    .line 808
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    .line 810
    move-result-wide v8

    .line 813
    cmp-long v6, v1, v8

    .line 814
    if-lez v6, :cond_1b

    .line 816
    :cond_1c
    invoke-virtual {v3, v7}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 818
    goto :goto_11

    .line 821
    :cond_1d
    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 822
    new-instance v3, Landroid/util/ArraySet;

    .line 825
    invoke-direct {v3}, Landroid/util/ArraySet;-><init>()V

    .line 827
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/coordinator/HeadsUpCoordinator;->mFSIUpdateCandidates:Landroid/util/ArrayMap;

    .line 830
    invoke-virtual {v0}, Landroid/util/ArrayMap;->entrySet()Ljava/util/Set;

    .line 832
    move-result-object v4

    .line 835
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 836
    move-result-object v4

    .line 839
    :cond_1e
    :goto_12
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 840
    move-result v5

    .line 843
    if-eqz v5, :cond_20

    .line 844
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 846
    move-result-object v5

    .line 849
    check-cast v5, Ljava/util/Map$Entry;

    .line 850
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 852
    move-result-object v6

    .line 855
    check-cast v6, Ljava/lang/String;

    .line 856
    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 858
    move-result-object v5

    .line 861
    check-cast v5, Ljava/lang/Long;

    .line 862
    if-eqz v5, :cond_1f

    .line 864
    invoke-virtual {v5}, Ljava/lang/Long;->longValue()J

    .line 866
    move-result-wide v7

    .line 869
    cmp-long v5, v1, v7

    .line 870
    if-lez v5, :cond_1e

    .line 872
    :cond_1f
    invoke-virtual {v3, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 874
    goto :goto_12

    .line 877
    :cond_20
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->removeAll(Ljava/util/Collection;)Z

    .line 878
    :goto_13
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 881
    return-object v0
    .line 883
.end method
