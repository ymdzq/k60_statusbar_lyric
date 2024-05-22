.class public Lmiuix/pickerwidget/widget/NumberPickerGroup;
.super Landroid/widget/LinearLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mValuePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 4
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 6
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public final onMeasure(II)V
    .locals 13

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getOrientation()I

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_8

    .line 9
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 11
    move-result p1

    .line 14
    const/4 p2, 0x0

    .line 15
    const/4 v0, 0x0

    .line 16
    move v1, p2

    .line 17
    move v6, v1

    .line 18
    move v2, v0

    .line 19
    move v3, v2

    .line 20
    move v4, v3

    .line 21
    move v5, v4

    .line 22
    :goto_0
    if-ge v1, p1, :cond_2

    .line 23
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 25
    move-result-object v7

    .line 28
    instance-of v8, v7, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 29
    if-eqz v8, :cond_1

    .line 31
    check-cast v7, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 33
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 35
    move-result v8

    .line 38
    add-float/2addr v5, v8

    .line 39
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 40
    move-result v8

    .line 43
    cmpl-float v9, v8, v0

    .line 44
    if-lez v9, :cond_0

    .line 46
    add-float/2addr v3, v8

    .line 48
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    .line 49
    move-result v8

    .line 52
    int-to-float v8, v8

    .line 53
    add-float/2addr v4, v8

    .line 54
    :cond_0
    invoke-virtual {v7}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHighlight()I

    .line 55
    move-result v7

    .line 58
    int-to-float v7, v7

    .line 59
    invoke-static {v2, v7}, Ljava/lang/Math;->max(FF)F

    .line 60
    move-result v2

    .line 63
    goto :goto_1

    .line 64
    :cond_1
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 65
    move-result v7

    .line 68
    add-int/2addr v6, v7

    .line 69
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 70
    goto :goto_0

    .line 72
    :cond_2
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    .line 73
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 75
    iget-object v1, p0, Lmiuix/pickerwidget/widget/NumberPickerGroup;->mValuePaint:Landroid/graphics/Paint;

    .line 78
    const-string v7, "    "

    .line 80
    invoke-virtual {v1, v7}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    .line 82
    move-result v1

    .line 85
    const/high16 v7, 0x40000000    # 2.0f

    .line 86
    mul-float/2addr v3, v7

    .line 88
    mul-float/2addr v4, v7

    .line 89
    add-float/2addr v5, v3

    .line 90
    add-float/2addr v5, v1

    .line 91
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getMeasuredWidth()I

    .line 92
    move-result v3

    .line 95
    sub-int/2addr v3, v6

    .line 96
    int-to-float v3, v3

    .line 97
    sub-float/2addr v3, v4

    .line 98
    div-float v4, v3, v5

    .line 99
    const/high16 v6, 0x3f800000    # 1.0f

    .line 101
    cmpg-float v6, v4, v6

    .line 103
    if-gez v6, :cond_3

    .line 105
    mul-float/2addr v4, v2

    .line 107
    goto :goto_2

    .line 108
    :cond_3
    move v4, v2

    .line 109
    :goto_2
    cmpg-float v6, v4, v2

    .line 110
    if-gtz v6, :cond_8

    .line 112
    move v6, p2

    .line 114
    :goto_3
    if-ge v6, p1, :cond_8

    .line 115
    invoke-virtual {p0, v6}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 117
    move-result-object v8

    .line 120
    instance-of v9, v8, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 121
    if-eqz v9, :cond_7

    .line 123
    move-object v9, v8

    .line 125
    check-cast v9, Lmiuix/pickerwidget/widget/NumberPicker;

    .line 126
    float-to-int v10, v4

    .line 128
    invoke-virtual {v9, v10}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHighlight(I)V

    .line 129
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginTextSizeHint()I

    .line 132
    move-result v10

    .line 135
    int-to-float v10, v10

    .line 136
    mul-float/2addr v10, v4

    .line 137
    div-float/2addr v10, v2

    .line 138
    float-to-int v10, v10

    .line 139
    invoke-virtual {v9, v10}, Lmiuix/pickerwidget/widget/NumberPicker;->setTextSizeHint(I)V

    .line 140
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 143
    move-result v10

    .line 146
    cmpl-float v10, v10, v0

    .line 147
    if-lez v10, :cond_4

    .line 149
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getMarginLabelLeft()I

    .line 151
    move-result v10

    .line 154
    mul-int/lit8 v10, v10, 0x2

    .line 155
    int-to-float v10, v10

    .line 157
    goto :goto_4

    .line 158
    :cond_4
    move v10, v0

    .line 159
    :goto_4
    invoke-virtual {v9}, Landroid/widget/LinearLayout;->getId()I

    .line 160
    move-result v11

    .line 163
    const v12, 0x7f0a0296    # @id/day

    .line 164
    if-ne v11, v12, :cond_5

    .line 167
    const/4 v11, 0x1

    .line 169
    goto :goto_5

    .line 170
    :cond_5
    move v11, p2

    .line 171
    :goto_5
    if-eqz v11, :cond_6

    .line 172
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 174
    move-result v11

    .line 177
    add-float/2addr v11, v1

    .line 178
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 179
    move-result v9

    .line 182
    goto :goto_6

    .line 183
    :cond_6
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getDisplayedMaxTextWidth()F

    .line 184
    move-result v11

    .line 187
    invoke-virtual {v9}, Lmiuix/pickerwidget/widget/NumberPicker;->getOriginalLabelWidth()F

    .line 188
    move-result v9

    .line 191
    :goto_6
    mul-float/2addr v9, v7

    .line 192
    add-float/2addr v9, v11

    .line 193
    mul-float/2addr v9, v3

    .line 194
    div-float/2addr v9, v5

    .line 195
    add-float/2addr v9, v10

    .line 196
    float-to-int v9, v9

    .line 197
    invoke-virtual {v8}, Landroid/view/View;->getMeasuredHeight()I

    .line 198
    move-result v10

    .line 201
    const/high16 v11, 0x40000000    # 2.0f

    .line 202
    invoke-static {v9, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 204
    move-result v9

    .line 207
    invoke-static {v10, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 208
    move-result v10

    .line 211
    invoke-virtual {v8, v9, v10}, Landroid/view/View;->measure(II)V

    .line 212
    :cond_7
    add-int/lit8 v6, v6, 0x1

    .line 215
    goto :goto_3

    .line 217
    :cond_8
    return-void
    .line 218
.end method
