.class public Lcom/miui/clock/classic/HealthMsgChartView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public bottomTextBaseLine:F

.field public final dataList:Ljava/util/List;

.field public denominatorTarget:Ljava/lang/String;

.field public iconDescMarginStart:F

.field public iconMarginStart:I

.field public iconMarginTop:I

.field public iconTargetWidth:F

.field public lineH:F

.field public lineInterval:F

.field public lineMarginStart:I

.field public lineMarginTop:I

.field public lineRadius:I

.field public lineW:F

.field public mContext:Landroid/content/Context;

.field public mIcon:Landroid/graphics/drawable/Drawable;

.field public mIconDesc:Ljava/lang/String;

.field public mIconDescWidth:F

.field public mNowTextWidth:F

.field public mPaint:Landroid/graphics/Paint;

.field public mPlaceholderText:Ljava/lang/String;

.field public mResources:Landroid/content/res/Resources;

.field public mTotalTextWidth:F

.field public mainColor:I

.field public max:I

.field public minorColor:I

.field public now:Ljava/lang/String;

.field public textMarginStart:F

.field public topTextBaseLine:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 3
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 6
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 7
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 8
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 9
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 11
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 13
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 14
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 15
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mContext:Landroid/content/Context;

    .line 16
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final getDimen(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

    .line 2
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 4
    move-result p1

    .line 7
    int-to-float p1, p1

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 9
    move-result-object p0

    .line 12
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 13
    move-result p0

    .line 16
    mul-float/2addr p0, p1

    .line 17
    float-to-int p0, p0

    .line 18
    return p0
    .line 19
.end method

.method public final getDimenF(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

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

.method public final measureTextWidth()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6
    move-result v0

    .line 9
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mNowTextWidth:F

    .line 10
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 12
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    move-result v1

    .line 19
    add-float/2addr v1, v0

    .line 20
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mTotalTextWidth:F

    .line 21
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 23
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 25
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDescWidth:F

    .line 31
    return-void
    .line 33
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
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mResources:Landroid/content/res/Resources;

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
    if-eqz v12, :cond_1

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    move-result v1

    .line 23
    int-to-float v2, v1

    .line 24
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginStart:I

    .line 25
    int-to-float v3, v3

    .line 27
    const/high16 v4, 0x41c00000    # 24.0f

    .line 28
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineW:F

    .line 30
    mul-float/2addr v5, v4

    .line 32
    add-float/2addr v5, v3

    .line 33
    const/high16 v3, 0x41b80000    # 23.0f

    .line 34
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineInterval:F

    .line 36
    mul-float/2addr v4, v3

    .line 38
    add-float/2addr v4, v5

    .line 39
    sub-float v3, v2, v4

    .line 40
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconMarginStart:I

    .line 42
    sub-int/2addr v1, v4

    .line 44
    iget-object v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 45
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 47
    move-result v4

    .line 50
    sub-int/2addr v1, v4

    .line 51
    int-to-float v1, v1

    .line 52
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->textMarginStart:F

    .line 53
    sub-float v4, v2, v4

    .line 55
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mTotalTextWidth:F

    .line 57
    sub-float/2addr v4, v5

    .line 59
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconDescMarginStart:F

    .line 60
    sub-float/2addr v2, v5

    .line 62
    iget v5, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDescWidth:F

    .line 63
    sub-float/2addr v2, v5

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconMarginStart:I

    .line 67
    int-to-float v1, v1

    .line 69
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginStart:I

    .line 70
    int-to-float v3, v2

    .line 72
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->textMarginStart:F

    .line 73
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconDescMarginStart:F

    .line 75
    :goto_0
    move v13, v1

    .line 77
    move v14, v2

    .line 78
    move v15, v3

    .line 79
    move v10, v4

    .line 80
    if-eqz v12, :cond_2

    .line 81
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 83
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPlaceholderText:Ljava/lang/String;

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 87
    move-result v1

    .line 90
    if-eqz v1, :cond_2

    .line 91
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 95
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 97
    const/16 v16, 0x0

    .line 100
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 102
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 104
    move-result v6

    .line 107
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 108
    iget v8, v0, Lcom/miui/clock/classic/HealthMsgChartView;->topTextBaseLine:F

    .line 110
    const/4 v9, 0x1

    .line 112
    iget-object v7, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 113
    const/4 v5, 0x0

    .line 115
    move-object/from16 v1, p1

    .line 116
    move v3, v5

    .line 118
    move v4, v6

    .line 119
    move-object/from16 v17, v7

    .line 120
    move v7, v10

    .line 122
    move/from16 v18, v15

    .line 123
    move v15, v10

    .line 125
    move-object/from16 v10, v17

    .line 126
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 128
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 131
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 133
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 138
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 140
    move-result v6

    .line 143
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 144
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mTotalTextWidth:F

    .line 146
    add-float v10, v15, v1

    .line 148
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mNowTextWidth:F

    .line 150
    sub-float v7, v10, v1

    .line 152
    iget v8, v0, Lcom/miui/clock/classic/HealthMsgChartView;->topTextBaseLine:F

    .line 154
    iget-object v10, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 156
    move-object/from16 v1, p1

    .line 158
    move/from16 v3, v16

    .line 160
    move v4, v6

    .line 162
    move/from16 v5, v16

    .line 163
    move v9, v12

    .line 165
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 166
    goto :goto_1

    .line 169
    :cond_2
    move/from16 v18, v15

    .line 170
    move v15, v10

    .line 172
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 173
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 175
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 177
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->now:Ljava/lang/String;

    .line 180
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->topTextBaseLine:F

    .line 182
    iget-object v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 184
    invoke-virtual {v11, v1, v15, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 186
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 189
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 191
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->denominatorTarget:Ljava/lang/String;

    .line 196
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mNowTextWidth:F

    .line 198
    add-float v10, v15, v2

    .line 200
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->topTextBaseLine:F

    .line 202
    iget-object v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 204
    invoke-virtual {v11, v1, v10, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 206
    :goto_1
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 209
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 211
    move-result v1

    .line 214
    if-nez v1, :cond_3

    .line 215
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDesc:Ljava/lang/String;

    .line 217
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->bottomTextBaseLine:F

    .line 219
    iget-object v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 221
    invoke-virtual {v11, v1, v14, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 223
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 226
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconMarginTop:I

    .line 229
    int-to-float v1, v1

    .line 231
    invoke-virtual {v11, v13, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 232
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->iconTargetWidth:F

    .line 235
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 237
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 239
    move-result v2

    .line 242
    int-to-float v2, v2

    .line 243
    div-float/2addr v1, v2

    .line 244
    invoke-virtual {v11, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 245
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 248
    invoke-virtual {v1, v11}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 250
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 253
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 256
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 258
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 260
    const/4 v1, 0x0

    .line 263
    move v9, v1

    .line 264
    :goto_2
    const/16 v1, 0x18

    .line 265
    if-ge v9, v1, :cond_6

    .line 267
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 269
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->minorColor:I

    .line 271
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    int-to-float v1, v9

    .line 276
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineInterval:F

    .line 277
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineW:F

    .line 279
    add-float/2addr v2, v3

    .line 281
    mul-float/2addr v2, v1

    .line 282
    add-float v10, v2, v18

    .line 283
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginTop:I

    .line 285
    int-to-float v2, v1

    .line 287
    iget v4, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineH:F

    .line 288
    add-float v13, v2, v4

    .line 290
    int-to-float v4, v1

    .line 292
    add-float v5, v10, v3

    .line 293
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineRadius:I

    .line 295
    int-to-float v6, v1

    .line 297
    int-to-float v7, v1

    .line 298
    iget-object v8, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 299
    move-object/from16 v1, p1

    .line 301
    move v2, v10

    .line 303
    move v3, v4

    .line 304
    move v4, v5

    .line 305
    move v5, v13

    .line 306
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 307
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->dataList:Ljava/util/List;

    .line 310
    if-eqz v12, :cond_4

    .line 312
    rsub-int/lit8 v2, v9, 0x17

    .line 314
    check-cast v1, Ljava/util/ArrayList;

    .line 316
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 318
    move-result-object v1

    .line 321
    goto :goto_3

    .line 322
    :cond_4
    check-cast v1, Ljava/util/ArrayList;

    .line 323
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 325
    move-result-object v1

    .line 328
    :goto_3
    check-cast v1, Ljava/lang/Integer;

    .line 329
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 331
    move-result v1

    .line 334
    int-to-float v1, v1

    .line 335
    const/4 v2, 0x0

    .line 336
    cmpl-float v2, v1, v2

    .line 337
    if-lez v2, :cond_5

    .line 339
    iget-object v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 341
    iget v3, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mainColor:I

    .line 343
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 345
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->max:I

    .line 348
    int-to-float v2, v2

    .line 350
    div-float/2addr v1, v2

    .line 351
    iget v2, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineH:F

    .line 352
    mul-float/2addr v1, v2

    .line 354
    sub-float v3, v13, v1

    .line 355
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineW:F

    .line 357
    add-float v4, v10, v1

    .line 359
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgChartView;->lineRadius:I

    .line 361
    int-to-float v6, v1

    .line 363
    int-to-float v7, v1

    .line 364
    iget-object v8, v0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 365
    move-object/from16 v1, p1

    .line 367
    move v2, v10

    .line 369
    move v5, v13

    .line 370
    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Canvas;->drawRoundRect(FFFFFFLandroid/graphics/Paint;)V

    .line 371
    :cond_5
    add-int/lit8 v9, v9, 0x1

    .line 374
    goto :goto_2

    .line 376
    :cond_6
    return-void
    .line 377
.end method

.method public final onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 2
    move-result v0

    .line 5
    const/high16 v1, 0x40000000    # 2.0f

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    iget p1, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginStart:I

    .line 10
    int-to-float v0, p1

    .line 12
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->textMarginStart:F

    .line 13
    add-float/2addr v0, v2

    .line 15
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mTotalTextWidth:F

    .line 16
    add-float/2addr v0, v2

    .line 18
    int-to-float p1, p1

    .line 19
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->iconDescMarginStart:F

    .line 20
    add-float/2addr p1, v2

    .line 22
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mIconDescWidth:F

    .line 23
    add-float/2addr p1, v2

    .line 25
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    .line 26
    move-result p1

    .line 29
    float-to-int p1, p1

    .line 30
    goto :goto_0

    .line 31
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 32
    move-result p1

    .line 35
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 36
    move-result v0

    .line 39
    if-eq v0, v1, :cond_1

    .line 40
    const p2, 0x7f07041c    # @dimen/humidity_view_height '60.0dp'

    .line 42
    invoke-virtual {p0, p2}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 45
    move-result p2

    .line 48
    goto :goto_1

    .line 49
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 50
    move-result p2

    .line 53
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 54
    const-string/jumbo v1, "w = "

    .line 56
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 62
    const-string v1, ", h = "

    .line 65
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v0

    .line 76
    const-string v1, "HealthMsgChartView"

    .line 77
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 82
    return-void
    .line 85
.end method

.method public final readSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 2
    const v1, 0x7f0703e8    # @dimen/health_chart_text_size '20.0dp'

    .line 4
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 7
    move-result v1

    .line 10
    int-to-float v1, v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 12
    const v0, 0x7f0703d6    # @dimen/health_chart_icon_margin_start '169.0dp'

    .line 15
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 18
    move-result v0

    .line 21
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->iconMarginStart:I

    .line 22
    const v0, 0x7f0703d7    # @dimen/health_chart_icon_margin_top '32.0dp'

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 27
    move-result v0

    .line 30
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->iconMarginTop:I

    .line 31
    const v0, 0x7f07041d    # @dimen/icon_placeholder_w_h '25.0dp'

    .line 33
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 36
    move-result v0

    .line 39
    int-to-float v0, v0

    .line 40
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->iconTargetWidth:F

    .line 41
    const v0, 0x7f0703db    # @dimen/health_chart_line_margin_top '7.0dp'

    .line 43
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 46
    move-result v0

    .line 49
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginTop:I

    .line 50
    const v0, 0x7f0703da    # @dimen/health_chart_line_margin_start '6.0dp'

    .line 52
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 55
    move-result v0

    .line 58
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineMarginStart:I

    .line 59
    const v0, 0x7f0703dc    # @dimen/health_chart_line_radius '3.0dp'

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimen(I)I

    .line 64
    move-result v0

    .line 67
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineRadius:I

    .line 68
    const v0, 0x7f0703e7    # @dimen/health_chart_text_margin_start '168.5dp'

    .line 70
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 73
    move-result v0

    .line 76
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->textMarginStart:F

    .line 77
    const v0, 0x7f0703e9    # @dimen/health_chart_top_text_base_line '23.0dp'

    .line 79
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 82
    move-result v0

    .line 85
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->topTextBaseLine:F

    .line 86
    const v0, 0x7f0703d3    # @dimen/health_chart_bottom_text_base_line '52.0dp'

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 91
    move-result v0

    .line 94
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->bottomTextBaseLine:F

    .line 95
    const v0, 0x7f0703d5    # @dimen/health_chart_icon_desc_margin_start '194.6dp'

    .line 97
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 100
    move-result v0

    .line 103
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->iconDescMarginStart:F

    .line 104
    const v0, 0x7f0703d9    # @dimen/health_chart_line_interval '4.6dp'

    .line 106
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 109
    move-result v0

    .line 112
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineInterval:F

    .line 113
    const v0, 0x7f0703dd    # @dimen/health_chart_line_w '2.1dp'

    .line 115
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 118
    move-result v0

    .line 121
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineW:F

    .line 122
    const v0, 0x7f0703d8    # @dimen/health_chart_line_h '47.0dp'

    .line 124
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgChartView;->getDimenF(I)F

    .line 127
    move-result v0

    .line 130
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->lineH:F

    .line 131
    return-void
    .line 133
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/HealthMsgChartView;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    return-void
    .line 7
.end method
