.class public Lcom/miui/clock/classic/ClassicClockSmallView;
.super Lcom/miui/clock/classic/ClassicClockBaseView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFirstInit:Z

.field public mScreenWidth:I

.field public mTimeView:Lcom/miui/clock/MiuiTextGlassView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mFirstInit:Z

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
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x12

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/16 v1, 0x13

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    return-object p0

    .line 18
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 19
    return-object p0

    .line 21
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 22
    return-object p0
    .line 24
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
    .locals 4

    .line 1
    const p1, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 5
    move-result p1

    .line 8
    const v0, 0x7f0701a3    # @dimen/classic_area_location_height '60.0dp'

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 12
    move-result v0

    .line 15
    const v1, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 16
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 19
    move-result v1

    .line 22
    const v2, 0x7f0701c8    # @dimen/classic_signature_area_margin_top '14.0dp'

    .line 23
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 26
    move-result v2

    .line 29
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 30
    if-eqz v3, :cond_0

    .line 32
    invoke-virtual {v3}, Lcom/miui/clock/classic/ClassicTextAreaView;->getViewHeight()I

    .line 34
    move-result p0

    .line 37
    int-to-float p0, p0

    .line 38
    goto :goto_0

    .line 39
    :cond_0
    const v3, 0x7f0701cd    # @dimen/classic_text_area_target_height '23.0dp'

    .line 40
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 43
    move-result p0

    .line 46
    :goto_0
    add-float/2addr v1, p0

    .line 47
    add-float/2addr v1, p1

    .line 48
    add-float/2addr v1, v0

    .line 49
    add-float/2addr v1, v2

    .line 50
    const/high16 p0, 0x3f000000    # 0.5f

    .line 51
    add-float/2addr v1, p0

    .line 53
    float-to-int p0, v1

    .line 54
    return p0
    .line 55
.end method

.method public bridge synthetic getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
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

.method public final isPlus()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result p1

    .line 14
    iget v0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mScreenWidth:I

    .line 15
    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mScreenWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockSmallView;->onScreenSizeChange()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->onFinishInflate()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    .line 11
    move-result v0

    .line 14
    iput v0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mScreenWidth:I

    .line 15
    const v0, 0x7f0a099a    # @id/time_view

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 24
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    return-void
    .line 28
.end method

.method public final onScreenSizeChange()V
    .locals 9

    .line 1
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintSet;

    .line 2
    invoke-direct {v0}, Landroidx/constraintlayout/widget/ConstraintSet;-><init>()V

    .line 4
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->clone(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 7
    const v1, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 10
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 13
    move-result v1

    .line 16
    const v2, 0x7f0a096f    # @id/text_area

    .line 17
    const/4 v3, 0x3

    .line 20
    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 21
    const v1, 0x7f0701cc    # @dimen/classic_text_area_small_margin_start_end '27.0dp'

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 27
    move-result v4

    .line 30
    const/4 v5, 0x6

    .line 31
    invoke-virtual {v0, v2, v5, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 32
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 35
    move-result v4

    .line 38
    const/4 v6, 0x7

    .line 39
    invoke-virtual {v0, v2, v6, v4}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 40
    const v2, 0x7f0701a0    # @dimen/classic_area2_margin_top '6.0dp'

    .line 43
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 46
    move-result v2

    .line 49
    const v4, 0x7f0a00dd    # @id/area1

    .line 50
    invoke-virtual {v0, v4, v3, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 53
    const v2, 0x7f0701d4    # @dimen/classic_time_area_small_margin_start_end '24.0dp'

    .line 56
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 59
    move-result v7

    .line 62
    const v8, 0x7f0a099a    # @id/time_view

    .line 63
    invoke-virtual {v0, v8, v5, v7}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 66
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 69
    move-result v2

    .line 72
    invoke-virtual {v0, v8, v6, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 73
    const v2, 0x7f0701a1    # @dimen/classic_area_2_3_4_content_margin_bottom '1.0dp'

    .line 76
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 79
    move-result v2

    .line 82
    const/4 v7, 0x4

    .line 83
    invoke-virtual {v0, v8, v7, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 84
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 87
    move-result v2

    .line 90
    const v7, 0x7f0a0541    # @id/magazine_info_container

    .line 91
    invoke-virtual {v0, v7, v5, v2}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 94
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 97
    move-result v1

    .line 100
    invoke-virtual {v0, v7, v6, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 101
    const v1, 0x7f0701c2    # @dimen/classic_gallery_area_margin_top '2.0dp'

    .line 104
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 107
    move-result v1

    .line 110
    invoke-virtual {v0, v7, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 111
    const v1, 0x7f0701a3    # @dimen/classic_area_location_height '60.0dp'

    .line 114
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 117
    move-result v1

    .line 120
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 121
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 124
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 127
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->onScreenSizeChange()V

    .line 129
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 132
    if-eqz v0, :cond_0

    .line 134
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 136
    invoke-static {p0, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 138
    :cond_0
    return-void
    .line 141
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 7

    .line 1
    move-object v0, p1

    .line 2
    check-cast v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 3
    iget v1, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 5
    invoke-static {v1}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isHealthType(I)Z

    .line 7
    move-result v1

    .line 10
    iget v2, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 11
    invoke-static {v2}, Lcom/miui/clock/module/ClassicContentStyle$Time;->isWeatherType(I)Z

    .line 13
    move-result v2

    .line 16
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 17
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 19
    move-result v4

    .line 22
    const-string v5, "com.mi.health"

    .line 23
    invoke-static {v3, v5, v4}, Lcom/miui/clock/utils/DataUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 25
    move-result v3

    .line 28
    iget-object v4, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 29
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 31
    move-result v5

    .line 34
    const-string v6, "com.miui.weather2"

    .line 35
    invoke-static {v4, v6, v5}, Lcom/miui/clock/utils/DataUtils;->isAppInstalledForUser(Landroid/content/Context;Ljava/lang/String;I)Z

    .line 37
    move-result v4

    .line 40
    invoke-static {}, Lcom/miui/clock/utils/DateFormatUtils;->updateCurrentUserId()I

    .line 41
    move-result v5

    .line 44
    if-eqz v1, :cond_0

    .line 45
    if-nez v3, :cond_0

    .line 47
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 49
    invoke-static {v1, v5}, Lcom/miui/clock/module/ClockBean;->getClassicDefaultLine1(Landroid/content/Context;I)I

    .line 51
    move-result v1

    .line 54
    iput v1, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    if-eqz v2, :cond_1

    .line 58
    if-nez v4, :cond_1

    .line 60
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 62
    invoke-static {v1, v5}, Lcom/miui/clock/module/ClockBean;->getClassicDefaultLine1(Landroid/content/Context;I)I

    .line 64
    move-result v1

    .line 67
    iput v1, v0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine1:I

    .line 68
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 70
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mFirstInit:Z

    .line 73
    if-eqz p1, :cond_2

    .line 75
    const/4 p1, 0x0

    .line 77
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mFirstInit:Z

    .line 78
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockSmallView;->onScreenSizeChange()V

    .line 80
    :cond_2
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicClockSmallView;->updateTime()V

    .line 83
    return-void
    .line 86
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

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateTime()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 5
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 7
    iget-object v2, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 9
    iget-boolean v3, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 11
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 13
    iget p0, p0, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 15
    const/4 v4, 0x1

    .line 17
    invoke-static {v1, v2, v3, p0, v4}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getClassicTime(Landroid/content/Context;Lmiuix/pickerwidget/date/Calendar;ZIZ)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    return-void
    .line 25
.end method
