.class public final Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/miui/systemui/functions/SettingsObserverImpl;


# direct methods
.method public constructor <init>(Lcom/miui/systemui/functions/SettingsObserverImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;->this$0:Lcom/miui/systemui/functions/SettingsObserverImpl;

    .line 2
    iget-object p1, p1, Lcom/miui/systemui/functions/SettingsObserverImpl;->bgHandler:Landroid/os/Handler;

    .line 4
    invoke-direct {p0, p1}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onChange(ZLjava/util/Collection;I)V
    .locals 17

    .line 1
    move-object/from16 v1, p0

    .line 2
    invoke-interface/range {p2 .. p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v2

    .line 7
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_15

    .line 12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    move-object v3, v0

    .line 18
    check-cast v3, Landroid/net/Uri;

    .line 19
    iget-object v4, v1, Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;->this$0:Lcom/miui/systemui/functions/SettingsObserverImpl;

    .line 21
    const-string v5, ""

    .line 23
    iget-object v0, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mListeningUris:Landroid/util/ArrayMap;

    .line 25
    invoke-virtual {v0, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v0

    .line 30
    move-object v6, v0

    .line 31
    check-cast v6, Ljava/lang/String;

    .line 32
    if-nez v6, :cond_0

    .line 34
    goto/16 :goto_7

    .line 36
    :cond_0
    iget-object v0, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mCallbacks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 38
    invoke-virtual {v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    move-result-object v0

    .line 43
    move-object v7, v0

    .line 44
    check-cast v7, Ljava/util/Set;

    .line 45
    if-nez v7, :cond_1

    .line 47
    goto/16 :goto_7

    .line 49
    :cond_1
    new-instance v8, Lkotlin/jvm/internal/Ref$ObjectRef;

    .line 51
    invoke-direct {v8}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    .line 53
    const-string v0, "getValueByUri  firstValue:"

    .line 56
    const-string v9, "getValueByUri  throwException"

    .line 58
    invoke-virtual {v4, v6}, Lcom/miui/systemui/functions/SettingsObserverImpl;->getSpecifiedUserId(Ljava/lang/String;)I

    .line 60
    move-result v10

    .line 63
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mValueTypeMap:Landroid/util/ArrayMap;

    .line 64
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v11

    .line 69
    check-cast v11, Ljava/lang/Integer;

    .line 70
    const/4 v12, 0x0

    .line 72
    if-nez v11, :cond_2

    .line 73
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 75
    move-result-object v11

    .line 78
    :cond_2
    if-nez v11, :cond_3

    .line 79
    goto :goto_1

    .line 81
    :cond_3
    invoke-virtual {v11}, Ljava/lang/Integer;->intValue()I

    .line 82
    move-result v12

    .line 85
    :goto_1
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mDefaultMap:Landroid/util/ArrayMap;

    .line 86
    invoke-virtual {v11, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    move-result-object v11

    .line 91
    check-cast v11, Ljava/lang/Long;

    .line 92
    const-wide/16 v13, 0x0

    .line 94
    if-nez v11, :cond_4

    .line 96
    invoke-static {v13, v14}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 98
    move-result-object v11

    .line 101
    :cond_4
    if-nez v11, :cond_5

    .line 102
    goto :goto_2

    .line 104
    :cond_5
    invoke-virtual {v11}, Ljava/lang/Long;->longValue()J

    .line 105
    move-result-wide v13

    .line 108
    :goto_2
    :try_start_0
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 109
    move-result-object v11

    .line 112
    sget-object v15, Landroid/provider/Settings$Secure;->CONTENT_URI:Landroid/net/Uri;

    .line 113
    invoke-virtual {v15}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 115
    move-result-object v15

    .line 118
    invoke-static {v11, v15}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 119
    move-result v11

    .line 122
    const/4 v15, 0x2

    .line 123
    if-eqz v11, :cond_a

    .line 124
    if-eqz v12, :cond_9

    .line 126
    const/4 v11, 0x1

    .line 128
    if-eq v12, v11, :cond_8

    .line 129
    if-eq v12, v15, :cond_7

    .line 131
    const/4 v11, 0x3

    .line 133
    if-eq v12, v11, :cond_6

    .line 134
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 136
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 138
    move-result-object v11

    .line 141
    goto/16 :goto_3

    .line 142
    :cond_6
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 144
    long-to-float v15, v13

    .line 146
    invoke-static {v11, v6, v15, v10}, Landroid/provider/Settings$Secure;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 147
    move-result v11

    .line 150
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 151
    move-result-object v11

    .line 154
    goto/16 :goto_3

    .line 155
    :cond_7
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 157
    invoke-static {v11, v6, v13, v14, v10}, Landroid/provider/Settings$Secure;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 159
    move-result-wide v15

    .line 162
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 163
    move-result-object v11

    .line 166
    goto/16 :goto_3

    .line 167
    :cond_8
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 169
    long-to-int v15, v13

    .line 171
    invoke-static {v11, v6, v15, v10}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 172
    move-result v11

    .line 175
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 176
    move-result-object v11

    .line 179
    goto/16 :goto_3

    .line 180
    :cond_9
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 182
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$Secure;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 184
    move-result-object v11

    .line 187
    goto/16 :goto_3

    .line 188
    :cond_a
    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 190
    move-result-object v11

    .line 193
    sget-object v16, Landroid/provider/Settings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 194
    invoke-virtual/range {v16 .. v16}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 196
    move-result-object v15

    .line 199
    invoke-static {v11, v15}, Lkotlin/text/StringsKt__StringsKt;->contains$default(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 200
    move-result v11

    .line 203
    if-eqz v11, :cond_f

    .line 204
    if-eqz v12, :cond_e

    .line 206
    const/4 v11, 0x1

    .line 208
    if-eq v12, v11, :cond_d

    .line 209
    const/4 v11, 0x2

    .line 211
    if-eq v12, v11, :cond_c

    .line 212
    const/4 v11, 0x3

    .line 214
    if-eq v12, v11, :cond_b

    .line 215
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 217
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 219
    move-result-object v11

    .line 222
    goto :goto_3

    .line 223
    :cond_b
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 224
    long-to-float v15, v13

    .line 226
    invoke-static {v11, v6, v15}, Landroid/provider/Settings$Global;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    .line 227
    move-result v11

    .line 230
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 231
    move-result-object v11

    .line 234
    goto :goto_3

    .line 235
    :cond_c
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 236
    invoke-static {v11, v6, v13, v14}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    .line 238
    move-result-wide v15

    .line 241
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 242
    move-result-object v11

    .line 245
    goto :goto_3

    .line 246
    :cond_d
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 247
    long-to-int v15, v13

    .line 249
    invoke-static {v11, v6, v15}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 250
    move-result v11

    .line 253
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 254
    move-result-object v11

    .line 257
    goto :goto_3

    .line 258
    :cond_e
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 259
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 261
    move-result-object v11

    .line 264
    goto :goto_3

    .line 265
    :cond_f
    if-eqz v12, :cond_13

    .line 266
    const/4 v11, 0x1

    .line 268
    if-eq v12, v11, :cond_12

    .line 269
    const/4 v11, 0x2

    .line 271
    if-eq v12, v11, :cond_11

    .line 272
    const/4 v11, 0x3

    .line 274
    if-eq v12, v11, :cond_10

    .line 275
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 277
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 279
    move-result-object v11

    .line 282
    goto :goto_3

    .line 283
    :cond_10
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 284
    long-to-float v15, v13

    .line 286
    invoke-static {v11, v6, v15, v10}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    .line 287
    move-result v11

    .line 290
    invoke-static {v11}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    .line 291
    move-result-object v11

    .line 294
    goto :goto_3

    .line 295
    :cond_11
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 296
    invoke-static {v11, v6, v13, v14, v10}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    .line 298
    move-result-wide v15

    .line 301
    invoke-static/range {v15 .. v16}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    .line 302
    move-result-object v11

    .line 305
    goto :goto_3

    .line 306
    :cond_12
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 307
    long-to-int v15, v13

    .line 309
    invoke-static {v11, v6, v15, v10}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    .line 310
    move-result v11

    .line 313
    invoke-static {v11}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    .line 314
    move-result-object v11

    .line 317
    goto :goto_3

    .line 318
    :cond_13
    iget-object v11, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->mContentResolver:Landroid/content/ContentResolver;

    .line 319
    invoke-static {v11, v6, v10}, Landroid/provider/Settings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    .line 321
    move-result-object v11
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 324
    :goto_3
    :try_start_1
    new-instance v15, Ljava/lang/StringBuilder;

    .line 325
    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 327
    invoke-virtual {v15, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 330
    const-string v0, "  uri:"

    .line 333
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 335
    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 338
    const-string v0, " key:"

    .line 341
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {v15, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 346
    const-string v0, " def:"

    .line 349
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 351
    invoke-virtual {v15, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 354
    const-string v0, " dataType:"

    .line 357
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 359
    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 362
    const-string v0, " userHandle:"

    .line 365
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 367
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 370
    const-string v0, " "

    .line 373
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 375
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 378
    move-result-object v0

    .line 381
    invoke-static {v0}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 382
    goto :goto_6

    .line 385
    :catch_0
    move-exception v0

    .line 386
    goto :goto_5

    .line 387
    :catch_1
    move-exception v0

    .line 388
    goto :goto_4

    .line 389
    :catchall_0
    move-object v11, v5

    .line 390
    goto :goto_6

    .line 391
    :goto_4
    move-object v11, v5

    .line 392
    :goto_5
    :try_start_2
    invoke-virtual {v0}, Landroid/provider/Settings$SettingNotFoundException;->getCause()Ljava/lang/Throwable;

    .line 393
    move-result-object v0

    .line 396
    new-instance v10, Ljava/lang/StringBuilder;

    .line 397
    invoke-direct {v10, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 399
    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 402
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 405
    move-result-object v0

    .line 408
    invoke-static {v0}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 409
    :catchall_1
    :goto_6
    if-eqz v11, :cond_14

    .line 412
    move-object v5, v11

    .line 414
    :cond_14
    iput-object v5, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 415
    iget-object v0, v4, Lcom/miui/systemui/functions/SettingsObserverImpl;->handler:Landroid/os/Handler;

    .line 417
    new-instance v4, Lcom/miui/systemui/functions/SettingsObserverImpl$reloadSetting$1;

    .line 419
    invoke-direct {v4, v7, v6, v8}, Lcom/miui/systemui/functions/SettingsObserverImpl$reloadSetting$1;-><init>(Ljava/util/Set;Ljava/lang/String;Lkotlin/jvm/internal/Ref$ObjectRef;)V

    .line 421
    invoke-virtual {v0, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 424
    :goto_7
    iget-object v0, v1, Lcom/miui/systemui/functions/SettingsObserverImpl$Observer;->this$0:Lcom/miui/systemui/functions/SettingsObserverImpl;

    .line 427
    new-instance v4, Ljava/lang/StringBuilder;

    .line 429
    const-string v5, "ContentObserver onChange keys:"

    .line 431
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 433
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 436
    const-string v3, "  selfChange:"

    .line 439
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    move/from16 v3, p1

    .line 444
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 446
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 449
    move-result-object v4

    .line 452
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 453
    invoke-static {v4}, Lcom/miui/systemui/functions/SettingsObserverImpl;->log(Ljava/lang/String;)V

    .line 456
    goto/16 :goto_0

    .line 459
    :cond_15
    return-void
    .line 461
.end method
