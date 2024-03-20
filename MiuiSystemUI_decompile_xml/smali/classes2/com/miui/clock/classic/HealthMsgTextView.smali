.class public Lcom/miui/clock/classic/HealthMsgTextView;
.super Landroid/view/View;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public calories:Ljava/lang/String;

.field public caloriesIcon:Landroid/graphics/drawable/Drawable;

.field public caloriesTarget:Ljava/lang/String;

.field public caloriesTotalWidth:F

.field public caloriesWidth:F

.field public icon1Top:F

.field public icon2Top:F

.field public icon3Top:F

.field public iconLeft:F

.field public mContext:Landroid/content/Context;

.field public mIconWH:F

.field public mPaint:Landroid/graphics/Paint;

.field public mPlaceText:Ljava/lang/String;

.field public mResources:Landroid/content/res/Resources;

.field public mainColor:I

.field public minorColor:I

.field public sportTimeIcon:Landroid/graphics/drawable/Drawable;

.field public standCount:Ljava/lang/String;

.field public standCountTarget:Ljava/lang/String;

.field public standCountTotalWidth:F

.field public standCountWidth:F

.field public stepCount:Ljava/lang/String;

.field public stepCountIcon:Landroid/graphics/drawable/Drawable;

.field public stepCountTarget:Ljava/lang/String;

.field public stepCountTotalWidth:F

.field public stepCountWidth:F

.field public text1BaseLine:F

.field public text2BaseLine:F

.field public text3BaseLine:F

.field public textLeft:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 2
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 3
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 5
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 8
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 9
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 11
    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mContext:Landroid/content/Context;

    .line 12
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final drawText(Landroid/graphics/Canvas;FFLjava/lang/String;FFLjava/lang/String;Landroid/graphics/Paint;Z)V
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v11, p1

    .line 4
    move/from16 v12, p2

    .line 6
    move/from16 v13, p3

    .line 8
    move-object/from16 v14, p4

    .line 10
    move-object/from16 v15, p8

    .line 12
    if-eqz p9, :cond_0

    .line 14
    iget-object v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->mPlaceText:Ljava/lang/String;

    .line 16
    invoke-virtual {v14, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->minorColor:I

    .line 24
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 26
    const/16 v16, 0x0

    .line 29
    invoke-virtual/range {p7 .. p7}, Ljava/lang/String;->length()I

    .line 31
    move-result v6

    .line 34
    const/4 v9, 0x1

    .line 35
    const/4 v5, 0x0

    .line 36
    move-object/from16 v1, p1

    .line 37
    move-object/from16 v2, p7

    .line 39
    move v3, v5

    .line 41
    move v4, v6

    .line 42
    move/from16 v7, p2

    .line 43
    move/from16 v8, p3

    .line 45
    move-object/from16 v10, p8

    .line 47
    invoke-virtual/range {v1 .. v10}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 49
    iget v0, v0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 52
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 54
    invoke-virtual/range {p4 .. p4}, Ljava/lang/String;->length()I

    .line 57
    move-result v5

    .line 60
    add-float v0, v12, p6

    .line 61
    sub-float v6, v0, p5

    .line 63
    const/4 v8, 0x1

    .line 65
    move-object/from16 v0, p1

    .line 66
    move-object/from16 v1, p4

    .line 68
    move/from16 v2, v16

    .line 70
    move v3, v5

    .line 72
    move/from16 v4, v16

    .line 73
    move/from16 v7, p3

    .line 75
    move-object/from16 v9, p8

    .line 77
    invoke-virtual/range {v0 .. v9}, Landroid/graphics/Canvas;->drawTextRun(Ljava/lang/CharSequence;IIIIFFZLandroid/graphics/Paint;)V

    .line 79
    goto :goto_0

    .line 82
    :cond_0
    iget v1, v0, Lcom/miui/clock/classic/HealthMsgTextView;->mainColor:I

    .line 83
    invoke-virtual {v15, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 85
    invoke-virtual {v11, v14, v12, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 88
    iget v0, v0, Lcom/miui/clock/classic/HealthMsgTextView;->minorColor:I

    .line 91
    invoke-virtual {v15, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 93
    add-float v0, v12, p5

    .line 96
    move-object/from16 v1, p7

    .line 98
    invoke-virtual {v11, v1, v0, v13, v15}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 100
    :goto_0
    return-void
    .line 103
.end method

.method public final getDimenF(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

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
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->calories:Ljava/lang/String;

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 6
    move-result v0

    .line 9
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesWidth:F

    .line 10
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 12
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCount:Ljava/lang/String;

    .line 14
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 16
    move-result v0

    .line 19
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountWidth:F

    .line 20
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 22
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCount:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 26
    move-result v0

    .line 29
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountWidth:F

    .line 30
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesWidth:F

    .line 32
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 34
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTarget:Ljava/lang/String;

    .line 36
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 38
    move-result v1

    .line 41
    add-float/2addr v1, v0

    .line 42
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTotalWidth:F

    .line 43
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountWidth:F

    .line 45
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 47
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTarget:Ljava/lang/String;

    .line 49
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 51
    move-result v1

    .line 54
    add-float/2addr v1, v0

    .line 55
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTotalWidth:F

    .line 56
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountWidth:F

    .line 58
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 60
    iget-object v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTarget:Ljava/lang/String;

    .line 62
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 64
    move-result v1

    .line 67
    add-float/2addr v1, v0

    .line 68
    iput v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTotalWidth:F

    .line 69
    return-void
    .line 71
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
    .locals 14

    .line 1
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mIconWH:F

    .line 10
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 12
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 14
    move-result v1

    .line 17
    int-to-float v1, v1

    .line 18
    div-float/2addr v0, v1

    .line 19
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 20
    move-result v11

    .line 23
    if-eqz v11, :cond_1

    .line 24
    invoke-virtual {p0}, Landroid/view/View;->getMeasuredWidth()I

    .line 26
    move-result v1

    .line 29
    int-to-float v1, v1

    .line 30
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->iconLeft:F

    .line 31
    sub-float v2, v1, v2

    .line 33
    iget-object v3, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 35
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    .line 37
    move-result v3

    .line 40
    int-to-float v3, v3

    .line 41
    mul-float/2addr v3, v0

    .line 42
    sub-float/2addr v2, v3

    .line 43
    iget v3, p0, Lcom/miui/clock/classic/HealthMsgTextView;->textLeft:F

    .line 44
    sub-float/2addr v1, v3

    .line 46
    iget v3, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTotalWidth:F

    .line 47
    sub-float v3, v1, v3

    .line 49
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTotalWidth:F

    .line 51
    sub-float v4, v1, v4

    .line 53
    iget v5, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTotalWidth:F

    .line 55
    sub-float/2addr v1, v5

    .line 57
    move v13, v1

    .line 58
    move v12, v4

    .line 59
    goto :goto_0

    .line 60
    :cond_1
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->iconLeft:F

    .line 61
    iget v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->textLeft:F

    .line 63
    move v3, v1

    .line 65
    move v12, v3

    .line 66
    move v13, v12

    .line 67
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon1Top:F

    .line 70
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 72
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 75
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 78
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 81
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 84
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountIcon:Landroid/graphics/drawable/Drawable;

    .line 87
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon2Top:F

    .line 89
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 91
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 94
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 97
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 100
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 103
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->sportTimeIcon:Landroid/graphics/drawable/Drawable;

    .line 106
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon3Top:F

    .line 108
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 110
    invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 113
    invoke-virtual {p1, v0, v0}, Landroid/graphics/Canvas;->scale(FF)V

    .line 116
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 119
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 122
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text1BaseLine:F

    .line 125
    iget-object v5, p0, Lcom/miui/clock/classic/HealthMsgTextView;->calories:Ljava/lang/String;

    .line 127
    iget v6, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesWidth:F

    .line 129
    iget v7, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTotalWidth:F

    .line 131
    iget-object v8, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTarget:Ljava/lang/String;

    .line 133
    iget-object v9, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 135
    move-object v1, p0

    .line 137
    move-object v2, p1

    .line 138
    move v10, v11

    .line 139
    invoke-virtual/range {v1 .. v10}, Lcom/miui/clock/classic/HealthMsgTextView;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;FFLjava/lang/String;Landroid/graphics/Paint;Z)V

    .line 140
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text2BaseLine:F

    .line 143
    iget-object v5, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCount:Ljava/lang/String;

    .line 145
    iget v6, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountWidth:F

    .line 147
    iget v7, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTotalWidth:F

    .line 149
    iget-object v8, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTarget:Ljava/lang/String;

    .line 151
    iget-object v9, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 153
    move v3, v12

    .line 155
    invoke-virtual/range {v1 .. v10}, Lcom/miui/clock/classic/HealthMsgTextView;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;FFLjava/lang/String;Landroid/graphics/Paint;Z)V

    .line 156
    iget v4, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text3BaseLine:F

    .line 159
    iget-object v5, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCount:Ljava/lang/String;

    .line 161
    iget v6, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountWidth:F

    .line 163
    iget v7, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTotalWidth:F

    .line 165
    iget-object v8, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTarget:Ljava/lang/String;

    .line 167
    iget-object v9, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 169
    move v3, v13

    .line 171
    invoke-virtual/range {v1 .. v10}, Lcom/miui/clock/classic/HealthMsgTextView;->drawText(Landroid/graphics/Canvas;FFLjava/lang/String;FFLjava/lang/String;Landroid/graphics/Paint;Z)V

    .line 172
    return-void
    .line 175
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
    iget p1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->textLeft:F

    .line 10
    iget v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->caloriesTotalWidth:F

    .line 12
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->stepCountTotalWidth:F

    .line 14
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 16
    move-result v0

    .line 19
    iget v2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->standCountTotalWidth:F

    .line 20
    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    .line 22
    move-result v0

    .line 25
    add-float/2addr v0, p1

    .line 26
    float-to-int p1, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 29
    move-result p1

    .line 32
    :goto_0
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 33
    move-result v0

    .line 36
    if-eq v0, v1, :cond_1

    .line 37
    iget-object p2, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 39
    const v0, 0x7f0703ef    # @dimen/health_view_height '60.0dp'

    .line 41
    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 44
    move-result p2

    .line 47
    int-to-float p2, p2

    .line 48
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 49
    move-result-object v0

    .line 52
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 53
    move-result v0

    .line 56
    mul-float/2addr v0, p2

    .line 57
    float-to-int p2, v0

    .line 58
    goto :goto_1

    .line 59
    :cond_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 60
    move-result p2

    .line 63
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 64
    const-string/jumbo v1, "w = "

    .line 66
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 69
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 72
    const-string v1, ", h = "

    .line 75
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object v0

    .line 86
    const-string v1, "HealthMsgTextView"

    .line 87
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    .line 92
    return-void
    .line 95
.end method

.method public final readSize()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 2
    iget-object v1, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mResources:Landroid/content/res/Resources;

    .line 4
    const v2, 0x7f0703f8    # @dimen/health_view_text_size '17.0dp'

    .line 6
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v1

    .line 12
    int-to-float v1, v1

    .line 13
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 14
    move-result-object v2

    .line 17
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 18
    move-result v2

    .line 21
    mul-float/2addr v2, v1

    .line 22
    float-to-int v1, v2

    .line 23
    int-to-float v1, v1

    .line 24
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 25
    const v0, 0x7f0703f3    # @dimen/health_view_icon_margin_start '2.0dp'

    .line 28
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 31
    move-result v0

    .line 34
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->iconLeft:F

    .line 35
    const v0, 0x7f0703f0    # @dimen/health_view_icon1_margin_top '3.0dp'

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 40
    move-result v0

    .line 43
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon1Top:F

    .line 44
    const v0, 0x7f0703f1    # @dimen/health_view_icon2_margin_top '22.0dp'

    .line 46
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 49
    move-result v0

    .line 52
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon2Top:F

    .line 53
    const v0, 0x7f0703f2    # @dimen/health_view_icon3_margin_top '41.0dp'

    .line 55
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 58
    move-result v0

    .line 61
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->icon3Top:F

    .line 62
    const v0, 0x7f0703f7    # @dimen/health_view_text_margin_start '21.46dp'

    .line 64
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 67
    move-result v0

    .line 70
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->textLeft:F

    .line 71
    const v0, 0x7f0703f4    # @dimen/health_view_text1_base_line '17.0dp'

    .line 73
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 76
    move-result v0

    .line 79
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text1BaseLine:F

    .line 80
    const v0, 0x7f0703f5    # @dimen/health_view_text2_base_line '36.0dp'

    .line 82
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 85
    move-result v0

    .line 88
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text2BaseLine:F

    .line 89
    const v0, 0x7f0703f6    # @dimen/health_view_text3_base_line '55.0dp'

    .line 91
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 94
    move-result v0

    .line 97
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->text3BaseLine:F

    .line 98
    const v0, 0x7f0703ea    # @dimen/health_icon_16 '16.0dp'

    .line 100
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/HealthMsgTextView;->getDimenF(I)F

    .line 103
    move-result v0

    .line 106
    iput v0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mIconWH:F

    .line 107
    return-void
    .line 109
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/classic/HealthMsgTextView;->mPaint:Landroid/graphics/Paint;

    .line 2
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    return-void
    .line 7
.end method
