.class public Lcom/miui/clock/MiuiLeftTopLargeClock;
.super Lcom/miui/clock/MiuiBaseClock;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCurrentDateLarge:Landroid/widget/TextView;

.field public mDateContainer:Landroid/widget/FrameLayout;

.field public mLanguage:Ljava/lang/String;

.field public mTextDark:Z

.field public mTimeText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/clock/MiuiLeftTopLargeClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTextDark:Z

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

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
    iput-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a04e6    # @id/left_top_date_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/FrameLayout;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    .line 25
    const v0, 0x7f0a0264    # @id/current_date_large

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p0}, Lcom/miui/clock/MiuiLeftTopLargeClock;->updateTime()V

    .line 38
    return-void
    .line 41
.end method

.method public final onLanguageChanged(Ljava/lang/String;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    .line 2
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 8
    iput-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

    .line 10
    const-string v1, "bo"

    .line 12
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v2

    .line 17
    const/4 v3, 0x0

    .line 18
    const/4 v4, 0x1

    .line 19
    if-nez v2, :cond_1

    .line 20
    const-string/jumbo v2, "ug"

    .line 22
    iget-object v5, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

    .line 25
    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    goto :goto_0

    .line 33
    :cond_0
    move v2, v3

    .line 34
    goto :goto_1

    .line 35
    :cond_1
    :goto_0
    move v2, v4

    .line 36
    :goto_1
    const/4 v5, 0x0

    .line 37
    if-eqz v2, :cond_3

    .line 38
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p1

    .line 43
    const/high16 v1, 0x3f800000    # 1.0f

    .line 44
    if-eqz p1, :cond_2

    .line 46
    iget p1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 48
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 50
    const v4, 0x7f0708e6    # @dimen/miui_left_top_large_clock_date_info_top_margin_bo '-7.4dp'

    .line 52
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 55
    move-result v2

    .line 58
    int-to-float v2, v2

    .line 59
    mul-float/2addr p1, v2

    .line 60
    float-to-int p1, p1

    .line 61
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 62
    iget p1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 64
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 66
    const v4, 0x7f0708e4    # @dimen/miui_left_top_large_clock_date_info_bottom_margin '-19.64dp'

    .line 68
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 71
    move-result v2

    .line 74
    int-to-float v2, v2

    .line 75
    mul-float/2addr p1, v2

    .line 76
    float-to-int p1, p1

    .line 77
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 78
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 80
    const v2, 0x3f266666    # 0.65f

    .line 82
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setAlpha(F)V

    .line 85
    const-string p1, "miclock-thin-tibetan"

    .line 88
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 90
    move-result-object p1

    .line 93
    goto :goto_2

    .line 94
    :cond_2
    iget p1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 95
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 97
    const v4, 0x7f0708e7    # @dimen/miui_left_top_large_clock_date_info_top_margin_ug '-7.4dp'

    .line 99
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 102
    move-result v2

    .line 105
    int-to-float v2, v2

    .line 106
    mul-float/2addr p1, v2

    .line 107
    float-to-int p1, p1

    .line 108
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 109
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 111
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 113
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 115
    const-string p1, "miclock-thin-ug"

    .line 118
    invoke-static {p1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 120
    move-result-object p1

    .line 123
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 124
    invoke-virtual {v2, v5, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 126
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 129
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 131
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 134
    invoke-virtual {p1, v3}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 136
    goto :goto_4

    .line 139
    :cond_3
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 140
    iget-boolean v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTextDark:Z

    .line 142
    if-eqz v1, :cond_4

    .line 144
    const-string v1, "miclock-date"

    .line 146
    goto :goto_3

    .line 148
    :cond_4
    const-string v1, "miclock-date-thin"

    .line 149
    :goto_3
    invoke-static {v1, v3}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 151
    move-result-object v1

    .line 154
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 155
    iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 158
    iget p1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 160
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 162
    const v2, 0x7f0708e5    # @dimen/miui_left_top_large_clock_date_info_top_margin '-11.9dp'

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 167
    move-result v1

    .line 170
    int-to-float v1, v1

    .line 171
    mul-float/2addr p1, v1

    .line 172
    float-to-int p1, p1

    .line 173
    iput p1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 174
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 176
    const/high16 v1, 0x3f400000    # 0.75f

    .line 178
    invoke-virtual {p1, v5, v1}, Landroid/widget/TextView;->setLineSpacing(FF)V

    .line 180
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 183
    const v1, 0x3f333333    # 0.7f

    .line 185
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setAlpha(F)V

    .line 188
    iget-object p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 191
    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setIncludeFontPadding(Z)V

    .line 193
    :goto_4
    iget-object p0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    .line 196
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    return-void
    .line 201
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
    iput-boolean p1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTextDark:Z

    .line 2
    if-eqz p1, :cond_0

    .line 4
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    move-result-object v0

    .line 13
    const v1, 0x7f060399    # @color/miui_common_time_dark_text_color '#b3000000'

    .line 14
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 17
    move-result v0

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    const/4 v0, -0x1

    .line 22
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 43
    move-result-object v0

    .line 46
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 47
    move-result-object v0

    .line 50
    if-eqz p1, :cond_1

    .line 51
    const v1, 0x7f0603bc    # @color/miui_owner_info_dark_text_color '#99000000'

    .line 53
    goto :goto_1

    .line 56
    :cond_1
    const v1, 0x7f0603bd    # @color/miui_owner_info_light_text_color '#99ffffff'

    .line 57
    :goto_1
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    .line 60
    move-result v0

    .line 63
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 64
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiLeftTopLargeClock;->setTextFontDark(Z)V

    .line 69
    return-void
    .line 72
.end method

.method public setTextFontDark(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setTextFontDark(Z)V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    .line 5
    invoke-static {v0, p1}, Lcom/miui/clock/MiuiBaseClock;->setFontStyleTextView(Landroid/widget/TextView;Z)V

    .line 7
    const-string v0, "bo"

    .line 10
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    if-nez v0, :cond_1

    .line 19
    const-string/jumbo v0, "ug"

    .line 21
    iget-object v2, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    move v0, v1

    .line 33
    goto :goto_1

    .line 34
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 35
    :goto_1
    if-nez v0, :cond_3

    .line 36
    const-string v0, "miclock-date-thin"

    .line 38
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 40
    move-result-object v0

    .line 43
    const-string v2, "miclock-date"

    .line 44
    invoke-static {v2, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 46
    move-result-object v1

    .line 49
    if-eqz p1, :cond_2

    .line 50
    move-object v0, v1

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 53
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 55
    :cond_3
    return-void
    .line 58
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 5

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
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    .line 14
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 18
    move-result-wide v3

    .line 21
    or-int/lit8 v0, v0, 0xc

    .line 22
    or-int/lit8 v0, v0, 0x40

    .line 24
    invoke-static {v2, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 26
    move-result-object v0

    .line 29
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 30
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock;->m24HourFormat:Z

    .line 33
    if-eqz v0, :cond_1

    .line 35
    const v0, 0x7f130746    # @string/miui_lock_screen_large_date 'EEE\nM/d'

    .line 37
    goto :goto_1

    .line 40
    :cond_1
    const v0, 0x7f130747    # @string/miui_lock_screen_large_date_12 'EEE\nM/d'

    .line 41
    :goto_1
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 44
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mCurrentDate:Landroid/widget/TextView;

    .line 46
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 48
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 52
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 55
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 57
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 59
    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v2, p0, v0}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    move-result-object p0

    .line 68
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 69
    move-result-object p0

    .line 72
    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 73
    return-void
    .line 76
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
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mContext:Landroid/content/Context;

    .line 78
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 84
    move-result-object v0

    .line 87
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 88
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 90
    move-result-object v0

    .line 93
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mLanguage:Ljava/lang/String;

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 96
    move-result v1

    .line 99
    if-eqz v1, :cond_3

    .line 100
    iget-object v0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    .line 102
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 104
    move-result-object v0

    .line 107
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 108
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 110
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 112
    const v3, 0x7f0708e5    # @dimen/miui_left_top_large_clock_date_info_top_margin '-11.9dp'

    .line 114
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 117
    move-result v2

    .line 120
    int-to-float v2, v2

    .line 121
    mul-float/2addr v1, v2

    .line 122
    float-to-int v1, v1

    .line 123
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 124
    iget-object v1, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mDateContainer:Landroid/widget/FrameLayout;

    .line 126
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 128
    goto :goto_1

    .line 131
    :cond_3
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiLeftTopLargeClock;->onLanguageChanged(Ljava/lang/String;)V

    .line 132
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 135
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 137
    move-result-object v0

    .line 140
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 141
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 143
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 145
    const v3, 0x7f0707eb    # @dimen/miui_clock_lunar_calendar_top_margin '1.0dp'

    .line 147
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 150
    move-result v2

    .line 153
    int-to-float v2, v2

    .line 154
    mul-float/2addr v1, v2

    .line 155
    float-to-int v1, v1

    .line 156
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 157
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 159
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 161
    const v3, 0x7f0705c7    # @dimen/left_top_clock_date_margin_extra '3.0dp'

    .line 163
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 166
    move-result v2

    .line 169
    int-to-float v2, v2

    .line 170
    mul-float/2addr v1, v2

    .line 171
    float-to-int v1, v1

    .line 172
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 173
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock;->mLunarCalendarInfo:Landroid/widget/TextView;

    .line 176
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 178
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 181
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 183
    move-result-object v0

    .line 186
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 187
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 189
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 191
    const v4, 0x7f0707ef    # @dimen/miui_clock_owner_info_top_margin '8.59dp'

    .line 193
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 196
    move-result v2

    .line 199
    int-to-float v2, v2

    .line 200
    mul-float/2addr v1, v2

    .line 201
    float-to-int v1, v1

    .line 202
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 203
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 205
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock;->mResources:Landroid/content/res/Resources;

    .line 207
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 209
    move-result v2

    .line 212
    int-to-float v2, v2

    .line 213
    mul-float/2addr v1, v2

    .line 214
    float-to-int v1, v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 216
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 219
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 221
    return-void
    .line 224
.end method

.method public final updateViewsTextSize()V
    .locals 4

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
    move-result v2

    .line 19
    int-to-float v2, v2

    .line 20
    mul-float/2addr v1, v2

    .line 21
    float-to-int v1, v1

    .line 22
    iget-object v2, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mTimeText:Landroid/widget/TextView;

    .line 23
    int-to-float v1, v1

    .line 25
    const/4 v3, 0x0

    .line 26
    invoke-virtual {v2, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 27
    iget v1, p0, Lcom/miui/clock/MiuiBaseClock;->mScaleRatio:F

    .line 30
    const v2, 0x7f0708e8    # @dimen/miui_left_top_large_clock_date_text_size '58.0dp'

    .line 32
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 35
    move-result v0

    .line 38
    int-to-float v0, v0

    .line 39
    mul-float/2addr v1, v0

    .line 40
    float-to-int v0, v1

    .line 41
    iget-object p0, p0, Lcom/miui/clock/MiuiLeftTopLargeClock;->mCurrentDateLarge:Landroid/widget/TextView;

    .line 42
    int-to-float v0, v0

    .line 44
    invoke-virtual {p0, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 45
    return-void
    .line 48
.end method
