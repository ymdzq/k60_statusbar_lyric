.class public Lcom/miui/clock/classic/ClassicPlusClockView;
.super Lcom/miui/clock/classic/ClassicClockBaseView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mFirstInit:Z

.field public mNeedShowTimeView2:Z

.field public mScreenWidth:I

.field public mSecondLine:Landroidx/constraintlayout/widget/Group;

.field public mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

.field public mTimeView:Lcom/miui/clock/MiuiTextGlassView;

.field public mTimeView2:Lcom/miui/clock/MiuiTextGlassView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mFirstInit:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/classic/ClassicClockBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mFirstInit:Z

    return-void
.end method


# virtual methods
.method public final clearPassBlur()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

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
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearContainerPassBlur(Landroid/view/View;)V

    .line 29
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 32
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 34
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 37
    invoke-static {v0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 39
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 42
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 44
    :cond_2
    return-void
    .line 47
.end method

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
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result v0

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 9
    move-result-object p0

    .line 12
    return-object p0

    .line 13
    :pswitch_0
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 14
    return-object p0

    .line 16
    :pswitch_1
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 17
    return-object p0

    .line 19
    :pswitch_2
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 20
    return-object p0

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
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
    const v0, 0x7f0701cb    # @dimen/classic_text_area_margin_top_has_face '80.0dp'

    .line 2
    invoke-virtual {p0, v0}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 5
    move-result v0

    .line 8
    const v1, 0x7f0701d2    # @dimen/classic_time_area_plus_margin_top '2.0dp'

    .line 9
    invoke-virtual {p0, v1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 12
    move-result v1

    .line 15
    const v2, 0x7f0701c7    # @dimen/classic_plus_area_time_height '86.0dp'

    .line 16
    invoke-virtual {p0, v2}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 19
    move-result v2

    .line 22
    iget-object v3, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 23
    if-eqz v3, :cond_0

    .line 25
    invoke-virtual {v3}, Landroid/widget/TextView;->getLineHeight()I

    .line 27
    move-result v3

    .line 30
    int-to-float v3, v3

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const v3, 0x7f0701cd    # @dimen/classic_text_area_target_height '23.0dp'

    .line 33
    invoke-virtual {p0, v3}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 36
    move-result v3

    .line 39
    :goto_0
    if-nez p1, :cond_2

    .line 40
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mNeedShowTimeView2:Z

    .line 42
    if-nez p1, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    const p1, 0x7f0701c3    # @dimen/classic_gallery_area_margin_top_double_line '92.0dp'

    .line 47
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 50
    move-result p0

    .line 53
    goto :goto_2

    .line 54
    :cond_2
    :goto_1
    const p1, 0x7f0701c4    # @dimen/classic_gallery_area_margin_top_single_line '10.0dp'

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->getDimensionFloat(I)F

    .line 58
    move-result p0

    .line 61
    :goto_2
    add-float/2addr v0, v3

    .line 62
    add-float/2addr v0, v1

    .line 63
    add-float/2addr v0, v2

    .line 64
    add-float/2addr v0, p0

    .line 65
    const/high16 p0, 0x3f000000    # 0.5f

    .line 66
    add-float/2addr v0, p0

    .line 68
    float-to-int p0, v0

    .line 69
    return p0
    .line 70
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
    iget v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mScreenWidth:I

    .line 15
    if-eq v0, p1, :cond_0

    .line 17
    iput p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mScreenWidth:I

    .line 19
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->onScreenSizeChange()V

    .line 21
    :cond_0
    return-void
    .line 24
.end method

.method public final onFinishInflate()V
    .locals 2

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
    iput v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mScreenWidth:I

    .line 15
    const v0, 0x7f0a099a    # @id/time_view

    .line 17
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 20
    move-result-object v0

    .line 23
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 24
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    const v0, 0x7f0a099b    # @id/time_view2

    .line 28
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 31
    move-result-object v0

    .line 34
    check-cast v0, Lcom/miui/clock/MiuiTextGlassView;

    .line 35
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 37
    const/4 v1, 0x1

    .line 39
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiTextGlassView;->setSameNumberWidth(Z)V

    .line 40
    const v0, 0x7f0a0841    # @id/second_line

    .line 43
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 46
    move-result-object v0

    .line 49
    check-cast v0, Landroidx/constraintlayout/widget/Group;

    .line 50
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mSecondLine:Landroidx/constraintlayout/widget/Group;

    .line 52
    const v0, 0x7f0a0991    # @id/time_desc

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 57
    move-result-object v0

    .line 60
    check-cast v0, Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 61
    iput-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 63
    return-void
    .line 65
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final onLanguageChanged()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/clock/classic/ClassicClockBaseView;->onLanguageChanged()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 9
    invoke-static {v1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 11
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 14
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 16
    invoke-static {v0, p0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onScreenSizeChange()V
    .locals 6

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
    const v1, 0x7f0701c6    # @dimen/classic_plus_area_time2_margin_top '82.0dp'

    .line 37
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 40
    move-result v1

    .line 43
    const v4, 0x7f0a00de    # @id/area2

    .line 44
    invoke-virtual {v0, v4, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 47
    const v1, 0x7f0701c4    # @dimen/classic_gallery_area_margin_top_single_line '10.0dp'

    .line 50
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 53
    move-result v1

    .line 56
    const v5, 0x7f0a0541    # @id/magazine_info_container

    .line 57
    invoke-virtual {v0, v5, v3, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->setMargin(III)V

    .line 60
    const v1, 0x7f0701c7    # @dimen/classic_plus_area_time_height '86.0dp'

    .line 63
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 66
    move-result v3

    .line 69
    invoke-virtual {v0, v2, v3}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 70
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 73
    move-result v1

    .line 76
    invoke-virtual {v0, v4, v1}, Landroidx/constraintlayout/widget/ConstraintSet;->constrainHeight(II)V

    .line 77
    invoke-virtual {v0, p0}, Landroidx/constraintlayout/widget/ConstraintSet;->applyTo(Landroidx/constraintlayout/widget/ConstraintLayout;)V

    .line 80
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 83
    invoke-virtual {v0}, Lcom/miui/clock/classic/ClassicTextAreaView;->onScreenSizeChange()V

    .line 85
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 88
    if-eqz v0, :cond_0

    .line 90
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 92
    invoke-static {v1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 94
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 97
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 99
    invoke-static {v0, p0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 101
    :cond_0
    return-void
    .line 104
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockPalette(IZLjava/util/Map;Z)V

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
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 14
    if-eqz p1, :cond_5

    .line 16
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 18
    move-result p1

    .line 21
    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 24
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 26
    move-result p1

    .line 29
    if-eqz p1, :cond_5

    .line 30
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 32
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->displayType:I

    .line 34
    invoke-static {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 36
    move-result p1

    .line 39
    const/4 p3, -0x1

    .line 40
    if-nez p1, :cond_3

    .line 41
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 43
    iget p4, p1, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 45
    if-nez p4, :cond_1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    move p3, p4

    .line 50
    :goto_0
    iget-boolean p1, p1, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 51
    if-nez p1, :cond_2

    .line 53
    const p1, 0x7f0707e5    # @dimen/miui_classic_plus_clock_blur_radius '30.0dp'

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 58
    move-result p1

    .line 61
    invoke-static {p1, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 62
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mTextArea:Lcom/miui/clock/classic/ClassicTextAreaView;

    .line 65
    iget-object p4, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 67
    invoke-virtual {p4}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 69
    move-result p4

    .line 72
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 73
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 76
    iget-object p4, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 78
    invoke-virtual {p4}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 80
    move-result p4

    .line 83
    invoke-static {p3, p4, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 84
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 87
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 89
    invoke-virtual {p0}, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->getPrimaryColor()I

    .line 91
    move-result p0

    .line 94
    invoke-static {p3, p0, p1, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 95
    goto :goto_2

    .line 98
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 99
    iget p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 101
    if-nez p1, :cond_4

    .line 103
    goto :goto_1

    .line 105
    :cond_4
    move p3, p1

    .line 106
    :goto_1
    iput p3, p0, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 107
    :cond_5
    :goto_2
    return-void
    .line 109
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mFirstInit:Z

    .line 5
    const/4 v0, 0x0

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iput-boolean v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mFirstInit:Z

    .line 10
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->onScreenSizeChange()V

    .line 12
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->clearPassBlur()V

    .line 15
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 18
    iget p1, p1, Lcom/miui/clock/module/MiuiClassicClockInfoBase;->classicLine2:I

    .line 20
    const/16 v1, 0x48

    .line 22
    if-ne p1, v1, :cond_1

    .line 24
    const/4 p1, 0x1

    .line 26
    goto :goto_0

    .line 27
    :cond_1
    move p1, v0

    .line 28
    :goto_0
    iput-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mNeedShowTimeView2:Z

    .line 29
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 31
    invoke-virtual {v1, p1}, Lcom/miui/clock/MiuiTextGlassView;->setSameNumberWidth(Z)V

    .line 33
    iget-boolean p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mNeedShowTimeView2:Z

    .line 36
    const v1, 0x7f0a0541    # @id/magazine_info_container

    .line 38
    if-eqz p1, :cond_2

    .line 41
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mSecondLine:Landroidx/constraintlayout/widget/Group;

    .line 43
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 45
    const p1, 0x7f0701c3    # @dimen/classic_gallery_area_margin_top_double_line '92.0dp'

    .line 48
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 51
    move-result p1

    .line 54
    invoke-virtual {p0, v1, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 55
    goto :goto_1

    .line 58
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mSecondLine:Landroidx/constraintlayout/widget/Group;

    .line 59
    const/16 v0, 0x8

    .line 61
    invoke-virtual {p1, v0}, Landroidx/constraintlayout/widget/Group;->setVisibility(I)V

    .line 63
    const p1, 0x7f0701c4    # @dimen/classic_gallery_area_margin_top_single_line '10.0dp'

    .line 66
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 69
    move-result p1

    .line 72
    invoke-virtual {p0, v1, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->setMarginTop(II)V

    .line 73
    :goto_1
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 76
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 78
    invoke-static {p1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 80
    iget-object p1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 83
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicClockBaseView;->mClockStyleInfo:Lcom/miui/clock/module/MiuiClassicClockInfoBase;

    .line 85
    invoke-static {p1, v0}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->setClassicTimeStyle(Lcom/miui/clock/MiuiTextGlassView;Lcom/miui/clock/module/MiuiClassicClockInfoBase;)V

    .line 87
    invoke-virtual {p0}, Lcom/miui/clock/classic/ClassicPlusClockView;->updateTime()V

    .line 90
    return-void
    .line 93
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

.method public final updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/classic/ClassicClockBaseView;->updateColor(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/clock/classic/ClassicPlusClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 8
    return-void
    .line 11
.end method

.method public final updateFaceUnlockIconState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 6

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
    iget-boolean v2, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mNeedShowTimeView2:Z

    .line 21
    const/4 v3, 0x1

    .line 23
    if-eqz v2, :cond_0

    .line 24
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 26
    invoke-static {v0, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 32
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 35
    invoke-static {v1, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 37
    move-result-object v1

    .line 40
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 41
    goto :goto_0

    .line 44
    :cond_0
    iget-object v2, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView:Lcom/miui/clock/MiuiTextGlassView;

    .line 45
    iget-object v4, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 47
    iget-boolean v5, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 49
    invoke-static {v0, v5}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-static {v1, v3}, Lcom/miui/clock/utils/ClassicClockTimeUtils;->getTimeString(IZ)Ljava/lang/String;

    .line 55
    move-result-object v1

    .line 58
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 59
    move-result-object v0

    .line 62
    const v1, 0x7f130489    # @string/format_hour_minute '%1$s:%2$s'

    .line 63
    invoke-virtual {v4, v1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 66
    move-result-object v0

    .line 69
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeView2:Lcom/miui/clock/MiuiTextGlassView;

    .line 73
    const-string v1, ""

    .line 75
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    :goto_0
    iget-boolean v0, p0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 80
    if-eqz v0, :cond_1

    .line 82
    const/16 v0, 0x20

    .line 84
    goto :goto_1

    .line 86
    :cond_1
    const/16 v0, 0x10

    .line 87
    :goto_1
    iget-object v1, p0, Lcom/miui/clock/classic/ClassicPlusClockView;->mTimeDesc:Lcom/miui/clock/ConstraintLayoutAccessibilityHelper;

    .line 89
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 91
    move-result-object p0

    .line 94
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 95
    move-result-wide v2

    .line 98
    or-int/lit8 v0, v0, 0xc

    .line 99
    or-int/lit8 v0, v0, 0x40

    .line 101
    invoke-static {p0, v2, v3, v0}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 103
    move-result-object p0

    .line 106
    invoke-virtual {v1, p0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 107
    return-void
    .line 110
.end method
