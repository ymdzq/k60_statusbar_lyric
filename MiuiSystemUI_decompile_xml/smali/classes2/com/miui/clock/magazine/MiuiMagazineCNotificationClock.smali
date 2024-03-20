.class public Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;
.super Lcom/miui/clock/magazine/MiuiMagazineCBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClockContainer:Landroid/view/ViewGroup;

.field public mHourText:Lcom/miui/clock/MiuiTextGlassView;

.field public mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

.field public mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;


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
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

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
    const p1, 0x7f070938    # @dimen/miui_magazine_c_clock_notification_margin_top_j18 '109.0dp'

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 19
    move-result p1

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f070937    # @dimen/miui_magazine_c_clock_notification_margin_top '76.0dp'

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 27
    move-result p1

    .line 30
    :goto_0
    const v0, 0x7f070934    # @dimen/miui_magazine_c_clock_notification_height '110.0dp'

    .line 31
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 34
    move-result v0

    .line 37
    const v1, 0x7f070933    # @dimen/miui_magazine_c_clock_notification_gallery_margin_top '8.0dp'

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
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mHourText:Lcom/miui/clock/MiuiTextGlassView;

    .line 14
    const v0, 0x7f0a026c    # @id/current_time_minute

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 25
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 36
    const v0, 0x7f0a0997    # @id/time_space

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 45
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 47
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->updateViewsLayoutParams()V

    .line 49
    return-void
    .line 52
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->updateTime()V

    .line 5
    return-void
    .line 8
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
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mHourText:Lcom/miui/clock/MiuiTextGlassView;

    .line 10
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 16
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 19
    iget v1, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 21
    const/4 v2, 0x6

    .line 23
    if-ne v1, v2, :cond_1

    .line 24
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 28
    move-result v0

    .line 31
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 36
    invoke-virtual {v0}, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->getSecondaryColor()I

    .line 38
    move-result v0

    .line 41
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 42
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 45
    iget v0, v0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->mClockStyle:I

    .line 47
    const/4 v1, 0x3

    .line 49
    const/4 v3, 0x2

    .line 50
    if-ne v0, v2, :cond_2

    .line 51
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 53
    new-instance v2, Ljava/lang/StringBuilder;

    .line 55
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 57
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 60
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 62
    aget v5, v5, v3

    .line 64
    aget-object v4, v4, v5

    .line 66
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 68
    const-string v4, ","

    .line 71
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->ssTags:[Ljava/lang/String;

    .line 76
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 78
    aget v5, v5, v1

    .line 80
    aget-object v4, v4, v5

    .line 82
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 87
    move-result-object v2

    .line 90
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 91
    goto :goto_1

    .line 94
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 95
    const-string v2, ""

    .line 97
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setFontFeatureSettings(Ljava/lang/String;)V

    .line 99
    :goto_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mHourText:Lcom/miui/clock/MiuiTextGlassView;

    .line 102
    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 104
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 106
    const/4 v5, 0x0

    .line 108
    aget v4, v4, v5

    .line 109
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 111
    move-result-object v4

    .line 114
    iget-object v5, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 115
    const/4 v6, 0x1

    .line 117
    aget v5, v5, v6

    .line 118
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    move-result-object v5

    .line 123
    filled-new-array {v4, v5}, [Ljava/lang/Object;

    .line 124
    move-result-object v4

    .line 127
    const-string v5, "%d%d"

    .line 128
    invoke-static {v2, v5, v4}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 130
    move-result-object v4

    .line 133
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 137
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 139
    aget v3, v4, v3

    .line 141
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 143
    move-result-object v3

    .line 146
    iget-object v4, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mCurrentTimeArray:[I

    .line 147
    aget v1, v4, v1

    .line 149
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 151
    move-result-object v1

    .line 154
    filled-new-array {v3, v1}, [Ljava/lang/Object;

    .line 155
    move-result-object v1

    .line 158
    invoke-static {v2, v5, v1}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 159
    move-result-object v1

    .line 162
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 166
    if-eqz v0, :cond_3

    .line 168
    const/16 v0, 0x20

    .line 170
    goto :goto_2

    .line 172
    :cond_3
    const/16 v0, 0x10

    .line 173
    :goto_2
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 175
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 177
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 179
    move-result-wide v3

    .line 182
    or-int/lit8 v0, v0, 0xc

    .line 183
    or-int/lit8 v0, v0, 0x40

    .line 185
    invoke-static {v2, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 190
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 191
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 194
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 196
    iget-boolean p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 198
    invoke-virtual {v0, p0}, Lcom/miui/clock/MiuiTextGlassView;->setEnableDiffusion(Z)V

    .line 200
    return-void
    .line 203
.end method

.method public final updateViewsLayoutParams()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

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
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mHourText:Lcom/miui/clock/MiuiTextGlassView;

    .line 17
    const/4 v3, 0x0

    .line 19
    invoke-virtual {v2, v3, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 20
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mMinuteText:Lcom/miui/clock/MiuiTextGlassView;

    .line 23
    invoke-virtual {v2, v3, v0}, Lcom/miui/clock/MiuiTextGlassView;->setTextSize(IF)V

    .line 25
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mSpaceTime:Lcom/miui/clock/utils/BaseLineSpaceView;

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
    const v0, 0x7f070939    # @dimen/miui_magazine_c_clock_notification_width '362.0dp'

    .line 48
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 51
    move-result v0

    .line 54
    const v2, 0x7f070934    # @dimen/miui_magazine_c_clock_notification_height '110.0dp'

    .line 55
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 58
    move-result v2

    .line 61
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 62
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v3

    .line 67
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 68
    int-to-float v0, v0

    .line 70
    mul-float/2addr v0, v1

    .line 71
    float-to-int v0, v0

    .line 72
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 73
    int-to-float v0, v2

    .line 75
    mul-float/2addr v0, v1

    .line 76
    float-to-int v0, v0

    .line 77
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 78
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 80
    move-result v0

    .line 83
    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 86
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 88
    move-result v0

    .line 91
    if-nez v0, :cond_0

    .line 92
    const v0, 0x7f070936    # @dimen/miui_magazine_c_clock_notification_margin_start_j18 '10.0dp'

    .line 94
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result v0

    .line 100
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 101
    const v0, 0x7f070938    # @dimen/miui_magazine_c_clock_notification_margin_top_j18 '109.0dp'

    .line 104
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 107
    move-result v0

    .line 110
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 111
    goto :goto_0

    .line 113
    :cond_0
    const v0, 0x7f070935    # @dimen/miui_magazine_c_clock_notification_margin_start '15.0dp'

    .line 114
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 117
    move-result v0

    .line 120
    invoke-virtual {v3, v0}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 121
    const v0, 0x7f070937    # @dimen/miui_magazine_c_clock_notification_margin_top '76.0dp'

    .line 124
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 127
    move-result v0

    .line 130
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 131
    :goto_0
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCNotificationClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 133
    invoke-virtual {p0, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 135
    :cond_1
    return-void
    .line 138
.end method
