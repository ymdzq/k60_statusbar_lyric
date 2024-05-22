.class public final Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $data:Lcom/android/systemui/media/controls/models/player/MediaData;

.field public final synthetic $immediately:Z

.field public final synthetic $key:Ljava/lang/String;

.field public final synthetic $oldKey:Ljava/lang/String;

.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/controls/models/player/MediaData;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Z)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$r8$classId:I

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Z)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    iput-object p2, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    iput-object p4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    iput-boolean p5, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto/16 :goto_6

    .line 7
    :pswitch_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 9
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 11
    if-eqz v0, :cond_0

    .line 13
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 17
    new-instance v2, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 19
    invoke-direct {v2, v0}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 21
    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    .line 27
    const/4 v1, 0x0

    .line 29
    const/4 v2, 0x1

    .line 30
    if-eqz v0, :cond_1

    .line 31
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 33
    invoke-static {v3, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    move-result v0

    .line 38
    if-nez v0, :cond_1

    .line 39
    move v0, v2

    .line 41
    goto :goto_0

    .line 42
    :cond_1
    move v0, v1

    .line 43
    :goto_0
    if-eqz v0, :cond_2

    .line 44
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 46
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 48
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    .line 50
    invoke-static {v3}, Lkotlin/jvm/internal/TypeIntrinsics;->asMutableMap(Ljava/lang/Object;)Ljava/util/Map;

    .line 52
    move-result-object v3

    .line 55
    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object v3

    .line 59
    check-cast v3, Ljava/util/Set;

    .line 60
    if-eqz v3, :cond_2

    .line 62
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 64
    iget-object v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 66
    iget-object v4, v4, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 68
    invoke-interface {v4, v5, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    move-result-object v3

    .line 73
    check-cast v3, Ljava/util/Set;

    .line 74
    :cond_2
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 76
    iget-object v3, v3, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 78
    if-eqz v3, :cond_4

    .line 80
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 82
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 84
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 86
    check-cast v3, Ljava/util/LinkedHashMap;

    .line 88
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    move-result-object v3

    .line 93
    check-cast v3, Ljava/util/Set;

    .line 94
    if-eqz v3, :cond_3

    .line 96
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 98
    new-instance v5, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 100
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 102
    invoke-direct {v5, v4}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 104
    invoke-interface {v3, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 107
    goto :goto_1

    .line 110
    :cond_3
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 111
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 113
    iget-object v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 115
    new-instance v6, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 117
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 119
    invoke-direct {v6, v4}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 121
    filled-new-array {v6}, [Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 124
    move-result-object v4

    .line 127
    new-instance v6, Ljava/util/LinkedHashSet;

    .line 128
    invoke-static {v2}, Lkotlin/collections/MapsKt__MapsJVMKt;->mapCapacity(I)I

    .line 130
    move-result v7

    .line 133
    invoke-direct {v6, v7}, Ljava/util/LinkedHashSet;-><init>(I)V

    .line 134
    aget-object v4, v4, v1

    .line 137
    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 139
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 142
    invoke-interface {v3, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    move-result-object v3

    .line 147
    check-cast v3, Ljava/util/Set;

    .line 148
    :cond_4
    :goto_1
    iget-object v3, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 150
    iget-object v3, v3, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->packageControllers:Ljava/util/LinkedHashMap;

    .line 152
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 154
    iget-object v4, v4, Lcom/android/systemui/media/controls/models/player/MediaData;->packageName:Ljava/lang/String;

    .line 156
    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 158
    move-result-object v3

    .line 161
    check-cast v3, Ljava/util/List;

    .line 162
    const/4 v4, 0x0

    .line 164
    if-eqz v3, :cond_7

    .line 165
    new-instance v5, Ljava/util/ArrayList;

    .line 167
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 169
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 172
    move-result-object v3

    .line 175
    :cond_5
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    move-result v6

    .line 179
    if-eqz v6, :cond_8

    .line 180
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    move-result-object v6

    .line 185
    move-object v7, v6

    .line 186
    check-cast v7, Landroid/media/session/MediaController;

    .line 187
    invoke-virtual {v7}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 189
    move-result-object v7

    .line 192
    if-eqz v7, :cond_6

    .line 193
    invoke-virtual {v7}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 195
    move-result v7

    .line 198
    const/4 v8, 0x2

    .line 199
    if-ne v7, v8, :cond_6

    .line 200
    move v7, v2

    .line 202
    goto :goto_3

    .line 203
    :cond_6
    move v7, v1

    .line 204
    :goto_3
    if-eqz v7, :cond_5

    .line 205
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    goto :goto_2

    .line 210
    :cond_7
    move-object v5, v4

    .line 211
    :cond_8
    if-eqz v5, :cond_9

    .line 212
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 214
    move-result v3

    .line 217
    if-ne v3, v2, :cond_9

    .line 218
    move v1, v2

    .line 220
    :cond_9
    if-eqz v1, :cond_a

    .line 221
    invoke-static {v5}, Lkotlin/collections/CollectionsKt___CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 223
    move-result-object v1

    .line 226
    move-object v4, v1

    .line 227
    check-cast v4, Landroid/media/session/MediaController;

    .line 228
    :cond_a
    if-nez v0, :cond_c

    .line 230
    if-eqz v4, :cond_c

    .line 232
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 234
    move-result-object v0

    .line 237
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 238
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 240
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 242
    move-result v0

    .line 245
    if-nez v0, :cond_c

    .line 246
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 248
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->tokensWithNotifications:Ljava/util/Set;

    .line 250
    new-instance v1, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 252
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 254
    move-result-object v3

    .line 257
    invoke-direct {v1, v3}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 258
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 261
    move-result v0

    .line 264
    if-nez v0, :cond_b

    .line 265
    goto :goto_4

    .line 267
    :cond_b
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 268
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 270
    iget-object v1, v1, Lcom/android/systemui/media/controls/models/player/MediaData;->token:Landroid/media/session/MediaSession$Token;

    .line 272
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 274
    move-result-object v3

    .line 277
    new-instance v5, Ljava/lang/StringBuilder;

    .line 278
    const-string v6, "filtering key="

    .line 280
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 282
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 285
    const-string v0, " local="

    .line 288
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    const-string v0, " remote="

    .line 296
    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 298
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 304
    move-result-object v0

    .line 307
    const-string v1, "MediaSessionBasedFilter"

    .line 308
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 313
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->keyedTokens:Ljava/util/Map;

    .line 315
    iget-object v1, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 317
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 319
    invoke-virtual {v0, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    move-result-object v0

    .line 324
    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 325
    check-cast v0, Ljava/util/Set;

    .line 328
    new-instance v1, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;

    .line 330
    invoke-virtual {v4}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 332
    move-result-object v3

    .line 335
    invoke-direct {v1, v3}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$TokenId;-><init>(Landroid/media/session/MediaSession$Token;)V

    .line 336
    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    .line 339
    move-result v0

    .line 342
    if-nez v0, :cond_d

    .line 343
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 345
    iget-object p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 347
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 349
    new-instance v1, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;

    .line 352
    invoke-direct {v1, v0, p0, v2}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;I)V

    .line 354
    iget-object p0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    .line 357
    invoke-interface {p0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 359
    goto :goto_5

    .line 362
    :cond_c
    :goto_4
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 363
    iget-object v4, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 365
    iget-object v5, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    .line 367
    iget-object v6, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 369
    iget-boolean v7, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    .line 371
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 373
    new-instance p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;

    .line 376
    move-object v2, p0

    .line 378
    move-object v3, v0

    .line 379
    invoke-direct/range {v2 .. v7}, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;-><init>(Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;Z)V

    .line 380
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->foregroundExecutor:Ljava/util/concurrent/Executor;

    .line 383
    invoke-interface {v0, p0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    .line 385
    :cond_d
    :goto_5
    return-void

    .line 388
    :goto_6
    iget-object v0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->this$0:Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;

    .line 389
    iget-object v0, v0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter;->listeners:Ljava/util/Set;

    .line 391
    invoke-static {v0}, Lkotlin/collections/CollectionsKt___CollectionsKt;->toSet(Ljava/lang/Iterable;)Ljava/util/Set;

    .line 393
    move-result-object v0

    .line 396
    iget-object v9, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$oldKey:Ljava/lang/String;

    .line 397
    iget-object v10, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$key:Ljava/lang/String;

    .line 399
    iget-object v11, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$data:Lcom/android/systemui/media/controls/models/player/MediaData;

    .line 401
    iget-boolean p0, p0, Lcom/android/systemui/media/controls/pipeline/MediaSessionBasedFilter$onMediaDataLoaded$1;->$immediately:Z

    .line 403
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 405
    move-result-object v0

    .line 408
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 409
    move-result v1

    .line 412
    if-eqz v1, :cond_e

    .line 413
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 415
    move-result-object v1

    .line 418
    check-cast v1, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;

    .line 419
    const/4 v6, 0x0

    .line 421
    const/4 v7, 0x0

    .line 422
    const/16 v8, 0x30

    .line 423
    move-object v2, v9

    .line 425
    move-object v3, v10

    .line 426
    move-object v4, v11

    .line 427
    move v5, p0

    .line 428
    invoke-static/range {v1 .. v8}, Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener$DefaultImpls;->onMediaDataLoaded$default(Lcom/android/systemui/media/controls/pipeline/MediaDataManager$Listener;Ljava/lang/String;Ljava/lang/String;Lcom/android/systemui/media/controls/models/player/MediaData;ZIZI)V

    .line 429
    goto :goto_7

    .line 432
    :cond_e
    return-void

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 434
.end method
