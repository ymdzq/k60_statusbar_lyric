.class public abstract Landroidx/core/provider/FontProvider;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 2
    invoke-direct {v0}, Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;-><init>()V

    .line 4
    sput-object v0, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 7
    return-void
    .line 9
.end method

.method public static getFontFamilyResult(Landroid/content/Context;Landroidx/core/provider/FontRequest;)Landroidx/core/provider/FontsContractCompat$FontFamilyResult;
    .locals 22

    .line 1
    move-object/from16 v0, p1

    .line 2
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 4
    move-result-object v1

    .line 7
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v2

    .line 11
    iget-object v3, v0, Landroidx/core/provider/FontRequest;->mProviderAuthority:Ljava/lang/String;

    .line 12
    const/4 v4, 0x0

    .line 14
    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    .line 15
    move-result-object v5

    .line 18
    if-eqz v5, :cond_12

    .line 19
    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 21
    iget-object v8, v0, Landroidx/core/provider/FontRequest;->mProviderPackage:Ljava/lang/String;

    .line 23
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v7

    .line 28
    if-eqz v7, :cond_11

    .line 29
    iget-object v3, v5, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    .line 31
    const/16 v7, 0x40

    .line 33
    invoke-virtual {v1, v3, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    .line 35
    move-result-object v1

    .line 38
    iget-object v1, v1, Landroid/content/pm/PackageInfo;->signatures:[Landroid/content/pm/Signature;

    .line 39
    new-instance v3, Ljava/util/ArrayList;

    .line 41
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 43
    array-length v7, v1

    .line 46
    move v8, v4

    .line 47
    :goto_0
    if-ge v8, v7, :cond_0

    .line 48
    aget-object v9, v1, v8

    .line 50
    invoke-virtual {v9}, Landroid/content/pm/Signature;->toByteArray()[B

    .line 52
    move-result-object v9

    .line 55
    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 56
    add-int/lit8 v8, v8, 0x1

    .line 59
    goto :goto_0

    .line 61
    :cond_0
    sget-object v1, Landroidx/core/provider/FontProvider;->sByteArrayComparator:Landroidx/core/provider/FontProvider$$ExternalSyntheticLambda1;

    .line 62
    invoke-static {v3, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 64
    iget-object v7, v0, Landroidx/core/provider/FontRequest;->mCertificates:Ljava/util/List;

    .line 67
    if-eqz v7, :cond_1

    .line 69
    goto :goto_1

    .line 71
    :cond_1
    invoke-static {v4, v2}, Landroidx/core/content/res/FontResourcesParserCompat;->readCerts(ILandroid/content/res/Resources;)Ljava/util/List;

    .line 72
    move-result-object v7

    .line 75
    :goto_1
    move v2, v4

    .line 76
    :goto_2
    invoke-interface {v7}, Ljava/util/List;->size()I

    .line 77
    move-result v8

    .line 80
    const/4 v9, 0x1

    .line 81
    const/4 v10, 0x0

    .line 82
    if-ge v2, v8, :cond_6

    .line 83
    new-instance v8, Ljava/util/ArrayList;

    .line 85
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    move-result-object v11

    .line 90
    check-cast v11, Ljava/util/Collection;

    .line 91
    invoke-direct {v8, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 93
    invoke-static {v8, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 96
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 99
    move-result v11

    .line 102
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 103
    move-result v12

    .line 106
    if-eq v11, v12, :cond_2

    .line 107
    goto :goto_4

    .line 109
    :cond_2
    move v11, v4

    .line 110
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    .line 111
    move-result v12

    .line 114
    if-ge v11, v12, :cond_4

    .line 115
    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 117
    move-result-object v12

    .line 120
    check-cast v12, [B

    .line 121
    invoke-virtual {v8, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 123
    move-result-object v13

    .line 126
    check-cast v13, [B

    .line 127
    invoke-static {v12, v13}, Ljava/util/Arrays;->equals([B[B)Z

    .line 129
    move-result v12

    .line 132
    if-nez v12, :cond_3

    .line 133
    :goto_4
    move v8, v4

    .line 135
    goto :goto_5

    .line 136
    :cond_3
    add-int/lit8 v11, v11, 0x1

    .line 137
    goto :goto_3

    .line 139
    :cond_4
    move v8, v9

    .line 140
    :goto_5
    if-eqz v8, :cond_5

    .line 141
    goto :goto_6

    .line 143
    :cond_5
    add-int/lit8 v2, v2, 0x1

    .line 144
    goto :goto_2

    .line 146
    :cond_6
    move-object v5, v10

    .line 147
    :goto_6
    if-nez v5, :cond_7

    .line 148
    new-instance v0, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 150
    invoke-direct {v0, v9, v10}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 152
    return-object v0

    .line 155
    :cond_7
    iget-object v1, v5, Landroid/content/pm/ProviderInfo;->authority:Ljava/lang/String;

    .line 156
    const-string/jumbo v7, "result_code"

    .line 158
    const-string v8, "font_italic"

    .line 161
    const-string v10, "font_weight"

    .line 163
    const-string v11, "font_ttc_index"

    .line 165
    const-string v12, "file_id"

    .line 167
    const-string v13, "_id"

    .line 169
    new-instance v14, Ljava/util/ArrayList;

    .line 171
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 173
    new-instance v2, Landroid/net/Uri$Builder;

    .line 176
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 178
    const-string v3, "content"

    .line 181
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 183
    move-result-object v2

    .line 186
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 187
    move-result-object v2

    .line 190
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 191
    move-result-object v15

    .line 194
    new-instance v2, Landroid/net/Uri$Builder;

    .line 195
    invoke-direct {v2}, Landroid/net/Uri$Builder;-><init>()V

    .line 197
    invoke-virtual {v2, v3}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 200
    move-result-object v2

    .line 203
    invoke-virtual {v2, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 204
    move-result-object v1

    .line 207
    const-string v2, "file"

    .line 208
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 210
    move-result-object v1

    .line 213
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    .line 214
    move-result-object v5

    .line 217
    const/4 v1, 0x7

    .line 218
    :try_start_0
    new-array v2, v1, [Ljava/lang/String;

    .line 219
    aput-object v13, v2, v4

    .line 221
    aput-object v12, v2, v9

    .line 223
    const/4 v1, 0x2

    .line 225
    aput-object v11, v2, v1

    .line 226
    const-string v1, "font_variation_settings"

    .line 228
    const/4 v3, 0x3

    .line 230
    aput-object v1, v2, v3

    .line 231
    const/4 v1, 0x4

    .line 233
    aput-object v10, v2, v1

    .line 234
    const/4 v1, 0x5

    .line 236
    aput-object v8, v2, v1

    .line 237
    const/4 v1, 0x6

    .line 239
    aput-object v7, v2, v1

    .line 240
    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 242
    move-result-object v1

    .line 245
    const-string v3, "query = ?"

    .line 246
    new-array v6, v9, [Ljava/lang/String;

    .line 248
    iget-object v0, v0, Landroidx/core/provider/FontRequest;->mQuery:Ljava/lang/String;

    .line 250
    aput-object v0, v6, v4

    .line 252
    const/16 v16, 0x0

    .line 254
    move-object v0, v1

    .line 256
    move-object v1, v15

    .line 257
    move-object v4, v6

    .line 258
    move-object v6, v5

    .line 259
    move-object/from16 v5, v16

    .line 260
    move-object v9, v6

    .line 262
    const/4 v6, 0x0

    .line 263
    invoke-virtual/range {v0 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    .line 264
    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 267
    if-eqz v1, :cond_e

    .line 268
    :try_start_1
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 270
    move-result v0

    .line 273
    if-lez v0, :cond_e

    .line 274
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 276
    move-result v0

    .line 279
    new-instance v14, Ljava/util/ArrayList;

    .line 280
    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 285
    move-result v2

    .line 288
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 289
    move-result v3

    .line 292
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 293
    move-result v4

    .line 296
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 297
    move-result v5

    .line 300
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 301
    move-result v6

    .line 304
    :goto_7
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    .line 305
    move-result v7

    .line 308
    if-eqz v7, :cond_e

    .line 309
    const/4 v7, -0x1

    .line 311
    if-eq v0, v7, :cond_8

    .line 312
    invoke-interface {v1, v0}, Landroid/database/Cursor;->getInt(I)I

    .line 314
    move-result v8

    .line 317
    goto :goto_8

    .line 318
    :cond_8
    const/4 v8, 0x0

    .line 319
    :goto_8
    move/from16 v21, v8

    .line 320
    if-eq v4, v7, :cond_9

    .line 322
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getInt(I)I

    .line 324
    move-result v8

    .line 327
    goto :goto_9

    .line 328
    :cond_9
    const/4 v8, 0x0

    .line 329
    :goto_9
    move/from16 v18, v8

    .line 330
    if-ne v3, v7, :cond_a

    .line 332
    invoke-interface {v1, v2}, Landroid/database/Cursor;->getLong(I)J

    .line 334
    move-result-wide v10

    .line 337
    invoke-static {v15, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 338
    move-result-object v8

    .line 341
    goto :goto_a

    .line 342
    :cond_a
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getLong(I)J

    .line 343
    move-result-wide v10

    .line 346
    invoke-static {v9, v10, v11}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    .line 347
    move-result-object v8

    .line 350
    :goto_a
    move-object/from16 v17, v8

    .line 351
    if-eq v5, v7, :cond_b

    .line 353
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getInt(I)I

    .line 355
    move-result v8

    .line 358
    goto :goto_b

    .line 359
    :cond_b
    const/16 v8, 0x190

    .line 360
    :goto_b
    move/from16 v19, v8

    .line 362
    if-eq v6, v7, :cond_c

    .line 364
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getInt(I)I

    .line 366
    move-result v7

    .line 369
    const/4 v8, 0x1

    .line 370
    if-ne v7, v8, :cond_d

    .line 371
    move/from16 v20, v8

    .line 373
    goto :goto_c

    .line 375
    :cond_c
    const/4 v8, 0x1

    .line 376
    :cond_d
    const/4 v7, 0x0

    .line 377
    move/from16 v20, v7

    .line 378
    :goto_c
    new-instance v7, Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 380
    move-object/from16 v16, v7

    .line 382
    invoke-direct/range {v16 .. v21}, Landroidx/core/provider/FontsContractCompat$FontInfo;-><init>(Landroid/net/Uri;IIZI)V

    .line 384
    invoke-virtual {v14, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 387
    goto :goto_7

    .line 390
    :catchall_0
    move-exception v0

    .line 391
    goto :goto_d

    .line 392
    :cond_e
    if-eqz v1, :cond_f

    .line 393
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 395
    :cond_f
    const/4 v0, 0x0

    .line 398
    new-array v1, v0, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 399
    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 401
    move-result-object v1

    .line 404
    check-cast v1, [Landroidx/core/provider/FontsContractCompat$FontInfo;

    .line 405
    new-instance v2, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;

    .line 407
    invoke-direct {v2, v0, v1}, Landroidx/core/provider/FontsContractCompat$FontFamilyResult;-><init>(I[Landroidx/core/provider/FontsContractCompat$FontInfo;)V

    .line 409
    return-object v2

    .line 412
    :catchall_1
    move-exception v0

    .line 413
    const/4 v1, 0x0

    .line 414
    :goto_d
    if-eqz v1, :cond_10

    .line 415
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 417
    :cond_10
    throw v0

    .line 420
    :cond_11
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 421
    const-string v1, "Found content provider "

    .line 423
    const-string v2, ", but package was not "

    .line 425
    invoke-static {v1, v3, v2, v8}, Landroidx/core/provider/FontProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 427
    move-result-object v1

    .line 430
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 431
    throw v0

    .line 434
    :cond_12
    new-instance v0, Landroid/content/pm/PackageManager$NameNotFoundException;

    .line 435
    const-string v1, "No package found for authority: "

    .line 437
    invoke-static {v1, v3}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 439
    move-result-object v1

    .line 442
    invoke-direct {v0, v1}, Landroid/content/pm/PackageManager$NameNotFoundException;-><init>(Ljava/lang/String;)V

    .line 443
    throw v0
    .line 446
.end method
