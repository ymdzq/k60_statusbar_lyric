.class public Lcom/miui/clock/magazine/MiuiMagazineBClock;
.super Lcom/miui/clock/magazine/MiuiMagazineBBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineBBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineBBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
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

.method public getTopMargin()F
    .locals 1

    .line 1
    const v0, 0x7f070924    # @dimen/miui_magazine_b_clock_margin_top '97.0dp'

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

.method public final updateViewsLayoutParams()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;->mClockContainer:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 10
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 18
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    const v1, 0x7f070925    # @dimen/miui_magazine_b_clock_margin_top_j18 '117.0dp'

    .line 26
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 29
    move-result v1

    .line 32
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 33
    const v1, 0x7f070923    # @dimen/miui_magazine_b_clock_margin_start_j18 '20.0dp'

    .line 35
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 38
    move-result v1

    .line 41
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 42
    const v1, 0x7f070921    # @dimen/miui_magazine_b_clock_margin_end_j18 '20.0dp'

    .line 45
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 48
    move-result v1

    .line 51
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 52
    goto :goto_0

    .line 55
    :cond_0
    const v1, 0x7f070924    # @dimen/miui_magazine_b_clock_margin_top '97.0dp'

    .line 56
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 59
    move-result v1

    .line 62
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 63
    const v1, 0x7f070922    # @dimen/miui_magazine_b_clock_margin_start '32.0dp'

    .line 65
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 68
    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 72
    const v1, 0x7f070920    # @dimen/miui_magazine_b_clock_margin_end '32.0dp'

    .line 75
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 78
    move-result v1

    .line 81
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 82
    :goto_0
    const v1, 0x7f07091f    # @dimen/miui_magazine_b_clock_height '43.0dp'

    .line 85
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 88
    move-result v1

    .line 91
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 92
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineBBase;->mClockContainer:Landroid/view/ViewGroup;

    .line 94
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 96
    :cond_1
    return-void
    .line 99
.end method
