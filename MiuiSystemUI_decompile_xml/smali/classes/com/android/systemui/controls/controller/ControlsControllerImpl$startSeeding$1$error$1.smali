.class public final Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $callback:Ljava/util/function/Consumer;

.field public final synthetic $componentName:Landroid/content/ComponentName;

.field public final synthetic $r8$classId:I

.field public final synthetic $remaining:Ljava/util/List;

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;


# direct methods
.method public constructor <init>(Landroid/content/ComponentName;Ljava/util/List;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/function/Consumer;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$callback:Ljava/util/function/Consumer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/util/function/Consumer;Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlsControllerImpl;Ljava/util/List;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$callback:Ljava/util/function/Consumer;

    iput-object p2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    iput-object p4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_0

    .line 9
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$callback:Ljava/util/function/Consumer;

    .line 10
    new-instance v3, Lcom/android/systemui/controls/controller/SeedResponse;

    .line 12
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 14
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 16
    move-result-object v4

    .line 19
    invoke-direct {v3, v4, v2}, Lcom/android/systemui/controls/controller/SeedResponse;-><init>(Ljava/lang/String;Z)V

    .line 20
    invoke-interface {v0, v3}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 23
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 26
    iget-object v2, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$callback:Ljava/util/function/Consumer;

    .line 30
    invoke-virtual {v0, v2, p0, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->startSeeding(Ljava/util/List;Ljava/util/function/Consumer;Z)V

    .line 32
    return-void

    .line 35
    :goto_0
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 36
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 38
    invoke-static {v0}, Lcom/android/systemui/controls/controller/Favorites;->getControlsForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    .line 40
    move-result-object v0

    .line 43
    new-instance v3, Ljava/util/ArrayList;

    .line 44
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 46
    move-result v4

    .line 49
    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 50
    check-cast v0, Ljava/util/ArrayList;

    .line 53
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 55
    move-result-object v0

    .line 58
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 59
    move-result v4

    .line 62
    if-eqz v4, :cond_0

    .line 63
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 65
    move-result-object v4

    .line 68
    check-cast v4, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 69
    iget-object v4, v4, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 71
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 73
    goto :goto_1

    .line 76
    :cond_0
    sget-object v0, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 77
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 79
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    .line 81
    invoke-static {v0, v4}, Lcom/android/systemui/controls/controller/Favorites;->updateControls(Landroid/content/ComponentName;Ljava/util/List;)Z

    .line 83
    move-result v0

    .line 86
    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 89
    iget-object v0, v0, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->persistenceWrapper:Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;

    .line 91
    invoke-static {}, Lcom/android/systemui/controls/controller/Favorites;->getAllStructures()Ljava/util/List;

    .line 93
    move-result-object v4

    .line 96
    invoke-virtual {v0, v4}, Lcom/android/systemui/controls/controller/ControlsFavoritePersistenceWrapper;->storeFavorites(Ljava/util/List;)V

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 100
    invoke-static {v3}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 102
    move-result-object v4

    .line 105
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    .line 106
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    new-instance v0, Ljava/util/ArrayList;

    .line 111
    invoke-static {v5}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 113
    move-result v6

    .line 116
    invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 120
    move-result-object v5

    .line 123
    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 124
    move-result v6

    .line 127
    if-eqz v6, :cond_2

    .line 128
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 130
    move-result-object v6

    .line 133
    check-cast v6, Landroid/service/controls/Control;

    .line 134
    invoke-virtual {v6}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 136
    move-result-object v6

    .line 139
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 140
    goto :goto_2

    .line 143
    :cond_2
    invoke-static {v4, v0}, Lkotlin/collections/SetsKt;->minus(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    .line 144
    move-result-object v0

    .line 147
    iget-object v4, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$remaining:Ljava/util/List;

    .line 148
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 150
    new-instance v6, Ljava/util/ArrayList;

    .line 152
    invoke-static {v4}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 154
    move-result v7

    .line 157
    invoke-direct {v6, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 158
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 161
    move-result-object v4

    .line 164
    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 165
    move-result v7

    .line 168
    if-eqz v7, :cond_3

    .line 169
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 171
    move-result-object v7

    .line 174
    check-cast v7, Landroid/service/controls/Control;

    .line 175
    new-instance v8, Lcom/android/systemui/controls/ControlStatus;

    .line 177
    invoke-virtual {v7}, Landroid/service/controls/Control;->getControlId()Ljava/lang/String;

    .line 179
    move-result-object v9

    .line 182
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 183
    move-result v9

    .line 186
    invoke-direct {v8, v7, v5, v9, v2}, Lcom/android/systemui/controls/ControlStatus;-><init>(Landroid/service/controls/Control;Landroid/content/ComponentName;ZZ)V

    .line 187
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 190
    goto :goto_3

    .line 193
    :cond_3
    new-instance v4, Ljava/util/ArrayList;

    .line 194
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 196
    sget-object v5, Lcom/android/systemui/controls/controller/Favorites;->favMap:Ljava/util/Map;

    .line 199
    iget-object v5, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 201
    invoke-static {v5}, Lcom/android/systemui/controls/controller/Favorites;->getStructuresForComponent(Landroid/content/ComponentName;)Ljava/util/List;

    .line 203
    move-result-object v5

    .line 206
    iget-object v7, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->this$0:Lcom/android/systemui/controls/controller/ControlsControllerImpl;

    .line 207
    iget-object v8, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$componentName:Landroid/content/ComponentName;

    .line 209
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 211
    move-result-object v5

    .line 214
    :cond_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 215
    move-result v9

    .line 218
    if-eqz v9, :cond_6

    .line 219
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 221
    move-result-object v9

    .line 224
    check-cast v9, Lcom/android/systemui/controls/controller/StructureInfo;

    .line 225
    iget-object v10, v9, Lcom/android/systemui/controls/controller/StructureInfo;->controls:Ljava/util/List;

    .line 227
    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 229
    move-result-object v10

    .line 232
    :cond_5
    :goto_4
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    .line 233
    move-result v11

    .line 236
    if-eqz v11, :cond_4

    .line 237
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 239
    move-result-object v11

    .line 242
    check-cast v11, Lcom/android/systemui/controls/controller/ControlInfo;

    .line 243
    iget-object v12, v11, Lcom/android/systemui/controls/controller/ControlInfo;->controlId:Ljava/lang/String;

    .line 245
    invoke-interface {v0, v12}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 247
    move-result v12

    .line 250
    if-eqz v12, :cond_5

    .line 251
    iget-object v12, v9, Lcom/android/systemui/controls/controller/StructureInfo;->structure:Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {v7, v8, v11, v12, v1}, Lcom/android/systemui/controls/controller/ControlsControllerImpl;->createRemovedStatus(Landroid/content/ComponentName;Lcom/android/systemui/controls/controller/ControlInfo;Ljava/lang/CharSequence;Z)Lcom/android/systemui/controls/ControlStatus;

    .line 255
    move-result-object v11

    .line 258
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    goto :goto_4

    .line 262
    :cond_6
    invoke-static {v6, v4}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 263
    move-result-object v0

    .line 266
    new-instance v1, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;

    .line 267
    invoke-direct {v1, v0, v3, v2}, Lcom/android/systemui/controls/controller/ControlsControllerKt$createLoadDataObject$1;-><init>(Ljava/util/List;Ljava/util/List;Z)V

    .line 269
    iget-object p0, p0, Lcom/android/systemui/controls/controller/ControlsControllerImpl$startSeeding$1$error$1;->$callback:Ljava/util/function/Consumer;

    .line 272
    invoke-interface {p0, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 274
    return-void

    .line 277
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 278
.end method
