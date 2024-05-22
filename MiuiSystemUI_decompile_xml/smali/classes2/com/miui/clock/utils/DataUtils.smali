.class public abstract Lcom/miui/clock/utils/DataUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static getCaloriesData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/miui/clock/module/HealthBean;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/HealthBean;-><init>()V

    .line 15
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    const-string v0, "finished"

    .line 21
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 26
    if-ltz v0, :cond_2

    .line 27
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setStandCountNow(I)V

    .line 33
    :cond_2
    const-string v0, "goal"

    .line 36
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 41
    if-ltz v0, :cond_3

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 44
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setStandCountTarget(I)V

    .line 48
    :cond_3
    const-string v0, "last_24"

    .line 51
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    move-result v0

    .line 56
    if-ltz v0, :cond_4

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Lcom/miui/clock/module/HealthBean;->setCaloriesList(Ljava/lang/String;)V

    .line 63
    :cond_4
    :goto_0
    return-object p1
.end method

.method public static getHealthBean(Ljava/lang/ref/WeakReference;ILcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 16

    .line 1
    move/from16 v0, p1

    .line 2
    move-object/from16 v1, p2

    .line 4
    const-string v2, "ClockDataUtils"

    .line 6
    const-string v3, "before getHealthBean"

    .line 8
    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    const-string v3, "content://com.mi.health.provider.main/activity/steps/brief"

    .line 13
    const-string v4, "content://com.mi.health.provider.main/widget/stand/simple"

    .line 15
    const-string v5, "content://com.mi.health.provider.main/sleep/report"

    .line 17
    const/4 v6, 0x0

    .line 19
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v7

    .line 23
    check-cast v7, Landroid/content/Context;

    .line 24
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 26
    move-result-object v8
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 29
    const-string v7, ", type = "

    .line 30
    const/4 v14, 0x0

    .line 32
    const-string v15, ", count = "

    .line 33
    const-string v13, "getHealthBean, cursor = "

    .line 35
    const-string v9, "content://com.mi.health.provider.main/"

    .line 37
    packed-switch v0, :pswitch_data_0

    .line 39
    :pswitch_0
    move-object v0, v1

    .line 42
    goto/16 :goto_5

    .line 43
    :pswitch_1
    :try_start_1
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 45
    move-result-object v9

    .line 48
    const/4 v10, 0x0

    .line 49
    const/4 v11, 0x0

    .line 50
    const/4 v12, 0x0

    .line 51
    const/4 v3, 0x0

    .line 52
    move-object v5, v13

    .line 53
    move-object v13, v3

    .line 54
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 55
    move-result-object v6

    .line 58
    new-instance v3, Ljava/lang/StringBuilder;

    .line 59
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    if-nez v6, :cond_0

    .line 70
    goto :goto_0

    .line 72
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 73
    move-result v14

    .line 76
    :goto_0
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 86
    move-result-object v0

    .line 89
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-static {v6, v1}, Lcom/miui/clock/utils/DataUtils;->getSleepData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 93
    move-result-object v0

    .line 96
    goto/16 :goto_5

    .line 97
    :pswitch_2
    move-object v5, v13

    .line 99
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 100
    move-result-object v9

    .line 103
    const/4 v10, 0x0

    .line 104
    const/4 v11, 0x0

    .line 105
    const/4 v12, 0x0

    .line 106
    const/4 v13, 0x0

    .line 107
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 108
    move-result-object v6

    .line 111
    new-instance v3, Ljava/lang/StringBuilder;

    .line 112
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    if-nez v6, :cond_1

    .line 123
    goto :goto_1

    .line 125
    :cond_1
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 126
    move-result v14

    .line 129
    :goto_1
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 130
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 142
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    invoke-static {v6, v1}, Lcom/miui/clock/utils/DataUtils;->getSportTimeData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 146
    move-result-object v0

    .line 149
    goto/16 :goto_5

    .line 150
    :pswitch_3
    move-object v5, v13

    .line 152
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 153
    move-result-object v9

    .line 156
    const/4 v10, 0x0

    .line 157
    const/4 v11, 0x0

    .line 158
    const/4 v12, 0x0

    .line 159
    const/4 v13, 0x0

    .line 160
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 161
    move-result-object v6

    .line 164
    new-instance v3, Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    if-nez v6, :cond_2

    .line 176
    goto :goto_2

    .line 178
    :cond_2
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 179
    move-result v14

    .line 182
    :goto_2
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 183
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 189
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 192
    move-result-object v0

    .line 195
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    invoke-static {v6, v1}, Lcom/miui/clock/utils/DataUtils;->getStandCountData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 199
    move-result-object v0

    .line 202
    goto :goto_5

    .line 203
    :pswitch_4
    move-object v5, v13

    .line 204
    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 205
    move-result-object v9

    .line 208
    const/4 v10, 0x0

    .line 209
    const/4 v11, 0x0

    .line 210
    const/4 v12, 0x0

    .line 211
    const/4 v13, 0x0

    .line 212
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 213
    move-result-object v6

    .line 216
    new-instance v3, Ljava/lang/StringBuilder;

    .line 217
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 219
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 222
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    if-nez v6, :cond_3

    .line 228
    goto :goto_3

    .line 230
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 231
    move-result v14

    .line 234
    :goto_3
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 235
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 238
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 241
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 244
    move-result-object v0

    .line 247
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-static {v6, v1}, Lcom/miui/clock/utils/DataUtils;->getCaloriesData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 251
    move-result-object v0

    .line 254
    goto :goto_5

    .line 255
    :pswitch_5
    move-object v5, v13

    .line 256
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 257
    move-result-object v9

    .line 260
    const/4 v10, 0x0

    .line 261
    const/4 v11, 0x0

    .line 262
    const/4 v12, 0x0

    .line 263
    const/4 v13, 0x0

    .line 264
    invoke-virtual/range {v8 .. v13}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 265
    move-result-object v6

    .line 268
    new-instance v3, Ljava/lang/StringBuilder;

    .line 269
    invoke-direct {v3, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 271
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 274
    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 277
    if-nez v6, :cond_4

    .line 280
    goto :goto_4

    .line 282
    :cond_4
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    .line 283
    move-result v14

    .line 286
    :goto_4
    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 287
    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 293
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 296
    move-result-object v0

    .line 299
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    invoke-static {v6, v1}, Lcom/miui/clock/utils/DataUtils;->getStepCountData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;

    .line 303
    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 306
    :goto_5
    if-eqz v6, :cond_6

    .line 307
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 309
    goto :goto_6

    .line 312
    :catchall_0
    move-exception v0

    .line 313
    goto :goto_7

    .line 314
    :catch_0
    move-exception v0

    .line 315
    :try_start_2
    const-string v3, "DataUtils"

    .line 316
    const-string v4, "get health data fail"

    .line 318
    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 320
    if-eqz v6, :cond_5

    .line 323
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 325
    :cond_5
    move-object v0, v1

    .line 328
    :cond_6
    :goto_6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 329
    const-string v3, "getHealthBean end, bean = "

    .line 331
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 333
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 336
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 339
    move-result-object v1

    .line 342
    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    return-object v0

    .line 346
    :goto_7
    if-eqz v6, :cond_7

    .line 347
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 349
    :cond_7
    throw v0

    .line 352
    nop

    .line 353
    :pswitch_data_0
    .packed-switch 0x1f4
        :pswitch_5
        :pswitch_5
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
    .line 354
.end method

.method public static getSleepData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 2

    .line 1
    if-eqz p0, :cond_2

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/miui/clock/module/HealthBean;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/HealthBean;-><init>()V

    .line 15
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    const-string v0, "duration"

    .line 21
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 26
    if-ltz v0, :cond_2

    .line 27
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 29
    move-result-wide v0

    .line 32
    invoke-virtual {p1, v0, v1}, Lcom/miui/clock/module/HealthBean;->setSleepDuration(J)V

    .line 33
    :cond_2
    :goto_0
    return-object p1
    .line 36
.end method

.method public static getSportTimeData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/miui/clock/module/HealthBean;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/HealthBean;-><init>()V

    .line 15
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    const-string v0, "finished"

    .line 21
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 26
    if-ltz v0, :cond_2

    .line 27
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setSportTimeNow(I)V

    .line 33
    :cond_2
    const-string v0, "goal"

    .line 36
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 41
    if-ltz v0, :cond_3

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 44
    move-result v0

    .line 47
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setSportTimeTarget(I)V

    .line 48
    :cond_3
    const-string v0, "last_24"

    .line 51
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 53
    move-result v0

    .line 56
    if-ltz v0, :cond_4

    .line 57
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 59
    move-result-object p0

    .line 62
    invoke-virtual {p1, p0}, Lcom/miui/clock/module/HealthBean;->setSportTimeList(Ljava/lang/String;)V

    .line 63
    :cond_4
    :goto_0
    return-object p1
.end method

.method public static getStandCountData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 1

    .line 1
    if-eqz p0, :cond_3

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/miui/clock/module/HealthBean;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/HealthBean;-><init>()V

    .line 15
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    const-string v0, "finished"

    .line 21
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 23
    move-result v0

    .line 26
    if-ltz v0, :cond_2

    .line 27
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 29
    move-result v0

    .line 32
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setStandCountNow(I)V

    .line 33
    :cond_2
    const-string v0, "goal"

    .line 36
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 41
    if-ltz v0, :cond_3

    .line 42
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 44
    move-result p0

    .line 47
    invoke-virtual {p1, p0}, Lcom/miui/clock/module/HealthBean;->setStandCountTarget(I)V

    .line 48
    :cond_3
    :goto_0
    return-object p1
    .line 51
.end method

.method public static getStepCountData(Landroid/database/Cursor;Lcom/miui/clock/module/HealthBean;)Lcom/miui/clock/module/HealthBean;
    .locals 1

    .line 1
    if-eqz p0, :cond_4

    .line 2
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    if-nez p1, :cond_1

    .line 11
    new-instance p1, Lcom/miui/clock/module/HealthBean;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/HealthBean;-><init>()V

    .line 15
    :cond_1
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 18
    const-string/jumbo v0, "steps"

    .line 21
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 24
    move-result v0

    .line 27
    if-ltz v0, :cond_2

    .line 28
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 30
    move-result v0

    .line 33
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setStepCountNow(I)V

    .line 34
    :cond_2
    const-string v0, "goal"

    .line 37
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 39
    move-result v0

    .line 42
    if-ltz v0, :cond_3

    .line 43
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 45
    move-result v0

    .line 48
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/HealthBean;->setStepCountTarget(I)V

    .line 49
    :cond_3
    const-string v0, "last_24"

    .line 52
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 54
    move-result v0

    .line 57
    if-ltz v0, :cond_4

    .line 58
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 60
    move-result-object p0

    .line 63
    invoke-virtual {p1, p0}, Lcom/miui/clock/module/HealthBean;->setStepCountList(Ljava/lang/String;)V

    .line 64
    :cond_4
    :goto_0
    return-object p1
    .line 67
.end method

.method public static getWeatherBean(Ljava/lang/String;Ljava/lang/ref/WeakReference;)Lcom/miui/clock/module/WeatherBean;
    .locals 12

    .line 1
    const-string/jumbo v0, "sunrise"

    .line 2
    const-string v1, "getWeatherBean, cursor = "

    .line 5
    const-string v2, "getWeatherBean, type = "

    .line 7
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object v2

    .line 12
    const-string v3, "ClockDataUtils"

    .line 13
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 15
    const/4 v2, 0x0

    .line 18
    :try_start_0
    const-string v4, "content://weather/actualWeatherData"

    .line 19
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 21
    move-result-object v4

    .line 24
    invoke-virtual {v4}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    .line 25
    move-result-object v4

    .line 28
    invoke-virtual {v4, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 33
    move-result-object v5

    .line 36
    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 37
    move-result-object p0

    .line 40
    check-cast p0, Landroid/content/Context;

    .line 41
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 43
    move-result-object v4

    .line 46
    const/4 v6, 0x0

    .line 47
    const/4 v7, 0x0

    .line 48
    const/4 v8, 0x0

    .line 49
    const/4 v9, 0x0

    .line 50
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 51
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 54
    :try_start_1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 60
    const-string v1, ", count = "

    .line 63
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 65
    if-nez p0, :cond_0

    .line 68
    const/4 v1, 0x0

    .line 70
    goto :goto_0

    .line 71
    :cond_0
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 72
    move-result v1

    .line 75
    :goto_0
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {v3, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    if-eqz p0, :cond_10

    .line 86
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 88
    move-result p1

    .line 91
    if-lez p1, :cond_10

    .line 92
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 94
    new-instance p1, Lcom/miui/clock/module/WeatherBean;

    .line 97
    invoke-direct {p1}, Lcom/miui/clock/module/WeatherBean;-><init>()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    :try_start_2
    const-string/jumbo v1, "weather_type"

    .line 102
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 105
    move-result v1

    .line 108
    if-ltz v1, :cond_1

    .line 109
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 111
    move-result v1

    .line 114
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->setWeatherType(I)V

    .line 115
    :cond_1
    const-string/jumbo v1, "temperature_unit"

    .line 118
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 121
    move-result v1

    .line 124
    if-ltz v1, :cond_2

    .line 125
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 127
    move-result v1

    .line 130
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->setTemperatureUnit(I)V

    .line 131
    :cond_2
    const-string/jumbo v1, "temperature"

    .line 134
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 137
    move-result v1

    .line 140
    if-ltz v1, :cond_3

    .line 141
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 143
    move-result-object v1

    .line 146
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->setTemperature(Ljava/lang/String;)V

    .line 147
    :cond_3
    const-string v1, "aqilevel"

    .line 150
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 152
    move-result v1

    .line 155
    if-ltz v1, :cond_4

    .line 156
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 158
    move-result v1

    .line 161
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->setAqiLevel(I)V

    .line 162
    :cond_4
    const-string v1, "humidity"

    .line 165
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 167
    move-result v1

    .line 170
    if-ltz v1, :cond_5

    .line 171
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 173
    move-result v1

    .line 176
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/WeatherBean;->setHumidity(I)V

    .line 177
    :cond_5
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 180
    move-result v1

    .line 183
    const-wide/16 v4, 0x0

    .line 184
    if-ltz v1, :cond_6

    .line 186
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getLong(I)J

    .line 188
    move-result-wide v1

    .line 191
    goto :goto_1

    .line 192
    :cond_6
    move-wide v1, v4

    .line 193
    :goto_1
    const-string/jumbo v6, "sunset"

    .line 194
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 197
    move-result v6

    .line 200
    if-ltz v6, :cond_7

    .line 201
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getLong(I)J

    .line 203
    move-result-wide v6

    .line 206
    move-wide v7, v6

    .line 207
    goto :goto_2

    .line 208
    :cond_7
    move-wide v7, v4

    .line 209
    :goto_2
    const-string/jumbo v6, "wind_direction"

    .line 210
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 213
    move-result v6

    .line 216
    if-ltz v6, :cond_8

    .line 217
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 219
    move-result-object v6

    .line 222
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setWindAngel(Ljava/lang/String;)V

    .line 223
    :cond_8
    const-string/jumbo v6, "wind_power"

    .line 226
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 229
    move-result v6

    .line 232
    if-ltz v6, :cond_9

    .line 233
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 235
    move-result-object v6

    .line 238
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setWindSpeed(Ljava/lang/String;)V

    .line 239
    :cond_9
    const-string/jumbo v6, "ultraviolet"

    .line 242
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 245
    move-result v6

    .line 248
    if-ltz v6, :cond_a

    .line 249
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 251
    move-result-object v6

    .line 254
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setUVILevel(Ljava/lang/String;)V

    .line 255
    :cond_a
    const-string v6, "feel_temperature"

    .line 258
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 260
    move-result v6

    .line 263
    if-ltz v6, :cond_b

    .line 264
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 266
    move-result-object v6

    .line 269
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setSomatosensoryTemperature(Ljava/lang/String;)V

    .line 270
    :cond_b
    const-string v6, "next_hour_rain_probability"

    .line 273
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 275
    move-result v6

    .line 278
    if-ltz v6, :cond_c

    .line 279
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 281
    move-result-object v6

    .line 284
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setRainProbability(Ljava/lang/String;)V

    .line 285
    :cond_c
    const-string v6, "pressure"

    .line 288
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 290
    move-result v6

    .line 293
    if-ltz v6, :cond_d

    .line 294
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 296
    move-result v6

    .line 299
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setPressure(I)V

    .line 300
    :cond_d
    const-string v6, "description"

    .line 303
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 305
    move-result v6

    .line 308
    if-ltz v6, :cond_e

    .line 309
    invoke-interface {p0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 311
    move-result-object v6

    .line 314
    invoke-virtual {p1, v6}, Lcom/miui/clock/module/WeatherBean;->setDescription(Ljava/lang/String;)V

    .line 315
    :cond_e
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 318
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 321
    move-result v0

    .line 324
    if-ltz v0, :cond_f

    .line 325
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 327
    move-result-wide v4

    .line 330
    :cond_f
    move-wide v9, v4

    .line 331
    move-object v4, p1

    .line 332
    move-wide v5, v1

    .line 333
    invoke-virtual/range {v4 .. v10}, Lcom/miui/clock/module/WeatherBean;->setSunTime(JJJ)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 334
    move-object v2, p1

    .line 337
    goto :goto_3

    .line 338
    :catch_0
    move-exception v0

    .line 339
    move-object v2, p1

    .line 340
    goto :goto_4

    .line 341
    :cond_10
    :goto_3
    if-eqz p0, :cond_12

    .line 342
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 344
    goto :goto_6

    .line 347
    :catchall_0
    move-exception p1

    .line 348
    goto :goto_8

    .line 349
    :catch_1
    move-exception p1

    .line 350
    move-object v0, p1

    .line 351
    :goto_4
    move-object v11, v2

    .line 352
    move-object v2, p0

    .line 353
    move-object p0, v11

    .line 354
    goto :goto_5

    .line 355
    :catchall_1
    move-exception p0

    .line 356
    move-object p1, p0

    .line 357
    goto :goto_7

    .line 358
    :catch_2
    move-exception p0

    .line 359
    move-object v0, p0

    .line 360
    move-object p0, v2

    .line 361
    :goto_5
    :try_start_3
    const-string p1, "get weather data fail"

    .line 362
    invoke-static {v3, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 364
    if-eqz v2, :cond_11

    .line 367
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 369
    :cond_11
    move-object v2, p0

    .line 372
    :cond_12
    :goto_6
    new-instance p0, Ljava/lang/StringBuilder;

    .line 373
    const-string p1, "getWeatherBean end, bean = "

    .line 375
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 377
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 380
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 383
    move-result-object p0

    .line 386
    invoke-static {v3, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    return-object v2

    .line 390
    :goto_7
    move-object p0, v2

    .line 391
    :goto_8
    if-eqz p0, :cond_13

    .line 392
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 394
    :cond_13
    throw p1
    .line 397
.end method

.method public static isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 11

    .line 1
    invoke-static {p0}, Lcom/miui/clock/utils/DateFormatUtils;->isSystemUI(Landroid/content/Context;)Z

    .line 2
    move-result v0

    .line 5
    const-string v1, "name not found pkg="

    .line 6
    const-string v2, "ClockDataUtils"

    .line 8
    const/4 v3, 0x0

    .line 10
    const/4 v4, 0x1

    .line 11
    if-eqz v0, :cond_1

    .line 12
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 14
    move-result-object v6

    .line 17
    const-class v5, Landroid/content/pm/PackageManager;

    .line 18
    const-string v7, "getPackageInfoAsUser"

    .line 20
    const-class v8, Landroid/content/pm/PackageInfo;

    .line 22
    const/4 p0, 0x3

    .line 24
    new-array v9, p0, [Ljava/lang/Class;

    .line 25
    const-class v0, Ljava/lang/String;

    .line 27
    aput-object v0, v9, v3

    .line 29
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 31
    aput-object v0, v9, v4

    .line 33
    const/4 v10, 0x2

    .line 35
    aput-object v0, v9, v10

    .line 36
    new-array p0, p0, [Ljava/lang/Object;

    .line 38
    aput-object p1, p0, v3

    .line 40
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object v0

    .line 45
    aput-object v0, p0, v4

    .line 46
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object p2

    .line 51
    aput-object p2, p0, v10

    .line 52
    move-object v10, p0

    .line 54
    invoke-static/range {v5 .. v10}, Lcom/miui/clock/utils/ReflectUtils;->invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    move-result-object p0

    .line 58
    check-cast p0, Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz p0, :cond_0

    .line 61
    move v3, v4

    .line 63
    :cond_0
    return v3

    .line 64
    :catch_0
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    goto :goto_0

    .line 72
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 73
    move-result-object p0

    .line 76
    invoke-virtual {p0, p1, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    return v4

    .line 80
    :catch_1
    invoke-virtual {v1, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    return v3
    .line 88
.end method
