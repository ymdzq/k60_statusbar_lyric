.class public Lcom/miui/clock/smartframe/MiuiSmartFrameClock;
.super Lcom/miui/clock/smartframe/MiuiSmartFrameBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClockContainer:Landroid/view/View;

.field public mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mLineView:Landroid/view/View;

.field public mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
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

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->LINE:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mLineView:Landroid/view/View;

    .line 6
    return-object p0

    .line 8
    :cond_0
    invoke-super {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    return-object p0
    .line 13
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final getMagazinePositionY(Z)I
    .locals 2

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    const p1, 0x7f0709a6    # @dimen/miui_smart_frame_clock_margin_top_j18 '120.0dp'

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 19
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f0709a5    # @dimen/miui_smart_frame_clock_margin_top '87.0dp'

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 27
    move-result p1

    .line 30
    :goto_0
    const v0, 0x7f0709a0    # @dimen/miui_smart_frame_clock_height '152.0dp'

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 34
    move-result v0

    .line 37
    const v1, 0x7f07099f    # @dimen/miui_smart_frame_clock_gallery_margin_top '9.0dp'

    .line 38
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 41
    move-result p0

    .line 44
    add-int/2addr p1, v0

    .line 45
    add-int/2addr p1, p0

    .line 46
    return p1
    .line 47
.end method

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0a63    # @id/view_line

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mLineView:Landroid/view/View;

    .line 12
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mClockContainer:Landroid/view/View;

    .line 21
    const v0, 0x7f0a040d    # @id/hour_space

    .line 23
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 30
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 32
    const v0, 0x7f0a05c0    # @id/minute_space

    .line 34
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 37
    move-result-object v0

    .line 40
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 41
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 43
    return-void
    .line 45
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->updateTime()V

    .line 16
    :cond_1
    :goto_0
    return-void
    .line 19
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

.method public final updateTime()V
    .locals 11

    .line 1
    invoke-super {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->updateTime()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->updateViewsLayoutParams()V

    .line 5
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 8
    move-result-object v0

    .line 11
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 12
    move-result-object v0

    .line 15
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 16
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mClockContainer:Landroid/view/View;

    .line 18
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 20
    move-result-object v1

    .line 23
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 24
    const v2, 0x7f0709ae    # @dimen/miui_smart_frame_clock_width '330.0dp'

    .line 26
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 29
    move-result v2

    .line 32
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 33
    const v2, 0x7f0709a0    # @dimen/miui_smart_frame_clock_height '152.0dp'

    .line 35
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 38
    move-result v2

    .line 41
    int-to-float v2, v2

    .line 42
    const/high16 v3, 0x3f800000    # 1.0f

    .line 43
    mul-float/2addr v2, v3

    .line 45
    float-to-int v2, v2

    .line 46
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 47
    sget-boolean v2, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 49
    const/4 v4, -0x1

    .line 51
    const/4 v5, 0x0

    .line 52
    if-eqz v2, :cond_0

    .line 53
    const/4 v2, 0x2

    .line 55
    if-ne v0, v2, :cond_0

    .line 56
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 58
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 60
    const v0, 0x7f0709a4    # @dimen/miui_smart_frame_clock_margin_start '31.0dp'

    .line 62
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 65
    move-result v0

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 73
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 75
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 77
    :goto_0
    const v0, 0x7f0709a5    # @dimen/miui_smart_frame_clock_margin_top '87.0dp'

    .line 80
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 83
    move-result v0

    .line 86
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mClockContainer:Landroid/view/View;

    .line 89
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    const v0, 0x7f07099c    # @dimen/miui_smart_frame_clock_date_text_size '20.0dp'

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result v0

    .line 100
    int-to-float v0, v0

    .line 101
    mul-float/2addr v0, v3

    .line 102
    float-to-int v0, v0

    .line 103
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 104
    int-to-float v0, v0

    .line 106
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 107
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 110
    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 112
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    move-result-object v0

    .line 120
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 121
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v1

    .line 128
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 129
    const v2, 0x7f07099a    # @dimen/miui_smart_frame_clock_date_margin_bottom '10.5dp'

    .line 131
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 134
    move-result v2

    .line 137
    int-to-float v2, v2

    .line 138
    mul-float/2addr v2, v3

    .line 139
    float-to-int v2, v2

    .line 140
    const v6, 0x7f0709ab    # @dimen/miui_smart_frame_clock_week_margin_end '2.0dp'

    .line 141
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 144
    move-result v6

    .line 147
    int-to-float v6, v6

    .line 148
    mul-float/2addr v6, v3

    .line 149
    float-to-int v6, v6

    .line 150
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 151
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 153
    new-instance v7, Ljava/lang/StringBuilder;

    .line 156
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 158
    iget-object v8, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 161
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 163
    move-result-object v8

    .line 166
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 167
    move-result-object v8

    .line 170
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    iget-object v8, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 174
    invoke-virtual {v8}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 176
    move-result-object v8

    .line 179
    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 180
    move-result-object v8

    .line 183
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v7

    .line 190
    new-instance v8, Landroid/graphics/Rect;

    .line 191
    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 193
    iget-object v9, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mPaint:Landroid/graphics/Paint;

    .line 196
    iget-object v10, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 198
    invoke-virtual {v10}, Landroid/widget/TextView;->getTextSize()F

    .line 200
    move-result v10

    .line 203
    invoke-virtual {v9, v10}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 204
    iget-object v9, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mPaint:Landroid/graphics/Paint;

    .line 207
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 209
    move-result v10

    .line 212
    invoke-virtual {v9, v7, v5, v10, v8}, Landroid/graphics/Paint;->getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V

    .line 213
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    .line 216
    move-result v7

    .line 219
    int-to-float v7, v7

    .line 220
    const v8, 0x7f0709ac    # @dimen/miui_smart_frame_clock_week_max_width '136.0dp'

    .line 221
    invoke-virtual {p0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 224
    move-result v8

    .line 227
    int-to-float v8, v8

    .line 228
    cmpl-float v7, v7, v8

    .line 229
    if-lez v7, :cond_1

    .line 231
    const/4 v7, 0x1

    .line 233
    goto :goto_1

    .line 234
    :cond_1
    move v7, v5

    .line 235
    :goto_1
    const v8, 0x7f0a0273    # @id/current_week

    .line 236
    if-eqz v7, :cond_2

    .line 239
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 241
    iput v5, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 243
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 245
    const v2, 0x7f0709ad    # @dimen/miui_smart_frame_clock_week_twoline_margin_top '6.0dp'

    .line 247
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 250
    move-result v2

    .line 253
    int-to-float v2, v2

    .line 254
    mul-float/2addr v2, v3

    .line 255
    float-to-int v2, v2

    .line 256
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 257
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 259
    goto :goto_2

    .line 262
    :cond_2
    iput v8, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToStart:I

    .line 263
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 265
    const v4, 0x7f0a0a63    # @id/view_line

    .line 267
    iput v4, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->bottomToTop:I

    .line 270
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 272
    const v2, 0x7f07099b    # @dimen/miui_smart_frame_clock_date_margin_end '6.0dp'

    .line 274
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 277
    move-result v2

    .line 280
    int-to-float v2, v2

    .line 281
    mul-float/2addr v2, v3

    .line 282
    float-to-int v2, v2

    .line 283
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 284
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 287
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 289
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 292
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 294
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 297
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 299
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 301
    move-result v1

    .line 304
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 305
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 308
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 310
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 312
    move-result v1

    .line 315
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 316
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 319
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 321
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 323
    move-result v1

    .line 326
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 327
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 330
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 332
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 334
    move-result v1

    .line 337
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mLineView:Landroid/view/View;

    .line 341
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 343
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 345
    move-result v1

    .line 348
    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 349
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 352
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 354
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 356
    move-result v1

    .line 359
    invoke-static {v1}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 360
    move-result v1

    .line 363
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 364
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 367
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 369
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 371
    move-result p0

    .line 374
    invoke-static {p0}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 375
    move-result p0

    .line 378
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 379
    return-void
    .line 382
.end method

.method public final updateViewsLayoutParams()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    const v1, 0x7f0709a1    # @dimen/miui_smart_frame_clock_hour_margin_top '58.0dp'

    .line 10
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 13
    move-result v1

    .line 16
    int-to-float v1, v1

    .line 17
    const/high16 v2, 0x3f800000    # 1.0f

    .line 18
    mul-float/2addr v1, v2

    .line 20
    float-to-int v1, v1

    .line 21
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 22
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 24
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    const v1, 0x7f0709a7    # @dimen/miui_smart_frame_clock_minute_margin_top '134.0dp'

    .line 32
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 35
    move-result v1

    .line 38
    int-to-float v1, v1

    .line 39
    mul-float/2addr v1, v2

    .line 40
    float-to-int v1, v1

    .line 41
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 42
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 44
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 50
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 52
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 54
    move-result-object v1

    .line 57
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 58
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 60
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 62
    move-result-object v3

    .line 65
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 66
    iget-object v4, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 68
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 70
    move-result-object v4

    .line 73
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 74
    const v5, 0x7f0709a9    # @dimen/miui_smart_frame_clock_time_margin_start '3.0dp'

    .line 76
    invoke-virtual {p0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 79
    move-result v5

    .line 82
    int-to-float v5, v5

    .line 83
    mul-float/2addr v5, v2

    .line 84
    float-to-int v5, v5

    .line 85
    const v6, 0x7f0709a8    # @dimen/miui_smart_frame_clock_time_letter_space '86.0dp'

    .line 86
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 89
    move-result v6

    .line 92
    int-to-float v6, v6

    .line 93
    mul-float/2addr v6, v2

    .line 94
    float-to-int v6, v6

    .line 95
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 96
    move-result v7

    .line 99
    if-eqz v7, :cond_0

    .line 100
    invoke-virtual {v0, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 102
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 105
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 108
    invoke-virtual {v4, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 111
    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 115
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 118
    invoke-virtual {v3, v5}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    invoke-virtual {v4, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 124
    :goto_0
    iget-object v5, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 127
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 129
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 132
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 134
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 137
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 139
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    const v0, 0x7f0709aa    # @dimen/miui_smart_frame_clock_time_text_size '74.0dp'

    .line 147
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 150
    move-result v0

    .line 153
    int-to-float v0, v0

    .line 154
    mul-float/2addr v0, v2

    .line 155
    float-to-int v0, v0

    .line 156
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 157
    int-to-float v0, v0

    .line 159
    const/4 v3, 0x0

    .line 160
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 161
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 164
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 166
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 169
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 171
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 174
    invoke-virtual {v1, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 176
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameClock;->mLineView:Landroid/view/View;

    .line 179
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 181
    move-result-object v0

    .line 184
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 185
    const v1, 0x7f0709a2    # @dimen/miui_smart_frame_clock_line_height '0.6dp'

    .line 187
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 190
    move-result v1

    .line 193
    int-to-float v1, v1

    .line 194
    mul-float/2addr v1, v2

    .line 195
    float-to-int v1, v1

    .line 196
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 197
    const v1, 0x7f0709a3    # @dimen/miui_smart_frame_clock_line_margin_top '150.5dp'

    .line 199
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 202
    move-result p0

    .line 205
    int-to-float p0, p0

    .line 206
    mul-float/2addr p0, v2

    .line 207
    float-to-int p0, p0

    .line 208
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 209
    return-void
    .line 211
.end method
