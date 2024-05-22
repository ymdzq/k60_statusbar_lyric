.class public Lcom/miui/clock/rhombus/MiuiRhombusClock;
.super Lcom/miui/clock/rhombus/MiuiRhombusBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

.field public mColon1View:Landroid/view/View;

.field public mColon2View:Landroid/view/View;

.field public mColonView:Landroid/widget/ImageView;

.field public mDateContainer:Landroid/view/ViewGroup;

.field public mDateText:Landroid/widget/TextView;

.field public mDeviceScale:F

.field public mHasUserDefinedColor:Z

.field public mHourContainer:Landroid/view/View;

.field public mInFaceUnlockStatus:Z

.field public mMagazineGroup:Landroid/view/ViewGroup;

.field public mMinuteContainer:Landroid/view/View;

.field public mNotificationDateText:Landroid/widget/TextView;

.field public mTimeContainer:Landroid/view/ViewGroup;

.field public mWeekText:Landroid/widget/TextView;

.field public minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDeviceScale:F

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHasUserDefinedColor:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 5
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDeviceScale:F

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHasUserDefinedColor:Z

    return-void
.end method


# virtual methods
.method public final clearPassBlur()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

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
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 13
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 21
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 23
    move-result v0

    .line 26
    if-eqz v0, :cond_2

    .line 27
    :cond_1
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 32
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 37
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 39
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 42
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 44
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 47
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 49
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColonView:Landroid/widget/ImageView;

    .line 52
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 54
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 57
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 59
    :cond_2
    return-void
    .line 62
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
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x11

    .line 6
    if-eq v0, v1, :cond_0

    .line 8
    packed-switch v0, :pswitch_data_0

    .line 10
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 13
    move-result-object p0

    .line 16
    return-object p0

    .line 17
    :pswitch_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 18
    return-object p0

    .line 20
    :pswitch_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColonView:Landroid/widget/ImageView;

    .line 21
    return-object p0

    .line 23
    :pswitch_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 24
    return-object p0

    .line 26
    :pswitch_3
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 27
    return-object p0

    .line 29
    :pswitch_4
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 30
    return-object p0

    .line 32
    :pswitch_5
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMinuteContainer:Landroid/view/View;

    .line 33
    return-object p0

    .line 35
    :pswitch_6
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHourContainer:Landroid/view/View;

    .line 36
    return-object p0

    .line 38
    :pswitch_7
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon2View:Landroid/view/View;

    .line 39
    return-object p0

    .line 41
    :pswitch_8
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon1View:Landroid/view/View;

    .line 42
    return-object p0

    .line 44
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 45
    return-object p0

    .line 47
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 48
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getMagazineColor()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getInfoAreaColor()I

    .line 6
    move-result p0

    .line 9
    return p0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    return p0
    .line 12
.end method

.method public final getMagazinePositionY(Z)I
    .locals 3

    .line 1
    if-eqz p1, :cond_1

    .line 2
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 4
    move-result p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 10
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 12
    move-result p1

    .line 15
    if-nez p1, :cond_0

    .line 16
    const p1, 0x3f4ccccd    # 0.8f

    .line 18
    goto :goto_0

    .line 21
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 22
    :goto_0
    const v0, 0x7f070989    # @dimen/miui_rhombus_small_clock_margin_top '80.0dp'

    .line 24
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 27
    move-result v0

    .line 30
    const v1, 0x7f070980    # @dimen/miui_rhombus_clock_notification_date_height '23.0dp'

    .line 31
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 34
    move-result v1

    .line 37
    add-int/2addr v1, v0

    .line 38
    const v0, 0x7f07098a    # @dimen/miui_rhombus_small_clock_time_container_margin_top '8.0dp'

    .line 39
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 42
    move-result v0

    .line 45
    add-int/2addr v0, v1

    .line 46
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 47
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerHeight()I

    .line 49
    move-result v1

    .line 52
    int-to-float v1, v1

    .line 53
    iget v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 54
    mul-float/2addr v1, v2

    .line 56
    mul-float/2addr v1, p1

    .line 57
    float-to-int p1, v1

    .line 58
    add-int/2addr v0, p1

    .line 59
    const p1, 0x7f070982    # @dimen/miui_rhombus_clock_notification_gallery_margin_top '16.0dp'

    .line 60
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 63
    move-result p0

    .line 66
    add-int/2addr p0, v0

    .line 67
    return p0

    .line 68
    :cond_1
    iget-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mInFaceUnlockStatus:Z

    .line 69
    if-eqz p1, :cond_2

    .line 71
    const p1, 0x7f07097d    # @dimen/miui_rhombus_clock_date_text_margin_top_with_face '81.0dp'

    .line 73
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 76
    move-result p1

    .line 79
    goto :goto_1

    .line 80
    :cond_2
    const p1, 0x7f07097c    # @dimen/miui_rhombus_clock_date_text_margin_top '48.0dp'

    .line 81
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 84
    move-result p1

    .line 87
    :goto_1
    const v0, 0x7f070988    # @dimen/miui_rhombus_date_text_size '15.0dp'

    .line 88
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 91
    move-result v0

    .line 94
    const v1, 0x7f070987    # @dimen/miui_rhombus_date_text_line_spacing '4.0dp'

    .line 95
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 98
    move-result p0

    .line 101
    mul-int/lit8 p0, p0, 0x2

    .line 102
    add-int/2addr p0, v0

    .line 104
    add-int/2addr p0, p1

    .line 105
    return p0
    .line 106
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
    invoke-super {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0263    # @id/current_date

    .line 5
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a0273    # @id/current_week

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a0541    # @id/magazine_info_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 36
    const v0, 0x7f0a098e    # @id/time_container

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/view/ViewGroup;

    .line 45
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 47
    const v0, 0x7f0a028e    # @id/date_container

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 58
    const v0, 0x7f0a020e    # @id/colon1

    .line 60
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 63
    move-result-object v0

    .line 66
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon1View:Landroid/view/View;

    .line 67
    const v0, 0x7f0a020f    # @id/colon2

    .line 69
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 72
    move-result-object v0

    .line 75
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon2View:Landroid/view/View;

    .line 76
    const v0, 0x7f0a040b    # @id/hour_container

    .line 78
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 81
    move-result-object v0

    .line 84
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHourContainer:Landroid/view/View;

    .line 85
    const v0, 0x7f0a05be    # @id/minute_container

    .line 87
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMinuteContainer:Landroid/view/View;

    .line 94
    const v0, 0x7f0a0210    # @id/colon_view

    .line 96
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 99
    move-result-object v0

    .line 102
    check-cast v0, Landroid/widget/ImageView;

    .line 103
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColonView:Landroid/widget/ImageView;

    .line 105
    const v0, 0x7f0a06a8    # @id/notification_date

    .line 107
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 110
    move-result-object v0

    .line 113
    check-cast v0, Landroid/widget/TextView;

    .line 114
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 116
    return-void
    .line 118
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 5
    if-eqz p1, :cond_4

    .line 7
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 9
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateColor()V

    .line 18
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 21
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 23
    move-result p1

    .line 26
    if-eqz p1, :cond_3

    .line 27
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_3

    .line 35
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 37
    iget p3, p1, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 39
    if-nez p3, :cond_1

    .line 41
    const/4 p3, -0x1

    .line 43
    :cond_1
    iget-boolean p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 44
    if-nez p1, :cond_2

    .line 46
    const p1, 0x7f07097a    # @dimen/miui_rhombus_clock_blur_radius '100.0dp'

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 51
    move-result p1

    .line 54
    invoke-static {p1, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 55
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 58
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getTextColor()I

    .line 60
    move-result p4

    .line 63
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 64
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 67
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getTextColor()I

    .line 69
    move-result p4

    .line 72
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 73
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 76
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getTextColor()I

    .line 78
    move-result p4

    .line 81
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 82
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 85
    invoke-virtual {p1}, Lcom/miui/clock/MiuiClockNumberView;->getTextColor()I

    .line 87
    move-result p4

    .line 90
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 91
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColonView:Landroid/widget/ImageView;

    .line 94
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 96
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 98
    move-result p4

    .line 101
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 102
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 105
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 107
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 109
    move-result p4

    .line 112
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 113
    :cond_3
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateTime()V

    .line 116
    :cond_4
    :goto_0
    return-void
    .line 119
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 5
    iget p1, p1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mClockStyle:I

    .line 7
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockStyle(I)V

    .line 9
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->clearPassBlur()V

    .line 12
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateColor()V

    .line 15
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateTime()V

    .line 18
    return-void
    .line 21
.end method

.method public bridge synthetic setCurrentUserId(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInfoTextColorDark(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    const-string v0, "#99ffffff"

    .line 7
    const-string v1, "#99000000"

    .line 9
    if-nez p1, :cond_1

    .line 11
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 13
    move-result p1

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 18
    move-result p1

    .line 21
    :goto_0
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 22
    iput p1, v2, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->originInfoAreaColor:I

    .line 24
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getInfoAreaColor()I

    .line 26
    move-result v2

    .line 29
    if-eqz v2, :cond_2

    .line 30
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 32
    move-result v0

    .line 35
    if-eq v2, v0, :cond_2

    .line 36
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 38
    move-result v0

    .line 41
    if-ne v2, v0, :cond_3

    .line 42
    :cond_2
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 44
    invoke-virtual {v0, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setInfoAreaColor(I)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateColor()V

    .line 49
    :cond_3
    return-void
    .line 52
.end method

.method public setInfoTextPalette()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 15
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_2

    .line 21
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 25
    move-result v0

    .line 28
    if-eqz v0, :cond_2

    .line 29
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 31
    iget v1, v0, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 33
    if-nez v1, :cond_1

    .line 35
    const/4 v1, -0x1

    .line 37
    :cond_1
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 38
    iget-boolean v3, v0, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 40
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 42
    move-result v0

    .line 45
    invoke-static {v1, v0, v2, v3}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 46
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 49
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 51
    iget-boolean v2, p0, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 53
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 55
    move-result p0

    .line 58
    invoke-static {v1, p0, v0, v2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 59
    :cond_2
    :goto_0
    return-void
    .line 62
.end method

.method public bridge synthetic setLocalCity(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMagazineInfoVisible(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setMagazineInfoVisible(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 5
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/4 p1, 0x0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/16 p1, 0x8

    .line 13
    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 15
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateTime()V

    .line 18
    return-void
    .line 21
.end method

.method public setScaleRatio(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setScaleRatio(F)V

    .line 2
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDeviceScale:F

    .line 5
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusClock;->updateTime()V

    .line 7
    return-void
    .line 10
.end method

.method public bridge synthetic setSuperSaveOpen(Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiClockController$IClockView;->setSuperSaveOpen(Z)V

    .line 2
    return-void
    .line 5
.end method

.method public setUserDefineColor(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHasUserDefinedColor:Z

    .line 2
    return-void
    .line 4
.end method

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateColor()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    if-eqz v0, :cond_a

    .line 4
    iget-boolean v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHasUserDefinedColor:Z

    .line 6
    if-eqz v1, :cond_0

    .line 8
    goto/16 :goto_7

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 12
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getInfoAreaColor()I

    .line 14
    move-result v0

    .line 17
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 18
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 21
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 23
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getInfoAreaColor()I

    .line 25
    move-result v1

    .line 28
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 32
    move-result-object v0

    .line 35
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 36
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getColonResource()I

    .line 38
    move-result v1

    .line 41
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 44
    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon1View:Landroid/view/View;

    .line 48
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 50
    invoke-virtual {v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getSecondaryColor()I

    .line 52
    move-result v2

    .line 55
    invoke-static {v0, v2}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {v1, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 60
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon2View:Landroid/view/View;

    .line 63
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 65
    invoke-virtual {v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getSecondaryColor()I

    .line 67
    move-result v2

    .line 70
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 71
    move-result-object v0

    .line 74
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 75
    invoke-virtual {v1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 78
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 81
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 83
    invoke-virtual {v0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getHourAndMinuteColor(Landroid/content/Context;)[I

    .line 85
    move-result-object v0

    .line 88
    const/4 v1, 0x1

    .line 89
    aget v0, v0, v1

    .line 90
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 92
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 94
    invoke-virtual {v1, v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->getHourAndMinuteColor(Landroid/content/Context;)[I

    .line 96
    move-result-object v1

    .line 99
    const/4 v2, 0x0

    .line 100
    aget v1, v1, v2

    .line 101
    if-nez v0, :cond_1

    .line 103
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 105
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 107
    move-result v0

    .line 110
    :cond_1
    if-nez v1, :cond_2

    .line 111
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 113
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 115
    move-result v1

    .line 118
    :cond_2
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 119
    invoke-virtual {v2}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 121
    move-result-object v2

    .line 124
    sget-object v3, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 125
    if-ne v2, v3, :cond_5

    .line 127
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 129
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 131
    invoke-virtual {v3}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 133
    move-result v3

    .line 136
    if-eqz v3, :cond_3

    .line 137
    goto :goto_0

    .line 139
    :cond_3
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 140
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 142
    move-result v1

    .line 145
    :goto_0
    iput v1, v2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 146
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 148
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 150
    invoke-virtual {v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 152
    move-result v2

    .line 155
    if-eqz v2, :cond_4

    .line 156
    goto :goto_1

    .line 158
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 159
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 161
    move-result v0

    .line 164
    :goto_1
    iput v0, v1, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 165
    goto :goto_6

    .line 167
    :cond_5
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 168
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 170
    invoke-virtual {v3}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 172
    move-result v3

    .line 175
    if-eqz v3, :cond_6

    .line 176
    move v3, v1

    .line 178
    goto :goto_2

    .line 179
    :cond_6
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 180
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 182
    move-result v3

    .line 185
    :goto_2
    iput v3, v2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 186
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 188
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 190
    invoke-virtual {v3}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 192
    move-result v3

    .line 195
    if-eqz v3, :cond_7

    .line 196
    goto :goto_3

    .line 198
    :cond_7
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 199
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 201
    move-result v1

    .line 204
    :goto_3
    iput v1, v2, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 205
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 207
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 209
    invoke-virtual {v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 211
    move-result v2

    .line 214
    if-eqz v2, :cond_8

    .line 215
    move v2, v0

    .line 217
    goto :goto_4

    .line 218
    :cond_8
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 219
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 221
    move-result v2

    .line 224
    :goto_4
    iput v2, v1, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 225
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 227
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 229
    invoke-virtual {v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->isDiffHourMinuteColor()Z

    .line 231
    move-result v2

    .line 234
    if-eqz v2, :cond_9

    .line 235
    goto :goto_5

    .line 237
    :cond_9
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 238
    invoke-virtual {v0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 240
    move-result v0

    .line 243
    :goto_5
    iput v0, v1, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 244
    :goto_6
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 246
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 248
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 250
    move-result p0

    .line 253
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 254
    :cond_a
    :goto_7
    return-void
    .line 257
.end method

.method public final updateFaceUnlockIconState(Z)V
    .locals 1

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mInFaceUnlockStatus:Z

    .line 2
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 4
    if-eqz v0, :cond_1

    .line 6
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const p1, 0x7f07097d    # @dimen/miui_rhombus_clock_date_text_margin_top_with_face '81.0dp'

    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 19
    move-result p0

    .line 22
    goto :goto_0

    .line 23
    :cond_0
    const p1, 0x7f07097c    # @dimen/miui_rhombus_clock_date_text_margin_top '48.0dp'

    .line 24
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 27
    move-result p0

    .line 30
    :goto_0
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 31
    :cond_1
    return-void
    .line 33
.end method

.method public final updateTime()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 4
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-boolean v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 12
    const v2, 0x7f130742    # @string/miui_lock_screen_date 'EEE, MMM dd'

    .line 14
    if-eqz v1, :cond_1

    .line 17
    move v1, v2

    .line 19
    goto :goto_0

    .line 20
    :cond_1
    const v1, 0x7f130782    # @string/miui_rhombus_clock_date 'MMMM dd'

    .line 21
    :goto_0
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 24
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 26
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 28
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v4, v5, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 38
    iget-boolean v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 41
    if-eqz v1, :cond_2

    .line 43
    const v1, 0x7f130783    # @string/miui_rhombus_clock_week 'EEE'

    .line 45
    goto :goto_1

    .line 48
    :cond_2
    const v1, 0x7f130784    # @string/miui_rhombus_clock_week_full 'EEEE'

    .line 49
    :goto_1
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 52
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 54
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 56
    invoke-virtual {v5, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 58
    move-result-object v1

    .line 61
    invoke-virtual {v4, v5, v1}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 62
    move-result-object v1

    .line 65
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 69
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 71
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 73
    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v3, v4, v2}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 79
    move-result-object v2

    .line 82
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 86
    const v2, 0x7f07098b    # @dimen/miui_rhombus_small_date_text_size '17.0dp'

    .line 88
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 91
    move-result v2

    .line 94
    int-to-float v2, v2

    .line 95
    const/4 v3, 0x0

    .line 96
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 97
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mNotificationDateText:Landroid/widget/TextView;

    .line 100
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 102
    move-result-object v1

    .line 105
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 106
    const v2, 0x7f070989    # @dimen/miui_rhombus_small_clock_margin_top '80.0dp'

    .line 108
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 111
    move-result v2

    .line 114
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 115
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 117
    iget-boolean v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 119
    const/16 v4, 0x8

    .line 121
    if-eqz v2, :cond_3

    .line 123
    move v2, v4

    .line 125
    goto :goto_2

    .line 126
    :cond_3
    move v2, v3

    .line 127
    :goto_2
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 128
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateText:Landroid/widget/TextView;

    .line 131
    const v2, 0x7f070988    # @dimen/miui_rhombus_date_text_size '15.0dp'

    .line 133
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 136
    move-result v5

    .line 139
    int-to-float v5, v5

    .line 140
    invoke-virtual {v1, v3, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 141
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mWeekText:Landroid/widget/TextView;

    .line 144
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 146
    move-result v2

    .line 149
    int-to-float v2, v2

    .line 150
    invoke-virtual {v1, v3, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 151
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 154
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 156
    move-result-object v1

    .line 159
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 160
    const v2, 0x7f07097b    # @dimen/miui_rhombus_clock_date_text_margin_start '20.0dp'

    .line 162
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 165
    move-result v5

    .line 168
    invoke-virtual {v1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginStart(I)V

    .line 169
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 172
    move-result v2

    .line 175
    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMarginEnd(I)V

    .line 176
    iget-boolean v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mInFaceUnlockStatus:Z

    .line 179
    if-eqz v2, :cond_4

    .line 181
    const v2, 0x7f07097d    # @dimen/miui_rhombus_clock_date_text_margin_top_with_face '81.0dp'

    .line 183
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 186
    move-result v2

    .line 189
    goto :goto_3

    .line 190
    :cond_4
    const v2, 0x7f07097c    # @dimen/miui_rhombus_clock_date_text_margin_top '48.0dp'

    .line 191
    invoke-virtual {v0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 194
    move-result v2

    .line 197
    :goto_3
    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 198
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 200
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    iget-boolean v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 205
    if-eqz v1, :cond_5

    .line 207
    const/16 v1, 0x20

    .line 209
    goto :goto_4

    .line 211
    :cond_5
    const/16 v1, 0x10

    .line 212
    :goto_4
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 214
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 216
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 218
    move-result-wide v6

    .line 221
    or-int/lit8 v1, v1, 0xc

    .line 222
    or-int/lit8 v1, v1, 0x40

    .line 224
    invoke-static {v5, v6, v7, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 226
    move-result-object v1

    .line 229
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 233
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 235
    move-result-object v1

    .line 238
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 239
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 241
    move-result-object v2

    .line 244
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 245
    move-result-object v2

    .line 248
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 249
    sget-boolean v5, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 251
    const/4 v6, 0x1

    .line 253
    if-eqz v5, :cond_6

    .line 254
    if-ne v2, v6, :cond_6

    .line 256
    const v2, 0x3f99999a    # 1.2f

    .line 258
    goto :goto_5

    .line 261
    :cond_6
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 262
    move-result v2

    .line 265
    if-eqz v2, :cond_7

    .line 266
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 268
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 270
    move-result v2

    .line 273
    if-nez v2, :cond_7

    .line 274
    const v2, 0x3f4ccccd    # 0.8f

    .line 276
    goto :goto_5

    .line 279
    :cond_7
    const/high16 v2, 0x3f800000    # 1.0f

    .line 280
    :goto_5
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mDeviceScale:F

    .line 282
    const/4 v7, 0x0

    .line 284
    cmpl-float v7, v5, v7

    .line 285
    if-lez v7, :cond_8

    .line 287
    mul-float/2addr v2, v5

    .line 289
    :cond_8
    const v5, 0x7f070986    # @dimen/miui_rhombus_clock_width '392.0dp'

    .line 290
    invoke-virtual {v0, v5}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 293
    move-result v5

    .line 296
    int-to-float v5, v5

    .line 297
    mul-float/2addr v5, v2

    .line 298
    float-to-int v5, v5

    .line 299
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 300
    const v5, 0x7f07097e    # @dimen/miui_rhombus_clock_height '660.0dp'

    .line 302
    invoke-virtual {v0, v5}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 305
    move-result v5

    .line 308
    int-to-float v5, v5

    .line 309
    mul-float/2addr v5, v2

    .line 310
    float-to-int v5, v5

    .line 311
    iput v5, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 312
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mHourContainer:Landroid/view/View;

    .line 314
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 316
    move-result-object v1

    .line 319
    const v5, 0x7f07097f    # @dimen/miui_rhombus_clock_inner_height '460.0dp'

    .line 320
    invoke-virtual {v0, v5}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 323
    move-result v7

    .line 326
    int-to-float v7, v7

    .line 327
    mul-float/2addr v7, v2

    .line 328
    float-to-int v7, v7

    .line 329
    iput v7, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 330
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mMinuteContainer:Landroid/view/View;

    .line 332
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 334
    move-result-object v1

    .line 337
    invoke-virtual {v0, v5}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 338
    move-result v5

    .line 341
    int-to-float v5, v5

    .line 342
    mul-float/2addr v5, v2

    .line 343
    float-to-int v5, v5

    .line 344
    iput v5, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 345
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 347
    aget v5, v1, v3

    .line 349
    aget v6, v1, v6

    .line 351
    const/4 v7, 0x2

    .line 353
    aget v7, v1, v7

    .line 354
    const/4 v8, 0x3

    .line 356
    aget v1, v1, v8

    .line 357
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 359
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getHourOffset()[[[I

    .line 361
    move-result-object v8

    .line 364
    aget-object v8, v8, v5

    .line 365
    aget-object v8, v8, v6

    .line 367
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 369
    invoke-virtual {v9}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteOffset()[[[I

    .line 371
    move-result-object v9

    .line 374
    aget-object v9, v9, v7

    .line 375
    aget-object v9, v9, v1

    .line 377
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 379
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 381
    move-result-object v10

    .line 384
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 385
    iget-object v11, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 387
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 389
    move-result-object v11

    .line 392
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 393
    iget-object v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 395
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 397
    move-result-object v12

    .line 400
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 401
    iget-object v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 403
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 405
    move-result-object v13

    .line 408
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 409
    iget-object v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 411
    invoke-virtual {v14}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 413
    move-result-object v14

    .line 416
    sget-object v15, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 417
    if-ne v14, v15, :cond_b

    .line 419
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 421
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 423
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 426
    invoke-virtual {v8, v4}, Landroid/view/View;->setVisibility(I)V

    .line 428
    const/4 v4, -0x1

    .line 431
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 432
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 434
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 436
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 438
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 441
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 443
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 445
    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 447
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 450
    invoke-virtual {v4, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 452
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 455
    invoke-virtual {v4, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 457
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 460
    if-nez v4, :cond_9

    .line 462
    new-instance v4, Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 464
    invoke-direct {v4}, Lcom/miui/clock/module/FontWholeHourCopperplate;-><init>()V

    .line 466
    iput-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 469
    :cond_9
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 471
    if-nez v4, :cond_a

    .line 473
    new-instance v4, Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 475
    invoke-direct {v4}, Lcom/miui/clock/module/FontWholeMinuteCopperplate;-><init>()V

    .line 477
    iput-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 480
    :cond_a
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 482
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 484
    iput-object v8, v4, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 486
    mul-int/lit8 v5, v5, 0xa

    .line 488
    add-int/2addr v5, v6

    .line 490
    iput v5, v4, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 491
    iput v2, v4, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 493
    const/4 v5, 0x0

    .line 495
    iput v5, v4, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 496
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 498
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 500
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 502
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 504
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 506
    iget-boolean v5, v5, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 508
    invoke-virtual {v4}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 510
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 513
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 515
    iput-object v5, v4, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 517
    const/4 v5, 0x0

    .line 519
    iput v5, v4, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 520
    iput v2, v4, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 522
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 524
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 526
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 528
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 530
    mul-int/lit8 v7, v7, 0xa

    .line 532
    add-int/2addr v7, v1

    .line 534
    iput v7, v4, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 535
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 537
    iget-boolean v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 539
    invoke-virtual {v4}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 541
    goto/16 :goto_6

    .line 544
    :cond_b
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 546
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->enableRotate()Z

    .line 548
    move-result v4

    .line 551
    if-eqz v4, :cond_c

    .line 552
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 554
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 556
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 559
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 561
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 564
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 566
    move-result-object v3

    .line 569
    aget v3, v3, v5

    .line 570
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 572
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 574
    move-result-object v4

    .line 577
    aget v4, v4, v5

    .line 578
    iget-object v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 580
    invoke-virtual {v14}, Lcom/miui/clock/module/BaseFontStyle;->getMaxRotateDegree()F

    .line 582
    move-result v14

    .line 585
    float-to-double v14, v14

    .line 586
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 587
    move-result-wide v14

    .line 590
    move-object/from16 v23, v12

    .line 591
    move-object/from16 v22, v13

    .line 593
    int-to-double v12, v3

    .line 595
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 596
    move-result-wide v16

    .line 599
    mul-double v20, v16, v12

    .line 600
    int-to-double v3, v4

    .line 602
    move-wide/from16 v16, v14

    .line 603
    move-wide/from16 v18, v3

    .line 605
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 607
    move-result-wide v24

    .line 610
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 611
    move-result-wide v16

    .line 614
    mul-double v20, v16, v3

    .line 615
    move-wide/from16 v16, v14

    .line 617
    move-wide/from16 v18, v12

    .line 619
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 621
    move-result-wide v3

    .line 624
    iget v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 625
    move-wide/from16 v26, v14

    .line 627
    float-to-double v13, v12

    .line 629
    mul-double v13, v13, v24

    .line 630
    move v15, v5

    .line 632
    move/from16 v28, v6

    .line 633
    float-to-double v5, v2

    .line 635
    mul-double/2addr v13, v5

    .line 636
    double-to-int v13, v13

    .line 637
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 638
    float-to-double v13, v12

    .line 640
    mul-double/2addr v13, v3

    .line 641
    mul-double/2addr v13, v5

    .line 642
    double-to-int v13, v13

    .line 643
    iput v13, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 644
    const/4 v13, 0x0

    .line 646
    aget v13, v8, v13

    .line 647
    int-to-float v13, v13

    .line 649
    mul-float/2addr v13, v12

    .line 650
    mul-float/2addr v13, v2

    .line 651
    float-to-int v12, v13

    .line 652
    invoke-virtual {v10, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 653
    const/4 v12, 0x1

    .line 656
    aget v12, v8, v12

    .line 657
    int-to-float v12, v12

    .line 659
    iget v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 660
    mul-float/2addr v12, v13

    .line 662
    mul-float/2addr v12, v2

    .line 663
    float-to-int v12, v12

    .line 664
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 665
    iget-object v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 667
    invoke-virtual {v12}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 669
    move-result-object v12

    .line 672
    aget v12, v12, v28

    .line 673
    iget-object v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 675
    invoke-virtual {v13}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 677
    move-result-object v13

    .line 680
    aget v13, v13, v28

    .line 681
    move-wide/from16 v29, v3

    .line 683
    int-to-double v3, v12

    .line 685
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 686
    move-result-wide v16

    .line 689
    mul-double v20, v16, v3

    .line 690
    int-to-double v12, v13

    .line 692
    move-wide/from16 v16, v26

    .line 693
    move-wide/from16 v18, v12

    .line 695
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 697
    move-result-wide v31

    .line 700
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 701
    move-result-wide v16

    .line 704
    mul-double v20, v16, v12

    .line 705
    move-wide/from16 v16, v26

    .line 707
    move-wide/from16 v18, v3

    .line 709
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 711
    move-result-wide v3

    .line 714
    iget v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 715
    float-to-double v13, v12

    .line 717
    mul-double v13, v13, v31

    .line 718
    mul-double/2addr v13, v5

    .line 720
    double-to-int v13, v13

    .line 721
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 722
    float-to-double v13, v12

    .line 724
    mul-double/2addr v13, v3

    .line 725
    mul-double/2addr v13, v5

    .line 726
    double-to-int v13, v13

    .line 727
    iput v13, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 728
    const/4 v13, 0x2

    .line 730
    aget v13, v8, v13

    .line 731
    int-to-float v13, v13

    .line 733
    mul-float/2addr v13, v12

    .line 734
    mul-float/2addr v13, v2

    .line 735
    float-to-int v12, v13

    .line 736
    invoke-virtual {v11, v12}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 737
    const/4 v12, 0x3

    .line 740
    aget v8, v8, v12

    .line 741
    int-to-float v8, v8

    .line 743
    iget v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 744
    mul-float/2addr v8, v12

    .line 746
    mul-float/2addr v8, v2

    .line 747
    float-to-int v8, v8

    .line 748
    iput v8, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 749
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 751
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 753
    move-result-object v8

    .line 756
    aget v8, v8, v7

    .line 757
    iget-object v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 759
    invoke-virtual {v12}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 761
    move-result-object v12

    .line 764
    aget v12, v12, v7

    .line 765
    int-to-double v13, v8

    .line 767
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 768
    move-result-wide v16

    .line 771
    mul-double v20, v16, v13

    .line 772
    move-wide/from16 v33, v3

    .line 774
    int-to-double v3, v12

    .line 776
    move-wide/from16 v16, v26

    .line 777
    move-wide/from16 v18, v3

    .line 779
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 781
    move-result-wide v35

    .line 784
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 785
    move-result-wide v16

    .line 788
    mul-double v20, v16, v3

    .line 789
    move-wide/from16 v16, v26

    .line 791
    move-wide/from16 v18, v13

    .line 793
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 795
    move-result-wide v3

    .line 798
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 799
    float-to-double v12, v8

    .line 801
    mul-double v12, v12, v35

    .line 802
    mul-double/2addr v12, v5

    .line 804
    double-to-int v12, v12

    .line 805
    move-object/from16 v13, v23

    .line 806
    iput v12, v13, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 808
    move v12, v15

    .line 810
    float-to-double v14, v8

    .line 811
    mul-double/2addr v14, v3

    .line 812
    mul-double/2addr v14, v5

    .line 813
    double-to-int v14, v14

    .line 814
    iput v14, v13, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 815
    const/4 v14, 0x0

    .line 817
    aget v14, v9, v14

    .line 818
    int-to-float v14, v14

    .line 820
    mul-float/2addr v14, v8

    .line 821
    mul-float/2addr v14, v2

    .line 822
    float-to-int v8, v14

    .line 823
    invoke-virtual {v13, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 824
    const/4 v8, 0x1

    .line 827
    aget v8, v9, v8

    .line 828
    int-to-float v8, v8

    .line 830
    iget v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 831
    mul-float/2addr v8, v14

    .line 833
    mul-float/2addr v8, v2

    .line 834
    float-to-int v8, v8

    .line 835
    iput v8, v13, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 836
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 838
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 840
    move-result-object v8

    .line 843
    aget v8, v8, v1

    .line 844
    iget-object v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 846
    invoke-virtual {v14}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 848
    move-result-object v14

    .line 851
    aget v14, v14, v1

    .line 852
    move-wide/from16 v37, v3

    .line 854
    int-to-double v3, v8

    .line 856
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 857
    move-result-wide v15

    .line 860
    mul-double v20, v15, v3

    .line 861
    int-to-double v14, v14

    .line 863
    move-wide/from16 v16, v26

    .line 864
    move-wide/from16 v18, v14

    .line 866
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 868
    move-result-wide v39

    .line 871
    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->cos(D)D

    .line 872
    move-result-wide v16

    .line 875
    mul-double v20, v16, v14

    .line 876
    move-wide/from16 v16, v26

    .line 878
    move-wide/from16 v18, v3

    .line 880
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 882
    move-result-wide v3

    .line 885
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 886
    float-to-double v14, v8

    .line 888
    mul-double v14, v14, v39

    .line 889
    mul-double/2addr v14, v5

    .line 891
    double-to-int v14, v14

    .line 892
    move-object/from16 v15, v22

    .line 893
    iput v14, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 895
    move v14, v12

    .line 897
    float-to-double v12, v8

    .line 898
    mul-double/2addr v12, v3

    .line 899
    mul-double/2addr v12, v5

    .line 900
    double-to-int v12, v12

    .line 901
    iput v12, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 902
    const/4 v12, 0x2

    .line 904
    aget v12, v9, v12

    .line 905
    int-to-float v12, v12

    .line 907
    mul-float/2addr v12, v8

    .line 908
    mul-float/2addr v12, v2

    .line 909
    float-to-int v8, v12

    .line 910
    invoke-virtual {v15, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 911
    const/4 v8, 0x3

    .line 914
    aget v8, v9, v8

    .line 915
    int-to-float v8, v8

    .line 917
    iget v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 918
    mul-float/2addr v8, v9

    .line 920
    mul-float/2addr v8, v2

    .line 921
    float-to-int v8, v8

    .line 922
    iput v8, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 923
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 925
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 927
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 930
    invoke-virtual {v8, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 932
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 935
    move-object/from16 v12, v23

    .line 937
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 939
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 942
    invoke-virtual {v8, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 944
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 947
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getHourRotateDegree()[[[F

    .line 949
    move-result-object v8

    .line 952
    aget-object v8, v8, v14

    .line 953
    aget-object v8, v8, v28

    .line 955
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 957
    invoke-virtual {v9}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteRotateDegree()[[[F

    .line 959
    move-result-object v9

    .line 962
    aget-object v9, v9, v7

    .line 963
    aget-object v9, v9, v1

    .line 965
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 967
    iget-object v11, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 969
    iput-object v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 971
    move v13, v14

    .line 973
    iput v13, v10, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 974
    const/4 v11, 0x0

    .line 976
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 977
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 979
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 981
    mul-double v24, v24, v11

    .line 983
    iget v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 985
    float-to-double v14, v13

    .line 987
    mul-double v24, v24, v14

    .line 988
    mul-double v14, v24, v5

    .line 990
    double-to-int v14, v14

    .line 992
    mul-double v15, v29, v11

    .line 993
    float-to-double v11, v13

    .line 995
    mul-double/2addr v15, v11

    .line 996
    mul-double v11, v15, v5

    .line 997
    double-to-int v11, v11

    .line 999
    iput v14, v10, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1000
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1002
    const/4 v11, 0x0

    .line 1004
    aget v11, v8, v11

    .line 1005
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1007
    iput v2, v10, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1009
    iget-object v11, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1011
    iget-boolean v11, v11, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1013
    invoke-virtual {v10}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1015
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1018
    iget-object v11, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1020
    iput-object v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1022
    move/from16 v14, v28

    .line 1024
    iput v14, v10, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1026
    const/4 v11, 0x0

    .line 1028
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1029
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1031
    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    .line 1033
    mul-double v31, v31, v11

    .line 1035
    iget v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1037
    float-to-double v14, v13

    .line 1039
    mul-double v31, v31, v14

    .line 1040
    mul-double v14, v31, v5

    .line 1042
    double-to-int v14, v14

    .line 1044
    mul-double v15, v33, v11

    .line 1045
    float-to-double v11, v13

    .line 1047
    mul-double/2addr v15, v11

    .line 1048
    mul-double v11, v15, v5

    .line 1049
    double-to-int v11, v11

    .line 1051
    iput v14, v10, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1052
    iput v11, v10, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1054
    const/4 v11, 0x1

    .line 1056
    aget v8, v8, v11

    .line 1057
    iput v8, v10, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1059
    iput v2, v10, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1061
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1063
    iget-boolean v8, v8, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1065
    invoke-virtual {v10}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1067
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1070
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1072
    iput-object v10, v8, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1074
    iput v7, v8, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1076
    const/4 v7, 0x0

    .line 1078
    iput v7, v8, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1079
    iput v7, v8, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1081
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1083
    mul-double v35, v35, v10

    .line 1085
    iget v7, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1087
    float-to-double v12, v7

    .line 1089
    mul-double v35, v35, v12

    .line 1090
    mul-double v12, v35, v5

    .line 1092
    double-to-int v12, v12

    .line 1094
    mul-double v10, v10, v37

    .line 1095
    float-to-double v13, v7

    .line 1097
    mul-double/2addr v10, v13

    .line 1098
    mul-double/2addr v10, v5

    .line 1099
    double-to-int v7, v10

    .line 1100
    iput v12, v8, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1101
    iput v7, v8, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1103
    const/4 v7, 0x0

    .line 1105
    aget v7, v9, v7

    .line 1106
    iput v7, v8, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1108
    iput v2, v8, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1110
    iget-object v7, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1112
    iget-boolean v7, v7, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1114
    invoke-virtual {v8}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1116
    iget-object v7, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1119
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1121
    iput-object v8, v7, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1123
    iput v1, v7, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1125
    const/4 v1, 0x0

    .line 1127
    iput v1, v7, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1128
    iput v1, v7, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1130
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 1132
    mul-double v39, v39, v10

    .line 1134
    iget v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1136
    float-to-double v12, v1

    .line 1138
    mul-double v39, v39, v12

    .line 1139
    mul-double v12, v39, v5

    .line 1141
    double-to-int v8, v12

    .line 1143
    mul-double/2addr v3, v10

    .line 1144
    float-to-double v10, v1

    .line 1145
    mul-double/2addr v3, v10

    .line 1146
    mul-double/2addr v3, v5

    .line 1147
    double-to-int v1, v3

    .line 1148
    iput v8, v7, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1149
    iput v1, v7, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1151
    const/4 v1, 0x1

    .line 1153
    aget v1, v9, v1

    .line 1154
    iput v1, v7, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1156
    iput v2, v7, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1158
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1160
    iget-boolean v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1162
    invoke-virtual {v7}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1164
    goto/16 :goto_6

    .line 1167
    :cond_c
    move v14, v6

    .line 1169
    move-object v15, v13

    .line 1170
    move v13, v5

    .line 1171
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1172
    const/4 v4, 0x0

    .line 1174
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1175
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1178
    invoke-virtual {v3, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1180
    const/4 v3, -0x2

    .line 1183
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1184
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1186
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1188
    move-result v4

    .line 1191
    int-to-float v4, v4

    .line 1192
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1193
    mul-float/2addr v4, v5

    .line 1195
    mul-float/2addr v4, v2

    .line 1196
    float-to-int v4, v4

    .line 1197
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1198
    const/4 v4, 0x1

    .line 1200
    aget v4, v8, v4

    .line 1201
    int-to-float v4, v4

    .line 1203
    mul-float/2addr v4, v5

    .line 1204
    mul-float/2addr v4, v2

    .line 1205
    float-to-int v4, v4

    .line 1206
    iput v4, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1207
    const/4 v4, 0x0

    .line 1209
    aget v4, v8, v4

    .line 1210
    int-to-float v4, v4

    .line 1212
    mul-float/2addr v4, v5

    .line 1213
    mul-float/2addr v4, v2

    .line 1214
    float-to-int v4, v4

    .line 1215
    invoke-virtual {v10, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1216
    iput v3, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1219
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1221
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1223
    move-result v4

    .line 1226
    int-to-float v4, v4

    .line 1227
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1228
    mul-float/2addr v4, v5

    .line 1230
    mul-float/2addr v4, v2

    .line 1231
    float-to-int v4, v4

    .line 1232
    iput v4, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1233
    const/4 v4, 0x2

    .line 1235
    aget v4, v8, v4

    .line 1236
    int-to-float v4, v4

    .line 1238
    mul-float/2addr v4, v5

    .line 1239
    mul-float/2addr v4, v2

    .line 1240
    float-to-int v4, v4

    .line 1241
    invoke-virtual {v11, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1242
    const/4 v4, 0x3

    .line 1245
    aget v4, v8, v4

    .line 1246
    int-to-float v4, v4

    .line 1248
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1249
    mul-float/2addr v4, v5

    .line 1251
    mul-float/2addr v4, v2

    .line 1252
    float-to-int v4, v4

    .line 1253
    iput v4, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1254
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1256
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1258
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1260
    move-result v4

    .line 1263
    int-to-float v4, v4

    .line 1264
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1265
    mul-float/2addr v4, v5

    .line 1267
    mul-float/2addr v4, v2

    .line 1268
    float-to-int v4, v4

    .line 1269
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1270
    const/4 v4, 0x0

    .line 1272
    aget v4, v9, v4

    .line 1273
    int-to-float v4, v4

    .line 1275
    mul-float/2addr v4, v5

    .line 1276
    mul-float/2addr v4, v2

    .line 1277
    float-to-int v4, v4

    .line 1278
    invoke-virtual {v12, v4}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1279
    const/4 v4, 0x1

    .line 1282
    aget v4, v9, v4

    .line 1283
    int-to-float v4, v4

    .line 1285
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1286
    mul-float/2addr v4, v5

    .line 1288
    mul-float/2addr v4, v2

    .line 1289
    float-to-int v4, v4

    .line 1290
    iput v4, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1291
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1293
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1295
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1297
    move-result v3

    .line 1300
    int-to-float v3, v3

    .line 1301
    iget v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1302
    mul-float/2addr v3, v4

    .line 1304
    mul-float/2addr v3, v2

    .line 1305
    float-to-int v3, v3

    .line 1306
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1307
    const/4 v3, 0x2

    .line 1309
    aget v3, v9, v3

    .line 1310
    int-to-float v3, v3

    .line 1312
    mul-float/2addr v3, v4

    .line 1313
    mul-float/2addr v3, v2

    .line 1314
    float-to-int v3, v3

    .line 1315
    invoke-virtual {v15, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1316
    const/4 v3, 0x3

    .line 1319
    aget v3, v9, v3

    .line 1320
    int-to-float v3, v3

    .line 1322
    iget v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1323
    mul-float/2addr v3, v4

    .line 1325
    mul-float/2addr v3, v2

    .line 1326
    float-to-int v3, v3

    .line 1327
    iput v3, v15, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1328
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1330
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1332
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1335
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1337
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1340
    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1342
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1345
    invoke-virtual {v3, v15}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1347
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1350
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1352
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1354
    const/4 v4, 0x0

    .line 1356
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1357
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1359
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1361
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1363
    iput v13, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1365
    const/4 v4, 0x0

    .line 1367
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1368
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1370
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1372
    iget-boolean v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1374
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1376
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1379
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1381
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1383
    const/4 v4, 0x0

    .line 1385
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1386
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1388
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1390
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1392
    iput v14, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1394
    const/4 v4, 0x0

    .line 1396
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1397
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1399
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1401
    iget-boolean v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1403
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1405
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1408
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1410
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1412
    const/4 v4, 0x0

    .line 1414
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1415
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1417
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1419
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1421
    iput v7, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1423
    const/4 v4, 0x0

    .line 1425
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1426
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1428
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1430
    iget-boolean v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1432
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1434
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1437
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1439
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1441
    const/4 v4, 0x0

    .line 1443
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1444
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1446
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1448
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1450
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1452
    const/4 v1, 0x0

    .line 1454
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1455
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1457
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 1459
    iget-boolean v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->enableDiffusion:Z

    .line 1461
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1463
    :goto_6
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon1View:Landroid/view/View;

    .line 1466
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1468
    move-result-object v1

    .line 1471
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1472
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusClock;->mColon2View:Landroid/view/View;

    .line 1474
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1476
    move-result-object v3

    .line 1479
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1480
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1482
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getColonSize()F

    .line 1484
    move-result v4

    .line 1487
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1488
    mul-float/2addr v4, v5

    .line 1490
    mul-float/2addr v4, v2

    .line 1491
    float-to-int v4, v4

    .line 1492
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1493
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1495
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1497
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1499
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1501
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getColonInterval()F

    .line 1503
    move-result v1

    .line 1506
    iget v0, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1507
    mul-float/2addr v1, v0

    .line 1509
    mul-float/2addr v1, v2

    .line 1510
    float-to-int v0, v1

    .line 1511
    iput v0, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1512
    return-void
    .line 1514
.end method
