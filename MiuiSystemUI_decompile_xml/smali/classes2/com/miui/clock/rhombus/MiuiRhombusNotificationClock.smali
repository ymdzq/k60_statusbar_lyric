.class public Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;
.super Lcom/miui/clock/rhombus/MiuiRhombusBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mColonView:Landroid/widget/ImageView;

.field public mDateContainer:Landroid/view/ViewGroup;

.field public mDateText:Landroid/widget/TextView;

.field public mMagazineGroup:Landroid/view/ViewGroup;

.field public mTimeContainer:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 52
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 54
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

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
    const/16 v1, 0x9

    .line 6
    if-eq v0, v1, :cond_2

    .line 8
    const/16 v1, 0xc

    .line 10
    if-eq v0, v1, :cond_1

    .line 12
    const/16 v1, 0xd

    .line 14
    if-eq v0, v1, :cond_0

    .line 16
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 18
    move-result-object p0

    .line 21
    return-object p0

    .line 22
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 23
    return-object p0

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 26
    return-object p0

    .line 28
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 29
    return-object p0
    .line 31
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
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 6
    move-result p0

    .line 9
    invoke-static {p0}, Lcom/miui/clock/utils/ColorUtils;->blendColor(I)I

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    return p0
    .line 16
.end method

.method public final getMagazinePositionY(Z)I
    .locals 3

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_0

    .line 6
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 10
    move-result p1

    .line 13
    if-nez p1, :cond_0

    .line 14
    const p1, 0x3f4ccccd    # 0.8f

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const/high16 p1, 0x3f800000    # 1.0f

    .line 20
    :goto_0
    const v0, 0x7f070989    # @dimen/miui_rhombus_small_clock_margin_top '80.0dp'

    .line 22
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 25
    move-result v0

    .line 28
    const v1, 0x7f070980    # @dimen/miui_rhombus_clock_notification_date_height '23.0dp'

    .line 29
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 32
    move-result v1

    .line 35
    add-int/2addr v1, v0

    .line 36
    const v0, 0x7f07098a    # @dimen/miui_rhombus_small_clock_time_container_margin_top '8.0dp'

    .line 37
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 40
    move-result v0

    .line 43
    add-int/2addr v0, v1

    .line 44
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 45
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerHeight()I

    .line 47
    move-result v1

    .line 50
    int-to-float v1, v1

    .line 51
    iget v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 52
    mul-float/2addr v1, v2

    .line 54
    mul-float/2addr v1, p1

    .line 55
    float-to-int p1, v1

    .line 56
    add-int/2addr v0, p1

    .line 57
    const p1, 0x7f070982    # @dimen/miui_rhombus_clock_notification_gallery_margin_top '16.0dp'

    .line 58
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 61
    move-result p0

    .line 64
    add-int/2addr p0, v0

    .line 65
    return p0
    .line 66
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
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a028e    # @id/date_container

    .line 16
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/view/ViewGroup;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 25
    const v0, 0x7f0a098e    # @id/time_container

    .line 27
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/view/ViewGroup;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 36
    const v0, 0x7f0a020d    # @id/colon

    .line 38
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    check-cast v0, Landroid/widget/ImageView;

    .line 45
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 47
    const v0, 0x7f0a0541    # @id/magazine_info_container

    .line 49
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Landroid/view/ViewGroup;

    .line 56
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 58
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->updateTime()V

    .line 60
    return-void
    .line 63
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->clearPassBlur()V

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
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->setClockPalette(IZLjava/util/Map;Z)V

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
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 18
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 20
    move-result p1

    .line 23
    if-eqz p1, :cond_3

    .line 24
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 26
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 28
    move-result p1

    .line 31
    if-eqz p1, :cond_3

    .line 32
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 34
    iget p3, p1, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 36
    if-nez p3, :cond_1

    .line 38
    const/4 p3, -0x1

    .line 40
    :cond_1
    iget-boolean p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 41
    if-nez p1, :cond_2

    .line 43
    const p1, 0x7f07097a    # @dimen/miui_rhombus_clock_blur_radius '100.0dp'

    .line 45
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 48
    move-result p1

    .line 51
    invoke-static {p1, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 52
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 55
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 57
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 59
    move-result p4

    .line 62
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 63
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 66
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 68
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 70
    move-result p4

    .line 73
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 74
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 77
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 79
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 81
    move-result p4

    .line 84
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 85
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 88
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 90
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 92
    move-result p4

    .line 95
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 96
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 99
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 101
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 103
    move-result p4

    .line 106
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 107
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 110
    iget-object p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 112
    invoke-virtual {p4}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 114
    move-result p4

    .line 117
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 118
    :cond_3
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->updateTime()V

    .line 121
    :cond_4
    :goto_0
    return-void
    .line 124
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
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->clearPassBlur()V

    .line 12
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->updateTime()V

    .line 15
    return-void
    .line 18
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
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setMagazineInfoVisible(Z)V

    .line 2
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 5
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mMagazineGroup:Landroid/view/ViewGroup;

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
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->updateTime()V

    .line 18
    return-void
    .line 21
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
    .locals 13

    .line 1
    invoke-super {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 5
    if-nez v0, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 16
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 18
    move-result v0

    .line 21
    if-nez v0, :cond_1

    .line 22
    const v0, 0x3f4ccccd    # 0.8f

    .line 24
    goto :goto_0

    .line 27
    :cond_1
    const/high16 v0, 0x3f800000    # 1.0f

    .line 28
    :goto_0
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 30
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 32
    move-result-object v1

    .line 35
    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 36
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 38
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 44
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 46
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 48
    move-result-object v3

    .line 51
    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 52
    iget-object v4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 54
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 56
    move-result-object v4

    .line 59
    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 60
    iget-object v5, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 62
    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 64
    move-result-object v5

    .line 67
    check-cast v5, Landroid/widget/LinearLayout$LayoutParams;

    .line 68
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 70
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 72
    move-result-object v6

    .line 75
    sget-object v7, Lcom/miui/clock/module/BaseFontStyle$Style;->SKPupok:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 76
    const/4 v8, 0x3

    .line 78
    const/4 v9, 0x2

    .line 79
    const/4 v10, 0x1

    .line 80
    const/4 v11, 0x0

    .line 81
    if-ne v6, v7, :cond_2

    .line 82
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 84
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 86
    move-result-object v6

    .line 89
    iget-object v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 90
    aget v7, v7, v11

    .line 92
    aget v6, v6, v7

    .line 94
    int-to-float v6, v6

    .line 96
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 97
    mul-float/2addr v6, v7

    .line 99
    mul-float/2addr v6, v0

    .line 100
    const v7, 0x3ed1eb85    # 0.41f

    .line 101
    mul-float/2addr v6, v7

    .line 104
    float-to-int v6, v6

    .line 105
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 106
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 108
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 110
    move-result-object v6

    .line 113
    iget-object v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 114
    aget v12, v12, v10

    .line 116
    aget v6, v6, v12

    .line 118
    int-to-float v6, v6

    .line 120
    iget v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 121
    mul-float/2addr v6, v12

    .line 123
    mul-float/2addr v6, v0

    .line 124
    mul-float/2addr v6, v7

    .line 125
    float-to-int v6, v6

    .line 126
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 127
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 129
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 131
    move-result-object v6

    .line 134
    iget-object v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 135
    aget v12, v12, v9

    .line 137
    aget v6, v6, v12

    .line 139
    int-to-float v6, v6

    .line 141
    iget v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 142
    mul-float/2addr v6, v12

    .line 144
    mul-float/2addr v6, v0

    .line 145
    mul-float/2addr v6, v7

    .line 146
    float-to-int v6, v6

    .line 147
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 148
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 150
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 152
    move-result-object v6

    .line 155
    iget-object v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 156
    aget v12, v12, v8

    .line 158
    aget v6, v6, v12

    .line 160
    int-to-float v6, v6

    .line 162
    iget v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 163
    mul-float/2addr v6, v12

    .line 165
    mul-float/2addr v6, v0

    .line 166
    mul-float/2addr v6, v7

    .line 167
    float-to-int v6, v6

    .line 168
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 169
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 171
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColonResourceHeight()I

    .line 173
    move-result v6

    .line 176
    int-to-float v6, v6

    .line 177
    iget v12, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 178
    mul-float/2addr v6, v12

    .line 180
    mul-float/2addr v6, v0

    .line 181
    mul-float/2addr v6, v7

    .line 182
    float-to-int v6, v6

    .line 183
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 184
    goto :goto_1

    .line 186
    :cond_2
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 187
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerHeight()I

    .line 189
    move-result v6

    .line 192
    int-to-float v6, v6

    .line 193
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 194
    mul-float/2addr v6, v7

    .line 196
    mul-float/2addr v6, v0

    .line 197
    float-to-int v6, v6

    .line 198
    iput v6, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 199
    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 201
    iput v6, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 203
    iput v6, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 205
    iput v6, v5, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 207
    :goto_1
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 209
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getNotificationCenterXOffset()[F

    .line 211
    move-result-object v6

    .line 214
    iget-object v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 215
    aget v7, v7, v10

    .line 217
    aget v6, v6, v7

    .line 219
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 221
    mul-float/2addr v6, v7

    .line 223
    mul-float/2addr v6, v0

    .line 224
    float-to-int v6, v6

    .line 225
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 226
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 229
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getNotificationCenterXOffset()[F

    .line 231
    move-result-object v6

    .line 234
    iget-object v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 235
    aget v7, v7, v9

    .line 237
    aget v6, v6, v7

    .line 239
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 241
    mul-float/2addr v6, v7

    .line 243
    mul-float/2addr v6, v0

    .line 244
    float-to-int v6, v6

    .line 245
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginEnd(I)V

    .line 246
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 249
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 251
    move-result v6

    .line 254
    int-to-float v6, v6

    .line 255
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 256
    mul-float/2addr v6, v7

    .line 258
    mul-float/2addr v6, v0

    .line 259
    float-to-int v6, v6

    .line 260
    invoke-virtual {v2, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 261
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 264
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 266
    move-result v6

    .line 269
    int-to-float v6, v6

    .line 270
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 271
    mul-float/2addr v6, v7

    .line 273
    mul-float/2addr v6, v0

    .line 274
    float-to-int v6, v6

    .line 275
    invoke-virtual {v3, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 276
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 279
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 281
    move-result v6

    .line 284
    int-to-float v6, v6

    .line 285
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 286
    mul-float/2addr v6, v7

    .line 288
    mul-float/2addr v6, v0

    .line 289
    float-to-int v6, v6

    .line 290
    invoke-virtual {v4, v6}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 291
    iget-object v6, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 294
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerMarginOffset()I

    .line 296
    move-result v6

    .line 299
    int-to-float v6, v6

    .line 300
    iget v7, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 301
    mul-float/2addr v6, v7

    .line 303
    mul-float/2addr v6, v0

    .line 304
    float-to-int v0, v6

    .line 305
    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 306
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 309
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 311
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 314
    invoke-virtual {v0, v2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 316
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 319
    invoke-virtual {v0, v3}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 321
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 324
    invoke-virtual {v0, v4}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 326
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 329
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 331
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 334
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 336
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 338
    const v3, 0x7f130742    # @string/miui_lock_screen_date 'EEE, MMM dd'

    .line 340
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 343
    move-result-object v3

    .line 346
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 347
    move-result-object v1

    .line 350
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 351
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 354
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 356
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 358
    move-result v1

    .line 361
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 362
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateText:Landroid/widget/TextView;

    .line 365
    const v1, 0x7f07098b    # @dimen/miui_rhombus_small_date_text_size '17.0dp'

    .line 367
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 370
    move-result v1

    .line 373
    int-to-float v1, v1

    .line 374
    invoke-virtual {v0, v11, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 375
    iget-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 378
    if-eqz v0, :cond_3

    .line 380
    const/16 v0, 0x20

    .line 382
    goto :goto_2

    .line 384
    :cond_3
    const/16 v0, 0x10

    .line 385
    :goto_2
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 387
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 389
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 391
    move-result-wide v3

    .line 394
    or-int/lit8 v0, v0, 0xc

    .line 395
    or-int/lit8 v0, v0, 0x40

    .line 397
    invoke-static {v2, v3, v4, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 399
    move-result-object v0

    .line 402
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 403
    iget-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 406
    if-eqz v0, :cond_4

    .line 408
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 410
    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 412
    goto :goto_4

    .line 415
    :cond_4
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 416
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 418
    aget v1, v1, v11

    .line 420
    if-lez v1, :cond_5

    .line 422
    move v1, v11

    .line 424
    goto :goto_3

    .line 425
    :cond_5
    const/16 v1, 0x8

    .line 426
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 428
    :goto_4
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mDateContainer:Landroid/view/ViewGroup;

    .line 431
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 433
    move-result-object v0

    .line 436
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 437
    const v1, 0x7f070989    # @dimen/miui_rhombus_small_clock_margin_top '80.0dp'

    .line 439
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 442
    move-result v1

    .line 445
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 446
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 448
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 450
    move-result-object v0

    .line 453
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 454
    const v1, 0x7f07098a    # @dimen/miui_rhombus_small_clock_time_container_margin_top '8.0dp'

    .line 456
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 459
    move-result v1

    .line 462
    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 463
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 465
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 467
    iput-object v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 469
    const/4 v1, 0x0

    .line 471
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 472
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 474
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 476
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 478
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 480
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 482
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 484
    move-result v2

    .line 487
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 488
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 490
    aget v2, v2, v11

    .line 492
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 494
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 496
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 499
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 501
    iput-object v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 503
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 505
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 507
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 509
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 511
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 513
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 515
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 517
    move-result v2

    .line 520
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 521
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 523
    aget v2, v2, v10

    .line 525
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 527
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 529
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 532
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 534
    iput-object v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 536
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 538
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 540
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 542
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 544
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 546
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 548
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 550
    move-result v2

    .line 553
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 554
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 556
    aget v2, v2, v9

    .line 558
    iput v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 560
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 562
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 565
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 567
    iput-object v2, v0, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 569
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 571
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 573
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 575
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 577
    iput v11, v0, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 579
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 581
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 583
    move-result v1

    .line 586
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 587
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 589
    aget v1, v1, v8

    .line 591
    iput v1, v0, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 593
    invoke-virtual {v0}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 595
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 598
    move-result-object v0

    .line 601
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 602
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getSmallColonResource()I

    .line 604
    move-result v1

    .line 607
    sget-object v2, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 608
    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 610
    move-result-object v0

    .line 613
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mColonView:Landroid/widget/ImageView;

    .line 614
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 616
    invoke-virtual {v2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 618
    move-result v2

    .line 621
    invoke-static {v0, v2}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 622
    move-result-object v0

    .line 625
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 626
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusNotificationClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 629
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 631
    move-result-object v0

    .line 634
    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 635
    const v1, 0x7f070982    # @dimen/miui_rhombus_clock_notification_gallery_margin_top '16.0dp'

    .line 637
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 640
    move-result p0

    .line 643
    iput p0, v0, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 644
    return-void
    .line 646
.end method
