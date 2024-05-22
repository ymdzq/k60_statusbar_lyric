.class final Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation runtime Lkotlin/coroutines/jvm/internal/DebugMetadata;
    c = "com.android.wm.shell.bubbles.BubbleDataRepository$loadBubbles$1"
    f = "BubbleDataRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $cb:Lkotlin/jvm/functions/Function1;

.field final synthetic $userId:I

.field label:I

.field final synthetic this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 2
    iput p2, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$userId:I

    .line 4
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    .line 6
    const/4 p1, 0x2

    .line 8
    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/Continuation;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;
    .locals 2

    .line 1
    new-instance p1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 4
    iget v1, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$userId:I

    .line 6
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    .line 8
    invoke-direct {p1, v0, v1, p0, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;-><init>(Lcom/android/wm/shell/bubbles/BubbleDataRepository;ILkotlin/jvm/functions/Function1;Lkotlin/coroutines/Continuation;)V

    .line 10
    return-object p1
    .line 13
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlinx/coroutines/CoroutineScope;

    .line 2
    check-cast p2, Lkotlin/coroutines/Continuation;

    .line 4
    invoke-virtual {p0, p1, p2}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->create(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Lkotlin/coroutines/Continuation;

    .line 6
    move-result-object p0

    .line 9
    check-cast p0, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;

    .line 10
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 12
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 20

    .line 1
    move-object/from16 v1, p0

    .line 2
    iget v0, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->label:I

    .line 4
    if-nez v0, :cond_d

    .line 6
    invoke-static/range {p1 .. p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 8
    iget-object v0, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 11
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->persistentRepository:Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;

    .line 13
    iget-object v2, v0, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    .line 15
    monitor-enter v2

    .line 17
    :try_start_0
    iget-object v3, v0, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    .line 18
    invoke-virtual {v3}, Landroid/util/AtomicFile;->exists()Z

    .line 20
    move-result v3

    .line 23
    const/4 v4, 0x0

    .line 24
    if-nez v3, :cond_0

    .line 25
    new-instance v0, Landroid/util/SparseArray;

    .line 27
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 29
    monitor-exit v2

    .line 32
    goto :goto_0

    .line 33
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/storage/BubblePersistentRepository;->bubbleFile:Landroid/util/AtomicFile;

    .line 34
    invoke-virtual {v0}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    .line 36
    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 39
    :try_start_2
    invoke-static {v3}, Lcom/android/wm/shell/bubbles/storage/BubbleXmlHelperKt;->readXml(Ljava/io/InputStream;)Landroid/util/SparseArray;

    .line 40
    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 43
    :try_start_3
    invoke-static {v3, v4}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 44
    monitor-exit v2

    .line 47
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 49
    move-object v5, v0

    .line 50
    :try_start_4
    throw v5
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 51
    :catchall_1
    move-exception v0

    .line 52
    move-object v6, v0

    .line 53
    :try_start_5
    invoke-static {v3, v5}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 54
    throw v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 57
    :catchall_2
    move-exception v0

    .line 58
    :try_start_6
    const-string v3, "BubblePersistentRepository"

    .line 59
    const-string v5, "Failed to open bubble file"

    .line 61
    invoke-static {v3, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 63
    new-instance v0, Landroid/util/SparseArray;

    .line 66
    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 68
    monitor-exit v2

    .line 71
    :goto_0
    iget v2, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$userId:I

    .line 72
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Ljava/util/List;

    .line 78
    if-nez v0, :cond_1

    .line 80
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 82
    return-object v0

    .line 84
    :cond_1
    iget-object v2, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 85
    iget-object v2, v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->volatileRepository:Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;

    .line 87
    iget v3, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$userId:I

    .line 89
    invoke-virtual {v2, v3, v0}, Lcom/android/wm/shell/bubbles/storage/BubbleVolatileRepository;->addBubbles(ILjava/util/List;)V

    .line 91
    new-instance v2, Ljava/util/ArrayList;

    .line 94
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 96
    move-result v3

    .line 99
    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 100
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 103
    move-result-object v3

    .line 106
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 107
    move-result v5

    .line 110
    if-eqz v5, :cond_2

    .line 111
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 113
    move-result-object v5

    .line 116
    check-cast v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 117
    new-instance v6, Lcom/android/wm/shell/bubbles/ShortcutKey;

    .line 119
    iget v7, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 121
    iget-object v5, v5, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 123
    invoke-direct {v6, v7, v5}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 125
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    goto :goto_1

    .line 131
    :cond_2
    invoke-static {v2}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 132
    move-result-object v2

    .line 135
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 136
    new-instance v5, Ljava/util/ArrayList;

    .line 138
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 140
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 143
    move-result-object v2

    .line 146
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 147
    move-result v6

    .line 150
    if-eqz v6, :cond_4

    .line 151
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 153
    move-result-object v6

    .line 156
    check-cast v6, Lcom/android/wm/shell/bubbles/ShortcutKey;

    .line 157
    iget-object v7, v3, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->launcherApps:Landroid/content/pm/LauncherApps;

    .line 159
    new-instance v8, Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 161
    invoke-direct {v8}, Landroid/content/pm/LauncherApps$ShortcutQuery;-><init>()V

    .line 163
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/ShortcutKey;->pkg:Ljava/lang/String;

    .line 166
    invoke-virtual {v8, v9}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setPackage(Ljava/lang/String;)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 168
    move-result-object v8

    .line 171
    const/16 v9, 0x411

    .line 172
    invoke-virtual {v8, v9}, Landroid/content/pm/LauncherApps$ShortcutQuery;->setQueryFlags(I)Landroid/content/pm/LauncherApps$ShortcutQuery;

    .line 174
    move-result-object v8

    .line 177
    iget v6, v6, Lcom/android/wm/shell/bubbles/ShortcutKey;->userId:I

    .line 178
    invoke-static {v6}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    .line 180
    move-result-object v6

    .line 183
    invoke-virtual {v7, v8, v6}, Landroid/content/pm/LauncherApps;->getShortcuts(Landroid/content/pm/LauncherApps$ShortcutQuery;Landroid/os/UserHandle;)Ljava/util/List;

    .line 184
    move-result-object v6

    .line 187
    if-nez v6, :cond_3

    .line 188
    sget-object v6, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 190
    :cond_3
    invoke-static {v6, v5}, Lkotlin/collections/CollectionsKt__ReversedViewsKt;->addAll(Ljava/lang/Iterable;Ljava/util/Collection;)V

    .line 192
    goto :goto_2

    .line 195
    :cond_4
    new-instance v2, Ljava/util/LinkedHashMap;

    .line 196
    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    .line 198
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 201
    move-result-object v3

    .line 204
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 205
    move-result v5

    .line 208
    if-eqz v5, :cond_6

    .line 209
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 211
    move-result-object v5

    .line 214
    move-object v6, v5

    .line 215
    check-cast v6, Landroid/content/pm/ShortcutInfo;

    .line 216
    new-instance v7, Lcom/android/wm/shell/bubbles/ShortcutKey;

    .line 218
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getUserId()I

    .line 220
    move-result v8

    .line 223
    invoke-virtual {v6}, Landroid/content/pm/ShortcutInfo;->getPackage()Ljava/lang/String;

    .line 224
    move-result-object v6

    .line 227
    invoke-direct {v7, v8, v6}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 228
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 231
    move-result-object v6

    .line 234
    if-nez v6, :cond_5

    .line 235
    new-instance v6, Ljava/util/ArrayList;

    .line 237
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 239
    invoke-interface {v2, v7, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_5
    check-cast v6, Ljava/util/List;

    .line 245
    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    goto :goto_3

    .line 250
    :cond_6
    iget-object v3, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 251
    new-instance v5, Ljava/util/ArrayList;

    .line 253
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 255
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 258
    move-result-object v0

    .line 261
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 262
    move-result v6

    .line 265
    if-eqz v6, :cond_c

    .line 266
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 268
    move-result-object v6

    .line 271
    check-cast v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;

    .line 272
    new-instance v7, Lcom/android/wm/shell/bubbles/ShortcutKey;

    .line 274
    iget v8, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->userId:I

    .line 276
    iget-object v9, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->packageName:Ljava/lang/String;

    .line 278
    invoke-direct {v7, v8, v9}, Lcom/android/wm/shell/bubbles/ShortcutKey;-><init>(ILjava/lang/String;)V

    .line 280
    invoke-virtual {v2, v7}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 283
    move-result-object v7

    .line 286
    check-cast v7, Ljava/util/List;

    .line 287
    if-eqz v7, :cond_a

    .line 289
    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 291
    move-result-object v7

    .line 294
    :cond_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    .line 295
    move-result v8

    .line 298
    if-eqz v8, :cond_8

    .line 299
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 301
    move-result-object v8

    .line 304
    move-object v9, v8

    .line 305
    check-cast v9, Landroid/content/pm/ShortcutInfo;

    .line 306
    iget-object v10, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->shortcutId:Ljava/lang/String;

    .line 308
    invoke-virtual {v9}, Landroid/content/pm/ShortcutInfo;->getId()Ljava/lang/String;

    .line 310
    move-result-object v9

    .line 313
    invoke-static {v10, v9}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 314
    move-result v9

    .line 317
    if-eqz v9, :cond_7

    .line 318
    goto :goto_5

    .line 320
    :cond_8
    move-object v8, v4

    .line 321
    :goto_5
    move-object v11, v8

    .line 322
    check-cast v11, Landroid/content/pm/ShortcutInfo;

    .line 323
    if-eqz v11, :cond_a

    .line 325
    new-instance v7, Lcom/android/wm/shell/bubbles/Bubble;

    .line 327
    iget-object v10, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->key:Ljava/lang/String;

    .line 329
    iget v12, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeight:I

    .line 331
    iget v13, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->desiredHeightResId:I

    .line 333
    iget-object v14, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->title:Ljava/lang/String;

    .line 335
    iget v15, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->taskId:I

    .line 337
    iget-object v8, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->locus:Ljava/lang/String;

    .line 339
    iget-boolean v6, v6, Lcom/android/wm/shell/bubbles/storage/BubbleEntity;->isDismissable:Z

    .line 341
    iget-object v9, v3, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 343
    iget-object v4, v3, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->bubbleMetadataFlagListener:Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;

    .line 345
    if-nez v4, :cond_9

    .line 347
    move-object v4, v9

    .line 349
    const/16 v19, 0x0

    .line 350
    goto :goto_6

    .line 352
    :cond_9
    move-object/from16 v19, v4

    .line 353
    move-object v4, v9

    .line 355
    :goto_6
    move-object v9, v7

    .line 356
    move-object/from16 v16, v8

    .line 357
    move/from16 v17, v6

    .line 359
    move-object/from16 v18, v4

    .line 361
    invoke-direct/range {v9 .. v19}, Lcom/android/wm/shell/bubbles/Bubble;-><init>(Ljava/lang/String;Landroid/content/pm/ShortcutInfo;IILjava/lang/String;ILjava/lang/String;ZLjava/util/concurrent/Executor;Lcom/android/wm/shell/bubbles/Bubbles$BubbleMetadataFlagListener;)V

    .line 363
    goto :goto_7

    .line 366
    :cond_a
    const/4 v7, 0x0

    .line 367
    :goto_7
    if-eqz v7, :cond_b

    .line 368
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 370
    :cond_b
    const/4 v4, 0x0

    .line 373
    goto :goto_4

    .line 374
    :cond_c
    iget-object v0, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->this$0:Lcom/android/wm/shell/bubbles/BubbleDataRepository;

    .line 375
    iget-object v0, v0, Lcom/android/wm/shell/bubbles/BubbleDataRepository;->mainExecutor:Lcom/android/wm/shell/common/ShellExecutor;

    .line 377
    new-instance v2, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1$1;

    .line 379
    iget-object v1, v1, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1;->$cb:Lkotlin/jvm/functions/Function1;

    .line 381
    invoke-direct {v2, v5, v1}, Lcom/android/wm/shell/bubbles/BubbleDataRepository$loadBubbles$1$1;-><init>(Ljava/util/List;Lkotlin/jvm/functions/Function1;)V

    .line 383
    check-cast v0, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 386
    invoke-virtual {v0, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->execute(Ljava/lang/Runnable;)V

    .line 388
    sget-object v0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    .line 391
    return-object v0

    .line 393
    :catchall_3
    move-exception v0

    .line 394
    monitor-exit v2

    .line 395
    throw v0

    .line 396
    :cond_d
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 397
    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    .line 399
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 401
    throw v0
    .line 404
.end method
