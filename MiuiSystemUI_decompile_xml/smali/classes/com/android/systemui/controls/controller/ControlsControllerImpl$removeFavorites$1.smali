.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $componentName:Ljava/lang/Object;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsControllerImpl;Lcom/android/systemui/controls/ui/ControlsUiControllerImpl$onSeedingComplete$1;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Lcom/android/systemui/controls/controller/ControlsControllerImpl;I)V
    .locals 0

    .line 2
    iput p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$r8$classId:I

    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto/16 :goto_9

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 11
    check-cast v0, Ljava/util/List;

    .line 13
    new-instance v3, Ljava/util/ArrayList;

    .line 15
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 17
    move-result v4

    .line 20
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 21
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object v0

    .line 27
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 28
    move-result v4

    .line 31
    if-eqz v4, :cond_0

    .line 32
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 34
    move-result-object v4

    .line 37
    check-cast v4, Lcom/android/systemui/controls/ControlsServiceInfo;

    .line 38
    iget-object v4, v4, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    .line 40
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 42
    goto :goto_0

    .line 45
    :cond_0
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 46
    move-result-object v0

    .line 49
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 50
    move-result-object v3

    .line 53
    new-instance v4, Ljava/util/ArrayList;

    .line 54
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 56
    move-result v5

    .line 59
    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    check-cast v3, Ljava/util/ArrayList;

    .line 63
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 65
    move-result-object v3

    .line 68
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 69
    move-result v5

    .line 72
    if-eqz v5, :cond_1

    .line 73
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 75
    move-result-object v5

    .line 78
    check-cast v5, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 79
    iget-object v5, v5, Lcom/android/systemui/controls/controller/StructureInfo;->componentName:Landroid/content/ComponentName;

    .line 81
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 83
    goto :goto_1

    .line 86
    :cond_1
    invoke-static {v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 87
    move-result-object v3

    .line 90
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 91
    iget-object v5, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userFileManager:Lcom/android/systemui/settings/UserFileManager;

    .line 93
    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 95
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 97
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 99
    move-result v4

    .line 102
    check-cast v5, Lcom/android/systemui/settings/UserFileManagerImpl;

    .line 103
    const-string v6, "controls_prefs"

    .line 105
    invoke-virtual {v5, v4, v6}, Lcom/android/systemui/settings/UserFileManagerImpl;->getSharedPreferences(ILjava/lang/String;)Landroid/content/SharedPreferences;

    .line 107
    move-result-object v4

    .line 110
    new-instance v5, Ljava/util/LinkedHashSet;

    .line 111
    invoke-direct {v5}, Ljava/util/LinkedHashSet;-><init>()V

    .line 113
    const-string v6, "SeedingCompleted"

    .line 116
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 118
    move-result-object v5

    .line 121
    new-instance v7, Ljava/util/ArrayList;

    .line 122
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 124
    move-result v8

    .line 127
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 128
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 131
    move-result-object v8

    .line 134
    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 135
    move-result v9

    .line 138
    if-eqz v9, :cond_2

    .line 139
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 141
    move-result-object v9

    .line 144
    check-cast v9, Landroid/content/ComponentName;

    .line 145
    invoke-virtual {v9}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 147
    move-result-object v9

    .line 150
    invoke-virtual {v7, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 151
    goto :goto_2

    .line 154
    :cond_2
    invoke-interface {v4}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 155
    move-result-object v4

    .line 158
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 159
    move-result-object v5

    .line 162
    invoke-interface {v5, v7}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 163
    invoke-interface {v4, v6, v5}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 166
    move-result-object v4

    .line 169
    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 170
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 173
    move-result-object v4

    .line 176
    invoke-interface {v4, v0}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 177
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 180
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 182
    move-result-object v4

    .line 185
    move v6, v2

    .line 186
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 187
    move-result v7

    .line 190
    if-eqz v7, :cond_3

    .line 191
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 193
    move-result-object v6

    .line 196
    check-cast v6, Landroid/content/ComponentName;

    .line 197
    sget-object v7, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 199
    new-instance v8, Ljava/util/LinkedHashMap;

    .line 201
    invoke-direct {v8, v7}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 203
    invoke-interface {v8, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 206
    sput-object v8, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 209
    iget-object v7, v5, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->bindingController:Lcom/android/systemui/controls/controller/ControlsBindingController;

    .line 211
    check-cast v7, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;

    .line 213
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    new-instance v8, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;

    .line 218
    invoke-direct {v8, v2, v7, v6}, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl$onComponentRemoved$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 220
    iget-object v6, v7, Lcom/android/systemui/controls/controller/ControlsBindingControllerImpl;->backgroundExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 223
    check-cast v6, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 225
    invoke-virtual {v6, v8}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 227
    move v6, v1

    .line 230
    goto :goto_3

    .line 231
    :cond_3
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 232
    iget-object v2, v2, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 234
    iget-object v2, v2, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->favorites:Ljava/util/List;

    .line 236
    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    .line 238
    move-result v2

    .line 241
    xor-int/2addr v2, v1

    .line 242
    if-eqz v2, :cond_7

    .line 243
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 245
    move-result-object v2

    .line 248
    invoke-interface {v2, v3}, Ljava/util/Collection;->removeAll(Ljava/util/Collection;)Z

    .line 249
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 252
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 254
    move-result-object v2

    .line 257
    :cond_4
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 258
    move-result v5

    .line 261
    if-eqz v5, :cond_6

    .line 262
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 264
    move-result-object v5

    .line 267
    check-cast v5, Landroid/content/ComponentName;

    .line 268
    iget-object v7, v4, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 270
    invoke-virtual {v7, v5}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->getCachedFavoritesAndRemoveFor(Landroid/content/ComponentName;)Ljava/util/List;

    .line 272
    move-result-object v5

    .line 275
    invoke-interface {v5}, Ljava/util/Collection;->isEmpty()Z

    .line 276
    move-result v7

    .line 279
    xor-int/2addr v7, v1

    .line 280
    if-eqz v7, :cond_4

    .line 281
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 283
    move-result-object v5

    .line 286
    :goto_5
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 287
    move-result v6

    .line 290
    if-eqz v6, :cond_5

    .line 291
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 293
    move-result-object v6

    .line 296
    check-cast v6, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 297
    invoke-static {v6}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 299
    goto :goto_5

    .line 302
    :cond_5
    move v6, v1

    .line 303
    goto :goto_4

    .line 304
    :cond_6
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toMutableSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 305
    move-result-object v0

    .line 308
    invoke-interface {v0, v3}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 309
    iget-object v1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 312
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 314
    move-result-object v0

    .line 317
    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 318
    move-result v2

    .line 321
    if-eqz v2, :cond_7

    .line 322
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 324
    move-result-object v2

    .line 327
    check-cast v2, Landroid/content/ComponentName;

    .line 328
    iget-object v3, v1, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->auxiliaryPersistenceWrapper:Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;

    .line 330
    invoke-virtual {v3, v2}, Lcom/android/systemui/controls/controller/AuxiliaryPersistenceWrapper;->getCachedFavoritesAndRemoveFor(Landroid/content/ComponentName;)Ljava/util/List;

    .line 332
    goto :goto_6

    .line 335
    :cond_7
    if-eqz v6, :cond_8

    .line 336
    const-string v0, "ControlsControllerImpl"

    .line 338
    const-string v1, "Detected change in available services, storing updated favorites"

    .line 340
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 345
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 347
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 349
    move-result-object v0

    .line 352
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 353
    :cond_8
    return-void

    .line 356
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 357
    iget-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingInProgress:Z

    .line 359
    if-eqz v1, :cond_9

    .line 361
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->seedingCallbacks:Ljava/util/List;

    .line 363
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 365
    check-cast p0, Ljava/util/function/Consumer;

    .line 367
    check-cast v0, Ljava/util/ArrayList;

    .line 369
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 371
    goto :goto_7

    .line 374
    :cond_9
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 375
    check-cast p0, Ljava/util/function/Consumer;

    .line 377
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 379
    invoke-interface {p0, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 381
    :goto_7
    return-void

    .line 384
    :pswitch_2
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 385
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 387
    check-cast v0, Landroid/content/ComponentName;

    .line 389
    sget-object v3, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 391
    new-instance v4, Ljava/util/LinkedHashMap;

    .line 393
    invoke-direct {v4, v3}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 395
    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-result-object v0

    .line 401
    if-eqz v0, :cond_a

    .line 402
    goto :goto_8

    .line 404
    :cond_a
    move v1, v2

    .line 405
    :goto_8
    sput-object v4, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 406
    if-eqz v1, :cond_b

    .line 408
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 410
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 412
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 414
    move-result-object v1

    .line 417
    invoke-virtual {v0, v1}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 418
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 421
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->authorizedPanelsRepository:Lcom/android/systemui/controls/panels/AuthorizedPanelsRepository;

    .line 423
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 425
    check-cast p0, Landroid/content/ComponentName;

    .line 427
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 429
    move-result-object p0

    .line 432
    invoke-static {p0}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    .line 433
    move-result-object p0

    .line 436
    check-cast v0, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;

    .line 437
    invoke-virtual {v0}, Lcom/android/systemui/controls/panels/AuthorizedPanelsRepositoryImpl;->instantiateSharedPrefs()Landroid/content/SharedPreferences;

    .line 439
    move-result-object v0

    .line 442
    sget-object v1, Lkotlin/collections/EmptySet;->INSTANCE:Lkotlin/collections/EmptySet;

    .line 443
    const-string v2, "authorized_panels"

    .line 445
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    .line 447
    move-result-object v1

    .line 450
    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 451
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 454
    move-result-object v0

    .line 457
    invoke-static {v1, p0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 458
    move-result-object p0

    .line 461
    invoke-interface {v0, v2, p0}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 462
    move-result-object p0

    .line 465
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 466
    return-void

    .line 469
    :goto_9
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 470
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->$componentName:Ljava/lang/Object;

    .line 472
    check-cast v0, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 474
    invoke-static {v0}, Lcom/android/systemui/controls/controller/Favorites;->replaceControls(Lcom/android/systemui/controls/controller/StructureInfo;)V

    .line 476
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$removeFavorites$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 479
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 481
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 483
    move-result-object v0

    .line 486
    invoke-virtual {p0, v0}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 487
    return-void

    .line 490
    nop

    .line 491
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 492
.end method
