.class public abstract Lcom/miui/clock/magazine/MiuiMagazineCBase;
.super Lcom/miui/clock/MiuiGalleryBaseClock;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mChoosePaletteType:I

.field public mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

.field public final mCurrentTimeArray:[I

.field public mPalette:Ljava/util/Map;

.field public mTextDark:Z

.field public mWallpaperSupportDepth:Z

.field public final ssTags:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 10

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 2
    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    const-string/jumbo v0, "ss01"

    const-string/jumbo v1, "ss02"

    const-string/jumbo v2, "ss03"

    const-string/jumbo v3, "ss04"

    const-string/jumbo v4, "ss05"

    const-string/jumbo v5, "ss06"

    const-string/jumbo v6, "ss07"

    const-string/jumbo v7, "ss08"

    const-string/jumbo v8, "ss09"

    const-string/jumbo v9, "ss10"

    .line 3
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x4

    new-array p1, p1, [I

    .line 5
    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    const-string/jumbo v0, "ss01"

    const-string/jumbo v1, "ss02"

    const-string/jumbo v2, "ss03"

    const-string/jumbo v3, "ss04"

    const-string/jumbo v4, "ss05"

    const-string/jumbo v5, "ss06"

    const-string/jumbo v6, "ss07"

    const-string/jumbo v7, "ss08"

    const-string/jumbo v8, "ss09"

    const-string/jumbo v9, "ss10"

    .line 6
    filled-new-array/range {v0 .. v9}, [Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getGalleryGravity()I
    .locals 0

    .line 1
    const p0, 0x800003

    .line 2
    return p0
    .line 5
.end method

.method public bridge synthetic getHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getMagazineCNotificationMagazineY()I
    .locals 3

    .line 1
    const v0, 0x7f070937    # @dimen/miui_magazine_c_clock_notification_margin_top '76.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 5
    move-result v0

    .line 8
    const v1, 0x7f070934    # @dimen/miui_magazine_c_clock_notification_height '110.0dp'

    .line 9
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 12
    move-result v1

    .line 15
    const v2, 0x7f070933    # @dimen/miui_magazine_c_clock_notification_gallery_margin_top '8.0dp'

    .line 16
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 19
    move-result p0

    .line 22
    add-int/2addr v0, v1

    .line 23
    add-int/2addr v0, p0

    .line 24
    return v0
    .line 25
.end method

.method public getMagazineColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

    .line 6
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public getNotificationClockBottom()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f070d7a    # @dimen/notification_bottom_magazine_c_with_gallery '234.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const v0, 0x7f070d79    # @dimen/notification_bottom_magazine_c '204.0dp'

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public getNotificationRelativePosition()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object p0

    .line 9
    iget p0, p0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    sget-boolean v0, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x2

    .line 16
    if-ne p0, v0, :cond_0

    .line 17
    return v0

    .line 19
    :cond_0
    const/4 p0, 0x1

    .line 20
    return p0
    .line 21
.end method

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 10

    .line 1
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mPalette:Ljava/util/Map;

    .line 6
    iput-boolean p4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mWallpaperSupportDepth:Z

    .line 8
    const-string p4, "secondary40"

    .line 10
    const-string v0, "secondary85"

    .line 12
    const-string v1, "secondary20"

    .line 14
    const-string v2, "secondary98"

    .line 16
    if-eqz p3, :cond_0

    .line 18
    new-instance v3, Ljava/lang/StringBuilder;

    .line 20
    const-string v4, "secondary98="

    .line 22
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 24
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v4

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    const-string v4, ",secondary20="

    .line 34
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    move-result-object v4

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 43
    const-string v4, ",secondary85="

    .line 46
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    move-result-object v4

    .line 54
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 55
    const-string v4, ",secondary40="

    .line 58
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 60
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v4

    .line 66
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 70
    move-result-object v3

    .line 73
    goto :goto_0

    .line 74
    :cond_0
    const-string v3, "null"

    .line 75
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 77
    const-string/jumbo v5, "setClockPalette: type = "

    .line 79
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 85
    const-string p1, ", textDark = "

    .line 88
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 93
    const-string p1, ", palette = "

    .line 96
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    const-string p1, "ClockPalette"

    .line 101
    invoke-static {v4, v3, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 106
    if-eqz p1, :cond_1d

    .line 108
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 110
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 112
    move-result p1

    .line 115
    if-eqz p1, :cond_1

    .line 116
    goto/16 :goto_e

    .line 118
    :cond_1
    if-eqz p3, :cond_1d

    .line 120
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 122
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 124
    move-result p1

    .line 127
    const-string v3, "#FFBEBEBE"

    .line 128
    const-string v4, "#FFABABAB"

    .line 130
    const/4 v5, -0x1

    .line 132
    const-string v6, "secondary70"

    .line 133
    const-string v7, "neutral-variant30"

    .line 135
    if-eqz p1, :cond_10

    .line 137
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 139
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 141
    move-result p1

    .line 144
    if-eqz p1, :cond_8

    .line 145
    if-eqz p2, :cond_3

    .line 147
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    move-result-object p1

    .line 152
    if-eqz p1, :cond_2

    .line 153
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    move-result-object p1

    .line 158
    check-cast p1, Ljava/lang/Integer;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 161
    move-result p1

    .line 164
    goto :goto_1

    .line 165
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 166
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 168
    move-result p1

    .line 171
    goto :goto_1

    .line 172
    :cond_3
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 173
    move-result p1

    .line 176
    :goto_1
    if-eqz p2, :cond_5

    .line 177
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    move-result-object v8

    .line 182
    if-eqz v8, :cond_4

    .line 183
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    move-result-object v8

    .line 188
    check-cast v8, Ljava/lang/Integer;

    .line 189
    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    .line 191
    move-result v8

    .line 194
    goto :goto_2

    .line 195
    :cond_4
    move v8, p1

    .line 196
    goto :goto_2

    .line 197
    :cond_5
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 198
    move-result v8

    .line 201
    :goto_2
    iget-object v9, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 202
    invoke-virtual {v9, v5}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 204
    iget-object v9, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 207
    if-eqz p1, :cond_6

    .line 209
    iput p1, v9, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 211
    goto :goto_3

    .line 213
    :cond_6
    invoke-virtual {v9}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 214
    :goto_3
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 217
    if-eqz v8, :cond_7

    .line 219
    iput v8, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 221
    goto :goto_4

    .line 223
    :cond_7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 224
    :goto_4
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 227
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->displayType:I

    .line 229
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 231
    move-result p1

    .line 234
    if-eqz p1, :cond_c

    .line 235
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 237
    invoke-virtual {p1, v8}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 239
    goto :goto_6

    .line 242
    :cond_8
    if-nez p2, :cond_a

    .line 243
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    move-result-object p1

    .line 248
    if-eqz p1, :cond_9

    .line 249
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    move-result-object p1

    .line 254
    check-cast p1, Ljava/lang/Integer;

    .line 255
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 257
    move-result p1

    .line 260
    goto :goto_5

    .line 261
    :cond_9
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 262
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 264
    move-result p1

    .line 267
    goto :goto_5

    .line 268
    :cond_a
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    move-result-object p1

    .line 272
    if-eqz p1, :cond_b

    .line 273
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    move-result-object p1

    .line 278
    check-cast p1, Ljava/lang/Integer;

    .line 279
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 281
    move-result p1

    .line 284
    goto :goto_5

    .line 285
    :cond_b
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 286
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 288
    move-result p1

    .line 291
    :goto_5
    iget-object v8, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 292
    invoke-virtual {v8, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 294
    :cond_c
    :goto_6
    if-nez p2, :cond_e

    .line 297
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    move-result-object p1

    .line 302
    if-eqz p1, :cond_d

    .line 303
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 305
    move-result-object p1

    .line 308
    check-cast p1, Ljava/lang/Integer;

    .line 309
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 311
    move-result p1

    .line 314
    goto :goto_7

    .line 315
    :cond_d
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 316
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 318
    move-result p1

    .line 321
    goto :goto_7

    .line 322
    :cond_e
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 323
    move-result-object p1

    .line 326
    if-eqz p1, :cond_f

    .line 327
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 329
    move-result-object p1

    .line 332
    check-cast p1, Ljava/lang/Integer;

    .line 333
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 335
    move-result p1

    .line 338
    goto :goto_7

    .line 339
    :cond_f
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 340
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 342
    move-result p1

    .line 345
    :goto_7
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 346
    iput p1, v1, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 348
    :cond_10
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 350
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 352
    move-result p1

    .line 355
    if-eqz p1, :cond_1d

    .line 356
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 358
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 360
    move-result p1

    .line 363
    if-eqz p1, :cond_19

    .line 364
    if-eqz p2, :cond_12

    .line 366
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    move-result-object p1

    .line 371
    if-eqz p1, :cond_11

    .line 372
    invoke-interface {p3, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 374
    move-result-object p1

    .line 377
    check-cast p1, Ljava/lang/Integer;

    .line 378
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 380
    move-result p1

    .line 383
    goto :goto_8

    .line 384
    :cond_11
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 385
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 387
    move-result p1

    .line 390
    goto :goto_8

    .line 391
    :cond_12
    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 392
    move-result p1

    .line 395
    :goto_8
    if-eqz p2, :cond_14

    .line 396
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    move-result-object p2

    .line 401
    if-eqz p2, :cond_13

    .line 402
    invoke-interface {p3, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    move-result-object p2

    .line 407
    check-cast p2, Ljava/lang/Integer;

    .line 408
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 410
    move-result p2

    .line 413
    goto :goto_9

    .line 414
    :cond_13
    move p2, p1

    .line 415
    goto :goto_9

    .line 416
    :cond_14
    invoke-static {v3}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 417
    move-result p2

    .line 420
    :goto_9
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 421
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 423
    if-nez p4, :cond_15

    .line 425
    goto :goto_a

    .line 427
    :cond_15
    move v5, p4

    .line 428
    :goto_a
    if-eq p1, v5, :cond_18

    .line 429
    if-eqz p1, :cond_16

    .line 431
    iput p1, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 433
    goto :goto_b

    .line 435
    :cond_16
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 436
    :goto_b
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 439
    if-eqz p2, :cond_17

    .line 441
    iput p2, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 443
    goto :goto_c

    .line 445
    :cond_17
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 446
    :cond_18
    :goto_c
    const p1, -0x7f7f80

    .line 449
    goto :goto_d

    .line 452
    :cond_19
    if-nez p2, :cond_1b

    .line 453
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    move-result-object p1

    .line 458
    if-eqz p1, :cond_1a

    .line 459
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    move-result-object p1

    .line 464
    check-cast p1, Ljava/lang/Integer;

    .line 465
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 467
    move-result p1

    .line 470
    goto :goto_d

    .line 471
    :cond_1a
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 472
    invoke-virtual {p1}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 474
    move-result p1

    .line 477
    goto :goto_d

    .line 478
    :cond_1b
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 479
    move-result-object p1

    .line 482
    if-eqz p1, :cond_1c

    .line 483
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 485
    move-result-object p1

    .line 488
    check-cast p1, Ljava/lang/Integer;

    .line 489
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 491
    move-result p1

    .line 494
    goto :goto_d

    .line 495
    :cond_1c
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 496
    invoke-virtual {p1}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 498
    move-result p1

    .line 501
    :goto_d
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 502
    invoke-virtual {p0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 504
    :cond_1d
    :goto_e
    return-void
    .line 507
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->updateTime()V

    .line 6
    return-void
    .line 9
.end method

.method public bridge synthetic setCurrentUserId(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setInfoTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public bridge synthetic setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTime()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-virtual {v2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v0, "HHmm"

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "hhmm"

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    move-result v2

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 44
    aput v2, v3, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    return-void
    .line 50
.end method
