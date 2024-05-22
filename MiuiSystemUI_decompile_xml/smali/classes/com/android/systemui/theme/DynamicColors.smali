.class public abstract Lcom/android/systemui/theme/DynamicColors;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ALL_DYNAMIC_COLORS_MAPPED:Ljava/util/List;

.field public static final FIXED_COLORS_MAPPED:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 70

    .line 1
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;

    .line 2
    invoke-direct {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;-><init>()V

    .line 4
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 7
    move-result-object v1

    .line 10
    const-string v2, "primary_container"

    .line 11
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 13
    move-result-object v3

    .line 16
    new-instance v1, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 17
    const/16 v2, 0xa

    .line 19
    invoke-direct {v1, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 21
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 24
    const/4 v5, 0x2

    .line 26
    invoke-direct {v4, v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 27
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 30
    const/4 v15, 0x3

    .line 32
    invoke-direct {v6, v0, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 33
    const/4 v14, 0x0

    .line 36
    invoke-static {v1, v4, v6, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 37
    move-result-object v1

    .line 40
    const-string v4, "on_primary_container"

    .line 41
    invoke-static {v4, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 43
    move-result-object v4

    .line 46
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 47
    move-result-object v1

    .line 50
    const-string v6, "primary"

    .line 51
    invoke-static {v6, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 53
    move-result-object v1

    .line 56
    new-instance v6, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 57
    const/16 v7, 0x18

    .line 59
    invoke-direct {v6, v7}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 61
    new-instance v7, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 64
    const/16 v8, 0x19

    .line 66
    invoke-direct {v7, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 68
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 71
    const/16 v13, 0x15

    .line 73
    invoke-direct {v9, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 75
    invoke-static {v6, v7, v9, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 78
    move-result-object v6

    .line 81
    const-string v7, "on_primary"

    .line 82
    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 84
    move-result-object v6

    .line 87
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 88
    move-result-object v7

    .line 91
    const-string/jumbo v9, "secondary_container"

    .line 92
    invoke-static {v9, v7}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 95
    move-result-object v7

    .line 98
    new-instance v9, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 99
    invoke-direct {v9, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 101
    new-instance v10, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 104
    const/16 v12, 0x1a

    .line 106
    invoke-direct {v10, v0, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 108
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 111
    const/16 v15, 0x1b

    .line 113
    invoke-direct {v11, v0, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 115
    invoke-static {v9, v10, v11, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 118
    move-result-object v9

    .line 121
    const-string v10, "on_secondary_container"

    .line 122
    invoke-static {v10, v9}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 124
    move-result-object v9

    .line 127
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 128
    move-result-object v10

    .line 131
    const-string/jumbo v11, "secondary"

    .line 132
    invoke-static {v11, v10}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 135
    move-result-object v10

    .line 138
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 139
    const/16 v2, 0x8

    .line 141
    invoke-direct {v11, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 143
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 146
    const/16 v15, 0x9

    .line 148
    invoke-direct {v5, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 150
    new-instance v15, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 153
    invoke-direct {v15, v0, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 155
    invoke-static {v11, v5, v15, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 158
    move-result-object v5

    .line 161
    const-string v11, "on_secondary"

    .line 162
    invoke-static {v11, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 164
    move-result-object v11

    .line 167
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 168
    move-result-object v5

    .line 171
    const-string/jumbo v15, "tertiary_container"

    .line 172
    invoke-static {v15, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 175
    move-result-object v15

    .line 178
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 179
    const/16 v13, 0xb

    .line 181
    invoke-direct {v5, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 183
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 186
    const/16 v12, 0x11

    .line 188
    invoke-direct {v2, v0, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 190
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 193
    const/16 v13, 0x12

    .line 195
    invoke-direct {v8, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 197
    invoke-static {v5, v2, v8, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 200
    move-result-object v2

    .line 203
    const-string v5, "on_tertiary_container"

    .line 204
    invoke-static {v5, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 206
    move-result-object v2

    .line 209
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiary()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 210
    move-result-object v5

    .line 213
    const-string/jumbo v8, "tertiary"

    .line 214
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 217
    move-result-object v24

    .line 220
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 221
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 223
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 226
    invoke-direct {v8, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 228
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 231
    const/4 v13, 0x6

    .line 233
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 234
    invoke-static {v5, v8, v12, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 237
    move-result-object v5

    .line 240
    const-string v8, "on_tertiary"

    .line 241
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 243
    move-result-object v25

    .line 246
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 247
    const/4 v8, 0x0

    .line 249
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 250
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 253
    const/4 v13, 0x1

    .line 255
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 256
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 259
    move-result-object v5

    .line 262
    const-string v12, "background"

    .line 263
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 265
    move-result-object v47

    .line 268
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 269
    const/16 v12, 0xf

    .line 271
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 273
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 276
    const/16 v8, 0x10

    .line 278
    invoke-direct {v12, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 280
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 283
    const/4 v8, 0x5

    .line 285
    invoke-direct {v13, v0, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 286
    invoke-static {v5, v12, v13, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 289
    move-result-object v5

    .line 292
    const-string v12, "on_background"

    .line 293
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 295
    move-result-object v48

    .line 298
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 299
    const/16 v12, 0x10

    .line 301
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 303
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 306
    const/16 v13, 0x11

    .line 308
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 310
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 313
    move-result-object v5

    .line 316
    const-string/jumbo v12, "surface"

    .line 317
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 320
    move-result-object v49

    .line 323
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 324
    const/16 v12, 0x12

    .line 326
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 328
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 331
    const/16 v13, 0x13

    .line 333
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 335
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 338
    invoke-direct {v8, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 340
    invoke-static {v5, v12, v8, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 343
    move-result-object v5

    .line 346
    const-string v8, "on_surface"

    .line 347
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 349
    move-result-object v50

    .line 352
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 353
    const/16 v8, 0xd

    .line 355
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 357
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 360
    const/16 v13, 0xe

    .line 362
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 364
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 367
    move-result-object v5

    .line 370
    const-string/jumbo v12, "surface_container_low"

    .line 371
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 374
    move-result-object v51

    .line 377
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 378
    const/16 v12, 0x1c

    .line 380
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 382
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 385
    const/16 v13, 0x1d

    .line 387
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 389
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 392
    move-result-object v5

    .line 395
    const-string/jumbo v12, "surface_container_lowest"

    .line 396
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 399
    move-result-object v52

    .line 402
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 403
    const/16 v12, 0xc

    .line 405
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 407
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 410
    invoke-direct {v12, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 412
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 415
    move-result-object v5

    .line 418
    const-string/jumbo v12, "surface_container"

    .line 419
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 422
    move-result-object v53

    .line 425
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 426
    const/16 v12, 0xb

    .line 428
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 430
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 433
    const/16 v13, 0xc

    .line 435
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 437
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 440
    move-result-object v5

    .line 443
    const-string/jumbo v12, "surface_container_high"

    .line 444
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 447
    move-result-object v54

    .line 450
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 451
    const/16 v12, 0x19

    .line 453
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 455
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 458
    const/16 v13, 0x1a

    .line 460
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 462
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 465
    move-result-object v5

    .line 468
    const-string/jumbo v12, "surface_container_highest"

    .line 469
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 472
    move-result-object v55

    .line 475
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 476
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 478
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 481
    const/16 v13, 0xe

    .line 483
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 485
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 488
    move-result-object v5

    .line 491
    const-string/jumbo v12, "surface_bright"

    .line 492
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 495
    move-result-object v56

    .line 498
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 499
    const/4 v12, 0x7

    .line 501
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 502
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 505
    const/16 v13, 0x8

    .line 507
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 509
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 512
    move-result-object v5

    .line 515
    const-string/jumbo v12, "surface_dim"

    .line 516
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 519
    move-result-object v57

    .line 522
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 523
    const/16 v13, 0x15

    .line 525
    invoke-direct {v5, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 527
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 530
    const/16 v8, 0x16

    .line 532
    invoke-direct {v12, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 534
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 537
    move-result-object v5

    .line 540
    const-string/jumbo v12, "surface_variant"

    .line 541
    invoke-static {v12, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 544
    move-result-object v26

    .line 547
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 548
    const/16 v12, 0x1b

    .line 550
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 552
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 555
    const/16 v13, 0x1c

    .line 557
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 559
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 562
    const/4 v8, 0x2

    .line 564
    invoke-direct {v13, v0, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 565
    invoke-static {v5, v12, v13, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 568
    move-result-object v5

    .line 571
    const-string v8, "on_surface_variant"

    .line 572
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 574
    move-result-object v27

    .line 577
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 578
    const/16 v8, 0x13

    .line 580
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 582
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 585
    const/16 v12, 0x14

    .line 587
    invoke-direct {v8, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 589
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 592
    const/4 v13, 0x7

    .line 594
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 595
    invoke-static {v5, v8, v12, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 598
    move-result-object v5

    .line 601
    const-string v8, "outline"

    .line 602
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 604
    move-result-object v28

    .line 607
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->outlineVariant()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 608
    move-result-object v5

    .line 611
    const-string v8, "outline_variant"

    .line 612
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 614
    move-result-object v29

    .line 617
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->error()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 618
    move-result-object v5

    .line 621
    const-string v8, "error"

    .line 622
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 624
    move-result-object v30

    .line 627
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 628
    const/16 v8, 0x19

    .line 630
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 632
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 635
    const/16 v12, 0x1a

    .line 637
    invoke-direct {v8, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 639
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 642
    const/16 v12, 0xa

    .line 644
    invoke-direct {v13, v0, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 646
    invoke-static {v5, v8, v13, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 649
    move-result-object v5

    .line 652
    const-string v8, "on_error"

    .line 653
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 655
    move-result-object v31

    .line 658
    invoke-virtual {v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->errorContainer()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 659
    move-result-object v5

    .line 662
    const-string v8, "error_container"

    .line 663
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 665
    move-result-object v32

    .line 668
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 669
    const/16 v13, 0x13

    .line 671
    invoke-direct {v5, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 673
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 676
    const/16 v12, 0x14

    .line 678
    invoke-direct {v8, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 680
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 683
    const/16 v13, 0x9

    .line 685
    invoke-direct {v12, v0, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 687
    invoke-static {v5, v8, v12, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 690
    move-result-object v5

    .line 693
    const-string v8, "on_error_container"

    .line 694
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 696
    move-result-object v33

    .line 699
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 700
    const/16 v8, 0x16

    .line 702
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 704
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 707
    const/16 v8, 0x17

    .line 709
    invoke-direct {v12, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 711
    invoke-static {v5, v12, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 714
    move-result-object v5

    .line 717
    const-string v8, "control_activated"

    .line 718
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 720
    move-result-object v34

    .line 723
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 724
    const/4 v8, 0x1

    .line 726
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 727
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 730
    const/4 v12, 0x2

    .line 732
    invoke-direct {v8, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 733
    invoke-static {v5, v8, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 736
    move-result-object v5

    .line 739
    const-string v8, "control_normal"

    .line 740
    invoke-static {v8, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 742
    move-result-object v35

    .line 745
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 746
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 748
    const/16 v12, 0x1d

    .line 750
    invoke-direct {v8, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 752
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 755
    const/4 v13, 0x0

    .line 757
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 758
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 761
    const/4 v14, 0x1

    .line 763
    invoke-direct {v13, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 764
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 767
    move-object/from16 v67, v0

    .line 769
    const/4 v0, 0x2

    .line 771
    invoke-direct {v14, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 772
    const/16 v63, 0x0

    .line 775
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 777
    move-object/from16 v68, v2

    .line 779
    const/4 v2, 0x3

    .line 781
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 782
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 785
    move-object/from16 v69, v15

    .line 787
    const/4 v15, 0x4

    .line 789
    invoke-direct {v2, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 790
    const/16 v66, 0x0

    .line 793
    move-object/from16 v58, v5

    .line 795
    move-object/from16 v59, v8

    .line 797
    move-object/from16 v60, v12

    .line 799
    move-object/from16 v61, v13

    .line 801
    move-object/from16 v62, v14

    .line 803
    move-object/from16 v64, v0

    .line 805
    move-object/from16 v65, v2

    .line 807
    invoke-direct/range {v58 .. v66}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;-><init>(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)V

    .line 809
    const-string v0, "control_highlight"

    .line 812
    invoke-static {v0, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 814
    move-result-object v36

    .line 817
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 818
    const/4 v2, 0x0

    .line 820
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 821
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 824
    const/4 v13, 0x1

    .line 826
    invoke-direct {v2, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 827
    const/4 v14, 0x0

    .line 830
    invoke-static {v0, v2, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 831
    move-result-object v0

    .line 834
    const-string/jumbo v2, "text_primary_inverse"

    .line 835
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 838
    move-result-object v37

    .line 841
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 842
    const/4 v2, 0x2

    .line 844
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 845
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 848
    const/4 v5, 0x3

    .line 850
    invoke-direct {v2, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 851
    invoke-static {v0, v2, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 854
    move-result-object v0

    .line 857
    const-string/jumbo v2, "text_secondary_and_tertiary_inverse"

    .line 858
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 861
    move-result-object v38

    .line 864
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 865
    const/16 v2, 0x1b

    .line 867
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 869
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 872
    const/16 v8, 0x1c

    .line 874
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 876
    invoke-static {v0, v5, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 879
    move-result-object v0

    .line 882
    const-string/jumbo v5, "text_primary_inverse_disable_only"

    .line 883
    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 886
    move-result-object v39

    .line 889
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 890
    const/4 v5, 0x5

    .line 892
    invoke-direct {v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 893
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 896
    const/4 v15, 0x6

    .line 898
    invoke-direct {v5, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 899
    invoke-static {v0, v5, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 902
    move-result-object v0

    .line 905
    const-string/jumbo v5, "text_secondary_and_tertiary_inverse_disabled"

    .line 906
    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 909
    move-result-object v40

    .line 912
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 913
    const/16 v5, 0xf

    .line 915
    invoke-direct {v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 917
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 920
    const/16 v8, 0x10

    .line 922
    invoke-direct {v5, v8}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 924
    invoke-static {v0, v5, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 927
    move-result-object v0

    .line 930
    const-string/jumbo v5, "text_hint_inverse"

    .line 931
    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 934
    move-result-object v41

    .line 937
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 938
    const/4 v5, 0x2

    .line 940
    invoke-direct {v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 941
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 944
    const/4 v12, 0x3

    .line 946
    invoke-direct {v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 947
    invoke-static {v0, v5, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 950
    move-result-object v0

    .line 953
    const-string v5, "palette_key_color_primary"

    .line 954
    invoke-static {v5, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 956
    move-result-object v42

    .line 959
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 960
    const/4 v5, 0x4

    .line 962
    invoke-direct {v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 963
    new-instance v5, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 966
    const/4 v2, 0x5

    .line 968
    invoke-direct {v5, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 969
    invoke-static {v0, v5, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 972
    move-result-object v0

    .line 975
    const-string v2, "palette_key_color_secondary"

    .line 976
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 978
    move-result-object v43

    .line 981
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 982
    const/16 v2, 0xd

    .line 984
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 986
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 989
    const/16 v5, 0xe

    .line 991
    invoke-direct {v2, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 993
    invoke-static {v0, v2, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 996
    move-result-object v0

    .line 999
    const-string v2, "palette_key_color_tertiary"

    .line 1000
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1002
    move-result-object v44

    .line 1005
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1006
    invoke-direct {v0, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1008
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1011
    const/16 v5, 0xf

    .line 1013
    invoke-direct {v2, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1015
    invoke-static {v0, v2, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1018
    move-result-object v0

    .line 1021
    const-string v2, "palette_key_color_neutral"

    .line 1022
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1024
    move-result-object v45

    .line 1027
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1028
    const/16 v2, 0x1d

    .line 1030
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1032
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1035
    const/4 v5, 0x0

    .line 1037
    invoke-direct {v2, v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1038
    invoke-static {v0, v2, v14, v14}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1041
    move-result-object v0

    .line 1044
    const-string v2, "palette_key_color_neutral_variant"

    .line 1045
    invoke-static {v2, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1047
    move-result-object v46

    .line 1050
    const/16 v0, 0xf

    .line 1051
    move-object v5, v1

    .line 1053
    move v2, v8

    .line 1054
    const/16 v1, 0x16

    .line 1055
    move-object v8, v9

    .line 1057
    move-object v9, v10

    .line 1058
    move-object v10, v11

    .line 1059
    move-object/from16 v11, v69

    .line 1060
    move/from16 v16, v12

    .line 1062
    const/16 v17, 0xb

    .line 1064
    move-object/from16 v12, v68

    .line 1066
    move v1, v15

    .line 1068
    const/16 v17, 0x9

    .line 1069
    move v15, v13

    .line 1071
    move-object/from16 v13, v24

    .line 1072
    move-object/from16 v14, v25

    .line 1074
    move-object/from16 v15, v47

    .line 1076
    move-object/from16 v16, v48

    .line 1078
    move-object/from16 v17, v49

    .line 1080
    move-object/from16 v18, v50

    .line 1082
    move-object/from16 v19, v51

    .line 1084
    move-object/from16 v20, v52

    .line 1086
    move-object/from16 v21, v53

    .line 1088
    move-object/from16 v22, v54

    .line 1090
    move-object/from16 v23, v55

    .line 1092
    move-object/from16 v24, v56

    .line 1094
    move-object/from16 v25, v57

    .line 1096
    filled-new-array/range {v3 .. v46}, [Landroid/util/Pair;

    .line 1098
    move-result-object v3

    .line 1101
    invoke-static {v3}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1102
    move-result-object v3

    .line 1105
    sput-object v3, Lcom/android/systemui/theme/DynamicColors;->ALL_DYNAMIC_COLORS_MAPPED:Ljava/util/List;

    .line 1106
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 1108
    invoke-direct {v3, v0}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1110
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;

    .line 1113
    invoke-direct {v0, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda6;-><init>(I)V

    .line 1115
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 1118
    move-object/from16 v5, v67

    .line 1120
    invoke-direct {v4, v5, v1}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1122
    const/4 v1, 0x0

    .line 1125
    invoke-static {v3, v0, v4, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1126
    move-result-object v0

    .line 1129
    const-string v3, "primary_fixed"

    .line 1130
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1132
    move-result-object v6

    .line 1135
    invoke-virtual {v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->primaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1136
    move-result-object v0

    .line 1139
    const-string v3, "primary_fixed_dim"

    .line 1140
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1142
    move-result-object v7

    .line 1145
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1146
    const/16 v3, 0x17

    .line 1148
    invoke-direct {v0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1150
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1153
    const/16 v4, 0x18

    .line 1155
    invoke-direct {v3, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1157
    new-instance v8, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;

    .line 1160
    const/4 v9, 0x1

    .line 1162
    invoke-direct {v8, v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda5;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1163
    invoke-static {v0, v3, v8, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1166
    move-result-object v0

    .line 1169
    const-string v3, "on_primary_fixed"

    .line 1170
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1172
    move-result-object v8

    .line 1175
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1176
    const/16 v3, 0x8

    .line 1178
    invoke-direct {v0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1180
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1183
    const/16 v10, 0x9

    .line 1185
    invoke-direct {v3, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1187
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1190
    invoke-direct {v11, v5, v9}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1192
    invoke-static {v0, v3, v11, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1195
    move-result-object v0

    .line 1198
    const-string v3, "on_primary_fixed_variant"

    .line 1199
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1201
    move-result-object v9

    .line 1204
    new-instance v0, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1205
    const/4 v3, 0x3

    .line 1207
    invoke-direct {v0, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1208
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1211
    const/4 v11, 0x4

    .line 1213
    invoke-direct {v3, v11}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1214
    new-instance v11, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1217
    const/16 v12, 0xb

    .line 1219
    invoke-direct {v11, v5, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1221
    invoke-static {v0, v3, v11, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1224
    move-result-object v0

    .line 1227
    const-string/jumbo v3, "secondary_fixed"

    .line 1228
    invoke-static {v3, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1231
    move-result-object v0

    .line 1234
    invoke-virtual {v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->secondaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1235
    move-result-object v3

    .line 1238
    const-string/jumbo v11, "secondary_fixed_dim"

    .line 1239
    invoke-static {v11, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1242
    move-result-object v11

    .line 1245
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1246
    const/16 v12, 0x15

    .line 1248
    invoke-direct {v3, v12}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1250
    new-instance v12, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1253
    const/16 v13, 0x16

    .line 1255
    invoke-direct {v12, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1257
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1260
    const/16 v14, 0x8

    .line 1262
    invoke-direct {v13, v5, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1264
    invoke-static {v3, v12, v13, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1267
    move-result-object v3

    .line 1270
    const-string v12, "on_secondary_fixed"

    .line 1271
    invoke-static {v12, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1273
    move-result-object v12

    .line 1276
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1277
    const/16 v13, 0x17

    .line 1279
    invoke-direct {v3, v13}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1281
    new-instance v13, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;

    .line 1284
    invoke-direct {v13, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda1;-><init>(I)V

    .line 1286
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1289
    invoke-direct {v4, v5, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1291
    invoke-static {v3, v13, v4, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1294
    move-result-object v3

    .line 1297
    const-string v4, "on_secondary_fixed_variant"

    .line 1298
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1300
    move-result-object v13

    .line 1303
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1304
    const/16 v4, 0x1a

    .line 1306
    invoke-direct {v3, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1308
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1311
    const/16 v14, 0x1b

    .line 1313
    invoke-direct {v4, v14}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1315
    new-instance v14, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1318
    const/16 v15, 0x16

    .line 1320
    invoke-direct {v14, v5, v15}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1322
    invoke-static {v3, v4, v14, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1325
    move-result-object v3

    .line 1328
    const-string/jumbo v4, "tertiary_fixed"

    .line 1329
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1332
    move-result-object v14

    .line 1335
    invoke-virtual {v5}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;->tertiaryFixedDim()Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1336
    move-result-object v3

    .line 1339
    const-string/jumbo v4, "tertiary_fixed_dim"

    .line 1340
    invoke-static {v4, v3}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1343
    move-result-object v15

    .line 1346
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1347
    const/16 v4, 0x13

    .line 1349
    invoke-direct {v3, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1351
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;

    .line 1354
    const/16 v2, 0x14

    .line 1356
    invoke-direct {v4, v2}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda4;-><init>(I)V

    .line 1358
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1361
    const/16 v10, 0x1d

    .line 1363
    invoke-direct {v2, v5, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1365
    invoke-static {v3, v4, v2, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1368
    move-result-object v2

    .line 1371
    const-string v3, "on_tertiary_fixed"

    .line 1372
    invoke-static {v3, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1374
    move-result-object v16

    .line 1377
    new-instance v2, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1378
    const/16 v3, 0x9

    .line 1380
    invoke-direct {v2, v3}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1382
    new-instance v3, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;

    .line 1385
    const/16 v4, 0xa

    .line 1387
    invoke-direct {v3, v4}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda3;-><init>(I)V

    .line 1389
    new-instance v4, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;

    .line 1392
    const/16 v10, 0x10

    .line 1394
    invoke-direct {v4, v5, v10}, Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/monet/dynamiccolor/MaterialDynamicColors;I)V

    .line 1396
    invoke-static {v2, v3, v4, v1}, Lcom/android/systemui/monet/dynamiccolor/DynamicColor;->fromPalette(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/Function;)Lcom/android/systemui/monet/dynamiccolor/DynamicColor;

    .line 1399
    move-result-object v1

    .line 1402
    const-string v2, "on_tertiary_fixed_variant"

    .line 1403
    invoke-static {v2, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 1405
    move-result-object v17

    .line 1408
    move-object v10, v0

    .line 1409
    filled-new-array/range {v6 .. v17}, [Landroid/util/Pair;

    .line 1410
    move-result-object v0

    .line 1413
    invoke-static {v0}, Lkotlin/collections/CollectionsKt__CollectionsKt;->arrayListOf([Ljava/lang/Object;)Ljava/util/ArrayList;

    .line 1414
    move-result-object v0

    .line 1417
    sput-object v0, Lcom/android/systemui/theme/DynamicColors;->FIXED_COLORS_MAPPED:Ljava/util/List;

    .line 1418
    return-void
    .line 1420
.end method
