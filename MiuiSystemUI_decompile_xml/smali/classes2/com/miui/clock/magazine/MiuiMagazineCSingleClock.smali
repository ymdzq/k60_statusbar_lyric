.class public Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;
.super Lcom/miui/clock/magazine/MiuiMagazineCBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mClockContainer:Landroid/view/ViewGroup;

.field public mHourText:Landroid/widget/TextView;

.field public mMinuteText:Landroid/widget/TextView;

.field public mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mTimeContainer:Landroid/widget/LinearLayout;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_TIME:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 13
    return-object p0

    .line 15
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 16
    move-result-object p0

    .line 19
    return-object p0
    .line 20
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getNormalMarginOffset()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 6
    const/4 v1, 0x5

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    const v0, 0x7f070943    # @dimen/miui_magazine_c_clock_style1_margin_top '76.0dp'

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 14
    move-result p0

    .line 17
    return p0

    .line 18
    :cond_0
    const v0, 0x7f070954    # @dimen/miui_magazine_c_clock_style2_margin_top '69.5dp'

    .line 19
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 22
    move-result p0

    .line 25
    return p0
    .line 26
.end method

.method public getTopMargin()F
    .locals 1

    .line 1
    const v0, 0x7f070943    # @dimen/miui_magazine_c_clock_style1_margin_top '76.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 5
    move-result p0

    .line 8
    int-to-float p0, p0

    .line 9
    return p0
    .line 10
.end method

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final ignoreAccessibilityScale()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a026a    # @id/current_time_hour_style1

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mHourText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a026c    # @id/current_time_minute

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 36
    const v0, 0x7f0a098e    # @id/time_container

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/LinearLayout;

    .line 45
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 47
    const v0, 0x7f0a0997    # @id/time_space

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 56
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 58
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->updateViewsLayoutParams()V

    .line 60
    return-void
    .line 63
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 5
    if-eqz p1, :cond_3

    .line 7
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    goto :goto_1

    .line 15
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_2

    .line 22
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 24
    iget p2, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 26
    if-nez p2, :cond_1

    .line 28
    const/4 p2, -0x1

    .line 30
    :cond_1
    invoke-virtual {p1}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 31
    move-result p1

    .line 34
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 35
    invoke-virtual {p3, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 37
    iget-object p2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 40
    invoke-virtual {p2, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 42
    goto :goto_0

    .line 45
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 46
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 48
    move-result p1

    .line 51
    iget-object p2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 52
    invoke-virtual {p2}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 54
    move-result p2

    .line 57
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 58
    invoke-static {p1}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 60
    move-result p1

    .line 63
    invoke-virtual {p3, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 64
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 67
    invoke-static {p2}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 69
    move-result p2

    .line 72
    invoke-virtual {p1, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->updateTime()V

    .line 76
    :cond_3
    :goto_1
    return-void
    .line 79
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

.method public setMagazineInfoVisible(Z)V
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
    .locals 7

    .line 1
    invoke-super {p0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->updateTime()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 10
    const/4 v1, 0x5

    .line 12
    const/4 v2, 0x1

    .line 13
    if-ne v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 16
    const v1, 0x800003

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 21
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mTimeContainer:Landroid/widget/LinearLayout;

    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mHourText:Landroid/widget/TextView;

    .line 30
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 32
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 34
    move-result v1

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 38
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 41
    iget v1, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 43
    const/4 v3, 0x6

    .line 45
    if-ne v1, v3, :cond_2

    .line 46
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 48
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 50
    move-result v0

    .line 53
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 54
    goto :goto_1

    .line 57
    :cond_2
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 58
    invoke-virtual {v0}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 60
    move-result v0

    .line 63
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 64
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 67
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 69
    const/4 v1, 0x3

    .line 71
    const/4 v4, 0x2

    .line 72
    if-ne v0, v3, :cond_3

    .line 73
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 75
    new-instance v3, Ljava/lang/StringBuilder;

    .line 77
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 79
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 82
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 84
    aget v6, v6, v4

    .line 86
    aget-object v5, v5, v6

    .line 88
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    const-string v5, ","

    .line 93
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 98
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 100
    aget v6, v6, v1

    .line 102
    aget-object v5, v5, v6

    .line 104
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 112
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 113
    goto :goto_2

    .line 116
    :cond_3
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 117
    const-string v3, ""

    .line 119
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 121
    :goto_2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mHourText:Landroid/widget/TextView;

    .line 124
    sget-object v3, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 126
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 128
    const/4 v6, 0x0

    .line 130
    aget v5, v5, v6

    .line 131
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 133
    move-result-object v5

    .line 136
    iget-object v6, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 137
    aget v2, v6, v2

    .line 139
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 141
    move-result-object v2

    .line 144
    filled-new-array {v5, v2}, [Ljava/lang/Object;

    .line 145
    move-result-object v2

    .line 148
    const-string v5, "%d%d"

    .line 149
    invoke-static {v3, v5, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 151
    move-result-object v2

    .line 154
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 155
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 158
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 160
    aget v2, v2, v4

    .line 162
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 164
    move-result-object v2

    .line 167
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 168
    aget v1, v4, v1

    .line 170
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 172
    move-result-object v1

    .line 175
    filled-new-array {v2, v1}, [Ljava/lang/Object;

    .line 176
    move-result-object v1

    .line 179
    invoke-static {v3, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 180
    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 187
    if-eqz v0, :cond_4

    .line 189
    const/16 v0, 0x20

    .line 191
    goto :goto_3

    .line 193
    :cond_4
    const/16 v0, 0x10

    .line 194
    :goto_3
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 196
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 198
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 200
    move-result-wide v2

    .line 203
    or-int/lit8 v0, v0, 0xc

    .line 204
    or-int/lit8 v0, v0, 0x40

    .line 206
    invoke-static {p0, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 208
    move-result-object p0

    .line 211
    invoke-virtual {v1, p0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 212
    return-void
    .line 215
.end method

.method public final updateViewsLayoutParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    const v0, 0x7f070946    # @dimen/miui_magazine_c_clock_style1_text_size '136.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result v0

    .line 12
    int-to-float v0, v0

    .line 13
    const/high16 v1, 0x3f800000    # 1.0f

    .line 14
    mul-float/2addr v0, v1

    .line 16
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mHourText:Landroid/widget/TextView;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 20
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mMinuteText:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v2, v3, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 25
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 28
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 34
    const v2, 0x7f070948    # @dimen/miui_magazine_c_clock_style1_time_margin_top '107.0dp'

    .line 36
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 39
    move-result v2

    .line 42
    int-to-float v2, v2

    .line 43
    mul-float/2addr v2, v1

    .line 44
    float-to-int v2, v2

    .line 45
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 46
    const v0, 0x7f070934    # @dimen/miui_magazine_c_clock_notification_height '110.0dp'

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 51
    move-result v0

    .line 54
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 55
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v2

    .line 60
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 61
    const/4 v3, -0x1

    .line 63
    iput v3, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 64
    int-to-float v0, v0

    .line 66
    mul-float/2addr v0, v1

    .line 67
    float-to-int v0, v0

    .line 68
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 69
    const v0, 0x7f070931    # @dimen/miui_magazine_c_clock_aod_margin_start '15.0dp'

    .line 71
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 74
    move-result v0

    .line 77
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 78
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 81
    move-result v0

    .line 84
    if-eqz v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 87
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 89
    move-result v0

    .line 92
    if-nez v0, :cond_0

    .line 93
    const v0, 0x7f070938    # @dimen/miui_magazine_c_clock_notification_margin_top_j18 '109.0dp'

    .line 95
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 98
    move-result v0

    .line 101
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 102
    goto :goto_0

    .line 104
    :cond_0
    const v0, 0x7f070937    # @dimen/miui_magazine_c_clock_notification_margin_top '76.0dp'

    .line 105
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 108
    move-result v0

    .line 111
    iput v0, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 112
    :goto_0
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCSingleClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 114
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 116
    :cond_1
    return-void
    .line 119
.end method
