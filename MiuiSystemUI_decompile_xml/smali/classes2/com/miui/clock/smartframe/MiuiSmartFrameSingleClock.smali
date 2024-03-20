.class public Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;
.super Lcom/miui/clock/smartframe/MiuiSmartFrameBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBatteryContainer:Landroid/widget/FrameLayout;

.field public mClockContainer:Landroid/view/View;

.field public mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

.field public mImagePath:Landroid/widget/ImageView;

.field public mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

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
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->BATTERY_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->LINE:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mImagePath:Landroid/widget/ImageView;

    .line 13
    return-object p0

    .line 15
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

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

.method public bridge synthetic getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final onFinishInflate()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mClockContainer:Landroid/view/View;

    .line 12
    const v0, 0x7f0a042d    # @id/image_path

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/ImageView;

    .line 21
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mImagePath:Landroid/widget/ImageView;

    .line 23
    const v0, 0x7f0a01fc    # @id/clock_battery_container

    .line 25
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Landroid/widget/FrameLayout;

    .line 32
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 34
    const v0, 0x7f0a040d    # @id/hour_space

    .line 36
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 43
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 45
    const v0, 0x7f0a05c0    # @id/minute_space

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    check-cast v0, Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 54
    iput-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 56
    return-void
    .line 58
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 5
    if-eqz p1, :cond_1

    .line 7
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->updateTime()V

    .line 16
    :cond_1
    :goto_0
    return-void
    .line 19
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
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->updateTime()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->updateViewsLayoutParams()V

    .line 5
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 8
    if-eqz v0, :cond_5

    .line 10
    const-string v0, "#D7D7D7"

    .line 12
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 14
    move-result v0

    .line 17
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 18
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 20
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 23
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 25
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 28
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 30
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 33
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 35
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 38
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 40
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 43
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mClockInfo:Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;

    .line 48
    if-eqz v0, :cond_5

    .line 50
    iget v1, v0, Lcom/miui/clock/smartframe/MiuiSmartFrameClockBaseInfo;->mClockStyle:I

    .line 52
    const/4 v2, 0x2

    .line 54
    if-eq v1, v2, :cond_4

    .line 55
    const/4 v2, 0x3

    .line 57
    if-eq v1, v2, :cond_3

    .line 58
    const/4 v2, 0x4

    .line 60
    if-eq v1, v2, :cond_2

    .line 61
    const/4 v2, 0x5

    .line 63
    if-eq v1, v2, :cond_1

    .line 64
    const/4 v2, 0x6

    .line 66
    if-eq v1, v2, :cond_0

    .line 67
    const v1, 0x7f08131f    # @drawable/miui_smart_frame_path_1 'res/drawable/miui_smart_frame_path_1.xml'

    .line 69
    goto :goto_0

    .line 72
    :cond_0
    const v1, 0x7f081324    # @drawable/miui_smart_frame_path_6 'res/drawable/miui_smart_frame_path_6.xml'

    .line 73
    goto :goto_0

    .line 76
    :cond_1
    const v1, 0x7f081323    # @drawable/miui_smart_frame_path_5 'res/drawable/miui_smart_frame_path_5.xml'

    .line 77
    goto :goto_0

    .line 80
    :cond_2
    const v1, 0x7f081322    # @drawable/miui_smart_frame_path_4 'res/drawable/miui_smart_frame_path_4.xml'

    .line 81
    goto :goto_0

    .line 84
    :cond_3
    const v1, 0x7f081321    # @drawable/miui_smart_frame_path_3 'res/drawable/miui_smart_frame_path_3.xml'

    .line 85
    goto :goto_0

    .line 88
    :cond_4
    const v1, 0x7f081320    # @drawable/miui_smart_frame_path_2 'res/drawable/miui_smart_frame_path_2.xml'

    .line 89
    :goto_0
    iget v0, v0, Lcom/miui/clock/module/ClockStyleInfo;->secondaryColor:I

    .line 92
    invoke-static {v0}, Lcom/miui/clock/utils/GlobalColorUtils;->transformSmartFrameAodColor(I)I

    .line 94
    move-result v0

    .line 97
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 98
    move-result-object v2

    .line 101
    sget-object v3, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 102
    invoke-virtual {v2, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 104
    move-result-object v1

    .line 107
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mImagePath:Landroid/widget/ImageView;

    .line 108
    invoke-static {v1, v0}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 110
    move-result-object v0

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 114
    :cond_5
    return-void
    .line 117
.end method

.method public final updateViewsLayoutParams()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mClockContainer:Landroid/view/View;

    .line 2
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 8
    const v1, 0x7f0709bf    # @dimen/miui_smart_frame_single_clock_width '282.0dp'

    .line 10
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 13
    move-result v1

    .line 16
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 17
    const v1, 0x7f0709b5    # @dimen/miui_smart_frame_single_clock_height '355.0dp'

    .line 19
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 22
    move-result v1

    .line 25
    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 26
    sget-boolean v1, Lcom/miui/clock/utils/DeviceConfig;->FOLD_DEVICE:Z

    .line 28
    const/4 v2, 0x0

    .line 30
    if-eqz v1, :cond_1

    .line 31
    iget-object v1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 33
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 35
    move-result-object v1

    .line 38
    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 39
    move-result-object v1

    .line 42
    iget v1, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 43
    const/16 v3, 0x258

    .line 45
    if-lt v1, v3, :cond_0

    .line 47
    const/4 v1, 0x1

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    move v1, v2

    .line 51
    :goto_0
    if-eqz v1, :cond_1

    .line 52
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 54
    const/4 v1, -0x1

    .line 56
    iput v1, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 57
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 59
    const v1, 0x7f0709b7    # @dimen/miui_smart_frame_single_clock_margin_start '32.0dp'

    .line 61
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 64
    move-result v1

    .line 67
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 68
    goto :goto_1

    .line 71
    :cond_1
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 72
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 74
    iput v2, v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 76
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 78
    :goto_1
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mHourSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 81
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 83
    move-result-object v1

    .line 86
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 87
    const v3, 0x7f0709b6    # @dimen/miui_smart_frame_single_clock_hour_margin_top '164.0dp'

    .line 89
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 92
    move-result v3

    .line 95
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 96
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mMinuteSpace:Lcom/miui/clock/utils/BaseLineSpaceView;

    .line 98
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 100
    move-result-object v1

    .line 103
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 104
    const v3, 0x7f0709ba    # @dimen/miui_smart_frame_single_clock_minute_margin_top '236.0dp'

    .line 106
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 109
    move-result v3

    .line 112
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 113
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 115
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 117
    move-result-object v1

    .line 120
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 121
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 123
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 125
    move-result-object v3

    .line 128
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 129
    iget-object v4, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 131
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 133
    move-result-object v4

    .line 136
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 137
    iget-object v5, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 139
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 141
    move-result-object v5

    .line 144
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 145
    const v6, 0x7f0709bc    # @dimen/miui_smart_frame_single_clock_time_margin_start '0.0dp'

    .line 147
    invoke-virtual {p0, v6}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 150
    move-result v6

    .line 153
    const v7, 0x7f0709bb    # @dimen/miui_smart_frame_single_clock_time_letter_space '63.0dp'

    .line 154
    invoke-virtual {p0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 157
    move-result v7

    .line 160
    const v8, 0x7f0709b8    # @dimen/miui_smart_frame_single_clock_minute1_margin_start '153.0dp'

    .line 161
    invoke-virtual {p0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 164
    move-result v8

    .line 167
    const v9, 0x7f0709b9    # @dimen/miui_smart_frame_single_clock_minute2_margin_start '216.0dp'

    .line 168
    invoke-virtual {p0, v9}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 171
    move-result v9

    .line 174
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isRTL()Z

    .line 175
    move-result v10

    .line 178
    if-eqz v10, :cond_2

    .line 179
    invoke-virtual {v1, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 181
    invoke-virtual {v3, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 184
    invoke-virtual {v4, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 187
    invoke-virtual {v5, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 190
    goto :goto_2

    .line 193
    :cond_2
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 194
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 197
    invoke-virtual {v4, v8}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 200
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 203
    :goto_2
    iget-object v6, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 206
    invoke-virtual {v6, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 208
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 211
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 213
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 216
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 218
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 223
    const v1, 0x7f0709bd    # @dimen/miui_smart_frame_single_clock_time_text_size '56.0dp'

    .line 226
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 229
    move-result v1

    .line 232
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour1Text:Landroid/widget/TextView;

    .line 233
    int-to-float v1, v1

    .line 235
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 236
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeHour2Text:Landroid/widget/TextView;

    .line 239
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 241
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute1Text:Landroid/widget/TextView;

    .line 244
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 246
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mTimeMinute2Text:Landroid/widget/TextView;

    .line 249
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 251
    const v1, 0x7f0709b4    # @dimen/miui_smart_frame_single_clock_date_text_size '16.0dp'

    .line 254
    invoke-virtual {p0, v1}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 257
    move-result v1

    .line 260
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 261
    int-to-float v1, v1

    .line 263
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 264
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 267
    invoke-virtual {v3, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 269
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 272
    invoke-virtual {v1}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 274
    move-result-object v1

    .line 277
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 278
    iget-object v2, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 280
    invoke-virtual {v2}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 282
    move-result-object v2

    .line 285
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 286
    const v3, 0x7f0709b2    # @dimen/miui_smart_frame_single_clock_date_margin_start '45.0dp'

    .line 288
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 291
    move-result v3

    .line 294
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 295
    const v3, 0x7f0709b3    # @dimen/miui_smart_frame_single_clock_date_margin_top '170.51dp'

    .line 298
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 301
    move-result v4

    .line 304
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 305
    const v4, 0x7f0709be    # @dimen/miui_smart_frame_single_clock_week_margin_start '6.0dp'

    .line 307
    invoke-virtual {p0, v4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 310
    move-result v4

    .line 313
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 314
    invoke-virtual {p0, v3}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 317
    move-result v3

    .line 320
    iput v3, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 321
    iget-object v3, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mWeekText:Landroid/widget/TextView;

    .line 323
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 325
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameBase;->mDateText:Landroid/widget/TextView;

    .line 328
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 330
    iget-object v1, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 333
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 335
    move-result-object v1

    .line 338
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 339
    const v2, 0x7f0709b1    # @dimen/miui_smart_frame_single_clock_battery_margin_top '167.69dp'

    .line 341
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 344
    move-result v2

    .line 347
    iput v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 348
    const v2, 0x7f0709b0    # @dimen/miui_smart_frame_single_clock_battery_margin_end '4.02dp'

    .line 350
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 353
    move-result v2

    .line 356
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 357
    iget-object v2, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mBatteryContainer:Landroid/widget/FrameLayout;

    .line 360
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 362
    iget-object p0, p0, Lcom/miui/clock/smartframe/MiuiSmartFrameSingleClock;->mClockContainer:Landroid/view/View;

    .line 365
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 367
    return-void
    .line 370
.end method
