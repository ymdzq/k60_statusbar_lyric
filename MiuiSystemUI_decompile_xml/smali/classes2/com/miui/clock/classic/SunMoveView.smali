.class public Lcom/miui/clock/classic/SunMoveView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public arrowMarginStart:F

.field public arrowMarginTop:F

.field public arrowPx:F

.field public desc:Ljava/lang/String;

.field public isRound:Z

.field public isRtl:Z

.field public line1Long:F

.field public line1P0y:F

.field public line1P1x:F

.field public line1P1y:F

.field public line1P2x:F

.field public line1P2y:F

.field public line1P3x:F

.field public line1P3y:F

.field public line1Width:F

.field public line2Long:F

.field public line2MarginStartX:F

.field public line2MarginStartY:F

.field public line2Width:F

.field public lineBaseSize:F

.field public mArrowDown:Landroid/graphics/drawable/Drawable;

.field public mArrowIcon:Landroid/graphics/drawable/Drawable;

.field public mArrowUp:Landroid/graphics/drawable/Drawable;

.field public mContext:Landroid/content/Context;

.field public mIconScale:F

.field public mPaint:Landroid/graphics/Paint;

.field public mResources:Landroid/content/res/Resources;

.field public mainColor:I

.field public minorColor:I

.field public nowTime:F

.field public p0xLarge:F

.field public p0xSmall:F

.field public p0y:F

.field public p1y:F

.field public p2y:F

.field public p3y:F

.field public p4y:F

.field public p5y:F

.field public p6y:F

.field public path:Landroid/graphics/Path;

.field public pointStartX:F

.field public style:I

.field public sunPadding:F

.field public sunRadius:F

.field public sunTimeText:Ljava/lang/String;

.field public sunTimeTextBaseLine:F

.field public sunTimeTextMarginIcon:F

.field public sunriseTime:I

.field public sunriseTomorrowTime:I

.field public sunsetTime:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/SunMoveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/SunMoveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/SunMoveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/SunMoveView;->init(Landroid/content/Context;)V

    return-void
.end method

.method public static getBezierCurveLocation(FFFF)F
    .locals 2

    .line 1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 2
    sub-float/2addr v0, p0

    .line 4
    mul-float/2addr p1, v0

    .line 5
    mul-float/2addr p1, v0

    .line 6
    const/high16 v1, 0x40000000    # 2.0f

    .line 7
    mul-float/2addr p2, v1

    .line 9
    mul-float/2addr p2, v0

    .line 10
    mul-float/2addr p2, p0

    .line 11
    add-float/2addr p2, p1

    .line 12
    invoke-static {p3, p0, p0, p2}, Landroidx/core/content/res/CamColor$$ExternalSyntheticOutline0;->m$1(FFFF)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method public static getMinuteTime(I)Ljava/lang/String;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    const-string p0, "00"

    .line 4
    return-object p0

    .line 6
    :cond_0
    const/16 v0, 0xa

    .line 7
    if-ge p0, v0, :cond_1

    .line 9
    const-string v0, "0"

    .line 11
    invoke-static {v0, p0}, Landroidx/appcompat/view/menu/SubMenuBuilder$$ExternalSyntheticOutline0;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :cond_1
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    return-object p0
    .line 22
.end method


# virtual methods
.method public getDesc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/SunMoveView;->desc:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getDimen(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimension(I)F

    .line 4
    move-result p1

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 12
    move-result p0

    .line 15
    mul-float/2addr p0, p1

    .line 16
    return p0
    .line 17
.end method

.method public final init(Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mContext:Landroid/content/Context;

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    .line 4
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 6
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 9
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 11
    move-result p1

    .line 14
    iput-boolean p1, p0, Lcom/miui/clock/classic/SunMoveView;->isRtl:Z

    .line 15
    return-void
    .line 17
.end method

.method public final initData(IIII)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 13
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 15
    const-string/jumbo v2, "ss01"

    .line 17
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 20
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 23
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 25
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 27
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->mainColor:I

    .line 30
    if-nez v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 34
    const v2, 0x7f060097    # @color/classic_color_white '#ffffff'

    .line 36
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 39
    move-result v0

    .line 42
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->mainColor:I

    .line 43
    :cond_0
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 45
    if-nez v0, :cond_1

    .line 47
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 49
    const v2, 0x7f06009a    # @color/classic_color_white_60 '#99ffffff'

    .line 51
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 54
    move-result v0

    .line 57
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 58
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mContext:Landroid/content/Context;

    .line 60
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 62
    const v2, 0x7f0819bf    # @drawable/weather_icon_sun_up 'res/drawable/weather_icon_sun_up.xml'

    .line 64
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 67
    move-result-object v0

    .line 70
    iput-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 71
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mContext:Landroid/content/Context;

    .line 73
    const v2, 0x7f0819be    # @drawable/weather_icon_sun_down 'res/drawable/weather_icon_sun_down.xml'

    .line 75
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 78
    move-result-object v0

    .line 81
    iput-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 82
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 86
    move-result v2

    .line 89
    iget-object v3, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 90
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 92
    move-result v3

    .line 95
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 96
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 101
    move-result v2

    .line 104
    iget-object v3, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 105
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 107
    move-result v3

    .line 110
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 111
    invoke-virtual {p0}, Lcom/miui/clock/classic/SunMoveView;->readSize()V

    .line 114
    new-instance v0, Landroid/graphics/Path;

    .line 117
    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 119
    iput-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 122
    :cond_2
    iput-boolean v1, p0, Lcom/miui/clock/classic/SunMoveView;->isRound:Z

    .line 124
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->style:I

    .line 126
    const/4 v2, 0x1

    .line 128
    const/high16 v3, 0x40800000    # 4.0f

    .line 129
    const/high16 v4, 0x40e00000    # 7.0f

    .line 131
    const/high16 v5, 0x40400000    # 3.0f

    .line 133
    const/high16 v6, 0x40a00000    # 5.0f

    .line 135
    packed-switch v0, :pswitch_data_0

    .line 137
    goto :goto_0

    .line 140
    :pswitch_0
    iput-boolean v2, p0, Lcom/miui/clock/classic/SunMoveView;->isRound:Z

    .line 141
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 143
    mul-float/2addr v4, v0

    .line 145
    iput v4, p0, Lcom/miui/clock/classic/SunMoveView;->sunRadius:F

    .line 146
    mul-float/2addr v6, v0

    .line 148
    iput v6, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 149
    mul-float/2addr v0, v5

    .line 151
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2Width:F

    .line 152
    goto :goto_0

    .line 154
    :pswitch_1
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 155
    mul-float/2addr v4, v0

    .line 157
    iput v4, p0, Lcom/miui/clock/classic/SunMoveView;->sunRadius:F

    .line 158
    mul-float/2addr v6, v0

    .line 160
    iput v6, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 161
    mul-float/2addr v0, v5

    .line 163
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2Width:F

    .line 164
    goto :goto_0

    .line 166
    :pswitch_2
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 167
    mul-float/2addr v6, v0

    .line 169
    iput v6, p0, Lcom/miui/clock/classic/SunMoveView;->sunRadius:F

    .line 170
    mul-float/2addr v5, v0

    .line 172
    iput v5, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 173
    const/high16 v4, 0x3fc00000    # 1.5f

    .line 175
    mul-float/2addr v0, v4

    .line 177
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2Width:F

    .line 178
    goto :goto_0

    .line 180
    :pswitch_3
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 181
    const/high16 v4, 0x40c00000    # 6.0f

    .line 183
    mul-float/2addr v4, v0

    .line 185
    iput v4, p0, Lcom/miui/clock/classic/SunMoveView;->sunRadius:F

    .line 186
    mul-float v4, v0, v3

    .line 188
    iput v4, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 190
    const/high16 v4, 0x40000000    # 2.0f

    .line 192
    mul-float/2addr v0, v4

    .line 194
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2Width:F

    .line 195
    :goto_0
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunriseTime:I

    .line 197
    iput p3, p0, Lcom/miui/clock/classic/SunMoveView;->sunsetTime:I

    .line 199
    iput p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunriseTomorrowTime:I

    .line 201
    int-to-float v0, p4

    .line 203
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->nowTime:F

    .line 204
    if-gez p4, :cond_3

    .line 206
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->p0xSmall:F

    .line 208
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->pointStartX:F

    .line 210
    const-string p1, "--:--"

    .line 212
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 214
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 216
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 218
    move-result p1

    .line 221
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 222
    iput-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 224
    iget p3, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartX:F

    .line 226
    iget p4, p0, Lcom/miui/clock/classic/SunMoveView;->line2Long:F

    .line 228
    add-float/2addr p3, p4

    .line 230
    sub-float/2addr p3, p1

    .line 231
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextMarginIcon:F

    .line 232
    sub-float/2addr p3, p1

    .line 234
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 235
    move-result p1

    .line 238
    int-to-float p1, p1

    .line 239
    iget p2, p0, Lcom/miui/clock/classic/SunMoveView;->mIconScale:F

    .line 240
    mul-float/2addr p1, p2

    .line 242
    sub-float/2addr p3, p1

    .line 243
    iput p3, p0, Lcom/miui/clock/classic/SunMoveView;->arrowPx:F

    .line 244
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 246
    move-result-object p1

    .line 249
    const p2, 0x7f130c6a    # @string/weather_no_data 'No weather data'

    .line 250
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 253
    move-result-object p1

    .line 256
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->desc:Ljava/lang/String;

    .line 257
    goto/16 :goto_3

    .line 259
    :cond_3
    if-lt p4, p1, :cond_4

    .line 261
    if-le p4, p3, :cond_5

    .line 263
    :cond_4
    move v1, v2

    .line 265
    :cond_5
    const-string v0, ":"

    .line 266
    if-eqz v1, :cond_7

    .line 268
    iget p3, p0, Lcom/miui/clock/classic/SunMoveView;->p0xLarge:F

    .line 270
    iput p3, p0, Lcom/miui/clock/classic/SunMoveView;->pointStartX:F

    .line 272
    if-ge p4, p1, :cond_6

    .line 274
    new-instance p2, Ljava/lang/StringBuilder;

    .line 276
    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    .line 278
    div-int/lit8 p3, p1, 0x3c

    .line 281
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 283
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 286
    rem-int/lit8 p1, p1, 0x3c

    .line 289
    invoke-static {p1}, Lcom/miui/clock/classic/SunMoveView;->getMinuteTime(I)Ljava/lang/String;

    .line 291
    move-result-object p1

    .line 294
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 295
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 298
    move-result-object p1

    .line 301
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 302
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 304
    move-result-object p1

    .line 307
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 308
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 310
    move-result-object p2

    .line 313
    const p3, 0x7f130b55    # @string/sunrise_time_format_desc 'Sunrise time: %s'

    .line 314
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 317
    move-result-object p1

    .line 320
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->desc:Ljava/lang/String;

    .line 321
    goto :goto_1

    .line 323
    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    .line 324
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 326
    div-int/lit8 p3, p2, 0x3c

    .line 329
    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 334
    rem-int/lit8 p2, p2, 0x3c

    .line 337
    invoke-static {p2}, Lcom/miui/clock/classic/SunMoveView;->getMinuteTime(I)Ljava/lang/String;

    .line 339
    move-result-object p2

    .line 342
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 343
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 346
    move-result-object p1

    .line 349
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 350
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 352
    move-result-object p1

    .line 355
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 356
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 358
    move-result-object p2

    .line 361
    const p3, 0x7f130b56    # @string/sunrise_time_format_tomorrow_desc 'Tomorrow's sunrise: %s'

    .line 362
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 365
    move-result-object p1

    .line 368
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->desc:Ljava/lang/String;

    .line 369
    :goto_1
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->arrowMarginStart:F

    .line 371
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->arrowPx:F

    .line 373
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 375
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 377
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 379
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 382
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 384
    goto/16 :goto_3

    .line 386
    :cond_7
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->p0xSmall:F

    .line 388
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->pointStartX:F

    .line 390
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mContext:Landroid/content/Context;

    .line 392
    invoke-static {p1}, Lcom/miui/clock/utils/DateFormatUtils;->is24HourFormat(Landroid/content/Context;)Z

    .line 394
    move-result p1

    .line 397
    if-eqz p1, :cond_8

    .line 398
    new-instance p1, Ljava/lang/StringBuilder;

    .line 400
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 402
    div-int/lit8 p2, p3, 0x3c

    .line 405
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 407
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 410
    rem-int/lit8 p3, p3, 0x3c

    .line 413
    invoke-static {p3}, Lcom/miui/clock/classic/SunMoveView;->getMinuteTime(I)Ljava/lang/String;

    .line 415
    move-result-object p2

    .line 418
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 419
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 422
    move-result-object p1

    .line 425
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 426
    goto :goto_2

    .line 428
    :cond_8
    new-instance p1, Ljava/lang/StringBuilder;

    .line 429
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 431
    div-int/lit8 p2, p3, 0x3c

    .line 434
    add-int/lit8 p2, p2, -0xc

    .line 436
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 438
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 441
    rem-int/lit8 p3, p3, 0x3c

    .line 444
    invoke-static {p3}, Lcom/miui/clock/classic/SunMoveView;->getMinuteTime(I)Ljava/lang/String;

    .line 446
    move-result-object p2

    .line 449
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 450
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 453
    move-result-object p1

    .line 456
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 457
    :goto_2
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    .line 459
    move-result-object p1

    .line 462
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 463
    filled-new-array {p2}, [Ljava/lang/Object;

    .line 465
    move-result-object p2

    .line 468
    const p3, 0x7f130b58    # @string/sunset_time_format_desc 'Sunset time: %s'

    .line 469
    invoke-virtual {p1, p3, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 472
    move-result-object p1

    .line 475
    iput-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->desc:Ljava/lang/String;

    .line 476
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 478
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 480
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 482
    move-result p1

    .line 485
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 486
    iput-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 488
    iget p3, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartX:F

    .line 490
    iget p4, p0, Lcom/miui/clock/classic/SunMoveView;->line2Long:F

    .line 492
    add-float/2addr p3, p4

    .line 494
    sub-float/2addr p3, p1

    .line 495
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextMarginIcon:F

    .line 496
    sub-float/2addr p3, p1

    .line 498
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 499
    move-result p1

    .line 502
    int-to-float p1, p1

    .line 503
    iget p2, p0, Lcom/miui/clock/classic/SunMoveView;->mIconScale:F

    .line 504
    mul-float/2addr p1, p2

    .line 506
    sub-float/2addr p3, p1

    .line 507
    iput p3, p0, Lcom/miui/clock/classic/SunMoveView;->arrowPx:F

    .line 508
    :goto_3
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowDown:Landroid/graphics/drawable/Drawable;

    .line 510
    iget p2, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 512
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 514
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 517
    iget p2, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 519
    invoke-virtual {p1, p2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 521
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->line1P0y:F

    .line 524
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p6y:F

    .line 526
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p0y:F

    .line 528
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->line1P1y:F

    .line 530
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p5y:F

    .line 532
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p1y:F

    .line 534
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->line1P2y:F

    .line 536
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p4y:F

    .line 538
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p2y:F

    .line 540
    iget p1, p0, Lcom/miui/clock/classic/SunMoveView;->line1P3y:F

    .line 542
    iget p2, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 544
    mul-float/2addr p2, v3

    .line 546
    sub-float/2addr p1, p2

    .line 547
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->p3y:F

    .line 548
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 550
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 553
    return-void

    .line 556
    nop

    .line 557
    :pswitch_data_0
    .packed-switch 0x15
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
    .line 558
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-boolean p1, p0, Lcom/miui/clock/classic/SunMoveView;->isRtl:Z

    .line 5
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 7
    move-result v0

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    iget-boolean p1, p0, Lcom/miui/clock/classic/SunMoveView;->isRtl:Z

    .line 13
    xor-int/lit8 p1, p1, 0x1

    .line 15
    iput-boolean p1, p0, Lcom/miui/clock/classic/SunMoveView;->isRtl:Z

    .line 17
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 22
    :cond_0
    return-void
    .line 25
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 5
    if-eqz v0, :cond_8

    .line 7
    invoke-virtual {p0}, Landroid/view/View;->getVisibility()I

    .line 9
    move-result v0

    .line 12
    const/16 v1, 0x8

    .line 13
    if-ne v0, v1, :cond_0

    .line 15
    goto/16 :goto_3

    .line 17
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 19
    move-result v0

    .line 22
    if-eqz v0, :cond_1

    .line 23
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 25
    move-result v0

    .line 28
    int-to-float v0, v0

    .line 29
    iget v1, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartX:F

    .line 30
    sub-float/2addr v0, v1

    .line 32
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->line2Long:F

    .line 33
    sub-float/2addr v0, v2

    .line 35
    sub-float v1, v0, v1

    .line 36
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->pointStartX:F

    .line 38
    add-float/2addr v1, v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartX:F

    .line 42
    iget v1, p0, Lcom/miui/clock/classic/SunMoveView;->pointStartX:F

    .line 44
    :goto_0
    move v3, v0

    .line 46
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P1x:F

    .line 47
    add-float v8, v1, v0

    .line 49
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->line1P2x:F

    .line 51
    add-float v9, v1, v2

    .line 53
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->line1P3x:F

    .line 55
    add-float v10, v1, v4

    .line 57
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->line1Long:F

    .line 59
    add-float v11, v1, v4

    .line 61
    sub-float v12, v11, v2

    .line 63
    sub-float v0, v11, v0

    .line 65
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->arrowPx:F

    .line 67
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 69
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 71
    move-result v4

    .line 74
    int-to-float v4, v4

    .line 75
    add-float/2addr v2, v4

    .line 76
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextMarginIcon:F

    .line 77
    add-float/2addr v2, v4

    .line 79
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->arrowPx:F

    .line 80
    iget-object v5, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 82
    iget v6, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 84
    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 86
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 89
    iget v5, p0, Lcom/miui/clock/classic/SunMoveView;->arrowMarginTop:F

    .line 92
    invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->mIconScale:F

    .line 97
    invoke-virtual {p1, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 99
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowIcon:Landroid/graphics/drawable/Drawable;

    .line 102
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 104
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 107
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 110
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 112
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 114
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeText:Ljava/lang/String;

    .line 117
    iget v5, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextBaseLine:F

    .line 119
    iget-object v6, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {p1, v4, v2, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 123
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 126
    sget-object v4, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 128
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 133
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 135
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 137
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 140
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->minorColor:I

    .line 142
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 144
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 147
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 149
    iget-boolean v2, p0, Lcom/miui/clock/classic/SunMoveView;->isRound:Z

    .line 152
    if-eqz v2, :cond_2

    .line 154
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 156
    invoke-virtual {v2}, Landroid/graphics/Paint;->getStrokeCap()Landroid/graphics/Paint$Cap;

    .line 158
    move-result-object v2

    .line 161
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 162
    sget-object v5, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 164
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 166
    goto :goto_1

    .line 169
    :cond_2
    const/4 v2, 0x0

    .line 170
    :goto_1
    move-object v13, v2

    .line 171
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 172
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p0y:F

    .line 174
    invoke-virtual {v2, v1, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 176
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 179
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p1y:F

    .line 181
    iget v5, p0, Lcom/miui/clock/classic/SunMoveView;->p2y:F

    .line 183
    invoke-virtual {v2, v8, v4, v9, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 185
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 188
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 190
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 192
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 195
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 197
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 200
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p4y:F

    .line 202
    invoke-virtual {v2, v12, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 204
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 207
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p5y:F

    .line 209
    iget v5, p0, Lcom/miui/clock/classic/SunMoveView;->p6y:F

    .line 211
    invoke-virtual {v2, v0, v4, v11, v5}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 213
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 216
    iget-object v4, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 218
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 220
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 223
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->mainColor:I

    .line 225
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 227
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 230
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->line2Width:F

    .line 232
    invoke-virtual {v2, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 234
    iget v6, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartY:F

    .line 237
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->line2Long:F

    .line 239
    add-float v5, v3, v2

    .line 241
    iget-object v7, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 243
    move-object v2, p1

    .line 245
    move v4, v6

    .line 246
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 247
    iget-boolean v2, p0, Lcom/miui/clock/classic/SunMoveView;->isRound:Z

    .line 250
    if-eqz v2, :cond_3

    .line 252
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 254
    invoke-virtual {v2, v13}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 256
    :cond_3
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 259
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->line1Width:F

    .line 261
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 263
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 266
    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 268
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 271
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->p2y:F

    .line 273
    invoke-virtual {v2, v9, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 275
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 278
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->p3y:F

    .line 280
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p4y:F

    .line 282
    invoke-virtual {v2, v10, v3, v12, v4}, Landroid/graphics/Path;->quadTo(FFFF)V

    .line 284
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->path:Landroid/graphics/Path;

    .line 287
    iget-object v3, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 289
    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 291
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->nowTime:F

    .line 294
    const/4 v3, 0x0

    .line 296
    cmpg-float v4, v2, v3

    .line 297
    if-gez v4, :cond_4

    .line 299
    return-void

    .line 301
    :cond_4
    cmpl-float v3, v2, v3

    .line 302
    if-ltz v3, :cond_5

    .line 304
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->sunriseTime:I

    .line 306
    int-to-float v3, v3

    .line 308
    cmpg-float v4, v2, v3

    .line 309
    if-gtz v4, :cond_5

    .line 311
    div-float/2addr v2, v3

    .line 313
    sub-float v0, v9, v1

    .line 314
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->sunPadding:F

    .line 316
    sub-float v4, v0, v3

    .line 318
    mul-float/2addr v4, v2

    .line 320
    add-float/2addr v4, v3

    .line 321
    div-float/2addr v4, v0

    .line 322
    invoke-static {v4, v1, v8, v9}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 323
    move-result v1

    .line 326
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->p0y:F

    .line 327
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->p1y:F

    .line 329
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->p2y:F

    .line 331
    invoke-static {v4, v0, v2, v3}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 333
    move-result v0

    .line 336
    goto :goto_2

    .line 337
    :cond_5
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->sunriseTime:I

    .line 338
    int-to-float v4, v3

    .line 340
    cmpl-float v5, v2, v4

    .line 341
    if-lez v5, :cond_6

    .line 343
    iget v5, p0, Lcom/miui/clock/classic/SunMoveView;->sunsetTime:I

    .line 345
    int-to-float v6, v5

    .line 347
    cmpg-float v6, v2, v6

    .line 348
    if-gez v6, :cond_6

    .line 350
    sub-float/2addr v2, v4

    .line 352
    sub-int/2addr v5, v3

    .line 353
    int-to-float v0, v5

    .line 354
    div-float/2addr v2, v0

    .line 355
    invoke-static {v2, v9, v10, v12}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 356
    move-result v1

    .line 359
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->p2y:F

    .line 360
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->p3y:F

    .line 362
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p4y:F

    .line 364
    invoke-static {v2, v0, v3, v4}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 366
    move-result v0

    .line 369
    goto :goto_2

    .line 370
    :cond_6
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->sunsetTime:I

    .line 371
    int-to-float v4, v3

    .line 373
    cmpl-float v5, v2, v4

    .line 374
    if-ltz v5, :cond_7

    .line 376
    const/16 v5, 0x5a0

    .line 378
    int-to-float v6, v5

    .line 380
    cmpg-float v6, v2, v6

    .line 381
    if-gez v6, :cond_7

    .line 383
    sub-float/2addr v2, v4

    .line 385
    sub-int/2addr v5, v3

    .line 386
    int-to-float v1, v5

    .line 387
    div-float/2addr v2, v1

    .line 388
    sub-float v1, v11, v12

    .line 389
    iget v3, p0, Lcom/miui/clock/classic/SunMoveView;->sunPadding:F

    .line 391
    sub-float v3, v1, v3

    .line 393
    mul-float/2addr v3, v2

    .line 395
    div-float/2addr v3, v1

    .line 396
    invoke-static {v3, v12, v0, v11}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 397
    move-result v1

    .line 400
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->p4y:F

    .line 401
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->p5y:F

    .line 403
    iget v4, p0, Lcom/miui/clock/classic/SunMoveView;->p6y:F

    .line 405
    invoke-static {v3, v0, v2, v4}, Lcom/miui/clock/classic/SunMoveView;->getBezierCurveLocation(FFFF)F

    .line 407
    move-result v0

    .line 410
    goto :goto_2

    .line 411
    :cond_7
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->p0y:F

    .line 412
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 414
    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 416
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 418
    iget v2, p0, Lcom/miui/clock/classic/SunMoveView;->sunRadius:F

    .line 421
    iget-object p0, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 423
    invoke-virtual {p1, v1, v0, v2, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 425
    :cond_8
    :goto_3
    return-void
    .line 428
.end method

.method public final onMeasure(II)V
    .locals 2

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 10
    const v0, 0x7f0711e9    # @dimen/sun_move_width '178.0dp'

    .line 12
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 15
    move-result p1

    .line 18
    int-to-float p1, p1

    .line 19
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 20
    move-result-object v0

    .line 23
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 24
    move-result v0

    .line 27
    mul-float/2addr v0, p1

    .line 28
    float-to-int p1, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 31
    move-result p1

    .line 34
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 35
    move-result v0

    .line 38
    if-eq v0, v1, :cond_1

    .line 39
    iget-object p2, p0, Lcom/miui/clock/classic/SunMoveView;->mResources:Landroid/content/res/Resources;

    .line 41
    const v0, 0x7f0711d2    # @dimen/sun_move_height '60.0dp'

    .line 43
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 46
    move-result p2

    .line 49
    int-to-float p2, p2

    .line 50
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 55
    move-result v0

    .line 58
    mul-float/2addr v0, p2

    .line 59
    float-to-int p2, v0

    .line 60
    goto :goto_1

    .line 61
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 62
    move-result p2

    .line 65
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 66
    const-string/jumbo v1, "w = "

    .line 68
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 74
    const-string v1, ", h = "

    .line 77
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 82
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    const-string v1, "SunMoveView"

    .line 89
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 94
    return-void
    .line 97
.end method

.method public final readSize()V
    .locals 2

    .line 1
    const v0, 0x7f0711e4    # @dimen/sun_move_style_size '1.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 5
    move-result v0

    .line 8
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 9
    const v0, 0x7f0711d5    # @dimen/sun_move_line_1_long '134.0dp'

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 14
    move-result v0

    .line 17
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1Long:F

    .line 18
    const v0, 0x7f0711d7    # @dimen/sun_move_line_1_p1x '16.0dp'

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 23
    move-result v0

    .line 26
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P1x:F

    .line 27
    const v0, 0x7f0711d9    # @dimen/sun_move_line_1_p2x '34.0dp'

    .line 29
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 32
    move-result v0

    .line 35
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P2x:F

    .line 36
    const v0, 0x7f0711db    # @dimen/sun_move_line_1_p3x '67.0dp'

    .line 38
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 41
    move-result v0

    .line 44
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P3x:F

    .line 45
    const v0, 0x7f0711d6    # @dimen/sun_move_line_1_p0y '50.0dp'

    .line 47
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 50
    move-result v0

    .line 53
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P0y:F

    .line 54
    const v0, 0x7f0711d8    # @dimen/sun_move_line_1_p1y '45.0dp'

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 59
    move-result v0

    .line 62
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P1y:F

    .line 63
    const v0, 0x7f0711da    # @dimen/sun_move_line_1_p2y '30.0dp'

    .line 65
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 68
    move-result v0

    .line 71
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P2y:F

    .line 72
    const v0, 0x7f0711dc    # @dimen/sun_move_line_1_p3y '0.0dp'

    .line 74
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 77
    move-result v0

    .line 80
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line1P3y:F

    .line 81
    const v0, 0x7f0711e0    # @dimen/sun_move_line_2_long '170.0dp'

    .line 83
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 86
    move-result v0

    .line 89
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2Long:F

    .line 90
    const v0, 0x7f0711e1    # @dimen/sun_move_line_2_margin_start_x '4.0dp'

    .line 92
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 95
    move-result v0

    .line 98
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartX:F

    .line 99
    const v0, 0x7f0711e2    # @dimen/sun_move_line_2_margin_start_y '30.0dp'

    .line 101
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 104
    move-result v0

    .line 107
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->line2MarginStartY:F

    .line 108
    iget v0, p0, Lcom/miui/clock/classic/SunMoveView;->lineBaseSize:F

    .line 110
    const/high16 v1, 0x40400000    # 3.0f

    .line 112
    mul-float/2addr v0, v1

    .line 114
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->sunPadding:F

    .line 115
    const v0, 0x7f0711d3    # @dimen/sun_move_icon_arrow_margin_top '5.0dp'

    .line 117
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 120
    move-result v0

    .line 123
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->arrowMarginTop:F

    .line 124
    const v0, 0x7f0711e6    # @dimen/sun_move_sun_time_text_base_line '22.3dp'

    .line 126
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 129
    move-result v0

    .line 132
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextBaseLine:F

    .line 133
    const v0, 0x7f0711e7    # @dimen/sun_move_sun_time_text_margin_icon '2.0dp'

    .line 135
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 138
    move-result v0

    .line 141
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->sunTimeTextMarginIcon:F

    .line 142
    iget-object v0, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 144
    const v1, 0x7f0711e8    # @dimen/sun_move_sun_time_text_size '17.0dp'

    .line 146
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 149
    move-result v1

    .line 152
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 153
    const v0, 0x7f0711d1    # @dimen/sun_move_arrow_icon_width '12.0dp'

    .line 156
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 159
    move-result v0

    .line 162
    iget-object v1, p0, Lcom/miui/clock/classic/SunMoveView;->mArrowUp:Landroid/graphics/drawable/Drawable;

    .line 163
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 165
    move-result v1

    .line 168
    int-to-float v1, v1

    .line 169
    div-float/2addr v0, v1

    .line 170
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->mIconScale:F

    .line 171
    const v0, 0x7f0711d4    # @dimen/sun_move_icon_arrow_up_margin_start '4.0dp'

    .line 173
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 176
    move-result v0

    .line 179
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->arrowMarginStart:F

    .line 180
    const v0, 0x7f0711de    # @dimen/sun_move_line_1_sunset_p0x '4.0dp'

    .line 182
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 185
    move-result v0

    .line 188
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->p0xSmall:F

    .line 189
    const v0, 0x7f0711dd    # @dimen/sun_move_line_1_sunrise_p0x '40.0dp'

    .line 191
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/SunMoveView;->getDimen(I)F

    .line 194
    move-result v0

    .line 197
    iput v0, p0, Lcom/miui/clock/classic/SunMoveView;->p0xLarge:F

    .line 198
    return-void
    .line 200
.end method

.method public setStyle(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/clock/classic/SunMoveView;->style:I

    .line 2
    return-void
    .line 4
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/SunMoveView;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    return-void
    .line 7
.end method
