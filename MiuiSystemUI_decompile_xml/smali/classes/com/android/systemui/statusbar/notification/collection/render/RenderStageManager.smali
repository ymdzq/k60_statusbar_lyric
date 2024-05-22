.class public final Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/notification/collection/PipelineDumpable;


# instance fields
.field public final onAfterRenderEntryListeners:Ljava/util/List;

.field public final onAfterRenderGroupListeners:Ljava/util/List;

.field public final onAfterRenderListListeners:Ljava/util/List;

.field public viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderListListeners:Ljava/util/List;

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    .line 19
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderEntryListeners:Ljava/util/List;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public final dispatchOnAfterRenderEntries(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V
    .locals 10

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderEntryListeners:Ljava/util/List;

    .line 8
    const-string v3, "No Summary: "

    .line 10
    const-string v4, "Unhandled entry: "

    .line 12
    if-eqz v2, :cond_8

    .line 14
    const-string v2, "RenderStageManager.dispatchOnAfterRenderEntries"

    .line 16
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 18
    :try_start_0
    move-object v2, p0

    .line 21
    check-cast v2, Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 27
    if-eqz v2, :cond_0

    .line 28
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 30
    return-void

    .line 33
    :cond_0
    :try_start_1
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 34
    move-result-object p2

    .line 37
    :cond_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    move-result v2

    .line 41
    if-eqz v2, :cond_7

    .line 42
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 44
    move-result-object v2

    .line 47
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 48
    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 50
    if-eqz v5, :cond_2

    .line 52
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 54
    invoke-virtual {p1, v2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 56
    move-result-object v5

    .line 59
    move-object v6, p0

    .line 60
    check-cast v6, Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object v6

    .line 66
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 67
    move-result v7

    .line 70
    if-eqz v7, :cond_1

    .line 71
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 73
    move-result-object v7

    .line 76
    check-cast v7, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 77
    invoke-virtual {v7, v2, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_2
    instance-of v5, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 83
    if-eqz v5, :cond_6

    .line 85
    move-object v5, v2

    .line 87
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 88
    iget-object v6, v5, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 90
    if-eqz v6, :cond_5

    .line 92
    invoke-virtual {p1, v6}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 94
    move-result-object v5

    .line 97
    move-object v7, p0

    .line 98
    check-cast v7, Ljava/util/ArrayList;

    .line 99
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 101
    move-result-object v8

    .line 104
    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    move-result v9

    .line 108
    if-eqz v9, :cond_3

    .line 109
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    move-result-object v9

    .line 114
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 115
    invoke-virtual {v9, v6, v5}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 117
    goto :goto_1

    .line 120
    :cond_3
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 121
    iget-object v2, v2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 123
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 125
    move-result-object v2

    .line 128
    :cond_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 129
    move-result v5

    .line 132
    if-eqz v5, :cond_1

    .line 133
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 135
    move-result-object v5

    .line 138
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 139
    invoke-virtual {p1, v5}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 141
    move-result-object v6

    .line 144
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 145
    move-result-object v8

    .line 148
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 149
    move-result v9

    .line 152
    if-eqz v9, :cond_4

    .line 153
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 155
    move-result-object v9

    .line 158
    check-cast v9, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 159
    invoke-virtual {v9, v5, v6}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 161
    goto :goto_2

    .line 164
    :cond_5
    new-instance p0, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 167
    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {p0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 176
    move-result-object p0

    .line 179
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 180
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 182
    move-result-object p0

    .line 185
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 186
    throw p1

    .line 189
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 190
    new-instance p1, Ljava/lang/StringBuilder;

    .line 192
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 194
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 203
    move-result-object p1

    .line 206
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 207
    move-result-object p1

    .line 210
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 211
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 214
    :cond_7
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 215
    goto/16 :goto_6

    .line 218
    :catchall_0
    move-exception p0

    .line 220
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 221
    throw p0

    .line 224
    :cond_8
    check-cast p0, Ljava/util/ArrayList;

    .line 225
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 227
    move-result v0

    .line 230
    if-eqz v0, :cond_9

    .line 231
    return-void

    .line 233
    :cond_9
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 234
    move-result-object p2

    .line 237
    :cond_a
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 238
    move-result v0

    .line 241
    if-eqz v0, :cond_10

    .line 242
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 244
    move-result-object v0

    .line 247
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/ListEntry;

    .line 248
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 250
    if-eqz v1, :cond_b

    .line 252
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 254
    invoke-virtual {p1, v0}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 256
    move-result-object v1

    .line 259
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 260
    move-result-object v2

    .line 263
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 264
    move-result v5

    .line 267
    if-eqz v5, :cond_a

    .line 268
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 270
    move-result-object v5

    .line 273
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 274
    invoke-virtual {v5, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 276
    goto :goto_3

    .line 279
    :cond_b
    instance-of v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 280
    if-eqz v1, :cond_f

    .line 282
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 284
    iget-object v1, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mSummary:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 286
    if-eqz v1, :cond_e

    .line 288
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 290
    move-result-object v2

    .line 293
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 294
    move-result-object v5

    .line 297
    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 298
    move-result v6

    .line 301
    if-eqz v6, :cond_c

    .line 302
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 304
    move-result-object v6

    .line 307
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 308
    invoke-virtual {v6, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 310
    goto :goto_4

    .line 313
    :cond_c
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;->mUnmodifiableChildren:Ljava/util/List;

    .line 314
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 316
    move-result-object v0

    .line 319
    :cond_d
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 320
    move-result v1

    .line 323
    if-eqz v1, :cond_a

    .line 324
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 326
    move-result-object v1

    .line 329
    check-cast v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;

    .line 330
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getRowController(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 332
    move-result-object v2

    .line 335
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 336
    move-result-object v5

    .line 339
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 340
    move-result v6

    .line 343
    if-eqz v6, :cond_d

    .line 344
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 346
    move-result-object v6

    .line 349
    check-cast v6, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;

    .line 350
    invoke-virtual {v6, v1, v2}, Lcom/android/systemui/statusbar/notification/collection/coordinator/RowAppearanceCoordinator$attach$2;->onAfterRenderEntry(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 352
    goto :goto_5

    .line 355
    :cond_e
    new-instance p0, Ljava/lang/StringBuilder;

    .line 356
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 358
    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 361
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 364
    move-result-object p0

    .line 367
    new-instance p1, Ljava/lang/IllegalStateException;

    .line 368
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 370
    move-result-object p0

    .line 373
    invoke-direct {p1, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 374
    throw p1

    .line 377
    :cond_f
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 378
    new-instance p1, Ljava/lang/StringBuilder;

    .line 380
    invoke-direct {p1, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 382
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 385
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 388
    move-result-object p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 392
    move-result-object p1

    .line 395
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 396
    throw p0

    .line 399
    :cond_10
    :goto_6
    return-void
    .line 400
.end method

.method public final dispatchOnAfterRenderGroups(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V
    .locals 6

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    .line 8
    if-eqz v2, :cond_3

    .line 10
    const-string v2, "RenderStageManager.dispatchOnAfterRenderGroups"

    .line 12
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 14
    :try_start_0
    move-object v2, p0

    .line 17
    check-cast v2, Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    .line 20
    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 23
    if-eqz v2, :cond_0

    .line 24
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 26
    return-void

    .line 29
    :cond_0
    :try_start_1
    new-instance v2, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 30
    invoke-direct {v2, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 32
    sget-object p2, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$dispatchOnAfterRenderGroups$lambda$6$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$dispatchOnAfterRenderGroups$lambda$6$$inlined$filterIsInstance$1;

    .line 35
    invoke-static {v2, p2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 37
    move-result-object p2

    .line 40
    new-instance v2, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 41
    invoke-direct {v2, p2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 43
    :cond_1
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 46
    move-result p2

    .line 49
    if-eqz p2, :cond_2

    .line 50
    invoke-virtual {v2}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 52
    move-result-object p2

    .line 55
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 56
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getGroupController(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 58
    move-result-object v3

    .line 61
    move-object v4, p0

    .line 62
    check-cast v4, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v4

    .line 68
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 78
    check-cast v5, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderGroupListener;

    .line 79
    invoke-interface {v5, p2, v3}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderGroupListener;->onAfterRenderGroup(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    goto :goto_0

    .line 84
    :cond_2
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 85
    goto :goto_2

    .line 88
    :catchall_0
    move-exception p0

    .line 89
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 90
    throw p0

    .line 93
    :cond_3
    check-cast p0, Ljava/util/ArrayList;

    .line 94
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 96
    move-result v0

    .line 99
    if-eqz v0, :cond_4

    .line 100
    return-void

    .line 102
    :cond_4
    new-instance v0, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;

    .line 103
    invoke-direct {v0, p2}, Lkotlin/collections/CollectionsKt___CollectionsKt$asSequence$$inlined$Sequence$1;-><init>(Ljava/lang/Iterable;)V

    .line 105
    sget-object p2, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$dispatchOnAfterRenderGroups$lambda$6$$inlined$filterIsInstance$1;->INSTANCE:Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager$dispatchOnAfterRenderGroups$lambda$6$$inlined$filterIsInstance$1;

    .line 108
    invoke-static {v0, p2}, Lkotlin/sequences/SequencesKt;->filter(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/FilteringSequence;

    .line 110
    move-result-object p2

    .line 113
    new-instance v0, Lkotlin/sequences/FilteringSequence$iterator$1;

    .line 114
    invoke-direct {v0, p2}, Lkotlin/sequences/FilteringSequence$iterator$1;-><init>(Lkotlin/sequences/FilteringSequence;)V

    .line 116
    :cond_5
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->hasNext()Z

    .line 119
    move-result p2

    .line 122
    if-eqz p2, :cond_6

    .line 123
    invoke-virtual {v0}, Lkotlin/sequences/FilteringSequence$iterator$1;->next()Ljava/lang/Object;

    .line 125
    move-result-object p2

    .line 128
    check-cast p2, Lcom/android/systemui/statusbar/notification/collection/GroupEntry;

    .line 129
    invoke-virtual {p1, p2}, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->getGroupController(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;)Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;

    .line 131
    move-result-object v1

    .line 134
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 135
    move-result-object v2

    .line 138
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 139
    move-result v3

    .line 142
    if-eqz v3, :cond_5

    .line 143
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 145
    move-result-object v3

    .line 148
    check-cast v3, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderGroupListener;

    .line 149
    invoke-interface {v3, p2, v1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderGroupListener;->onAfterRenderGroup(Lcom/android/systemui/statusbar/notification/collection/GroupEntry;Lcom/android/systemui/statusbar/notification/collection/render/NotifViewController;)V

    .line 151
    goto :goto_1

    .line 154
    :cond_6
    :goto_2
    return-void
    .line 155
.end method

.method public final dispatchOnAfterRenderList(Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;Ljava/util/List;)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x1000

    .line 2
    invoke-static {v0, v1}, Landroid/os/Trace;->isTagEnabled(J)Z

    .line 4
    move-result v2

    .line 7
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderListListeners:Ljava/util/List;

    .line 8
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;->this$0:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;

    .line 10
    if-eqz v2, :cond_1

    .line 12
    const-string v2, "RenderStageManager.dispatchOnAfterRenderList"

    .line 14
    invoke-static {v0, v1, v2}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 16
    :try_start_0
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

    .line 19
    check-cast p0, Ljava/util/ArrayList;

    .line 21
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 23
    move-result-object p0

    .line 26
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 33
    move-result-object v2

    .line 36
    check-cast v2, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;

    .line 37
    invoke-interface {v2, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;->onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    goto :goto_0

    .line 42
    :cond_0
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 43
    goto :goto_2

    .line 46
    :catchall_0
    move-exception p0

    .line 47
    invoke-static {v0, v1}, Landroid/os/Trace;->traceEnd(J)V

    .line 48
    throw p0

    .line 51
    :cond_1
    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager;->stackController:Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;

    .line 52
    check-cast p0, Ljava/util/ArrayList;

    .line 54
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 56
    move-result-object p0

    .line 59
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 60
    move-result v0

    .line 63
    if-eqz v0, :cond_2

    .line 64
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 66
    move-result-object v0

    .line 69
    check-cast v0, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;

    .line 70
    invoke-interface {v0, p2, p1}, Lcom/android/systemui/statusbar/notification/collection/listbuilder/OnAfterRenderListListener;->onAfterRenderList(Ljava/util/List;Lcom/android/systemui/statusbar/notification/collection/render/NotifStackController;)V

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    :goto_2
    return-void
    .line 76
.end method

.method public final dumpPipeline(Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;)V
    .locals 2

    .line 1
    const-string/jumbo v0, "viewRenderer"

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->viewRenderer:Lcom/android/systemui/statusbar/notification/collection/render/ShadeViewManager$viewRenderer$1;

    .line 5
    invoke-virtual {p1, v1, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderListListeners:Ljava/util/List;

    .line 10
    const-string v1, "onAfterRenderListListeners"

    .line 12
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderGroupListeners:Ljava/util/List;

    .line 17
    const-string v1, "onAfterRenderGroupListeners"

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/collection/render/RenderStageManager;->onAfterRenderEntryListeners:Ljava/util/List;

    .line 24
    const-string v0, "onAfterRenderEntryListeners"

    .line 26
    invoke-virtual {p1, p0, v0}, Lcom/android/systemui/statusbar/notification/collection/PipelineDumper;->dump(Ljava/lang/Object;Ljava/lang/String;)V

    .line 28
    return-void
    .line 31
.end method
