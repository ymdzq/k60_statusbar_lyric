.class public abstract Landroidx/constraintlayout/motion/utils/CustomSupport;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static clamp(I)I
    .locals 1

    .line 1
    shr-int/lit8 v0, p0, 0x1f

    .line 2
    not-int v0, v0

    .line 4
    and-int/2addr p0, v0

    .line 5
    add-int/lit16 p0, p0, -0xff

    .line 6
    shr-int/lit8 v0, p0, 0x1f

    .line 8
    and-int/2addr p0, v0

    .line 10
    add-int/lit16 p0, p0, 0xff

    .line 11
    return p0
    .line 13
.end method

.method public static setInterpolatedValue(Landroidx/constraintlayout/widget/ConstraintAttribute;Landroid/view/View;[F)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    const-string v2, "\""

    .line 6
    const-string v3, " on View \""

    .line 8
    const-string v4, "CustomSupport"

    .line 10
    const-string/jumbo v5, "unable to interpolate strings "

    .line 12
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 15
    move-result-object v6

    .line 18
    new-instance v7, Ljava/lang/StringBuilder;

    .line 19
    const-string/jumbo v8, "set"

    .line 21
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 27
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object v7

    .line 35
    :try_start_0
    iget-object v8, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mType:Landroidx/constraintlayout/widget/ConstraintAttribute$AttributeType;

    .line 36
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 38
    move-result v8

    .line 41
    const/4 v9, 0x3

    .line 42
    const/4 v10, 0x2

    .line 43
    const-wide v11, 0x3fdd1745d1745d17L    # 0.45454545454545453

    .line 44
    const/high16 v13, 0x437f0000    # 255.0f

    .line 49
    const/4 v14, 0x1

    .line 51
    const/4 v15, 0x0

    .line 52
    packed-switch v8, :pswitch_data_0

    .line 53
    goto/16 :goto_1

    .line 56
    :pswitch_0
    new-array v0, v14, [Ljava/lang/Class;

    .line 58
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 60
    aput-object v5, v0, v15

    .line 62
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    move-result-object v0

    .line 67
    new-array v5, v14, [Ljava/lang/Object;

    .line 68
    aget v6, p2, v15

    .line 70
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 72
    move-result-object v6

    .line 75
    aput-object v6, v5, v15

    .line 76
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    goto/16 :goto_1

    .line 81
    :pswitch_1
    new-array v0, v14, [Ljava/lang/Class;

    .line 83
    sget-object v5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 85
    aput-object v5, v0, v15

    .line 87
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 89
    move-result-object v0

    .line 92
    new-array v5, v14, [Ljava/lang/Object;

    .line 93
    aget v6, p2, v15

    .line 95
    const/high16 v8, 0x3f000000    # 0.5f

    .line 97
    cmpl-float v6, v6, v8

    .line 99
    if-lez v6, :cond_0

    .line 101
    goto :goto_0

    .line 103
    :cond_0
    move v14, v15

    .line 104
    :goto_0
    invoke-static {v14}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 105
    move-result-object v6

    .line 108
    aput-object v6, v5, v15

    .line 109
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    goto/16 :goto_1

    .line 114
    :pswitch_2
    new-instance v6, Ljava/lang/RuntimeException;

    .line 116
    new-instance v8, Ljava/lang/StringBuilder;

    .line 118
    invoke-direct {v8, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    iget-object v0, v0, Landroidx/constraintlayout/widget/ConstraintAttribute;->mName:Ljava/lang/String;

    .line 123
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    move-result-object v0

    .line 131
    invoke-direct {v6, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 132
    throw v6

    .line 135
    :pswitch_3
    new-array v0, v14, [Ljava/lang/Class;

    .line 136
    const-class v5, Landroid/graphics/drawable/Drawable;

    .line 138
    const/4 v8, 0x0

    .line 140
    aput-object v5, v0, v8

    .line 141
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 143
    move-result-object v0

    .line 146
    aget v5, p2, v8

    .line 147
    float-to-double v5, v5

    .line 149
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 150
    move-result-wide v5

    .line 153
    double-to-float v5, v5

    .line 154
    mul-float/2addr v5, v13

    .line 155
    float-to-int v5, v5

    .line 156
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 157
    move-result v5

    .line 160
    const/4 v6, 0x1

    .line 161
    aget v6, p2, v6

    .line 162
    float-to-double v14, v6

    .line 164
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 165
    move-result-wide v14

    .line 168
    double-to-float v6, v14

    .line 169
    mul-float/2addr v6, v13

    .line 170
    float-to-int v6, v6

    .line 171
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 172
    move-result v6

    .line 175
    aget v8, p2, v10

    .line 176
    float-to-double v14, v8

    .line 178
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 179
    move-result-wide v10

    .line 182
    double-to-float v8, v10

    .line 183
    mul-float/2addr v8, v13

    .line 184
    float-to-int v8, v8

    .line 185
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 186
    move-result v8

    .line 189
    aget v9, p2, v9

    .line 190
    mul-float/2addr v9, v13

    .line 192
    float-to-int v9, v9

    .line 193
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 194
    move-result v9

    .line 197
    shl-int/lit8 v9, v9, 0x18

    .line 198
    shl-int/lit8 v5, v5, 0x10

    .line 200
    or-int/2addr v5, v9

    .line 202
    shl-int/lit8 v6, v6, 0x8

    .line 203
    or-int/2addr v5, v6

    .line 205
    or-int/2addr v5, v8

    .line 206
    new-instance v6, Landroid/graphics/drawable/ColorDrawable;

    .line 207
    invoke-direct {v6}, Landroid/graphics/drawable/ColorDrawable;-><init>()V

    .line 209
    invoke-virtual {v6, v5}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    .line 212
    filled-new-array {v6}, [Ljava/lang/Object;

    .line 215
    move-result-object v5

    .line 218
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    goto/16 :goto_1

    .line 222
    :pswitch_4
    new-array v0, v14, [Ljava/lang/Class;

    .line 224
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 226
    aput-object v5, v0, v15

    .line 228
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 230
    move-result-object v0

    .line 233
    aget v5, p2, v15

    .line 234
    float-to-double v5, v5

    .line 236
    invoke-static {v5, v6, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 237
    move-result-wide v5

    .line 240
    double-to-float v5, v5

    .line 241
    mul-float/2addr v5, v13

    .line 242
    float-to-int v5, v5

    .line 243
    invoke-static {v5}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 244
    move-result v5

    .line 247
    aget v6, p2, v14

    .line 248
    float-to-double v14, v6

    .line 250
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 251
    move-result-wide v14

    .line 254
    double-to-float v6, v14

    .line 255
    mul-float/2addr v6, v13

    .line 256
    float-to-int v6, v6

    .line 257
    invoke-static {v6}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 258
    move-result v6

    .line 261
    aget v8, p2, v10

    .line 262
    float-to-double v14, v8

    .line 264
    invoke-static {v14, v15, v11, v12}, Ljava/lang/Math;->pow(DD)D

    .line 265
    move-result-wide v10

    .line 268
    double-to-float v8, v10

    .line 269
    mul-float/2addr v8, v13

    .line 270
    float-to-int v8, v8

    .line 271
    invoke-static {v8}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 272
    move-result v8

    .line 275
    aget v9, p2, v9

    .line 276
    mul-float/2addr v9, v13

    .line 278
    float-to-int v9, v9

    .line 279
    invoke-static {v9}, Landroidx/constraintlayout/motion/utils/CustomSupport;->clamp(I)I

    .line 280
    move-result v9

    .line 283
    shl-int/lit8 v9, v9, 0x18

    .line 284
    shl-int/lit8 v5, v5, 0x10

    .line 286
    or-int/2addr v5, v9

    .line 288
    shl-int/lit8 v6, v6, 0x8

    .line 289
    or-int/2addr v5, v6

    .line 291
    or-int/2addr v5, v8

    .line 292
    const/4 v6, 0x1

    .line 293
    new-array v6, v6, [Ljava/lang/Object;

    .line 294
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 296
    move-result-object v5

    .line 299
    const/4 v8, 0x0

    .line 300
    aput-object v5, v6, v8

    .line 301
    invoke-virtual {v0, v1, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    goto/16 :goto_1

    .line 306
    :pswitch_5
    new-array v0, v14, [Ljava/lang/Class;

    .line 308
    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 310
    const/4 v8, 0x0

    .line 312
    aput-object v5, v0, v8

    .line 313
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 315
    move-result-object v0

    .line 318
    new-array v5, v14, [Ljava/lang/Object;

    .line 319
    aget v6, p2, v8

    .line 321
    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 323
    move-result-object v6

    .line 326
    aput-object v6, v5, v8

    .line 327
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    goto :goto_1

    .line 332
    :pswitch_6
    new-array v0, v14, [Ljava/lang/Class;

    .line 333
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 335
    const/4 v8, 0x0

    .line 337
    aput-object v5, v0, v8

    .line 338
    invoke-virtual {v6, v7, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 340
    move-result-object v0

    .line 343
    new-array v5, v14, [Ljava/lang/Object;

    .line 344
    aget v6, p2, v8

    .line 346
    float-to-int v6, v6

    .line 348
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 349
    move-result-object v6

    .line 352
    aput-object v6, v5, v8

    .line 353
    invoke-virtual {v0, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 355
    goto :goto_1

    .line 358
    :catch_0
    move-exception v0

    .line 359
    const-string v5, "Cannot invoke method "

    .line 360
    invoke-static {v5, v7, v3}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 362
    move-result-object v3

    .line 365
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 366
    move-result-object v1

    .line 369
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 373
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 376
    move-result-object v1

    .line 379
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 380
    goto :goto_1

    .line 383
    :catch_1
    move-exception v0

    .line 384
    const-string v5, "Cannot access method "

    .line 385
    invoke-static {v5, v7, v3}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 387
    move-result-object v3

    .line 390
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 391
    move-result-object v1

    .line 394
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 395
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 398
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 401
    move-result-object v1

    .line 404
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 405
    goto :goto_1

    .line 408
    :catch_2
    move-exception v0

    .line 409
    const-string v5, "No method "

    .line 410
    invoke-static {v5, v7, v3}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 412
    move-result-object v3

    .line 415
    invoke-static/range {p1 .. p1}, Landroidx/constraintlayout/motion/widget/Debug;->getName(Landroid/view/View;)Ljava/lang/String;

    .line 416
    move-result-object v1

    .line 419
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 423
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 426
    move-result-object v1

    .line 429
    invoke-static {v4, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 430
    :goto_1
    return-void

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 434
.end method
