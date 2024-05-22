.class public Lcom/miui/clock/classic/ClassicPlusClockSmallView;
.super Lcom/miui/clock/classic/ClassicClockBaseView;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mFirstInit:Z

    return-void
.end method


# virtual methods
.method public getGalleryGravity()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
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
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

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
    const p1, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 5
    move-result p1

    .line 8
    const v0, 0x7f0701d2    # @dimen/classic_time_area_plus_margin_top '2.0dp'

    .line 9
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 12
    move-result v0

    .line 15
    const v1, 0x7f0701c7    # @dimen/classic_plus_area_time_height '86.0dp'

    .line 16
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 19
    move-result v1

    .line 22
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 23
    if-eqz v2, :cond_0

    .line 25
    invoke-virtual {v2}, Landroid/widget/TextView;->getLineHeight()I

    .line 27
    move-result v2

    .line 30
    int-to-float v2, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v2, 0x7f0701cd    # @dimen/classic_text_area_target_height '23.0dp'

    .line 33
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 36
    move-result v2

    .line 39
    :goto_0
    const v3, 0x7f0701c4    # @dimen/classic_gallery_area_margin_top_single_line '10.0dp'

    .line 40
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 43
    move-result p0

    .line 46
    add-float/2addr p1, v2

    .line 47
    add-float/2addr p1, v0

    .line 48
    add-float/2addr p1, v1

    .line 49
    add-float/2addr p1, p0

    .line 50
    const/high16 p0, 0x3f000000    # 0.5f

    .line 51
    add-float/2addr p1, p0

    .line 53
    float-to-int p0, p1

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

.method public getTopMargin()F
    .locals 1

    .line 1
    const v0, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

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

.method public final isPlus()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

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
    iget v0, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mScreenWidth:I

    .line 15
    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mScreenWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->onScreenSizeChange()V

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
    iput v0, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mScreenWidth:I

    .line 15
    const v0, 0x7f0a099a    # @id/time_view

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 24
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    return-void
    .line 28
.end method

.method public final onScreenSizeChange()V
    .locals 5

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
    const v1, 0x7f0701d2    # @dimen/classic_time_area_plus_margin_top '2.0dp'

    .line 24
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 27
    move-result v1

    .line 30
    const v2, 0x7f0a00dd    # @id/area1

    .line 31
    invoke-virtual {v0, v2, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 34
    const v1, 0x7f0701c4    # @dimen/classic_gallery_area_margin_top_single_line '10.0dp'

    .line 37
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 40
    move-result v1

    .line 43
    const v4, 0x7f0a0541    # @id/magazine_info_container

    .line 44
    invoke-virtual {v0, v4, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 47
    const v1, 0x7f0701c7    # @dimen/classic_plus_area_time_height '86.0dp'

    .line 50
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 53
    move-result v1

    .line 56
    invoke-virtual {v0, v2, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 57
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 60
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 63
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->onScreenSizeChange()V

    .line 65
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 68
    if-eqz v0, :cond_0

    .line 70
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 72
    invoke-static {p0, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 74
    :cond_0
    return-void
    .line 77
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mFirstInit:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mFirstInit:Z

    .line 10
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->onScreenSizeChange()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->updateTime()V

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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateTime()V

    .line 2
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 5
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 7
    invoke-static {v1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getHourInt(Lmiuix/pickerwidget/date/Calendar;Z)I

    .line 9
    move-result v0

    .line 12
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 13
    const/16 v2, 0x14

    .line 15
    invoke-virtual {v1, v2}, Lmiuix/pickerwidget/date/Calendar;->get(I)I

    .line 17
    move-result v1

    .line 20
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicPlusClockSmallView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 21
    iget-object v3, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 23
    iget-boolean p0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 25
    invoke-static {v0, p0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 27
    move-result-object p0

    .line 30
    const/4 v0, 0x1

    .line 31
    invoke-static {v1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    filled-new-array {p0, v0}, [Ljava/lang/Object;

    .line 36
    move-result-object p0

    .line 39
    const v0, 0x7f130489    # @string/format_hour_minute '%1$s:%2$s'

    .line 40
    invoke-virtual {v3, v0, p0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 47
    return-void
    .line 50
.end method
