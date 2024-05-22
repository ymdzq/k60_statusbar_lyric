.class public final Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static sControlViewHashCode:I = 0x0

.field public static sHasGetProperty:Z = false

.field public static sRefreshRateList:[I

.field public static sRefreshRateSpeedLimits:[I


# instance fields
.field public mCountIndex:I

.field public mCurrentRefreshRate:I

.field public final mDisplay:Landroid/view/Display;

.field public mHasFocus:Z

.field public final mIsEnable:Z

.field public volatile mIsTouch:Z

.field public mNeedAbandon:Z

.field public mOldScrollState:I

.field public mStartTime:J

.field public mTotalDistance:J

.field public final mWindow:Landroid/view/Window;


# direct methods
.method public constructor <init>(Lmiuix/recyclerview/widget/RecyclerView;)V
    .locals 9

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsTouch:Z

    .line 6
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mHasFocus:Z

    .line 8
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCountIndex:I

    .line 10
    const-wide/16 v1, -0x1

    .line 12
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mStartTime:J

    .line 14
    const-wide/16 v1, 0x0

    .line 16
    iput-wide v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mTotalDistance:J

    .line 18
    iput-boolean v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mNeedAbandon:Z

    .line 20
    iput v0, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mOldScrollState:I

    .line 22
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 24
    move-result-object v1

    .line 27
    instance-of v1, v1, Landroid/app/Activity;

    .line 28
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    .line 37
    move-result-object v1

    .line 40
    goto :goto_0

    .line 41
    :cond_0
    move-object v1, v2

    .line 42
    :goto_0
    iput-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    .line 43
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 45
    move-result-object v1

    .line 48
    instance-of v1, v1, Landroid/app/Activity;

    .line 49
    if-eqz v1, :cond_1

    .line 51
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 53
    move-result-object p1

    .line 56
    check-cast p1, Landroid/app/Activity;

    .line 57
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 59
    move-result-object p1

    .line 62
    goto :goto_1

    .line 63
    :cond_1
    move-object p1, v2

    .line 64
    :goto_1
    iput-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 65
    const-string p1, ","

    .line 67
    const-string v1, "dynamic params is "

    .line 69
    sget-boolean v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 71
    const-string v4, "DynamicRefreshRate recy"

    .line 73
    const/4 v5, 0x1

    .line 75
    if-eqz v3, :cond_3

    .line 76
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 78
    if-eqz p1, :cond_2

    .line 80
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 82
    if-eqz p1, :cond_2

    .line 84
    :goto_2
    move p1, v5

    .line 86
    goto/16 :goto_a

    .line 87
    :cond_2
    :goto_3
    move p1, v0

    .line 89
    goto/16 :goto_a

    .line 90
    :cond_3
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 92
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 94
    move-result-object v3

    .line 97
    const-string v6, "get"

    .line 98
    new-array v7, v5, [Ljava/lang/Class;

    .line 100
    const-class v8, Ljava/lang/String;

    .line 102
    aput-object v8, v7, v0

    .line 104
    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 106
    move-result-object v3

    .line 109
    new-array v6, v5, [Ljava/lang/Object;

    .line 110
    const-string v7, "ro.vendor.display.dynamic_refresh_rate"

    .line 112
    aput-object v7, v6, v0

    .line 114
    invoke-virtual {v3, v2, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v3

    .line 119
    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 120
    if-nez v3, :cond_5

    .line 122
    new-instance p1, Ljava/lang/StringBuilder;

    .line 124
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 126
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 129
    if-eqz v1, :cond_4

    .line 131
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 133
    if-eqz v1, :cond_4

    .line 135
    :goto_4
    move v1, v5

    .line 137
    goto :goto_5

    .line 138
    :cond_4
    move v1, v0

    .line 139
    :goto_5
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object p1

    .line 146
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 150
    goto :goto_3

    .line 152
    :cond_5
    :try_start_1
    const-string v6, ":"

    .line 153
    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 155
    move-result-object v3

    .line 158
    array-length v6, v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 159
    const/4 v7, 0x2

    .line 160
    if-eq v6, v7, :cond_6

    .line 161
    new-instance p1, Ljava/lang/StringBuilder;

    .line 163
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 165
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 168
    if-eqz v1, :cond_4

    .line 170
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 172
    if-eqz v1, :cond_4

    .line 174
    goto :goto_4

    .line 176
    :cond_6
    :try_start_2
    aget-object v6, v3, v0

    .line 177
    invoke-virtual {v6, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 179
    move-result-object v6

    .line 182
    aget-object v3, v3, v5

    .line 183
    invoke-virtual {v3, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 185
    move-result-object p1

    .line 188
    array-length v3, p1

    .line 189
    array-length v7, v6
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 190
    sub-int/2addr v7, v5

    .line 191
    if-eq v3, v7, :cond_7

    .line 192
    new-instance p1, Ljava/lang/StringBuilder;

    .line 194
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 196
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 199
    if-eqz v1, :cond_4

    .line 201
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 203
    if-eqz v1, :cond_4

    .line 205
    goto :goto_4

    .line 207
    :cond_7
    :try_start_3
    array-length v3, v6

    .line 208
    new-array v3, v3, [I

    .line 209
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 211
    move v3, v0

    .line 213
    :goto_6
    array-length v7, v6

    .line 214
    if-ge v3, v7, :cond_8

    .line 215
    sget-object v7, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 217
    aget-object v8, v6, v3

    .line 219
    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 221
    move-result v8

    .line 224
    aput v8, v7, v3

    .line 225
    add-int/lit8 v3, v3, 0x1

    .line 227
    goto :goto_6

    .line 229
    :cond_8
    array-length v3, p1

    .line 230
    new-array v3, v3, [I

    .line 231
    sput-object v3, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 233
    move v3, v0

    .line 235
    :goto_7
    array-length v6, p1

    .line 236
    if-ge v3, v6, :cond_9

    .line 237
    sget-object v6, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 239
    aget-object v7, p1, v3

    .line 241
    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 243
    move-result v7

    .line 246
    aput v7, v6, v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 247
    add-int/lit8 v3, v3, 0x1

    .line 249
    goto :goto_7

    .line 251
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    .line 252
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 254
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 257
    if-eqz v1, :cond_a

    .line 259
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 261
    if-eqz v1, :cond_a

    .line 263
    move v1, v5

    .line 265
    goto :goto_8

    .line 266
    :cond_a
    move v1, v0

    .line 267
    :goto_8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 268
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 271
    move-result-object p1

    .line 274
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 278
    goto/16 :goto_2

    .line 280
    :catchall_0
    move-exception p0

    .line 282
    goto :goto_c

    .line 283
    :catch_0
    move-exception p1

    .line 284
    :try_start_4
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    .line 288
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 293
    if-eqz v1, :cond_b

    .line 295
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 297
    if-eqz v1, :cond_b

    .line 299
    move v1, v5

    .line 301
    goto :goto_9

    .line 302
    :cond_b
    move v1, v0

    .line 303
    :goto_9
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 307
    move-result-object p1

    .line 310
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 314
    sput-object v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 316
    sput-object v2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 318
    goto/16 :goto_3

    .line 320
    :goto_a
    if-eqz p1, :cond_c

    .line 322
    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    .line 324
    if-eqz p1, :cond_c

    .line 326
    iget-object p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 328
    if-eqz p1, :cond_c

    .line 330
    goto :goto_b

    .line 332
    :cond_c
    move v5, v0

    .line 333
    :goto_b
    iput-boolean v5, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mIsEnable:Z

    .line 334
    if-nez v5, :cond_d

    .line 336
    const-string p0, "dynamic is not enable"

    .line 338
    invoke-static {v4, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    return-void

    .line 343
    :cond_d
    sget-object p1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 344
    aget p1, p1, v0

    .line 346
    iput p1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mCurrentRefreshRate:I

    .line 348
    return-void

    .line 350
    :goto_c
    new-instance p1, Ljava/lang/StringBuilder;

    .line 351
    invoke-direct {p1, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 353
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateList:[I

    .line 356
    if-eqz v1, :cond_e

    .line 358
    sget-object v1, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sRefreshRateSpeedLimits:[I

    .line 360
    if-eqz v1, :cond_e

    .line 362
    move v0, v5

    .line 364
    :cond_e
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 365
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 368
    move-result-object p1

    .line 371
    invoke-static {v4, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    sput-boolean v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sHasGetProperty:Z

    .line 375
    throw p0
    .line 377
.end method


# virtual methods
.method public final setRefreshRate(IZ)V
    .locals 11

    .line 1
    const-string v0, "DynamicRefreshRate recy"

    .line 2
    iget-object v1, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mDisplay:Landroid/view/Display;

    .line 4
    invoke-virtual {v1}, Landroid/view/Display;->getSupportedModes()[Landroid/view/Display$Mode;

    .line 6
    move-result-object v1

    .line 9
    iget-object v2, p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->mWindow:Landroid/view/Window;

    .line 10
    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    .line 12
    move-result-object v3

    .line 15
    iget v4, v3, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 16
    :try_start_0
    array-length v5, v1

    .line 18
    if-gt v4, v5, :cond_4

    .line 19
    if-gez v4, :cond_0

    .line 21
    goto/16 :goto_1

    .line 23
    :cond_0
    const/high16 v5, 0x3f800000    # 1.0f

    .line 25
    if-nez p2, :cond_1

    .line 27
    if-eqz v4, :cond_1

    .line 29
    add-int/lit8 v6, v4, -0x1

    .line 31
    aget-object v6, v1, v6

    .line 33
    invoke-virtual {v6}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 35
    move-result v6

    .line 38
    int-to-float v7, p1

    .line 39
    sub-float/2addr v6, v7

    .line 40
    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    .line 41
    move-result v6

    .line 44
    cmpg-float v6, v6, v5

    .line 45
    if-gez v6, :cond_1

    .line 47
    return-void

    .line 49
    :cond_1
    array-length v6, v1

    .line 50
    const/4 v7, 0x0

    .line 51
    :goto_0
    if-ge v7, v6, :cond_5

    .line 52
    aget-object v8, v1, v7

    .line 54
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 56
    move-result v9

    .line 59
    int-to-float v10, p1

    .line 60
    sub-float/2addr v9, v10

    .line 61
    invoke-static {v9}, Ljava/lang/Math;->abs(F)F

    .line 62
    move-result v9

    .line 65
    cmpl-float v9, v9, v5

    .line 66
    if-lez v9, :cond_2

    .line 68
    add-int/lit8 v7, v7, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    if-nez p2, :cond_3

    .line 73
    if-eqz v4, :cond_3

    .line 75
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 77
    move-result p2

    .line 80
    sget v5, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 81
    if-eq p2, v5, :cond_3

    .line 83
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 85
    move-result p2

    .line 88
    add-int/lit8 v5, v4, -0x1

    .line 89
    aget-object v5, v1, v5

    .line 91
    invoke-virtual {v5}, Landroid/view/Display$Mode;->getRefreshRate()F

    .line 93
    move-result v5

    .line 96
    cmpl-float p2, p2, v5

    .line 97
    if-lez p2, :cond_5

    .line 99
    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 101
    move-result p0

    .line 104
    sput p0, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 105
    new-instance p0, Ljava/lang/StringBuilder;

    .line 107
    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    .line 109
    sget p2, Lmiuix/recyclerview/tool/GetSpeedForDynamicRefreshRate;->sControlViewHashCode:I

    .line 112
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 114
    const-string p2, " set Refresh rate to: "

    .line 117
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 122
    const-string p1, ", mode is: "

    .line 125
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    .line 130
    move-result p1

    .line 133
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 137
    move-result-object p0

    .line 140
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 141
    invoke-virtual {v8}, Landroid/view/Display$Mode;->getModeId()I

    .line 144
    move-result p0

    .line 147
    iput p0, v3, Landroid/view/WindowManager$LayoutParams;->preferredDisplayModeId:I

    .line 148
    invoke-virtual {v2, v3}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    goto :goto_2

    .line 153
    :cond_4
    :goto_1
    return-void

    .line 154
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    .line 155
    const-string p1, "out of bound exception! mode length "

    .line 157
    invoke-direct {p0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    array-length p1, v1

    .line 162
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 163
    const-string p1, ", mode id "

    .line 166
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    move-result-object p0

    .line 177
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_5
    :goto_2
    return-void
    .line 181
.end method
