.class public final Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $context:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;->$context:Landroid/content/Context;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 11

    .line 1
    sget-object v0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->logger:Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper$updateAll$1;->$context:Landroid/content/Context;

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 11
    move-result-object v1

    .line 14
    const-string v2, "NotificationCenter"

    .line 15
    invoke-static {v1, v2}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    .line 17
    move-result-object v1

    .line 20
    const/4 v2, 0x0

    .line 21
    const/4 v3, 0x0

    .line 22
    if-eqz v1, :cond_4

    .line 23
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 29
    move-result v4

    .line 32
    if-nez v4, :cond_0

    .line 33
    move-object v4, v3

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v4

    .line 40
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 41
    move-result v5

    .line 44
    if-nez v5, :cond_1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    move-object v5, v4

    .line 48
    check-cast v5, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 49
    const-string/jumbo v6, "version"

    .line 51
    invoke-virtual {v5, v6, v2}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    .line 54
    move-result v5

    .line 57
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 58
    move-result-object v7

    .line 61
    move-object v8, v7

    .line 62
    check-cast v8, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 63
    invoke-virtual {v8, v6, v2}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    .line 65
    move-result v8

    .line 68
    if-ge v5, v8, :cond_3

    .line 69
    move-object v4, v7

    .line 71
    move v5, v8

    .line 72
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 73
    move-result v7

    .line 76
    if-nez v7, :cond_2

    .line 77
    :goto_0
    check-cast v4, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 79
    goto :goto_1

    .line 81
    :cond_4
    move-object v4, v3

    .line 82
    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    .line 83
    const-string v5, "cloud data NotificationCenter="

    .line 85
    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 90
    const-string v5, "\n"

    .line 93
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 98
    move-result-object v1

    .line 101
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    if-eqz v4, :cond_5

    .line 105
    const-string/jumbo v1, "unfold_limit"

    .line 107
    const/4 v6, 0x3

    .line 110
    invoke-virtual {v4, v1, v6}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getInt(Ljava/lang/String;I)I

    .line 111
    :cond_5
    sget-boolean v1, Lcom/android/systemui/statusbar/notification/unimportant/FoldTool;->isInit:Z

    .line 114
    if-eqz v4, :cond_6

    .line 116
    const-string v1, "localThreshold"

    .line 118
    const-string v6, "0.5"

    .line 120
    invoke-virtual {v4, v1, v6}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 122
    :cond_6
    const-string v1, "[]"

    .line 125
    if-eqz v4, :cond_7

    .line 127
    const-string/jumbo v6, "xmsf_notify"

    .line 129
    invoke-virtual {v4, v6, v1}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 132
    move-result-object v4

    .line 135
    if-eqz v4, :cond_7

    .line 136
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->jsonArrayStr2StrList(Ljava/lang/String;)Ljava/util/List;

    .line 138
    move-result-object v4

    .line 141
    new-instance v6, Ljava/lang/StringBuilder;

    .line 142
    const-string v7, "XMSF_NOTIFY:"

    .line 144
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 146
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v6

    .line 155
    const-string v7, "CloudDataHelper"

    .line 156
    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    check-cast v4, Ljava/util/ArrayList;

    .line 161
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    .line 163
    :cond_7
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 166
    move-result-object v4

    .line 169
    const-string/jumbo v6, "systemui_local_score"

    .line 170
    invoke-static {v4, v6}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataList(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/util/List;

    .line 173
    move-result-object v4

    .line 176
    if-eqz v4, :cond_d

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    .line 179
    const-string v7, "cloud data systemui_local_score="

    .line 181
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 183
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v6

    .line 195
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    new-instance v6, Ljava/util/ArrayList;

    .line 199
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 201
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 204
    move-result-object v4

    .line 207
    :cond_8
    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    .line 208
    move-result v7

    .line 211
    if-eqz v7, :cond_c

    .line 212
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 214
    move-result-object v7

    .line 217
    move-object v8, v7

    .line 218
    check-cast v8, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 219
    if-eqz v8, :cond_9

    .line 221
    const-string v9, "pkg"

    .line 223
    const-string v10, ""

    .line 225
    invoke-virtual {v8, v9, v10}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 227
    move-result-object v8

    .line 230
    goto :goto_3

    .line 231
    :cond_9
    move-object v8, v3

    .line 232
    :goto_3
    const/4 v9, 0x1

    .line 233
    if-eqz v8, :cond_b

    .line 234
    invoke-static {v8}, Lkotlin/text/StringsKt__StringsKt;->isBlank(Ljava/lang/CharSequence;)Z

    .line 236
    move-result v8

    .line 239
    if-eqz v8, :cond_a

    .line 240
    goto :goto_4

    .line 242
    :cond_a
    move v8, v2

    .line 243
    goto :goto_5

    .line 244
    :cond_b
    :goto_4
    move v8, v9

    .line 245
    :goto_5
    xor-int/2addr v8, v9

    .line 246
    if-eqz v8, :cond_8

    .line 247
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    goto :goto_2

    .line 252
    :cond_c
    new-instance v3, Ljava/util/ArrayList;

    .line 253
    invoke-static {v6}, Lkotlin/collections/CollectionsKt__IteratorsJVMKt;->collectionSizeOrDefault(Ljava/lang/Iterable;)I

    .line 255
    move-result v2

    .line 258
    invoke-direct {v3, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 259
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 262
    move-result-object v2

    .line 265
    :goto_6
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 266
    move-result v4

    .line 269
    if-eqz v4, :cond_d

    .line 270
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 272
    move-result-object v4

    .line 275
    check-cast v4, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;

    .line 276
    invoke-virtual {v4}, Landroid/provider/MiuiSettings$SettingsCloudData$CloudData;->json()Lorg/json/JSONObject;

    .line 278
    move-result-object v4

    .line 281
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 282
    goto :goto_6

    .line 285
    :cond_d
    const-class v2, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;

    .line 286
    invoke-static {v2}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 288
    move-result-object v2

    .line 291
    check-cast v2, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;

    .line 292
    invoke-virtual {v2, v3}, Lcom/android/systemui/statusbar/notification/unimportant/UnimportantSdk;->updatePushFilter(Ljava/util/List;)V

    .line 294
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 297
    move-result-object p0

    .line 300
    const-string/jumbo v2, "systemui_local_whitelist"

    .line 301
    const-string/jumbo v3, "whitelist"

    .line 304
    invoke-static {p0, v2, v3, v1}, Landroid/provider/MiuiSettings$SettingsCloudData;->getCloudDataString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 307
    move-result-object p0

    .line 310
    if-eqz p0, :cond_e

    .line 311
    new-instance v1, Ljava/lang/StringBuilder;

    .line 313
    const-string v2, "cloud data systemui_local_whitelist="

    .line 315
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 317
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 320
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 326
    move-result-object v1

    .line 329
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->jsonArrayStr2StrList(Ljava/lang/String;)Ljava/util/List;

    .line 333
    move-result-object p0

    .line 336
    check-cast p0, Ljava/util/ArrayList;

    .line 337
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 339
    :cond_e
    sget-object p0, Lcom/android/systemui/statusbar/notification/unimportant/FoldCloudDataHelper;->logger:Lcom/android/systemui/log/UnimportantNotifLogger;

    .line 342
    if-eqz p0, :cond_f

    .line 344
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object v0

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/systemui/log/UnimportantNotifLogger;->logFoldCloudData(Ljava/lang/String;)V

    .line 350
    :cond_f
    return-void
    .line 353
.end method
