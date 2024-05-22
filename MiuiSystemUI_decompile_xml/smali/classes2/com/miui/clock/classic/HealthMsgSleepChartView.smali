.class public Lcom/miui/clock/classic/HealthMsgSleepChartView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public bottomTextBaseLine:F

.field public descPlaceMarginTop:F

.field public iconDescMarginStart:F

.field public iconMarginStart:F

.field public iconMarginTop:F

.field public iconScale:F

.field public mContext:Landroid/content/Context;

.field public mDrawSmallLineSize:I

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mPaint:Landroid/graphics/Paint;

.field public mPlaceholderText:Ljava/lang/String;

.field public mResources:Landroid/content/res/Resources;

.field public mSleepDesc:Ljava/lang/String;

.field public mSleepDescWidth:F

.field public mSleepMinute:Ljava/lang/String;

.field public mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

.field public mTextWidth:F

.field public mainColor:I

.field public minorColor:I

.field public rectH:F

.field public rectInterval:F

.field public rectLineH:F

.field public rectLineRadius:F

.field public rectLineW:F

.field public rectMarginStart:F

.field public rectMarginTop:F

.field public rectRadius:F

.field public rectW:F

.field public textMarginStart:F

.field public topTextBaseLine:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final getDimenF(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

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

.method public getSleepDesc()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getSleepMinute()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final initData(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_2

    .line 5
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 13
    const v2, 0x7f13085b    # @string/no_data_placeholder_string '--'

    .line 15
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPlaceholderText:Ljava/lang/String;

    .line 22
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 24
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 26
    const v2, 0x7f080ec6    # @drawable/health_icon_sleep_25 'res/drawable/health_icon_sleep_25.xml'

    .line 28
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 31
    move-result-object v0

    .line 34
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mContext:Landroid/content/Context;

    .line 37
    const v2, 0x7f080bec    # @drawable/classic_placeholder_text_large 'res/drawable/classic_placeholder_text_large.xml'

    .line 39
    invoke-virtual {v0, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 42
    move-result-object v0

    .line 45
    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 46
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 48
    if-nez v0, :cond_0

    .line 50
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 52
    const v2, 0x7f060097    # @color/classic_color_white '#ffffff'

    .line 54
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 57
    move-result v0

    .line 60
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 61
    :cond_0
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->minorColor:I

    .line 63
    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 67
    const v2, 0x7f06009a    # @color/classic_color_white_60 '#99ffffff'

    .line 69
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 72
    move-result v0

    .line 75
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->minorColor:I

    .line 76
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 78
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 80
    move-result v2

    .line 83
    iget-object v3, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 84
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 86
    move-result v3

    .line 89
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 90
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 93
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 95
    move-result v2

    .line 98
    iget-object v3, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 99
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 101
    move-result v3

    .line 104
    invoke-virtual {v0, v1, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 105
    invoke-virtual {p0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->readSize()V

    .line 108
    :cond_2
    const v0, 0x7f130507    # @string/health_chart_sleep_time_format '%1$sh %2$sm'

    .line 111
    if-gtz p1, :cond_3

    .line 114
    const-string p1, ""

    .line 116
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 118
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 120
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 122
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPlaceholderText:Ljava/lang/String;

    .line 124
    filled-new-array {v1, v1}, [Ljava/lang/Object;

    .line 126
    move-result-object v1

    .line 129
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object p1

    .line 133
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 134
    const/4 p1, 0x0

    .line 136
    iput p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDescWidth:F

    .line 137
    goto/16 :goto_1

    .line 139
    :cond_3
    const/16 v1, 0x285

    .line 141
    const/4 v2, 0x2

    .line 143
    const v3, 0x7f13050a    # @string/health_chart_sleep_time_normal 'Normal'

    .line 144
    if-le p1, v1, :cond_4

    .line 147
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 149
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 151
    move-result-object v1

    .line 154
    iput-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 155
    iput v2, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 157
    goto :goto_0

    .line 159
    :cond_4
    const/16 v1, 0x1e0

    .line 160
    if-le p1, v1, :cond_5

    .line 162
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 164
    const v2, 0x7f13050b    # @string/health_chart_sleep_time_very_good 'Good'

    .line 166
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 169
    move-result-object v1

    .line 172
    iput-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 173
    const/4 v1, 0x4

    .line 175
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 176
    goto :goto_0

    .line 178
    :cond_5
    const/16 v1, 0x168

    .line 179
    if-le p1, v1, :cond_6

    .line 181
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 183
    const v2, 0x7f130508    # @string/health_chart_sleep_time_good 'Sufficient'

    .line 185
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 188
    move-result-object v1

    .line 191
    iput-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 192
    const/4 v1, 0x3

    .line 194
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 195
    goto :goto_0

    .line 197
    :cond_6
    const/16 v1, 0x12c

    .line 198
    if-le p1, v1, :cond_7

    .line 200
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 202
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 204
    move-result-object v1

    .line 207
    iput-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 208
    iput v2, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 210
    goto :goto_0

    .line 212
    :cond_7
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 213
    const v2, 0x7f130509    # @string/health_chart_sleep_time_low 'Insufficient'

    .line 215
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 218
    move-result-object v1

    .line 221
    iput-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 222
    const/4 v1, 0x1

    .line 224
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 225
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 227
    div-int/lit8 v2, p1, 0x3c

    .line 229
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 231
    move-result-object v2

    .line 234
    rem-int/lit8 p1, p1, 0x3c

    .line 235
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 237
    move-result-object p1

    .line 240
    filled-new-array {v2, p1}, [Ljava/lang/Object;

    .line 241
    move-result-object p1

    .line 244
    invoke-virtual {v1, v0, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 245
    move-result-object p1

    .line 248
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 249
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 251
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 253
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 255
    move-result p1

    .line 258
    iput p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDescWidth:F

    .line 259
    :goto_1
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 261
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 263
    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 265
    move-result p1

    .line 268
    iput p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextWidth:F

    .line 269
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 271
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 273
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 275
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 278
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 280
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 282
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 285
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 288
    return-void
    .line 291
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 8
    return-void
    .line 11
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 19

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v11, p1

    .line 4
    invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 6
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 9
    if-nez v1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 14
    move-result v12

    .line 17
    if-eqz v12, :cond_2

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    move-result v1

    .line 23
    int-to-float v1, v1

    .line 24
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginStart:F

    .line 25
    const/high16 v3, 0x40800000    # 4.0f

    .line 27
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectW:F

    .line 29
    mul-float/2addr v4, v3

    .line 31
    add-float/2addr v4, v2

    .line 32
    const/high16 v2, 0x40400000    # 3.0f

    .line 33
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectInterval:F

    .line 35
    mul-float/2addr v3, v2

    .line 37
    add-float/2addr v3, v4

    .line 38
    sub-float v2, v1, v3

    .line 39
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginStart:F

    .line 41
    sub-float v3, v1, v3

    .line 43
    iget-object v4, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 47
    move-result v4

    .line 50
    int-to-float v4, v4

    .line 51
    sub-float/2addr v3, v4

    .line 52
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->textMarginStart:F

    .line 53
    sub-float v4, v1, v4

    .line 55
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextWidth:F

    .line 57
    sub-float/2addr v4, v5

    .line 59
    iget-object v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 60
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 62
    move-result v5

    .line 65
    if-eqz v5, :cond_1

    .line 66
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconDescMarginStart:F

    .line 68
    sub-float/2addr v1, v5

    .line 70
    iget-object v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 71
    invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 73
    move-result v5

    .line 76
    int-to-float v5, v5

    .line 77
    goto :goto_0

    .line 78
    :cond_1
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconDescMarginStart:F

    .line 79
    sub-float/2addr v1, v5

    .line 81
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDescWidth:F

    .line 82
    :goto_0
    sub-float/2addr v1, v5

    .line 84
    move v13, v1

    .line 85
    move v14, v2

    .line 86
    move v15, v3

    .line 87
    move v7, v4

    .line 88
    goto :goto_1

    .line 89
    :cond_2
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginStart:F

    .line 90
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginStart:F

    .line 92
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->textMarginStart:F

    .line 94
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconDescMarginStart:F

    .line 96
    move v7, v1

    .line 98
    move v14, v2

    .line 99
    move v15, v3

    .line 100
    move v13, v4

    .line 101
    :goto_1
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 102
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 104
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    if-eqz v12, :cond_3

    .line 109
    const/4 v5, 0x0

    .line 111
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 112
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 114
    move-result v6

    .line 117
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 118
    iget v8, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->topTextBaseLine:F

    .line 120
    const/4 v9, 0x1

    .line 122
    iget-object v10, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 123
    move-object/from16 v1, p1

    .line 125
    move v3, v5

    .line 127
    move v4, v6

    .line 128
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 129
    goto :goto_2

    .line 132
    :cond_3
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepMinute:Ljava/lang/String;

    .line 133
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->topTextBaseLine:F

    .line 135
    iget-object v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 137
    invoke-virtual {v11, v1, v7, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 139
    :goto_2
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 142
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->minorColor:I

    .line 144
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 146
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 149
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 151
    move-result v1

    .line 154
    if-eqz v1, :cond_4

    .line 155
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->descPlaceMarginTop:F

    .line 157
    invoke-virtual {v11, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 159
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 162
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 164
    neg-float v1, v13

    .line 167
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->descPlaceMarginTop:F

    .line 168
    neg-float v2, v2

    .line 170
    invoke-virtual {v11, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 171
    goto :goto_3

    .line 174
    :cond_4
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 175
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->bottomTextBaseLine:F

    .line 177
    iget-object v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 179
    invoke-virtual {v11, v1, v13, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 181
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 184
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginTop:F

    .line 187
    invoke-virtual {v11, v15, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 189
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconScale:F

    .line 192
    invoke-virtual {v11, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 194
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 197
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 199
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 202
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginTop:F

    .line 205
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectH:F

    .line 207
    add-float v9, v1, v2

    .line 209
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineH:F

    .line 211
    add-float v10, v1, v2

    .line 213
    const/4 v13, 0x0

    .line 215
    move v15, v13

    .line 216
    :goto_4
    const/4 v8, 0x4

    .line 217
    if-ge v15, v8, :cond_8

    .line 218
    int-to-float v1, v15

    .line 220
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectW:F

    .line 221
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectInterval:F

    .line 223
    add-float/2addr v2, v3

    .line 225
    mul-float/2addr v2, v1

    .line 226
    add-float v16, v2, v14

    .line 227
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 229
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->minorColor:I

    .line 231
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 233
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginTop:F

    .line 236
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectW:F

    .line 238
    add-float v4, v16, v1

    .line 240
    iget v7, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectRadius:F

    .line 242
    iget-object v6, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 244
    move-object/from16 v1, p1

    .line 246
    move/from16 v2, v16

    .line 248
    move v5, v9

    .line 250
    move-object/from16 v17, v6

    .line 251
    move v6, v7

    .line 253
    move/from16 v18, v8

    .line 254
    move-object/from16 v8, v17

    .line 256
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 258
    const/4 v1, 0x1

    .line 261
    if-eqz v12, :cond_6

    .line 262
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 264
    rsub-int/lit8 v8, v2, 0x4

    .line 266
    if-lt v15, v8, :cond_5

    .line 268
    goto :goto_5

    .line 270
    :cond_5
    move v1, v13

    .line 271
    goto :goto_5

    .line 272
    :cond_6
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mDrawSmallLineSize:I

    .line 273
    if-ge v15, v2, :cond_5

    .line 275
    :goto_5
    if-eqz v1, :cond_7

    .line 277
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 279
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mainColor:I

    .line 281
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 283
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginTop:F

    .line 286
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineW:F

    .line 288
    add-float v4, v16, v1

    .line 290
    iget v7, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineRadius:F

    .line 292
    iget-object v8, v0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 294
    move-object/from16 v1, p1

    .line 296
    move/from16 v2, v16

    .line 298
    move v5, v10

    .line 300
    move v6, v7

    .line 301
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 302
    :cond_7
    add-int/lit8 v15, v15, 0x1

    .line 305
    goto :goto_4

    .line 307
    :cond_8
    return-void
    .line 308
.end method

.method public final onMeasure(II)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 10
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDesc:Ljava/lang/String;

    .line 14
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 16
    move-result p1

    .line 19
    if-eqz p1, :cond_0

    .line 20
    iget-object p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextPlaceHolder:Landroid/graphics/drawable/Drawable;

    .line 22
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 24
    move-result p1

    .line 27
    int-to-float p1, p1

    .line 28
    goto :goto_0

    .line 29
    :cond_0
    iget p1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mSleepDescWidth:F

    .line 30
    :goto_0
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginStart:F

    .line 32
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->textMarginStart:F

    .line 34
    add-float/2addr v0, v2

    .line 36
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mTextWidth:F

    .line 37
    iget v3, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconDescMarginStart:F

    .line 39
    add-float/2addr p1, v3

    .line 41
    iget v3, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginStart:F

    .line 42
    sub-float/2addr p1, v3

    .line 44
    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    .line 45
    move-result p1

    .line 48
    add-float/2addr p1, v0

    .line 49
    float-to-int p1, p1

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 52
    move-result p1

    .line 55
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 56
    move-result v0

    .line 59
    if-eq v0, v1, :cond_2

    .line 60
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mResources:Landroid/content/res/Resources;

    .line 62
    const v0, 0x7f0703ef    # @dimen/health_view_height '60.0dp'

    .line 64
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result p2

    .line 70
    int-to-float p2, p2

    .line 71
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 72
    move-result-object v0

    .line 75
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 76
    move-result v0

    .line 79
    mul-float/2addr v0, p2

    .line 80
    float-to-int p2, v0

    .line 81
    goto :goto_2

    .line 82
    :cond_2
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 83
    move-result p2

    .line 86
    :goto_2
    new-instance v0, Ljava/lang/StringBuilder;

    .line 87
    const-string/jumbo v1, "w = "

    .line 89
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 95
    const-string v1, ", h = "

    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 109
    const-string v1, "HealthMsgSleepChartView"

    .line 110
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 115
    return-void
    .line 118
.end method

.method public final readSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 2
    const v1, 0x7f0703e8    # @dimen/health_chart_text_size '20.0dp'

    .line 4
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 7
    move-result v1

    .line 10
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 11
    const v0, 0x7f0703d6    # @dimen/health_chart_icon_margin_start '169.0dp'

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginStart:F

    .line 21
    const v0, 0x7f0703d7    # @dimen/health_chart_icon_margin_top '32.0dp'

    .line 23
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconMarginTop:F

    .line 30
    const v0, 0x7f0703d4    # @dimen/health_chart_desc_place_margin_top '32.5dp'

    .line 32
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 35
    move-result v0

    .line 38
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->descPlaceMarginTop:F

    .line 39
    const v0, 0x7f0703e4    # @dimen/health_chart_sleep_rect_margin_top '7.0dp'

    .line 41
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 44
    move-result v0

    .line 47
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginTop:F

    .line 48
    const v0, 0x7f0703e3    # @dimen/health_chart_sleep_rect_margin_start '6.0dp'

    .line 50
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 53
    move-result v0

    .line 56
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectMarginStart:F

    .line 57
    const v0, 0x7f0703e5    # @dimen/health_chart_sleep_rect_radius '3.0dp'

    .line 59
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 62
    move-result v0

    .line 65
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectRadius:F

    .line 66
    const v0, 0x7f0703df    # @dimen/health_chart_sleep_rect_interval '3.75dp'

    .line 68
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 71
    move-result v0

    .line 74
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectInterval:F

    .line 75
    const v0, 0x7f0703e6    # @dimen/health_chart_sleep_rect_w '36.19dp'

    .line 77
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 80
    move-result v0

    .line 83
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectW:F

    .line 84
    const v0, 0x7f0703de    # @dimen/health_chart_sleep_rect_h '47.0dp'

    .line 86
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 89
    move-result v0

    .line 92
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectH:F

    .line 93
    const v0, 0x7f0703e2    # @dimen/health_chart_sleep_rect_line_w '36.19dp'

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 98
    move-result v0

    .line 101
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineW:F

    .line 102
    const v0, 0x7f0703e0    # @dimen/health_chart_sleep_rect_line_h '6.0dp'

    .line 104
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 107
    move-result v0

    .line 110
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineH:F

    .line 111
    const v0, 0x7f0703e1    # @dimen/health_chart_sleep_rect_line_radius '10.0dp'

    .line 113
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 116
    move-result v0

    .line 119
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->rectLineRadius:F

    .line 120
    const v0, 0x7f0703e7    # @dimen/health_chart_text_margin_start '168.5dp'

    .line 122
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 125
    move-result v0

    .line 128
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->textMarginStart:F

    .line 129
    const v0, 0x7f0703e9    # @dimen/health_chart_top_text_base_line '23.0dp'

    .line 131
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 134
    move-result v0

    .line 137
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->topTextBaseLine:F

    .line 138
    const v0, 0x7f0703d3    # @dimen/health_chart_bottom_text_base_line '52.0dp'

    .line 140
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 143
    move-result v0

    .line 146
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->bottomTextBaseLine:F

    .line 147
    const v0, 0x7f0703d5    # @dimen/health_chart_icon_desc_margin_start '194.6dp'

    .line 149
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 152
    move-result v0

    .line 155
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconDescMarginStart:F

    .line 156
    const v0, 0x7f07041d    # @dimen/icon_placeholder_w_h '25.0dp'

    .line 158
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgSleepChartView;->getDimenF(I)F

    .line 161
    move-result v0

    .line 164
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 165
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 167
    move-result v1

    .line 170
    int-to-float v1, v1

    .line 171
    div-float/2addr v0, v1

    .line 172
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->iconScale:F

    .line 173
    return-void
    .line 175
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/HealthMsgSleepChartView;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    return-void
    .line 7
.end method
