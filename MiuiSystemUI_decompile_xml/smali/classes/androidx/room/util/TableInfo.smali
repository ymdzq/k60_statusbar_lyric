.class public final Landroidx/room/util/TableInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final columns:Ljava/util/Map;

.field public final foreignKeys:Ljava/util/Set;

.field public final indices:Ljava/util/Set;

.field public final name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 5
    invoke-static {p2}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 11
    invoke-static {p3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 17
    if-nez p4, :cond_0

    .line 19
    const/4 p1, 0x0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {p4}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    .line 23
    move-result-object p1

    .line 26
    :goto_0
    iput-object p1, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    .line 27
    return-void
    .line 29
.end method

.method public static read(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;)Landroidx/room/util/TableInfo;
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    .line 6
    const-string v3, "PRAGMA table_info(`"

    .line 8
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    const-string v3, "`)"

    .line 16
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 21
    move-result-object v2

    .line 24
    invoke-virtual {v0, v2}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 25
    move-result-object v2

    .line 28
    new-instance v4, Ljava/util/HashMap;

    .line 29
    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 31
    :try_start_0
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnCount()I

    .line 34
    move-result v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 37
    const-string v8, "name"

    .line 38
    if-lez v5, :cond_1

    .line 40
    :try_start_1
    invoke-interface {v2, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 42
    move-result v5

    .line 45
    const-string/jumbo v9, "type"

    .line 46
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 49
    move-result v9

    .line 52
    const-string v10, "notnull"

    .line 53
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 55
    move-result v10

    .line 58
    const-string v11, "pk"

    .line 59
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 61
    move-result v11

    .line 64
    const-string v12, "dflt_value"

    .line 65
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 67
    move-result v12

    .line 70
    :goto_0
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    .line 71
    move-result v13

    .line 74
    if-eqz v13, :cond_1

    .line 75
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 77
    move-result-object v13

    .line 80
    invoke-interface {v2, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v18

    .line 84
    invoke-interface {v2, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 85
    move-result v14

    .line 88
    if-eqz v14, :cond_0

    .line 89
    const/16 v20, 0x1

    .line 91
    goto :goto_1

    .line 93
    :cond_0
    const/16 v20, 0x0

    .line 94
    :goto_1
    invoke-interface {v2, v11}, Landroid/database/Cursor;->getInt(I)I

    .line 96
    move-result v15

    .line 99
    invoke-interface {v2, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 100
    move-result-object v19

    .line 103
    new-instance v14, Landroidx/room/util/TableInfo$Column;

    .line 104
    const/16 v16, 0x2

    .line 106
    move-object/from16 v21, v14

    .line 108
    move-object/from16 v17, v13

    .line 110
    invoke-direct/range {v14 .. v20}, Landroidx/room/util/TableInfo$Column;-><init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    .line 112
    invoke-virtual {v4, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 115
    goto :goto_0

    .line 118
    :cond_1
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 119
    new-instance v2, Ljava/util/HashSet;

    .line 122
    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 124
    new-instance v5, Ljava/lang/StringBuilder;

    .line 127
    const-string v9, "PRAGMA foreign_key_list(`"

    .line 129
    invoke-direct {v5, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 140
    move-result-object v5

    .line 143
    invoke-virtual {v0, v5}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 144
    move-result-object v5

    .line 147
    :try_start_2
    const-string v9, "id"

    .line 148
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 150
    move-result v9

    .line 153
    const-string/jumbo v10, "seq"

    .line 154
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 157
    move-result v10

    .line 160
    const-string/jumbo v11, "table"

    .line 161
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 164
    move-result v11

    .line 167
    const-string v12, "on_delete"

    .line 168
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 170
    move-result v12

    .line 173
    const-string v13, "on_update"

    .line 174
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 176
    move-result v13

    .line 179
    invoke-static {v5}, Landroidx/room/util/TableInfo;->readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;

    .line 180
    move-result-object v14

    .line 183
    invoke-interface {v5}, Landroid/database/Cursor;->getCount()I

    .line 184
    move-result v15

    .line 187
    const/4 v7, 0x0

    .line 188
    :goto_2
    if-ge v7, v15, :cond_5

    .line 189
    invoke-interface {v5, v7}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 191
    invoke-interface {v5, v10}, Landroid/database/Cursor;->getInt(I)I

    .line 194
    move-result v17

    .line 197
    if-eqz v17, :cond_2

    .line 198
    move/from16 v24, v9

    .line 200
    move/from16 v25, v10

    .line 202
    move-object/from16 v26, v14

    .line 204
    move/from16 v27, v15

    .line 206
    goto :goto_4

    .line 208
    :cond_2
    invoke-interface {v5, v9}, Landroid/database/Cursor;->getInt(I)I

    .line 209
    move-result v6

    .line 212
    move/from16 v24, v9

    .line 213
    new-instance v9, Ljava/util/ArrayList;

    .line 215
    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 217
    move/from16 v25, v10

    .line 220
    new-instance v10, Ljava/util/ArrayList;

    .line 222
    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 224
    move-object/from16 v18, v14

    .line 227
    check-cast v18, Ljava/util/ArrayList;

    .line 229
    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 231
    move-result-object v18

    .line 234
    :goto_3
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->hasNext()Z

    .line 235
    move-result v19

    .line 238
    if-eqz v19, :cond_4

    .line 239
    invoke-interface/range {v18 .. v18}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 241
    move-result-object v19

    .line 244
    move-object/from16 v26, v14

    .line 245
    move-object/from16 v14, v19

    .line 247
    check-cast v14, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 249
    move/from16 v27, v15

    .line 251
    iget v15, v14, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mId:I

    .line 253
    if-ne v15, v6, :cond_3

    .line 255
    iget-object v15, v14, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mFrom:Ljava/lang/String;

    .line 257
    invoke-virtual {v9, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 259
    iget-object v14, v14, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;->mTo:Ljava/lang/String;

    .line 262
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 264
    :cond_3
    move-object/from16 v14, v26

    .line 267
    move/from16 v15, v27

    .line 269
    goto :goto_3

    .line 271
    :cond_4
    move-object/from16 v26, v14

    .line 272
    move/from16 v27, v15

    .line 274
    new-instance v6, Landroidx/room/util/TableInfo$ForeignKey;

    .line 276
    invoke-interface {v5, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 278
    move-result-object v19

    .line 281
    invoke-interface {v5, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 282
    move-result-object v20

    .line 285
    invoke-interface {v5, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 286
    move-result-object v21

    .line 289
    move-object/from16 v18, v6

    .line 290
    move-object/from16 v22, v9

    .line 292
    move-object/from16 v23, v10

    .line 294
    invoke-direct/range {v18 .. v23}, Landroidx/room/util/TableInfo$ForeignKey;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;)V

    .line 296
    invoke-virtual {v2, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 299
    :goto_4
    add-int/lit8 v7, v7, 0x1

    .line 302
    move/from16 v9, v24

    .line 304
    move/from16 v10, v25

    .line 306
    move-object/from16 v14, v26

    .line 308
    move/from16 v15, v27

    .line 310
    goto :goto_2

    .line 312
    :cond_5
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 313
    new-instance v5, Ljava/lang/StringBuilder;

    .line 316
    const-string v6, "PRAGMA index_list(`"

    .line 318
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 320
    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 323
    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 326
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 329
    move-result-object v3

    .line 332
    invoke-virtual {v0, v3}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 333
    move-result-object v3

    .line 336
    :try_start_3
    invoke-interface {v3, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 337
    move-result v5

    .line 340
    const-string v6, "origin"

    .line 341
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 343
    move-result v6

    .line 346
    const-string/jumbo v7, "unique"

    .line 347
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 350
    move-result v7

    .line 353
    const/4 v8, -0x1

    .line 354
    if-eq v5, v8, :cond_b

    .line 355
    if-eq v6, v8, :cond_b

    .line 357
    if-ne v7, v8, :cond_6

    .line 359
    goto :goto_7

    .line 361
    :cond_6
    new-instance v8, Ljava/util/HashSet;

    .line 362
    invoke-direct {v8}, Ljava/util/HashSet;-><init>()V

    .line 364
    :goto_5
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    .line 367
    move-result v9

    .line 370
    if-eqz v9, :cond_a

    .line 371
    invoke-interface {v3, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 373
    move-result-object v9

    .line 376
    const-string v10, "c"

    .line 377
    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 379
    move-result v9

    .line 382
    if-nez v9, :cond_7

    .line 383
    goto :goto_5

    .line 385
    :cond_7
    invoke-interface {v3, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 386
    move-result-object v9

    .line 389
    invoke-interface {v3, v7}, Landroid/database/Cursor;->getInt(I)I

    .line 390
    move-result v10

    .line 393
    const/4 v11, 0x1

    .line 394
    if-ne v10, v11, :cond_8

    .line 395
    move v10, v11

    .line 397
    goto :goto_6

    .line 398
    :cond_8
    const/4 v10, 0x0

    .line 399
    :goto_6
    invoke-static {v0, v9, v10}, Landroidx/room/util/TableInfo;->readIndex(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;

    .line 400
    move-result-object v9

    .line 403
    if-nez v9, :cond_9

    .line 404
    goto :goto_7

    .line 406
    :cond_9
    invoke-virtual {v8, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 407
    goto :goto_5

    .line 410
    :cond_a
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 411
    goto :goto_8

    .line 414
    :cond_b
    :goto_7
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 415
    const/4 v8, 0x0

    .line 418
    :goto_8
    new-instance v0, Landroidx/room/util/TableInfo;

    .line 419
    invoke-direct {v0, v1, v4, v2, v8}, Landroidx/room/util/TableInfo;-><init>(Ljava/lang/String;Ljava/util/Map;Ljava/util/Set;Ljava/util/Set;)V

    .line 421
    return-object v0

    .line 424
    :catchall_0
    move-exception v0

    .line 425
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 426
    throw v0

    .line 429
    :catchall_1
    move-exception v0

    .line 430
    invoke-interface {v5}, Landroid/database/Cursor;->close()V

    .line 431
    throw v0

    .line 434
    :catchall_2
    move-exception v0

    .line 435
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 436
    throw v0
    .line 439
.end method

.method public static readForeignKeyFieldMappings(Landroid/database/Cursor;)Ljava/util/List;
    .locals 12

    .line 1
    const-string v0, "id"

    .line 2
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 4
    move-result v0

    .line 7
    const-string/jumbo v1, "seq"

    .line 8
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 11
    move-result v1

    .line 14
    const-string v2, "from"

    .line 15
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 17
    move-result v2

    .line 20
    const-string/jumbo v3, "to"

    .line 21
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 24
    move-result v3

    .line 27
    invoke-interface {p0}, Landroid/database/Cursor;->getCount()I

    .line 28
    move-result v4

    .line 31
    new-instance v5, Ljava/util/ArrayList;

    .line 32
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 34
    const/4 v6, 0x0

    .line 37
    :goto_0
    if-ge v6, v4, :cond_0

    .line 38
    invoke-interface {p0, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 40
    new-instance v7, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;

    .line 43
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 45
    move-result v8

    .line 48
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 49
    move-result v9

    .line 52
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 53
    move-result-object v10

    .line 56
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 57
    move-result-object v11

    .line 60
    invoke-direct {v7, v10, v8, v9, v11}, Landroidx/room/util/TableInfo$ForeignKeyWithSequence;-><init>(Ljava/lang/String;IILjava/lang/String;)V

    .line 61
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 64
    add-int/lit8 v6, v6, 0x1

    .line 67
    goto :goto_0

    .line 69
    :cond_0
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 70
    return-object v5
    .line 73
.end method

.method public static readIndex(Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;Ljava/lang/String;Z)Landroidx/room/util/TableInfo$Index;
    .locals 10

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "PRAGMA index_xinfo(`"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    const-string v1, "`)"

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Landroidx/sqlite/db/framework/FrameworkSQLiteDatabase;->query(Ljava/lang/String;)Landroid/database/Cursor;

    .line 21
    move-result-object p0

    .line 24
    :try_start_0
    const-string/jumbo v0, "seqno"

    .line 25
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 28
    move-result v0

    .line 31
    const-string v1, "cid"

    .line 32
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 34
    move-result v1

    .line 37
    const-string v2, "name"

    .line 38
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 40
    move-result v2

    .line 43
    const-string v3, "desc"

    .line 44
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 46
    move-result v3

    .line 49
    const/4 v4, -0x1

    .line 50
    if-eq v0, v4, :cond_4

    .line 51
    if-eq v1, v4, :cond_4

    .line 53
    if-eq v2, v4, :cond_4

    .line 55
    if-ne v3, v4, :cond_0

    .line 57
    goto :goto_2

    .line 59
    :cond_0
    new-instance v4, Ljava/util/TreeMap;

    .line 60
    invoke-direct {v4}, Ljava/util/TreeMap;-><init>()V

    .line 62
    new-instance v5, Ljava/util/TreeMap;

    .line 65
    invoke-direct {v5}, Ljava/util/TreeMap;-><init>()V

    .line 67
    :goto_0
    invoke-interface {p0}, Landroid/database/Cursor;->moveToNext()Z

    .line 70
    move-result v6

    .line 73
    if-eqz v6, :cond_3

    .line 74
    invoke-interface {p0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 76
    move-result v6

    .line 79
    if-gez v6, :cond_1

    .line 80
    goto :goto_0

    .line 82
    :cond_1
    invoke-interface {p0, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 83
    move-result v6

    .line 86
    invoke-interface {p0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    move-result-object v7

    .line 90
    invoke-interface {p0, v3}, Landroid/database/Cursor;->getInt(I)I

    .line 91
    move-result v8

    .line 94
    if-lez v8, :cond_2

    .line 95
    const-string v8, "DESC"

    .line 97
    goto :goto_1

    .line 99
    :cond_2
    const-string v8, "ASC"

    .line 100
    :goto_1
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    move-result-object v9

    .line 105
    invoke-virtual {v4, v9, v7}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    move-result-object v6

    .line 112
    invoke-virtual {v5, v6, v8}, Ljava/util/TreeMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 113
    goto :goto_0

    .line 116
    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    .line 117
    invoke-virtual {v4}, Ljava/util/TreeMap;->size()I

    .line 119
    move-result v1

    .line 122
    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 123
    invoke-virtual {v4}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 126
    move-result-object v1

    .line 129
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 130
    new-instance v1, Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v5}, Ljava/util/TreeMap;->size()I

    .line 135
    move-result v2

    .line 138
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 139
    invoke-virtual {v5}, Ljava/util/TreeMap;->values()Ljava/util/Collection;

    .line 142
    move-result-object v2

    .line 145
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    new-instance v2, Landroidx/room/util/TableInfo$Index;

    .line 149
    invoke-direct {v2, p1, v0, v1, p2}, Landroidx/room/util/TableInfo$Index;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 151
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 154
    return-object v2

    .line 157
    :cond_4
    :goto_2
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 158
    const/4 p0, 0x0

    .line 161
    return-object p0

    .line 162
    :catchall_0
    move-exception p1

    .line 163
    invoke-interface {p0}, Landroid/database/Cursor;->close()V

    .line 164
    throw p1
    .line 167
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/room/util/TableInfo;

    .line 12
    iget-object v1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 14
    if-eqz v1, :cond_2

    .line 16
    iget-object v3, p1, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 18
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_3

    .line 24
    goto :goto_0

    .line 26
    :cond_2
    iget-object v1, p1, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 27
    if-eqz v1, :cond_3

    .line 29
    :goto_0
    return v2

    .line 31
    :cond_3
    iget-object v1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 32
    if-eqz v1, :cond_4

    .line 34
    iget-object v3, p1, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 36
    invoke-interface {v1, v3}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_5

    .line 42
    goto :goto_1

    .line 44
    :cond_4
    iget-object v1, p1, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 45
    if-eqz v1, :cond_5

    .line 47
    :goto_1
    return v2

    .line 49
    :cond_5
    iget-object v1, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 50
    if-eqz v1, :cond_6

    .line 52
    iget-object v3, p1, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 54
    invoke-interface {v1, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result v1

    .line 59
    if-nez v1, :cond_7

    .line 60
    goto :goto_2

    .line 62
    :cond_6
    iget-object v1, p1, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 63
    if-eqz v1, :cond_7

    .line 65
    :goto_2
    return v2

    .line 67
    :cond_7
    iget-object p0, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    .line 68
    if-eqz p0, :cond_9

    .line 70
    iget-object p1, p1, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    .line 72
    if-nez p1, :cond_8

    .line 74
    goto :goto_3

    .line 76
    :cond_8
    invoke-interface {p0, p1}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p0

    .line 80
    return p0

    .line 81
    :cond_9
    :goto_3
    return v0
    .line 82
.end method

.method public final hashCode()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    .line 7
    move-result v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v0

    .line 12
    :goto_0
    mul-int/lit8 v1, v1, 0x1f

    .line 13
    iget-object v2, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 15
    if-eqz v2, :cond_1

    .line 17
    invoke-interface {v2}, Ljava/util/Map;->hashCode()I

    .line 19
    move-result v2

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    move v2, v0

    .line 24
    :goto_1
    add-int/2addr v1, v2

    .line 25
    mul-int/lit8 v1, v1, 0x1f

    .line 26
    iget-object p0, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 28
    if-eqz p0, :cond_2

    .line 30
    invoke-interface {p0}, Ljava/util/Set;->hashCode()I

    .line 32
    move-result v0

    .line 35
    :cond_2
    add-int/2addr v1, v0

    .line 36
    return v1
    .line 37
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "TableInfo{name=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/room/util/TableInfo;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', columns="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/room/util/TableInfo;->columns:Ljava/util/Map;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, ", foreignKeys="

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget-object v1, p0, Landroidx/room/util/TableInfo;->foreignKeys:Ljava/util/Set;

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, ", indices="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-object p0, p0, Landroidx/room/util/TableInfo;->indices:Ljava/util/Set;

    .line 39
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const/16 p0, 0x7d

    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 46
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    return-object p0
    .line 53
.end method
