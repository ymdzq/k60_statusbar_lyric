.class public Lcom/miui/clock/magazine/MiuiMagazineAClock;
.super Lcom/miui/clock/magazine/MiuiMagazineABase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/magazine/MiuiMagazineABase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/magazine/MiuiMagazineABase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
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

.method public final getMagazinePositionY(Z)I
    .locals 2

    .line 1
    if-eqz p1, :cond_0

    .line 2
    const p1, 0x7f0708fd    # @dimen/miui_magazine_a_clock_notification_margin_top '80.0dp'

    .line 4
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 7
    move-result p1

    .line 10
    const v0, 0x7f0708f5    # @dimen/miui_magazine_a_clock_height '154.0dp'

    .line 11
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 14
    move-result v0

    .line 17
    const v1, 0x7f070917    # @dimen/miui_magazine_a_notification_gallery_offset '2.0dp'

    .line 18
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 21
    move-result p0

    .line 24
    add-int/2addr p1, v0

    .line 25
    :goto_0
    sub-int/2addr p1, p0

    .line 26
    return p1

    .line 27
    :cond_0
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 28
    move-result-object p1

    .line 31
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->getScreenRect(Landroid/content/Context;)Landroid/graphics/Rect;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    .line 36
    move-result p1

    .line 39
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 40
    if-eqz v0, :cond_1

    .line 42
    const v0, 0x7f0708f4    # @dimen/miui_magazine_a_clock_gallery_show_offset '15.0dp'

    .line 44
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 47
    move-result v0

    .line 50
    goto :goto_1

    .line 51
    :cond_1
    const/4 v0, 0x0

    .line 52
    :goto_1
    const v1, 0x7f070916    # @dimen/miui_magazine_a_gallery_offset '6.0dp'

    .line 53
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 56
    move-result v1

    .line 59
    add-int/2addr v1, v0

    .line 60
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 61
    move-result v0

    .line 64
    if-eqz v0, :cond_2

    .line 65
    const v0, 0x7f0708f8    # @dimen/miui_magazine_a_clock_margin_bottom_j18 '215.0dp'

    .line 67
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 70
    move-result p0

    .line 73
    goto :goto_2

    .line 74
    :cond_2
    const v0, 0x7f0708f7    # @dimen/miui_magazine_a_clock_margin_bottom '257.0dp'

    .line 75
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 78
    move-result p0

    .line 81
    :goto_2
    add-int/2addr p0, v1

    .line 82
    goto :goto_0
    .line 83
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

.method public final updateTime()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->updateTime()V

    .line 2
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 11
    const v1, 0x7f070913    # @dimen/miui_magazine_a_clock_width '392.0dp'

    .line 13
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 16
    move-result v1

    .line 19
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 20
    const v1, 0x7f0708f5    # @dimen/miui_magazine_a_clock_height '154.0dp'

    .line 22
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 25
    move-result v1

    .line 28
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 29
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 31
    if-eqz v1, :cond_2

    .line 33
    iget-boolean v1, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 35
    if-eqz v1, :cond_0

    .line 37
    const v1, 0x7f0708f4    # @dimen/miui_magazine_a_clock_gallery_show_offset '15.0dp'

    .line 39
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 42
    move-result v1

    .line 45
    goto :goto_0

    .line 46
    :cond_0
    const/4 v1, 0x0

    .line 47
    :goto_0
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 48
    move-result v2

    .line 51
    if-eqz v2, :cond_1

    .line 52
    const v2, 0x7f0708f8    # @dimen/miui_magazine_a_clock_margin_bottom_j18 '215.0dp'

    .line 54
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 57
    move-result v2

    .line 60
    add-int/2addr v2, v1

    .line 61
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 62
    goto :goto_1

    .line 64
    :cond_1
    const v2, 0x7f0708f7    # @dimen/miui_magazine_a_clock_margin_bottom '257.0dp'

    .line 65
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 68
    move-result v2

    .line 71
    add-int/2addr v2, v1

    .line 72
    iput v2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 73
    :goto_1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 75
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 77
    :cond_2
    return-void
    .line 80
.end method

.method public final updateViewsLayoutParams()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
