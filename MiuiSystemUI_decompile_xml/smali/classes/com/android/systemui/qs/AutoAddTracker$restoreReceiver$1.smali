.class public final Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/AutoAddTracker;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/AutoAddTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.os.action.SETTING_RESTORED"

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-nez p1, :cond_0

    .line 12
    return-void

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/qs/AutoAddTracker$restoreReceiver$1;->this$0:Lcom/android/systemui/qs/AutoAddTracker;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    const-string/jumbo p1, "setting_name"

    .line 20
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    const-string/jumbo v0, "sysui_qs_tiles"

    .line 27
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_6

    .line 34
    const-string p1, "new_value"

    .line 36
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object p1

    .line 41
    if-eqz p1, :cond_4

    .line 42
    const-string p2, ","

    .line 44
    filled-new-array {p2}, [Ljava/lang/String;

    .line 46
    move-result-object p2

    .line 49
    invoke-static {p1, p2}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 50
    move-result-object p1

    .line 53
    new-instance p2, Ljava/util/ArrayList;

    .line 54
    invoke-static {p1}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 56
    move-result v0

    .line 59
    invoke-direct {p2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 60
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 63
    move-result-object p1

    .line 66
    const/4 v0, 0x0

    .line 67
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_2

    .line 72
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 74
    move-result-object v1

    .line 77
    add-int/lit8 v2, v0, 0x1

    .line 78
    if-ltz v0, :cond_1

    .line 80
    check-cast v1, Ljava/lang/String;

    .line 82
    new-instance v3, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;

    .line 84
    invoke-direct {v3, v0, v1}, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;-><init>(ILjava/lang/String;)V

    .line 86
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    move v0, v2

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    invoke-static {}, Lkotlin/collections/CollectionsKt__CollectionsKt;->throwIndexOverflow()V

    .line 94
    const/4 p0, 0x0

    .line 97
    throw p0

    .line 98
    :cond_2
    invoke-static {p2}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 99
    move-result p1

    .line 102
    invoke-static {p1}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 103
    move-result p1

    .line 106
    const/16 v0, 0x10

    .line 107
    if-ge p1, v0, :cond_3

    .line 109
    move p1, v0

    .line 111
    :cond_3
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 112
    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 114
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 117
    move-result-object p1

    .line 120
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 121
    move-result p2

    .line 124
    if-eqz p2, :cond_5

    .line 125
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 127
    move-result-object p2

    .line 130
    move-object v1, p2

    .line 131
    check-cast v1, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;

    .line 132
    iget-object v1, v1, Lcom/android/systemui/qs/AutoAddTracker$AutoTile;->tileType:Ljava/lang/String;

    .line 134
    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    goto :goto_1

    .line 139
    :cond_4
    const-string p1, "AutoAddTracker"

    .line 140
    iget p2, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 142
    new-instance v0, Ljava/lang/StringBuilder;

    .line 144
    const-string v1, "Null restored tiles for user "

    .line 146
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 148
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 151
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 154
    move-result-object p2

    .line 157
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-static {}, Lkotlin/collections/MapsKt___MapsJvmKt;->emptyMap()Ljava/util/Map;

    .line 161
    move-result-object v0

    .line 164
    :cond_5
    iput-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    .line 165
    goto/16 :goto_5

    .line 167
    :cond_6
    const-string v0, "qs_auto_tiles"

    .line 169
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 171
    move-result p1

    .line 174
    if-eqz p1, :cond_d

    .line 175
    iget-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->restoredTiles:Ljava/util/Map;

    .line 177
    if-eqz p1, :cond_c

    .line 179
    const-string v0, "new_value"

    .line 181
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 183
    move-result-object v0

    .line 186
    if-eqz v0, :cond_7

    .line 187
    const-string v1, ","

    .line 189
    filled-new-array {v1}, [Ljava/lang/String;

    .line 191
    move-result-object v1

    .line 194
    invoke-static {v0, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 195
    move-result-object v0

    .line 198
    goto :goto_2

    .line 199
    :cond_7
    sget-object v0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 200
    :goto_2
    const-string v1, "previous_value"

    .line 202
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 204
    move-result-object p2

    .line 207
    if-eqz p2, :cond_8

    .line 208
    const-string v1, ","

    .line 210
    filled-new-array {v1}, [Ljava/lang/String;

    .line 212
    move-result-object v1

    .line 215
    invoke-static {p2, v1}, Lkotlin/text/StringsKt__StringsKt;->split$default(Ljava/lang/CharSequence;[Ljava/lang/String;)Ljava/util/List;

    .line 216
    move-result-object p2

    .line 219
    goto :goto_3

    .line 220
    :cond_8
    sget-object p2, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 221
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    .line 223
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 225
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 228
    move-result-object v2

    .line 231
    :cond_9
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 232
    move-result v3

    .line 235
    if-eqz v3, :cond_a

    .line 236
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 238
    move-result-object v3

    .line 241
    move-object v4, v3

    .line 242
    check-cast v4, Ljava/lang/String;

    .line 243
    invoke-interface {p1, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 245
    move-result v4

    .line 248
    xor-int/lit8 v4, v4, 0x1

    .line 249
    if-eqz v4, :cond_9

    .line 251
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 253
    goto :goto_4

    .line 256
    :cond_a
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 257
    move-result p1

    .line 260
    xor-int/lit8 p1, p1, 0x1

    .line 261
    if-eqz p1, :cond_b

    .line 263
    iget-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->qsHost:Lcom/android/systemui/qs/QSHost;

    .line 265
    invoke-interface {p1, v1}, Lcom/android/systemui/qs/QSHost;->removeTiles(Ljava/util/Collection;)V

    .line 267
    :cond_b
    iget-object p1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 270
    monitor-enter p1

    .line 272
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 273
    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 275
    iget-object v1, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 278
    invoke-static {p2, v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->plus(Ljava/lang/Iterable;Ljava/util/Collection;)Ljava/util/List;

    .line 280
    move-result-object p2

    .line 283
    invoke-virtual {v1, p2}, Landroid/util/ArraySet;->addAll(Ljava/util/Collection;)Z

    .line 284
    const-string p2, ","

    .line 287
    iget-object v0, p0, Lcom/android/systemui/qs/AutoAddTracker;->autoAdded:Landroid/util/ArraySet;

    .line 289
    invoke-static {p2, v0}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 291
    move-result-object p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 294
    monitor-exit p1

    .line 295
    invoke-virtual {p0, p2}, Lcom/android/systemui/qs/AutoAddTracker;->saveTiles(Ljava/lang/String;)V

    .line 296
    goto :goto_5

    .line 299
    :catchall_0
    move-exception p0

    .line 300
    monitor-exit p1

    .line 301
    throw p0

    .line 302
    :cond_c
    const-string p1, "AutoAddTracker"

    .line 303
    iget p0, p0, Lcom/android/systemui/qs/AutoAddTracker;->userId:I

    .line 305
    const-string p2, "qs_auto_tiles restored before sysui_qs_tiles for user "

    .line 307
    invoke-static {p2, p0, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 309
    :cond_d
    :goto_5
    return-void
    .line 312
.end method
