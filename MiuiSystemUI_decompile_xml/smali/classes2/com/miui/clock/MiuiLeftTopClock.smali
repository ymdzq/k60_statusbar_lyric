.class public Lcom/miui/clock/MiuiLeftTopClock;
.super Lcom/miui/clock/MiuiBaseClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/clock/MiuiLeftTopClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
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

.method public bridge synthetic getMagazineColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public bridge synthetic getTimeView()Landroid/widget/TextView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTopMargin()F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object p0

    .line 7
    const v0, 0x7f0708e0    # @dimen/miui_left_top_clock_margin_top '62.0dp'

    .line 8
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result p0

    .line 14
    int-to-float p0, p0

    .line 15
    return p0
    .line 16
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
    invoke-super {p0}, Lcom/miui/clock/MiuiBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0267    # @id/current_time

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/MiuiLeftTopClock;->mTimeText:Landroid/widget/TextView;

    .line 14
    invoke-virtual {p0}, Lcom/miui/clock/MiuiLeftTopClock;->updateTime()V

    .line 16
    return-void
    .line 19
.end method

.method public bridge synthetic setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    return-void
    .line 2
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

.method public setTextColorDark(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setTextColorDark(Z)V

    .line 2
    if-eqz p1, :cond_0

    .line 5
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object v0

    .line 14
    const v1, 0x7f060399    # @color/miui_common_time_dark_text_color '#b3000000'

    .line 15
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 18
    move-result v0

    .line 21
    goto :goto_0

    .line 22
    :cond_0
    const/4 v0, -0x1

    .line 23
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopClock;->mTimeText:Landroid/widget/TextView;

    .line 24
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 26
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 31
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 34
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 36
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiLeftTopClock;->setTextFontDark(Z)V

    .line 39
    return-void
    .line 42
.end method

.method public setTextFontDark(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setTextFontDark(Z)V

    .line 2
    iget-object p0, p0, Lcom/miui/clock/MiuiLeftTopClock;->mTimeText:Landroid/widget/TextView;

    .line 5
    invoke-static {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setFontStyleTextView(Landroid/widget/TextView;Z)V

    .line 7
    return-void
    .line 10
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiBaseClock;->updateTime()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock;->m24HourFormat:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    const/16 v0, 0x20

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/16 v0, 0x10

    .line 12
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopClock;->mTimeText:Landroid/widget/TextView;

    .line 14
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v2

    .line 21
    or-int/lit8 v0, v0, 0xc

    .line 22
    or-int/lit8 v0, v0, 0x40

    .line 24
    invoke-static {p0, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    return-void
    .line 33
.end method

.method public final updateViewsLayoutParams()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 6
    iget-boolean v1, p0, Lcom/miui/clock/MiuiBaseClock;->mHasTopMargin:Z

    .line 8
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_2

    .line 11
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 13
    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 15
    move-result-object v1

    .line 18
    const-string v3, "face_unlcok_apply_for_lock"

    .line 19
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 21
    move-result v1

    .line 24
    if-eqz v1, :cond_0

    .line 25
    const/4 v2, 0x1

    .line 27
    :cond_0
    if-eqz v2, :cond_1

    .line 28
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 30
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 32
    const v3, 0x7f0708e1    # @dimen/miui_left_top_clock_margin_top_use_face '71.0dp'

    .line 34
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result v2

    .line 40
    goto :goto_0

    .line 41
    :cond_1
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 42
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 44
    const v3, 0x7f0708e0    # @dimen/miui_left_top_clock_margin_top '62.0dp'

    .line 46
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 49
    move-result v2

    .line 52
    :goto_0
    int-to-float v2, v2

    .line 53
    mul-float/2addr v1, v2

    .line 54
    float-to-int v2, v1

    .line 55
    :cond_2
    iput v2, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 56
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 58
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 60
    const v3, 0x7f0708df    # @dimen/miui_left_top_clock_margin_left '24.0dp'

    .line 62
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 65
    move-result v2

    .line 68
    int-to-float v2, v2

    .line 69
    mul-float/2addr v1, v2

    .line 70
    float-to-int v1, v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 72
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 80
    move-result-object v0

    .line 83
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 84
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 86
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 88
    const v3, 0x7f0708dd    # @dimen/miui_left_top_clock_date_info_top_margin '-3.2dp'

    .line 90
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 93
    move-result v2

    .line 96
    int-to-float v2, v2

    .line 97
    mul-float/2addr v1, v2

    .line 98
    float-to-int v1, v1

    .line 99
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 100
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 102
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 104
    const v3, 0x7f0705c7    # @dimen/left_top_clock_date_margin_extra '3.0dp'

    .line 106
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 109
    move-result v2

    .line 112
    int-to-float v2, v2

    .line 113
    mul-float/2addr v1, v2

    .line 114
    float-to-int v1, v1

    .line 115
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 116
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 119
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 121
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 126
    move-result-object v0

    .line 129
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 130
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 132
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 134
    const v4, 0x7f0707eb    # @dimen/miui_clock_lunar_calendar_top_margin '1.0dp'

    .line 136
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 139
    move-result v2

    .line 142
    int-to-float v2, v2

    .line 143
    mul-float/2addr v1, v2

    .line 144
    float-to-int v1, v1

    .line 145
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 146
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 148
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 150
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 152
    move-result v2

    .line 155
    int-to-float v2, v2

    .line 156
    mul-float/2addr v1, v2

    .line 157
    float-to-int v1, v1

    .line 158
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 159
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 162
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 164
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 167
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 169
    move-result-object v0

    .line 172
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 173
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 175
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 177
    const v4, 0x7f0707ef    # @dimen/miui_clock_owner_info_top_margin '8.59dp'

    .line 179
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 182
    move-result v2

    .line 185
    int-to-float v2, v2

    .line 186
    mul-float/2addr v1, v2

    .line 187
    float-to-int v1, v1

    .line 188
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 189
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 191
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 193
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 195
    move-result v2

    .line 198
    int-to-float v2, v2

    .line 199
    mul-float/2addr v1, v2

    .line 200
    float-to-int v1, v1

    .line 201
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 202
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 205
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 207
    return-void
    .line 210
.end method

.method public final updateViewsTextSize()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiBaseClock;->updateViewsTextSize()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v0

    .line 10
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 11
    const v2, 0x7f0708e2    # @dimen/miui_left_top_clock_time_text_size '72.0dp'

    .line 13
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 16
    move-result v0

    .line 19
    int-to-float v0, v0

    .line 20
    mul-float/2addr v1, v0

    .line 21
    float-to-int v0, v1

    .line 22
    iget-object p0, p0, Lcom/miui/clock/MiuiLeftTopClock;->mTimeText:Landroid/widget/TextView;

    .line 23
    const/4 v1, 0x0

    .line 25
    int-to-float v0, v0

    .line 26
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    return-void
    .line 30
.end method
