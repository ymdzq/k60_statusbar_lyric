.class public abstract Lmiuix/core/util/EnvStateManager;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static volatile mStatusBarHeight:I

.field public static volatile mStatusBarHeightDp:I

.field public static final mStatusBarHeightLock:Ljava/lang/Object;

.field public static sOriginConfig:Lmiuix/view/DisplayConfig;

.field public static final sScreenSize:Landroid/graphics/Point;

.field public static final sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/graphics/Point;

    .line 2
    const/4 v1, -0x1

    .line 4
    invoke-direct {v0, v1, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 5
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 8
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    .line 12
    sput-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 15
    new-instance v0, Ljava/lang/Object;

    .line 17
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 19
    sput-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 22
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 24
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 26
    return-void
    .line 28
.end method

.method public static getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 6
    move-result p0

    .line 9
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sWindowInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 10
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 12
    move-result-object v1

    .line 15
    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lmiuix/core/util/WindowBaseInfo;

    .line 20
    if-nez v1, :cond_0

    .line 22
    new-instance v1, Lmiuix/core/util/WindowBaseInfo;

    .line 24
    invoke-direct {v1}, Lmiuix/core/util/WindowBaseInfo;-><init>()V

    .line 26
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object p0

    .line 32
    invoke-virtual {v0, p0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    :cond_0
    return-object v1
    .line 36
.end method

.method public static getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;
    .locals 3

    .line 1
    sget-object v0, Lmiuix/core/util/EnvStateManager;->sScreenSize:Landroid/graphics/Point;

    .line 2
    iget v1, v0, Landroid/graphics/Point;->x:I

    .line 4
    const/4 v2, -0x1

    .line 6
    if-ne v1, v2, :cond_0

    .line 7
    iget v1, v0, Landroid/graphics/Point;->y:I

    .line 9
    if-ne v1, v2, :cond_0

    .line 11
    const/4 v1, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-eqz v1, :cond_1

    .line 16
    const-string v1, "window"

    .line 18
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    check-cast p0, Landroid/view/WindowManager;

    .line 24
    monitor-enter v0

    .line 26
    :try_start_0
    invoke-interface {p0}, Landroid/view/WindowManager;->getMaximumWindowMetrics()Landroid/view/WindowMetrics;

    .line 27
    move-result-object p0

    .line 30
    invoke-virtual {p0}, Landroid/view/WindowMetrics;->getBounds()Landroid/graphics/Rect;

    .line 31
    move-result-object p0

    .line 34
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    .line 35
    move-result v1

    .line 38
    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 39
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 41
    move-result p0

    .line 44
    iput p0, v0, Landroid/graphics/Point;->y:I

    .line 45
    monitor-exit v0

    .line 47
    goto :goto_1

    .line 48
    :catchall_0
    move-exception p0

    .line 49
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    throw p0

    .line 51
    :cond_1
    :goto_1
    return-object v0
    .line 52
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5

    .line 1
    sget v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 2
    const/4 v1, -0x1

    .line 4
    if-ne v0, v1, :cond_2

    .line 5
    sget-object v0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightLock:Ljava/lang/Object;

    .line 7
    monitor-enter v0

    .line 9
    :try_start_0
    sget v2, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 10
    if-ne v2, v1, :cond_1

    .line 12
    sget v1, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 14
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 16
    move-result-object v1

    .line 19
    const-string v2, "dimen"

    .line 20
    const-string v3, "android"

    .line 22
    const-string v4, "status_bar_height"

    .line 24
    invoke-virtual {v1, v4, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    move-result v1

    .line 29
    if-lez v1, :cond_0

    .line 30
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 32
    move-result-object v2

    .line 35
    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 36
    move-result v1

    .line 39
    goto :goto_0

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 41
    :goto_0
    sput v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 42
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 44
    move-result-object p0

    .line 47
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 48
    move-result-object p0

    .line 51
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 52
    int-to-float p0, p0

    .line 54
    const/high16 v1, 0x43200000    # 160.0f

    .line 55
    div-float/2addr p0, v1

    .line 57
    sget v1, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 58
    int-to-float v1, v1

    .line 60
    div-float/2addr v1, p0

    .line 61
    float-to-int p0, v1

    .line 62
    sput p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeightDp:I

    .line 63
    :cond_1
    monitor-exit v0

    .line 65
    goto :goto_1

    .line 66
    :catchall_0
    move-exception p0

    .line 67
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    throw p0

    .line 69
    :cond_2
    :goto_1
    sget p0, Lmiuix/core/util/EnvStateManager;->mStatusBarHeight:I

    .line 70
    return p0
    .line 72
.end method

.method public static getWindowInfo(Landroid/content/Context;Landroid/content/res/Configuration;)Lmiuix/core/util/WindowBaseInfo;
    .locals 10

    .line 1
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getInnerWindowInfo(Landroid/content/Context;)Lmiuix/core/util/WindowBaseInfo;

    .line 2
    move-result-object v0

    .line 5
    iget-boolean v1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 6
    iget-object v2, v0, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 8
    const/4 v3, 0x1

    .line 10
    const/4 v4, 0x0

    .line 11
    const/high16 v5, 0x3f800000    # 1.0f

    .line 12
    if-nez v1, :cond_0

    .line 14
    goto :goto_1

    .line 16
    :cond_0
    if-eqz p1, :cond_5

    .line 17
    sget-object v1, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 19
    if-nez v1, :cond_1

    .line 21
    new-instance v1, Lmiuix/view/DisplayConfig;

    .line 23
    invoke-direct {v1, p1}, Lmiuix/view/DisplayConfig;-><init>(Landroid/content/res/Configuration;)V

    .line 25
    sput-object v1, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 28
    :cond_1
    iget v1, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 30
    int-to-float v1, v1

    .line 32
    const/high16 v6, 0x43200000    # 160.0f

    .line 33
    div-float v6, v1, v6

    .line 35
    sget-object v7, Lmiuix/core/util/EnvStateManager;->sOriginConfig:Lmiuix/view/DisplayConfig;

    .line 37
    iget v7, v7, Lmiuix/view/DisplayConfig;->densityDpi:I

    .line 39
    int-to-float v7, v7

    .line 41
    mul-float/2addr v7, v5

    .line 42
    div-float/2addr v7, v1

    .line 43
    mul-float/2addr v6, v7

    .line 44
    iget v1, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 45
    int-to-float v1, v1

    .line 47
    sget v8, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 48
    mul-float/2addr v1, v6

    .line 50
    const/high16 v8, 0x3f000000    # 0.5f

    .line 51
    add-float/2addr v1, v8

    .line 53
    float-to-int v1, v1

    .line 54
    iget v9, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 55
    int-to-float v9, v9

    .line 57
    mul-float/2addr v9, v6

    .line 58
    add-float/2addr v9, v8

    .line 59
    float-to-int v6, v9

    .line 60
    invoke-virtual {v2, v1, v6}, Landroid/graphics/Point;->set(II)V

    .line 61
    iget-object v1, v0, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 64
    iget v6, p1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 66
    int-to-float v6, v6

    .line 68
    mul-float/2addr v6, v7

    .line 69
    float-to-int v6, v6

    .line 70
    iget p1, p1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 71
    int-to-float p1, p1

    .line 73
    mul-float/2addr p1, v7

    .line 74
    float-to-int p1, p1

    .line 75
    invoke-virtual {v1, v6, p1}, Landroid/graphics/Point;->set(II)V

    .line 76
    iget p1, v1, Landroid/graphics/Point;->x:I

    .line 79
    iget v1, v1, Landroid/graphics/Point;->y:I

    .line 81
    const/16 v6, 0x29e

    .line 83
    if-gt p1, v6, :cond_3

    .line 85
    :cond_2
    move p1, v3

    .line 87
    goto :goto_0

    .line 88
    :cond_3
    const/16 v6, 0x3c0

    .line 89
    if-lt p1, v6, :cond_4

    .line 91
    const/4 p1, 0x3

    .line 93
    goto :goto_0

    .line 94
    :cond_4
    const/16 p1, 0x226

    .line 95
    if-le v1, p1, :cond_2

    .line 97
    const/4 p1, 0x2

    .line 99
    :goto_0
    iput p1, v0, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 100
    iput-boolean v4, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 102
    goto :goto_1

    .line 104
    :cond_5
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 105
    :goto_1
    iget-boolean p1, v0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 108
    if-nez p1, :cond_6

    .line 110
    goto/16 :goto_c

    .line 112
    :cond_6
    iget-boolean p1, v0, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 114
    if-eqz p1, :cond_7

    .line 116
    invoke-static {p0, v0}, Lmiuix/core/util/EnvStateManager;->updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V

    .line 118
    :cond_7
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->getScreenSize(Landroid/content/Context;)Landroid/graphics/Point;

    .line 121
    move-result-object p1

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 125
    move-result-object p0

    .line 128
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 129
    move-result-object p0

    .line 132
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 133
    int-to-float v1, v1

    .line 135
    const/4 v6, 0x0

    .line 136
    add-float/2addr v1, v6

    .line 137
    iget v7, p1, Landroid/graphics/Point;->x:I

    .line 138
    int-to-float v7, v7

    .line 140
    div-float/2addr v1, v7

    .line 141
    iget v7, v2, Landroid/graphics/Point;->y:I

    .line 142
    int-to-float v7, v7

    .line 144
    add-float/2addr v7, v6

    .line 145
    iget v8, p1, Landroid/graphics/Point;->y:I

    .line 146
    int-to-float v8, v8

    .line 148
    div-float/2addr v7, v8

    .line 149
    invoke-virtual {p0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    .line 150
    move-result-object p0

    .line 153
    const-string v8, "mWindowingMode=freeform"

    .line 154
    invoke-virtual {p0, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 156
    move-result p0

    .line 159
    if-eqz p0, :cond_9

    .line 160
    const p0, 0x3f666666    # 0.9f

    .line 162
    cmpg-float v1, v1, p0

    .line 165
    if-lez v1, :cond_8

    .line 167
    cmpg-float p0, v7, p0

    .line 169
    if-gtz p0, :cond_9

    .line 171
    :cond_8
    move p0, v3

    .line 173
    goto :goto_2

    .line 174
    :cond_9
    move p0, v4

    .line 175
    :goto_2
    if-nez p0, :cond_a

    .line 176
    iget p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 178
    and-int/lit16 p0, p0, -0x2001

    .line 180
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 182
    goto :goto_4

    .line 184
    :cond_a
    iget p0, v2, Landroid/graphics/Point;->x:I

    .line 185
    iget v1, v2, Landroid/graphics/Point;->y:I

    .line 187
    if-eqz p0, :cond_b

    .line 189
    int-to-float v1, v1

    .line 191
    mul-float/2addr v1, v5

    .line 192
    int-to-float p0, p0

    .line 193
    div-float/2addr v1, p0

    .line 194
    goto :goto_3

    .line 195
    :cond_b
    move v1, v6

    .line 196
    :goto_3
    cmpg-float p0, v1, v6

    .line 197
    if-gtz p0, :cond_c

    .line 199
    iput v4, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 201
    goto :goto_4

    .line 203
    :cond_c
    const p0, 0x3f3d70a4    # 0.74f

    .line 204
    cmpl-float p0, v1, p0

    .line 207
    if-ltz p0, :cond_d

    .line 209
    const p0, 0x3f428f5c    # 0.76f

    .line 211
    cmpg-float p0, v1, p0

    .line 214
    if-gez p0, :cond_d

    .line 216
    const/16 p0, 0x2003

    .line 218
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 220
    goto :goto_4

    .line 222
    :cond_d
    const p0, 0x3fa8f5c3    # 1.32f

    .line 223
    cmpl-float p0, v1, p0

    .line 226
    if-ltz p0, :cond_e

    .line 228
    const p0, 0x3fab851f    # 1.34f

    .line 230
    cmpg-float p0, v1, p0

    .line 233
    if-gez p0, :cond_e

    .line 235
    const/16 p0, 0x2002

    .line 237
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 239
    goto :goto_4

    .line 241
    :cond_e
    const p0, 0x3fe147ae    # 1.76f

    .line 242
    cmpl-float p0, v1, p0

    .line 245
    if-ltz p0, :cond_f

    .line 247
    const p0, 0x3fe51eb8    # 1.79f

    .line 249
    cmpg-float p0, v1, p0

    .line 252
    if-gez p0, :cond_f

    .line 254
    const/16 p0, 0x2001

    .line 256
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 258
    goto :goto_4

    .line 260
    :cond_f
    const/16 p0, 0x2004

    .line 261
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 263
    :goto_4
    iget p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 265
    and-int/lit16 p0, p0, 0x2000

    .line 267
    if-eqz p0, :cond_10

    .line 269
    move p0, v3

    .line 271
    goto :goto_5

    .line 272
    :cond_10
    move p0, v4

    .line 273
    :goto_5
    if-nez p0, :cond_1a

    .line 274
    iget p0, p1, Landroid/graphics/Point;->x:I

    .line 276
    iget p1, p1, Landroid/graphics/Point;->y:I

    .line 278
    if-le p0, p1, :cond_11

    .line 280
    move v1, v3

    .line 282
    goto :goto_6

    .line 283
    :cond_11
    move v1, v4

    .line 284
    :goto_6
    if-eqz v1, :cond_12

    .line 285
    iget p1, v2, Landroid/graphics/Point;->x:I

    .line 287
    int-to-float p1, p1

    .line 289
    int-to-float p0, p0

    .line 290
    add-float/2addr p0, v6

    .line 291
    div-float/2addr p1, p0

    .line 292
    goto :goto_7

    .line 293
    :cond_12
    iget v1, v2, Landroid/graphics/Point;->x:I

    .line 294
    int-to-float v1, v1

    .line 296
    int-to-float p0, p0

    .line 297
    add-float/2addr p0, v6

    .line 298
    div-float p0, v1, p0

    .line 299
    const v1, 0x3f733333    # 0.95f

    .line 301
    cmpl-float v1, p0, v1

    .line 304
    if-ltz v1, :cond_13

    .line 306
    iget p0, v2, Landroid/graphics/Point;->y:I

    .line 308
    int-to-float p0, p0

    .line 310
    int-to-float p1, p1

    .line 311
    add-float/2addr p1, v6

    .line 312
    div-float p1, p0, p1

    .line 313
    goto :goto_7

    .line 315
    :cond_13
    move p1, p0

    .line 316
    :goto_7
    cmpl-float p0, p1, v6

    .line 317
    const v1, 0x3ecccccd    # 0.4f

    .line 319
    if-ltz p0, :cond_14

    .line 322
    cmpg-float p0, p1, v1

    .line 324
    if-gez p0, :cond_14

    .line 326
    move p0, v3

    .line 328
    goto :goto_8

    .line 329
    :cond_14
    move p0, v4

    .line 330
    :goto_8
    if-eqz p0, :cond_15

    .line 331
    const/16 p0, 0x1001

    .line 333
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 335
    goto :goto_b

    .line 337
    :cond_15
    cmpl-float p0, p1, v1

    .line 338
    const v1, 0x3f19999a    # 0.6f

    .line 340
    if-ltz p0, :cond_16

    .line 343
    cmpg-float p0, p1, v1

    .line 345
    if-gez p0, :cond_16

    .line 347
    move p0, v3

    .line 349
    goto :goto_9

    .line 350
    :cond_16
    move p0, v4

    .line 351
    :goto_9
    if-eqz p0, :cond_17

    .line 352
    const/16 p0, 0x1002

    .line 354
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 356
    goto :goto_b

    .line 358
    :cond_17
    cmpl-float p0, p1, v1

    .line 359
    if-ltz p0, :cond_18

    .line 361
    const p0, 0x3f4ccccd    # 0.8f

    .line 363
    cmpg-float p0, p1, p0

    .line 366
    if-gez p0, :cond_18

    .line 368
    goto :goto_a

    .line 370
    :cond_18
    move v3, v4

    .line 371
    :goto_a
    if-eqz v3, :cond_19

    .line 372
    const/16 p0, 0x1003

    .line 374
    iput p0, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 376
    goto :goto_b

    .line 378
    :cond_19
    iput v4, v0, Lmiuix/core/util/WindowBaseInfo;->windowMode:I

    .line 379
    :cond_1a
    :goto_b
    iput-boolean v4, v0, Lmiuix/core/util/WindowBaseInfo;->modeDirty:Z

    .line 381
    :goto_c
    return-object v0
    .line 383
.end method

.method public static updateWindowSize(Landroid/content/Context;Lmiuix/core/util/WindowBaseInfo;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lmiuix/core/util/WindowBaseInfo;->windowSize:Landroid/graphics/Point;

    .line 2
    invoke-static {p0, v0}, Lmiuix/core/util/WindowUtils;->getWindowSize(Landroid/content/Context;Landroid/graphics/Point;)V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 11
    move-result-object p0

    .line 14
    iget p0, p0, Landroid/content/res/Configuration;->densityDpi:I

    .line 15
    int-to-float p0, p0

    .line 17
    const/high16 v1, 0x43200000    # 160.0f

    .line 18
    div-float/2addr p0, v1

    .line 20
    iget-object v1, p1, Lmiuix/core/util/WindowBaseInfo;->windowSizeDp:Landroid/graphics/Point;

    .line 21
    iget v2, v0, Landroid/graphics/Point;->x:I

    .line 23
    int-to-float v2, v2

    .line 25
    sget v3, Lmiuix/core/util/MiuixUIUtils;->$r8$clinit:I

    .line 26
    div-float/2addr v2, p0

    .line 28
    const/high16 v3, 0x3f000000    # 0.5f

    .line 29
    add-float/2addr v2, v3

    .line 31
    float-to-int v2, v2

    .line 32
    iget v0, v0, Landroid/graphics/Point;->y:I

    .line 33
    int-to-float v0, v0

    .line 35
    div-float/2addr v0, p0

    .line 36
    add-float/2addr v0, v3

    .line 37
    float-to-int p0, v0

    .line 38
    invoke-virtual {v1, v2, p0}, Landroid/graphics/Point;->set(II)V

    .line 39
    iget p0, v1, Landroid/graphics/Point;->x:I

    .line 42
    iget v0, v1, Landroid/graphics/Point;->y:I

    .line 44
    const/16 v1, 0x29e

    .line 46
    const/4 v2, 0x1

    .line 48
    if-gt p0, v1, :cond_0

    .line 49
    goto :goto_0

    .line 51
    :cond_0
    const/16 v1, 0x3c0

    .line 52
    if-lt p0, v1, :cond_1

    .line 54
    const/4 v2, 0x3

    .line 56
    goto :goto_0

    .line 57
    :cond_1
    const/16 p0, 0x226

    .line 58
    if-le v0, p0, :cond_2

    .line 60
    const/4 v2, 0x2

    .line 62
    :cond_2
    :goto_0
    iput v2, p1, Lmiuix/core/util/WindowBaseInfo;->windowType:I

    .line 63
    const/4 p0, 0x0

    .line 65
    iput-boolean p0, p1, Lmiuix/core/util/WindowBaseInfo;->sizeDirty:Z

    .line 66
    return-void
    .line 68
.end method
