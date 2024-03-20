.class public final Lcom/google/android/material/badge/BadgeState;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final badgeRadius:F

.field public final badgeWidePadding:F

.field public final badgeWithTextRadius:F

.field public final currentState:Lcom/google/android/material/badge/BadgeState$State;

.field public final overridingState:Lcom/google/android/material/badge/BadgeState$State;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/material/badge/BadgeState$State;)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v7, p1

    .line 4
    const v4, 0x7f0400bd    # @attr/badgeStyle

    .line 6
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 9
    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    .line 12
    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 14
    iput-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 17
    if-nez p2, :cond_0

    .line 19
    new-instance v1, Lcom/google/android/material/badge/BadgeState$State;

    .line 21
    invoke-direct {v1}, Lcom/google/android/material/badge/BadgeState$State;-><init>()V

    .line 23
    move-object v8, v1

    .line 26
    goto :goto_0

    .line 27
    :cond_0
    move-object/from16 v8, p2

    .line 28
    :goto_0
    iget v1, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeResId:I

    .line 30
    const/4 v9, 0x2

    .line 32
    const/4 v10, 0x1

    .line 33
    const/4 v11, 0x0

    .line 34
    if-eqz v1, :cond_5

    .line 35
    const-string v2, "badge"

    .line 37
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 39
    move-result-object v3

    .line 42
    invoke-virtual {v3, v1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 43
    move-result-object v3

    .line 46
    :cond_1
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 47
    move-result v5

    .line 50
    if-eq v5, v9, :cond_2

    .line 51
    if-ne v5, v10, :cond_1

    .line 53
    :cond_2
    if-ne v5, v9, :cond_4

    .line 55
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 57
    move-result-object v5

    .line 60
    invoke-static {v5, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 61
    move-result v5

    .line 64
    if-eqz v5, :cond_3

    .line 65
    invoke-static {v3}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    .line 67
    move-result-object v1
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    invoke-interface {v1}, Landroid/util/AttributeSet;->getStyleAttribute()I

    .line 71
    move-result v2

    .line 74
    move-object v3, v1

    .line 75
    goto :goto_1

    .line 76
    :cond_3
    :try_start_1
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 77
    new-instance v3, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    const-string v4, "Must have a <"

    .line 84
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 89
    const-string v2, "> start tag"

    .line 92
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v2

    .line 100
    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 101
    throw v0

    .line 104
    :cond_4
    new-instance v0, Lorg/xmlpull/v1/XmlPullParserException;

    .line 105
    const-string v2, "No start tag found"

    .line 107
    invoke-direct {v0, v2}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    .line 109
    throw v0
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 112
    :catch_0
    move-exception v0

    .line 113
    new-instance v2, Landroid/content/res/Resources$NotFoundException;

    .line 114
    new-instance v3, Ljava/lang/StringBuilder;

    .line 116
    const-string v4, "Can\'t load badge resource ID #0x"

    .line 118
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 120
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 123
    move-result-object v1

    .line 126
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 130
    move-result-object v1

    .line 133
    invoke-direct {v2, v1}, Landroid/content/res/Resources$NotFoundException;-><init>(Ljava/lang/String;)V

    .line 134
    invoke-virtual {v2, v0}, Landroid/content/res/Resources$NotFoundException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 137
    throw v2

    .line 140
    :cond_5
    const/4 v1, 0x0

    .line 141
    move-object v3, v1

    .line 142
    move v2, v11

    .line 143
    :goto_1
    if-nez v2, :cond_6

    .line 144
    const v1, 0x7f1407d0    # @style/Widget.MaterialComponents.Badge

    .line 146
    move v5, v1

    .line 149
    goto :goto_2

    .line 150
    :cond_6
    move v5, v2

    .line 151
    :goto_2
    sget-object v6, Lcom/google/android/material/R$styleable;->Badge:[I

    .line 152
    new-array v12, v11, [I

    .line 154
    move-object/from16 v1, p1

    .line 156
    move-object v2, v3

    .line 158
    move-object v3, v6

    .line 159
    move-object v6, v12

    .line 160
    invoke-static/range {v1 .. v6}, Lcom/google/android/material/internal/ThemeEnforcement;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    .line 161
    move-result-object v1

    .line 164
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 165
    move-result-object v2

    .line 168
    const v3, 0x7f070c47    # @dimen/mtrl_badge_radius '4.0dp'

    .line 169
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 172
    move-result v3

    .line 175
    invoke-virtual {v1, v9, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 176
    move-result v3

    .line 179
    int-to-float v3, v3

    .line 180
    iput v3, v0, Lcom/google/android/material/badge/BadgeState;->badgeRadius:F

    .line 181
    const v3, 0x7f070c46    # @dimen/mtrl_badge_long_text_horizontal_padding '4.0dp'

    .line 183
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 186
    move-result v3

    .line 189
    const/4 v4, 0x4

    .line 190
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 191
    move-result v3

    .line 194
    int-to-float v3, v3

    .line 195
    iput v3, v0, Lcom/google/android/material/badge/BadgeState;->badgeWidePadding:F

    .line 196
    const v3, 0x7f070c4c    # @dimen/mtrl_badge_with_text_radius '8.0dp'

    .line 198
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 201
    move-result v2

    .line 204
    const/4 v3, 0x5

    .line 205
    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    .line 206
    move-result v2

    .line 209
    int-to-float v2, v2

    .line 210
    iput v2, v0, Lcom/google/android/material/badge/BadgeState;->badgeWithTextRadius:F

    .line 211
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 213
    iget v5, v8, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 215
    const/4 v6, -0x2

    .line 217
    if-ne v5, v6, :cond_7

    .line 218
    const/16 v5, 0xff

    .line 220
    :cond_7
    iput v5, v2, Lcom/google/android/material/badge/BadgeState$State;->alpha:I

    .line 222
    iget-object v5, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 224
    if-nez v5, :cond_8

    .line 226
    const v5, 0x7f13081b    # @string/mtrl_badge_numberless_content_description 'New notification'

    .line 228
    invoke-virtual {v7, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 231
    move-result-object v5

    .line 234
    :cond_8
    iput-object v5, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionNumberless:Ljava/lang/CharSequence;

    .line 235
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 237
    iget v5, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 239
    if-nez v5, :cond_9

    .line 241
    const v5, 0x7f11002d    # @plurals/mtrl_badge_content_description

    .line 243
    :cond_9
    iput v5, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionQuantityStrings:I

    .line 246
    iget v5, v8, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 248
    if-nez v5, :cond_a

    .line 250
    const v5, 0x7f13081d    # @string/mtrl_exceed_max_badge_number_content_description 'More than %1$d new notifications'

    .line 252
    :cond_a
    iput v5, v2, Lcom/google/android/material/badge/BadgeState$State;->contentDescriptionExceedsMaxBadgeNumberRes:I

    .line 255
    iget-object v5, v8, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 257
    if-eqz v5, :cond_c

    .line 259
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    .line 261
    move-result v5

    .line 264
    if-eqz v5, :cond_b

    .line 265
    goto :goto_3

    .line 267
    :cond_b
    move v5, v11

    .line 268
    goto :goto_4

    .line 269
    :cond_c
    :goto_3
    move v5, v10

    .line 270
    :goto_4
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 271
    move-result-object v5

    .line 274
    iput-object v5, v2, Lcom/google/android/material/badge/BadgeState$State;->isVisible:Ljava/lang/Boolean;

    .line 275
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 277
    iget v5, v8, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 279
    const/16 v12, 0x8

    .line 281
    if-ne v5, v6, :cond_d

    .line 283
    invoke-virtual {v1, v12, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 285
    move-result v5

    .line 288
    :cond_d
    iput v5, v2, Lcom/google/android/material/badge/BadgeState$State;->maxCharacterCount:I

    .line 289
    iget v2, v8, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 291
    const/16 v5, 0x9

    .line 293
    if-eq v2, v6, :cond_e

    .line 295
    iget-object v6, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 297
    iput v2, v6, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 299
    goto :goto_5

    .line 301
    :cond_e
    invoke-virtual {v1, v5}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 302
    move-result v2

    .line 305
    if-eqz v2, :cond_f

    .line 306
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 308
    invoke-virtual {v1, v5, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 310
    move-result v6

    .line 313
    iput v6, v2, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 314
    goto :goto_5

    .line 316
    :cond_f
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 317
    const/4 v6, -0x1

    .line 319
    iput v6, v2, Lcom/google/android/material/badge/BadgeState$State;->number:I

    .line 320
    :goto_5
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 322
    iget-object v6, v8, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 324
    if-nez v6, :cond_10

    .line 326
    invoke-static {v7, v1, v11}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 328
    move-result-object v6

    .line 331
    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 332
    move-result v6

    .line 335
    goto :goto_6

    .line 336
    :cond_10
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 337
    move-result v6

    .line 340
    :goto_6
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 341
    move-result-object v6

    .line 344
    iput-object v6, v2, Lcom/google/android/material/badge/BadgeState$State;->backgroundColor:Ljava/lang/Integer;

    .line 345
    iget-object v2, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 347
    const/4 v13, 0x7

    .line 349
    const/4 v14, 0x6

    .line 350
    if-eqz v2, :cond_11

    .line 351
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 353
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 355
    goto/16 :goto_8

    .line 357
    :cond_11
    const/4 v2, 0x3

    .line 359
    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 360
    move-result v15

    .line 363
    if-eqz v15, :cond_12

    .line 364
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 366
    invoke-static {v7, v1, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 368
    move-result-object v2

    .line 371
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 372
    move-result v2

    .line 375
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 376
    move-result-object v2

    .line 379
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 380
    goto :goto_8

    .line 382
    :cond_12
    sget-object v15, Lcom/google/android/material/R$styleable;->TextAppearance:[I

    .line 383
    const v6, 0x7f14041c    # @style/TextAppearance.MaterialComponents.Badge

    .line 385
    invoke-virtual {v7, v6, v15}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 388
    move-result-object v15

    .line 391
    const/4 v6, 0x0

    .line 392
    invoke-virtual {v15, v11, v6}, Landroid/content/res/TypedArray;->getDimension(IF)F

    .line 393
    invoke-static {v7, v15, v2}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 396
    move-result-object v2

    .line 399
    invoke-static {v7, v15, v4}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 400
    invoke-static {v7, v15, v3}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 403
    invoke-virtual {v15, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 406
    invoke-virtual {v15, v10, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 409
    const/16 v3, 0xc

    .line 412
    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 414
    move-result v4

    .line 417
    if-eqz v4, :cond_13

    .line 418
    goto :goto_7

    .line 420
    :cond_13
    const/16 v3, 0xa

    .line 421
    :goto_7
    invoke-virtual {v15, v3, v11}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 423
    invoke-virtual {v15, v3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    .line 426
    const/16 v3, 0xe

    .line 429
    invoke-virtual {v15, v3, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    .line 431
    invoke-static {v7, v15, v14}, Lcom/google/android/material/resources/MaterialResources;->getColorStateList(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    .line 434
    invoke-virtual {v15, v13, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 437
    invoke-virtual {v15, v12, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 440
    invoke-virtual {v15, v5, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 443
    invoke-virtual {v15}, Landroid/content/res/TypedArray;->recycle()V

    .line 446
    sget-object v3, Lcom/google/android/material/R$styleable;->MaterialTextAppearance:[I

    .line 449
    const v4, 0x7f14041c    # @style/TextAppearance.MaterialComponents.Badge

    .line 451
    invoke-virtual {v7, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 454
    move-result-object v3

    .line 457
    invoke-virtual {v3, v11}, Landroid/content/res/TypedArray;->hasValue(I)Z

    .line 458
    invoke-virtual {v3, v11, v6}, Landroid/content/res/TypedArray;->getFloat(IF)F

    .line 461
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 464
    iget-object v3, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 467
    invoke-virtual {v2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 469
    move-result v2

    .line 472
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 473
    move-result-object v2

    .line 476
    iput-object v2, v3, Lcom/google/android/material/badge/BadgeState$State;->badgeTextColor:Ljava/lang/Integer;

    .line 477
    :goto_8
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 479
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 481
    if-nez v3, :cond_14

    .line 483
    const v3, 0x800035

    .line 485
    invoke-virtual {v1, v10, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    .line 488
    move-result v3

    .line 491
    goto :goto_9

    .line 492
    :cond_14
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 493
    move-result v3

    .line 496
    :goto_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 497
    move-result-object v3

    .line 500
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->badgeGravity:Ljava/lang/Integer;

    .line 501
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 503
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 505
    if-nez v3, :cond_15

    .line 507
    invoke-virtual {v1, v14, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 509
    move-result v3

    .line 512
    goto :goto_a

    .line 513
    :cond_15
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 514
    move-result v3

    .line 517
    :goto_a
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 518
    move-result-object v3

    .line 521
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 522
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 524
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 526
    if-nez v3, :cond_16

    .line 528
    const/16 v3, 0xa

    .line 530
    invoke-virtual {v1, v3, v11}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 532
    move-result v3

    .line 535
    goto :goto_b

    .line 536
    :cond_16
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 537
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 539
    move-result v3

    .line 542
    :goto_b
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 543
    move-result-object v3

    .line 546
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 547
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 549
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 551
    if-nez v3, :cond_17

    .line 553
    iget-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithoutText:Ljava/lang/Integer;

    .line 555
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 557
    move-result v3

    .line 560
    invoke-virtual {v1, v13, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 561
    move-result v3

    .line 564
    goto :goto_c

    .line 565
    :cond_17
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 566
    move-result v3

    .line 569
    :goto_c
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 570
    move-result-object v3

    .line 573
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->horizontalOffsetWithText:Ljava/lang/Integer;

    .line 574
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 576
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 578
    if-nez v3, :cond_18

    .line 580
    iget-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithoutText:Ljava/lang/Integer;

    .line 582
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 584
    move-result v3

    .line 587
    const/16 v4, 0xb

    .line 588
    invoke-virtual {v1, v4, v3}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    .line 590
    move-result v3

    .line 593
    goto :goto_d

    .line 594
    :cond_18
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 595
    move-result v3

    .line 598
    :goto_d
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 599
    move-result-object v3

    .line 602
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->verticalOffsetWithText:Ljava/lang/Integer;

    .line 603
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 605
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 607
    if-nez v3, :cond_19

    .line 609
    move v3, v11

    .line 611
    goto :goto_e

    .line 612
    :cond_19
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 613
    move-result v3

    .line 616
    :goto_e
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 617
    move-result-object v3

    .line 620
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->additionalHorizontalOffset:Ljava/lang/Integer;

    .line 621
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 623
    iget-object v3, v8, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 625
    if-nez v3, :cond_1a

    .line 627
    goto :goto_f

    .line 629
    :cond_1a
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 630
    move-result v11

    .line 633
    :goto_f
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 634
    move-result-object v3

    .line 637
    iput-object v3, v2, Lcom/google/android/material/badge/BadgeState$State;->additionalVerticalOffset:Ljava/lang/Integer;

    .line 638
    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 640
    iget-object v1, v8, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 643
    if-nez v1, :cond_1b

    .line 645
    iget-object v1, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 647
    sget-object v2, Ljava/util/Locale$Category;->FORMAT:Ljava/util/Locale$Category;

    .line 649
    invoke-static {v2}, Ljava/util/Locale;->getDefault(Ljava/util/Locale$Category;)Ljava/util/Locale;

    .line 651
    move-result-object v2

    .line 654
    iput-object v2, v1, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 655
    goto :goto_10

    .line 657
    :cond_1b
    iget-object v2, v0, Lcom/google/android/material/badge/BadgeState;->currentState:Lcom/google/android/material/badge/BadgeState$State;

    .line 658
    iput-object v1, v2, Lcom/google/android/material/badge/BadgeState$State;->numberLocale:Ljava/util/Locale;

    .line 660
    :goto_10
    iput-object v8, v0, Lcom/google/android/material/badge/BadgeState;->overridingState:Lcom/google/android/material/badge/BadgeState$State;

    .line 662
    return-void
    .line 664
.end method
