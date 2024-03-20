.class public Lcom/miui/clock/magazine/MiuiMagazineCDateClock;
.super Lcom/miui/clock/magazine/MiuiMagazineCBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mClockContainer:Landroid/view/ViewGroup;

.field public mDateTextStyle2:Landroid/widget/TextView;

.field public final mDeviceScale:F

.field public mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public supportAccessibilityScale:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 2
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDeviceScale:F

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->supportAccessibilityScale:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineCBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDeviceScale:F

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->supportAccessibilityScale:Z

    return-void
.end method


# virtual methods
.method public final clearPassBlur()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    :cond_1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 29
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 31
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 34
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 36
    :cond_2
    return-void
    .line 39
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

.method public final getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->FULL_DATE:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

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
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->getMagazineCNotificationMagazineY()I

    .line 4
    move-result p0

    .line 7
    return p0

    .line 8
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 9
    iget-boolean p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->enableDiffusion:Z

    .line 11
    const p1, 0x7f070952    # @dimen/miui_magazine_c_clock_style2_gallery_margin_phone_top '374.0dp'

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 16
    move-result p0

    .line 19
    return p0
    .line 20
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
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->supportAccessibilityScale:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0266    # @id/current_date_style2

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 25
    const v0, 0x7f0a0999    # @id/time_space_style2

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 36
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->updateViewsLayoutParams()V

    .line 38
    return-void
    .line 41
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 7
    move-result p1

    .line 10
    if-eqz p1, :cond_0

    .line 11
    return-void

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 14
    if-eqz p1, :cond_3

    .line 16
    iget p1, p1, Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;->displayType:I

    .line 18
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 20
    move-result p1

    .line 23
    if-nez p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 34
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 36
    move-result p1

    .line 39
    if-eqz p1, :cond_3

    .line 40
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 42
    iget-boolean p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 44
    if-nez p1, :cond_1

    .line 46
    const p1, 0x7f070932    # @dimen/miui_magazine_c_clock_blur_radius '100.0dp'

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 51
    move-result p1

    .line 54
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 55
    invoke-static {p1, p3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 57
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 60
    iget-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 62
    iget p4, p3, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 64
    if-nez p4, :cond_2

    .line 66
    const/4 p4, -0x1

    .line 68
    :cond_2
    invoke-virtual {p3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 69
    move-result p3

    .line 72
    invoke-static {p4, p3, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 73
    :cond_3
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->updateTime()V

    .line 76
    return-void
    .line 79
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineCBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->clearPassBlur()V

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
    .locals 4

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
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 12
    move-result-object v0

    .line 15
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 16
    const v1, 0x7f070956    # @dimen/miui_magazine_c_clock_style2_time_margin_top '254.5dp'

    .line 18
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 21
    move-result v1

    .line 24
    int-to-float v1, v1

    .line 25
    const/high16 v2, 0x3f800000    # 1.0f

    .line 26
    mul-float/2addr v1, v2

    .line 28
    float-to-int v1, v1

    .line 29
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 30
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 32
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 34
    move-result-wide v1

    .line 37
    invoke-virtual {v0, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 38
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 41
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCBase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineCBaseInfo;

    .line 43
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 45
    move-result v1

    .line 48
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 49
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 52
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 54
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 56
    const v3, 0x7f130761    # @string/miui_magazine_c_clock_style2_date 'M/d EE'

    .line 58
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 61
    move-result-object v3

    .line 64
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 65
    move-result-object v1

    .line 68
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 72
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 74
    iget-object p0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 76
    const v2, 0x7f130762    # @string/miui_magazine_c_clock_style2_date_content_description 'EEEE, MMM dd'

    .line 78
    invoke-virtual {p0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 81
    move-result-object v2

    .line 84
    invoke-virtual {v1, p0, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 85
    move-result-object p0

    .line 88
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 89
    return-void
    .line 92
.end method

.method public final updateViewsLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 6
    const v1, 0x7f070951    # @dimen/miui_magazine_c_clock_style2_date_text_size '14.0dp'

    .line 8
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 11
    move-result v1

    .line 14
    int-to-float v1, v1

    .line 15
    const/4 v2, 0x0

    .line 16
    invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 17
    const v0, 0x7f070958    # @dimen/miui_magazine_c_clock_style2_width '382.0dp'

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 23
    move-result v0

    .line 26
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mClockContainer:Landroid/view/ViewGroup;

    .line 27
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 29
    move-result-object v1

    .line 32
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 33
    int-to-float v0, v0

    .line 35
    const/high16 v2, 0x3f800000    # 1.0f

    .line 36
    mul-float/2addr v0, v2

    .line 38
    float-to-int v0, v0

    .line 39
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 40
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 48
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 50
    move-result v0

    .line 53
    if-nez v0, :cond_0

    .line 54
    const v0, 0x7f070955    # @dimen/miui_magazine_c_clock_style2_margin_top_j18 '105.0dp'

    .line 56
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 59
    move-result v0

    .line 62
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    goto :goto_0

    .line 65
    :cond_0
    const v0, 0x7f070954    # @dimen/miui_magazine_c_clock_style2_margin_top '69.5dp'

    .line 66
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 69
    move-result v0

    .line 72
    iput v0, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 73
    :goto_0
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mSpaceTimeStyle2:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 75
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 77
    move-result-object v0

    .line 80
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 81
    const v1, 0x7f070956    # @dimen/miui_magazine_c_clock_style2_time_margin_top '254.5dp'

    .line 83
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 86
    move-result v1

    .line 89
    int-to-float v1, v1

    .line 90
    mul-float/2addr v1, v2

    .line 91
    float-to-int v1, v1

    .line 92
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 93
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineCDateClock;->mDateTextStyle2:Landroid/widget/TextView;

    .line 95
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    move-result-object v0

    .line 100
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 101
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 103
    move-result v1

    .line 106
    if-eqz v1, :cond_1

    .line 107
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 109
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 111
    move-result v1

    .line 114
    if-nez v1, :cond_1

    .line 115
    const v1, 0x7f070950    # @dimen/miui_magazine_c_clock_style2_date_margin_top_j18 '25.5dp'

    .line 117
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 120
    move-result p0

    .line 123
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 124
    goto :goto_1

    .line 126
    :cond_1
    const v1, 0x7f07094f    # @dimen/miui_magazine_c_clock_style2_date_margin_top '19.5dp'

    .line 127
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 130
    move-result p0

    .line 133
    iput p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 134
    :cond_2
    :goto_1
    return-void
    .line 136
.end method
