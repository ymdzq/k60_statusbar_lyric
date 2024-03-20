.class public Lcom/miui/clock/rhombus/MiuiRhombusBase;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/clock/MiuiClockController$IClockView;


# instance fields
.field public dm:Landroid/util/DisplayMetrics;

.field public m24HourFormat:Z

.field public mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public mChoosePaletteType:I

.field public final mContext:Landroid/content/Context;

.field public final mCurrentTimeArray:[I

.field public mDensity:F

.field public mDensityDpi:I

.field public mHour1View:Lcom/miui/clock/MiuiClockNumberView;

.field public mHour2View:Lcom/miui/clock/MiuiClockNumberView;

.field public mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

.field public mLanguage:Ljava/lang/String;

.field public mMagazineInfoVisible:Z

.field public mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

.field public mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

.field public mPalette:Ljava/util/Map;

.field public mTextDark:Z

.field public mWallpaperSupportDepth:Z

.field public style:Lcom/miui/clock/module/BaseFontStyle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    const/4 p2, 0x4

    new-array p2, p2, [I

    .line 4
    iput-object p2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 5
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    invoke-static {p1}, Lcom/miui/clock/utils/DateFormatUtils;->is24HourFormat(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V
    .locals 9

    .line 1
    array-length v0, p2

    .line 2
    const/4 v1, 0x2

    .line 3
    if-ge v0, v1, :cond_0

    .line 4
    goto/16 :goto_0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 8
    const/4 v2, 0x0

    .line 10
    aget v3, v0, v2

    .line 11
    const/4 v4, 0x1

    .line 13
    aget v5, v0, v4

    .line 14
    aget v6, v0, v1

    .line 16
    const/4 v7, 0x3

    .line 18
    aget v0, v0, v7

    .line 19
    iget-object v8, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 21
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getHourOffset()[[[I

    .line 23
    move-result-object v8

    .line 26
    aget-object v3, v8, v3

    .line 27
    aget-object v3, v3, v5

    .line 29
    iget-object v5, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 31
    invoke-virtual {v5}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteOffset()[[[I

    .line 33
    move-result-object v5

    .line 36
    aget-object v5, v5, v6

    .line 37
    aget-object v0, v5, v0

    .line 39
    iget-object v5, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 41
    invoke-virtual {v5}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 43
    move-result-object v5

    .line 46
    sget-object v6, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 47
    if-ne v5, v6, :cond_1

    .line 49
    aput v2, p2, v2

    .line 51
    aput v2, p2, v4

    .line 53
    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 56
    move-result p1

    .line 59
    if-eq p1, v4, :cond_5

    .line 60
    if-eq p1, v1, :cond_4

    .line 62
    if-eq p1, v7, :cond_3

    .line 64
    const/4 v3, 0x4

    .line 66
    if-eq p1, v3, :cond_2

    .line 67
    aput v2, p2, v2

    .line 69
    aput v2, p2, v4

    .line 71
    goto :goto_0

    .line 73
    :cond_2
    aget p1, v0, v1

    .line 74
    int-to-float p1, p1

    .line 76
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 77
    mul-float/2addr p1, p0

    .line 79
    float-to-int p1, p1

    .line 80
    aput p1, p2, v2

    .line 81
    aget p1, v0, v7

    .line 83
    int-to-float p1, p1

    .line 85
    mul-float/2addr p1, p0

    .line 86
    float-to-int p0, p1

    .line 87
    aput p0, p2, v4

    .line 88
    goto :goto_0

    .line 90
    :cond_3
    aget p1, v0, v2

    .line 91
    int-to-float p1, p1

    .line 93
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 94
    mul-float/2addr p1, p0

    .line 96
    float-to-int p1, p1

    .line 97
    aput p1, p2, v2

    .line 98
    aget p1, v0, v4

    .line 100
    int-to-float p1, p1

    .line 102
    mul-float/2addr p1, p0

    .line 103
    float-to-int p0, p1

    .line 104
    aput p0, p2, v4

    .line 105
    goto :goto_0

    .line 107
    :cond_4
    aget p1, v3, v1

    .line 108
    int-to-float p1, p1

    .line 110
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 111
    mul-float/2addr p1, p0

    .line 113
    float-to-int p1, p1

    .line 114
    aput p1, p2, v2

    .line 115
    aget p1, v3, v7

    .line 117
    int-to-float p1, p1

    .line 119
    mul-float/2addr p1, p0

    .line 120
    float-to-int p0, p1

    .line 121
    aput p0, p2, v4

    .line 122
    goto :goto_0

    .line 124
    :cond_5
    aget p1, v3, v2

    .line 125
    int-to-float p1, p1

    .line 127
    iget p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 128
    mul-float/2addr p1, p0

    .line 130
    float-to-int p1, p1

    .line 131
    aput p1, p2, v2

    .line 132
    aget p1, v3, v4

    .line 134
    int-to-float p1, p1

    .line 136
    mul-float/2addr p1, p0

    .line 137
    float-to-int p0, p1

    .line 138
    aput p0, p2, v4

    .line 139
    :goto_0
    return-void
    .line 141
.end method

.method public final getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    const/4 v3, 0x1

    .line 7
    aget v4, v0, v3

    .line 8
    const/4 v5, 0x2

    .line 10
    aget v6, v0, v5

    .line 11
    const/4 v7, 0x3

    .line 13
    aget v0, v0, v7

    .line 14
    iget-object v8, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 16
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getHourRotateDegree()[[[F

    .line 18
    move-result-object v8

    .line 21
    aget-object v2, v8, v2

    .line 22
    aget-object v2, v2, v4

    .line 24
    iget-object v4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 26
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteRotateDegree()[[[F

    .line 28
    move-result-object v4

    .line 31
    aget-object v4, v4, v6

    .line 32
    aget-object v0, v4, v0

    .line 34
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 36
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->enableRotate()Z

    .line 38
    move-result p0

    .line 41
    if-eqz p0, :cond_4

    .line 42
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 44
    move-result p0

    .line 47
    if-eq p0, v3, :cond_3

    .line 48
    if-eq p0, v5, :cond_2

    .line 50
    if-eq p0, v7, :cond_1

    .line 52
    const/4 p1, 0x4

    .line 54
    if-eq p0, p1, :cond_0

    .line 55
    goto :goto_0

    .line 57
    :cond_0
    aget p0, v0, v3

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    aget p0, v0, v1

    .line 61
    goto :goto_1

    .line 63
    :cond_2
    aget p0, v2, v3

    .line 64
    goto :goto_1

    .line 66
    :cond_3
    aget p0, v2, v1

    .line 67
    goto :goto_1

    .line 69
    :cond_4
    :goto_0
    const/4 p0, 0x0

    .line 70
    :goto_1
    return p0
    .line 71
.end method

.method public getClockVisibleHeight()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getHeight()I

    .line 2
    move-result p0

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    .line 7
    move-result p0

    .line 10
    int-to-float p0, p0

    .line 11
    return p0
    .line 12
.end method

.method public final getDimen(I)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 6
    move-result p1

    .line 9
    int-to-float p1, p1

    .line 10
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 15
    move-result p0

    .line 18
    mul-float/2addr p0, p1

    .line 19
    float-to-int p0, p0

    .line 20
    return p0
    .line 21
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

.method public getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 2
    move-result p1

    .line 5
    if-eqz p1, :cond_4

    .line 6
    const/4 v0, 0x1

    .line 8
    if-eq p1, v0, :cond_3

    .line 9
    const/4 v0, 0x2

    .line 11
    if-eq p1, v0, :cond_2

    .line 12
    const/4 v0, 0x3

    .line 14
    if-eq p1, v0, :cond_1

    .line 15
    const/4 v0, 0x4

    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    const/4 p0, 0x0

    .line 20
    return-object p0

    .line 21
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 22
    return-object p0

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 25
    return-object p0

    .line 27
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 28
    return-object p0

    .line 30
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 31
    :cond_4
    return-object p0
    .line 33
.end method

.method public bridge synthetic getLocalCity()Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public bridge synthetic getMagazineColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationClockBottom()I
    .locals 4

    .line 1
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {v0}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    const v0, 0x3f4ccccd    # 0.8f

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 20
    :goto_0
    const v1, 0x7f070989    # @dimen/miui_rhombus_small_clock_margin_top '80.0dp'

    .line 22
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 25
    move-result v1

    .line 28
    const v2, 0x7f070980    # @dimen/miui_rhombus_clock_notification_date_height '23.0dp'

    .line 29
    invoke-virtual {p0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 32
    move-result v2

    .line 35
    add-int/2addr v2, v1

    .line 36
    const v1, 0x7f07098a    # @dimen/miui_rhombus_small_clock_time_container_margin_top '8.0dp'

    .line 37
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 40
    move-result v1

    .line 43
    add-int/2addr v1, v2

    .line 44
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 45
    invoke-virtual {v2}, Lcom/miui/clock/module/BaseFontStyle;->getSmallClockInnerHeight()I

    .line 47
    move-result v2

    .line 50
    int-to-float v2, v2

    .line 51
    iget v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 52
    mul-float/2addr v2, v3

    .line 54
    mul-float/2addr v2, v0

    .line 55
    float-to-int v0, v2

    .line 56
    add-int/2addr v1, v0

    .line 57
    const v0, 0x7f070db9    # @dimen/notification_margin_top '20.0dp'

    .line 58
    invoke-virtual {p0, v0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 61
    move-result v0

    .line 64
    add-int/2addr v0, v1

    .line 65
    iget-boolean v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 66
    if-eqz v1, :cond_1

    .line 68
    const v1, 0x7f070982    # @dimen/miui_rhombus_clock_notification_gallery_margin_top '16.0dp'

    .line 70
    invoke-virtual {p0, v1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 73
    move-result v1

    .line 76
    const v2, 0x7f070981    # @dimen/miui_rhombus_clock_notification_gallery_height '20.0dp'

    .line 77
    invoke-virtual {p0, v2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 80
    move-result p0

    .line 83
    add-int/2addr p0, v1

    .line 84
    add-int/2addr v0, p0

    .line 85
    :cond_1
    return v0
    .line 86
.end method

.method public bridge synthetic getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final getRhombusClockHeight(Lcom/miui/clock/module/ClockViewType;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    const/4 v3, 0x1

    .line 7
    aget v4, v0, v3

    .line 8
    const/4 v5, 0x2

    .line 10
    aget v6, v0, v5

    .line 11
    const/4 v7, 0x3

    .line 13
    aget v0, v0, v7

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p1

    .line 19
    if-eq p1, v3, :cond_3

    .line 20
    if-eq p1, v5, :cond_2

    .line 22
    if-eq p1, v7, :cond_1

    .line 24
    const/4 v2, 0x4

    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 30
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 32
    move-result-object p0

    .line 35
    aget v1, p0, v0

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 39
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 41
    move-result-object p0

    .line 44
    aget v1, p0, v6

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 48
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 50
    move-result-object p0

    .line 53
    aget v1, p0, v4

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 57
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 59
    move-result-object p0

    .line 62
    aget v1, p0, v2

    .line 63
    :goto_0
    return v1
    .line 65
.end method

.method public final getRhombusClockWidth(Lcom/miui/clock/module/ClockViewType;)I
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 2
    const/4 v1, 0x0

    .line 4
    aget v2, v0, v1

    .line 5
    const/4 v3, 0x1

    .line 7
    aget v4, v0, v3

    .line 8
    const/4 v5, 0x2

    .line 10
    aget v6, v0, v5

    .line 11
    const/4 v7, 0x3

    .line 13
    aget v0, v0, v7

    .line 14
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 16
    move-result p1

    .line 19
    if-eq p1, v3, :cond_3

    .line 20
    if-eq p1, v5, :cond_2

    .line 22
    if-eq p1, v7, :cond_1

    .line 24
    const/4 v2, 0x4

    .line 26
    if-eq p1, v2, :cond_0

    .line 27
    goto :goto_0

    .line 29
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 30
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 32
    move-result-object p0

    .line 35
    aget v1, p0, v0

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 39
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 41
    move-result-object p0

    .line 44
    aget v1, p0, v6

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 48
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 50
    move-result-object p0

    .line 53
    aget v1, p0, v4

    .line 54
    goto :goto_0

    .line 56
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 57
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 59
    move-result-object p0

    .line 62
    aget v1, p0, v2

    .line 63
    :goto_0
    return v1
    .line 65
.end method

.method public final getRotateRhombusClockInfo(Lcom/miui/clock/module/ClockViewType;)Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/module/BaseFontStyle;->enableRotate()Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    return-object p0

    .line 11
    :cond_0
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 12
    const/4 v1, 0x0

    .line 14
    aget v2, v0, v1

    .line 15
    const/4 v3, 0x1

    .line 17
    aget v4, v0, v3

    .line 18
    const/4 v5, 0x2

    .line 20
    aget v6, v0, v5

    .line 21
    const/4 v7, 0x3

    .line 23
    aget v0, v0, v7

    .line 24
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    .line 26
    move-result p1

    .line 29
    if-eq p1, v3, :cond_4

    .line 30
    if-eq p1, v5, :cond_3

    .line 32
    if-eq p1, v7, :cond_2

    .line 34
    const/4 v2, 0x4

    .line 36
    if-eq p1, v2, :cond_1

    .line 37
    move p1, v1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 41
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 43
    move-result-object p1

    .line 46
    aget v1, p1, v0

    .line 47
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 49
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 51
    move-result-object p1

    .line 54
    aget p1, p1, v0

    .line 55
    goto :goto_0

    .line 57
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 58
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 60
    move-result-object p1

    .line 63
    aget v1, p1, v6

    .line 64
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 66
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 68
    move-result-object p1

    .line 71
    aget p1, p1, v6

    .line 72
    goto :goto_0

    .line 74
    :cond_3
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 75
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 77
    move-result-object p1

    .line 80
    aget v1, p1, v4

    .line 81
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 83
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 85
    move-result-object p1

    .line 88
    aget p1, p1, v4

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 92
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 94
    move-result-object p1

    .line 97
    aget v1, p1, v2

    .line 98
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 100
    invoke-virtual {p1}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 102
    move-result-object p1

    .line 105
    aget p1, p1, v2

    .line 106
    :goto_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 108
    invoke-virtual {p0}, Lcom/miui/clock/module/BaseFontStyle;->getMaxRotateDegree()F

    .line 110
    move-result p0

    .line 113
    float-to-double v2, p0

    .line 114
    invoke-static {v2, v3}, Ljava/lang/Math;->toRadians(D)D

    .line 115
    move-result-wide v2

    .line 118
    int-to-double v0, v1

    .line 119
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 120
    move-result-wide v4

    .line 123
    mul-double v8, v4, v0

    .line 124
    int-to-double p0, p1

    .line 126
    move-wide v4, v2

    .line 127
    move-wide v6, p0

    .line 128
    invoke-static/range {v4 .. v9}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 129
    move-result-wide v10

    .line 132
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    .line 133
    move-result-wide v4

    .line 136
    mul-double v8, v4, p0

    .line 137
    move-wide v4, v2

    .line 139
    move-wide v6, v0

    .line 140
    invoke-static/range {v4 .. v9}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 141
    move-result-wide p0

    .line 144
    new-instance v0, Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;

    .line 145
    invoke-direct {v0}, Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;-><init>()V

    .line 147
    double-to-int v1, v10

    .line 150
    iput v1, v0, Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;->maxWidth:I

    .line 151
    double-to-int p0, p0

    .line 153
    iput p0, v0, Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;->maxHeight:I

    .line 154
    return-object v0
    .line 156
.end method

.method public getStyle()Lcom/miui/clock/module/BaseFontStyle;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 2
    return-object p0
    .line 4
.end method

.method public bridge synthetic getTimeView()Landroid/widget/TextView;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getTopMargin()F
    .locals 0

    .line 1
    const/4 p0, 0x0

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

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 5
    iget v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensityDpi:I

    .line 7
    if-eq v1, v0, :cond_0

    .line 9
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->dm:Landroid/util/DisplayMetrics;

    .line 11
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    .line 13
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 18
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 19
    move-result v2

    .line 22
    mul-float/2addr v2, v1

    .line 23
    iput v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 24
    iput v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensityDpi:I

    .line 26
    :cond_0
    iget-object p1, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 28
    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 30
    move-result-object p1

    .line 33
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 34
    move-result v0

    .line 37
    if-nez v0, :cond_1

    .line 38
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mLanguage:Ljava/lang/String;

    .line 40
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result v0

    .line 45
    if-nez v0, :cond_1

    .line 46
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mLanguage:Ljava/lang/String;

    .line 48
    :cond_1
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 50
    return-void
    .line 53
.end method

.method public onFinishInflate()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    .line 9
    move-result-object v0

    .line 12
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->dm:Landroid/util/DisplayMetrics;

    .line 13
    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    .line 15
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 17
    move-result-object v1

    .line 20
    invoke-static {v1}, Lcom/miui/clock/utils/DeviceConfig;->calculateScale(Landroid/content/Context;)F

    .line 21
    move-result v1

    .line 24
    mul-float/2addr v1, v0

    .line 25
    iput v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 26
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 28
    invoke-direct {v0}, Lmiuix/pickerwidget/date/Calendar;-><init>()V

    .line 30
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    const v0, 0x7f0a0409    # @id/hour1

    .line 35
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 38
    move-result-object v0

    .line 41
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 42
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 44
    const v0, 0x7f0a040a    # @id/hour2

    .line 46
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 49
    move-result-object v0

    .line 52
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 53
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 55
    const v0, 0x7f0a05bc    # @id/minute1

    .line 57
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 60
    move-result-object v0

    .line 63
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 64
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 66
    const v0, 0x7f0a05bd    # @id/minute2

    .line 68
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 71
    move-result-object v0

    .line 74
    check-cast v0, Lcom/miui/clock/MiuiClockNumberView;

    .line 75
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 77
    return-void
    .line 79
.end method

.method public final onWindowVisibilityChanged(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->onWindowVisibilityChanged(I)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 7
    invoke-static {p1}, Lcom/miui/clock/utils/DateFormatUtils;->is24HourFormat(Landroid/content/Context;)Z

    .line 9
    move-result p1

    .line 12
    iget-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 13
    if-eq p1, v0, :cond_0

    .line 15
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 17
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 19
    :cond_0
    return-void
    .line 22
.end method

.method public setClockAlpha(F)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/widget/RelativeLayout;->setAlpha(F)V

    .line 2
    return-void
    .line 5
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 5

    .line 1
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mPalette:Ljava/util/Map;

    .line 6
    iput-boolean p4, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mWallpaperSupportDepth:Z

    .line 8
    const-string p4, "secondary15"

    .line 10
    const-string v0, "secondary90"

    .line 12
    const-string v1, "secondary20"

    .line 14
    if-eqz p3, :cond_0

    .line 16
    new-instance v2, Ljava/lang/StringBuilder;

    .line 18
    const-string v3, "secondary20="

    .line 20
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 22
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 29
    const-string v3, ",secondary90="

    .line 32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 41
    const-string v3, ",secondary15="

    .line 44
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    move-result-object v3

    .line 52
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 53
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 56
    move-result-object v2

    .line 59
    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "null"

    .line 61
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    .line 63
    const-string/jumbo v4, "setClockPalette: type = "

    .line 65
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 71
    const-string p1, ", textDark = "

    .line 74
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 79
    const-string p1, ", palette = "

    .line 82
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    const-string p1, "ClockPalette"

    .line 87
    invoke-static {v3, v2, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 89
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 92
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 94
    move-result p1

    .line 97
    if-eqz p1, :cond_1

    .line 98
    return-void

    .line 100
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 101
    if-eqz p1, :cond_b

    .line 103
    iput-object p3, p1, Lcom/miui/clock/module/ClockStyleInfo;->mPalette:Ljava/util/Map;

    .line 105
    iput-boolean p2, p1, Lcom/miui/clock/module/ClockStyleInfo;->mInfoTextDark:Z

    .line 107
    const/4 p1, -0x1

    .line 109
    if-nez p2, :cond_2

    .line 110
    move v1, p1

    .line 112
    goto :goto_1

    .line 113
    :cond_2
    if-eqz p3, :cond_3

    .line 114
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    move-result-object v2

    .line 119
    if-eqz v2, :cond_3

    .line 120
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 125
    check-cast v1, Ljava/lang/Integer;

    .line 126
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 128
    move-result v1

    .line 131
    goto :goto_1

    .line 132
    :cond_3
    iget-object v1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 133
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 135
    move-result v1

    .line 138
    :goto_1
    const-string v2, "#EE3434"

    .line 139
    invoke-static {v2}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 141
    move-result v2

    .line 144
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 145
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 147
    move-result v3

    .line 150
    if-eqz v3, :cond_8

    .line 151
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 153
    invoke-static {v3}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 155
    move-result v3

    .line 158
    if-eqz v3, :cond_6

    .line 159
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 161
    iget v3, v3, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->displayType:I

    .line 163
    invoke-static {v3}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 165
    move-result v3

    .line 168
    if-nez v3, :cond_6

    .line 169
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 171
    invoke-virtual {v3, p1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 173
    if-eqz p2, :cond_5

    .line 176
    if-eqz p3, :cond_5

    .line 178
    const-string p1, "neutral-variant30"

    .line 180
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 182
    move-result-object v3

    .line 185
    if-eqz v3, :cond_5

    .line 186
    iget-object p2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 188
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 190
    move-result-object p1

    .line 193
    check-cast p1, Ljava/lang/Integer;

    .line 194
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 196
    move-result p1

    .line 199
    if-eqz p1, :cond_4

    .line 200
    iput p1, p2, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 202
    goto :goto_2

    .line 204
    :cond_4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 205
    goto :goto_2

    .line 208
    :cond_5
    if-nez p2, :cond_7

    .line 209
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 211
    const p2, -0x464647

    .line 213
    iput p2, p1, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 216
    goto :goto_2

    .line 218
    :cond_6
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 219
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 221
    :cond_7
    :goto_2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 224
    iput v1, p1, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 226
    :cond_8
    if-eqz p3, :cond_9

    .line 228
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    move-result-object p1

    .line 233
    if-eqz p1, :cond_9

    .line 234
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 236
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object p2

    .line 241
    check-cast p2, Ljava/lang/Integer;

    .line 242
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 244
    move-result p2

    .line 247
    iput p2, p1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mLightMinuteColor:I

    .line 248
    :cond_9
    if-eqz p3, :cond_a

    .line 250
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    move-result-object p1

    .line 255
    if-eqz p1, :cond_a

    .line 256
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 258
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    move-result-object p2

    .line 263
    check-cast p2, Ljava/lang/Integer;

    .line 264
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 266
    move-result p2

    .line 269
    iput p2, p1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mDarkMinuteColor:I

    .line 270
    :cond_a
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 272
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoSecondaryColor()Z

    .line 274
    move-result p1

    .line 277
    if-eqz p1, :cond_b

    .line 278
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 280
    invoke-virtual {p0, v2}, Lcom/miui/clock/module/ClockStyleInfo;->setSecondaryColor(I)V

    .line 282
    :cond_b
    return-void
    .line 285
.end method

.method public final setClockStyle(I)V
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    new-instance p1, Lcom/miui/clock/module/FontSilkSerif;

    .line 5
    invoke-direct {p1}, Lcom/miui/clock/module/FontSilkSerif;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 10
    goto :goto_0

    .line 12
    :pswitch_0
    new-instance p1, Lcom/miui/clock/module/FontCopperplate;

    .line 13
    invoke-direct {p1}, Lcom/miui/clock/module/FontCopperplate;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 18
    goto :goto_0

    .line 20
    :pswitch_1
    new-instance p1, Lcom/miui/clock/module/FontDryBrush9;

    .line 21
    invoke-direct {p1}, Lcom/miui/clock/module/FontDryBrush9;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 26
    goto :goto_0

    .line 28
    :pswitch_2
    new-instance p1, Lcom/miui/clock/module/FontNeumaticCompressed;

    .line 29
    invoke-direct {p1}, Lcom/miui/clock/module/FontNeumaticCompressed;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 34
    goto :goto_0

    .line 36
    :pswitch_3
    new-instance p1, Lcom/miui/clock/module/FontMiSerif;

    .line 37
    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSerif;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 42
    goto :goto_0

    .line 44
    :pswitch_4
    new-instance p1, Lcom/miui/clock/module/FontFoundryGridnik;

    .line 45
    invoke-direct {p1}, Lcom/miui/clock/module/FontFoundryGridnik;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 50
    goto :goto_0

    .line 52
    :pswitch_5
    new-instance p1, Lcom/miui/clock/module/FontBeiHaiBei;

    .line 53
    invoke-direct {p1}, Lcom/miui/clock/module/FontBeiHaiBei;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 58
    goto :goto_0

    .line 60
    :pswitch_6
    new-instance p1, Lcom/miui/clock/module/FontSalome;

    .line 61
    invoke-direct {p1}, Lcom/miui/clock/module/FontSalome;-><init>()V

    .line 63
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 66
    goto :goto_0

    .line 68
    :pswitch_7
    new-instance p1, Lcom/miui/clock/module/FontMiSansRoundLock;

    .line 69
    invoke-direct {p1}, Lcom/miui/clock/module/FontMiSansRoundLock;-><init>()V

    .line 71
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 74
    goto :goto_0

    .line 76
    :pswitch_8
    new-instance p1, Lcom/miui/clock/module/FontSKPupok;

    .line 77
    invoke-direct {p1}, Lcom/miui/clock/module/FontSKPupok;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 82
    goto :goto_0

    .line 84
    :pswitch_9
    new-instance p1, Lcom/miui/clock/module/FontSilkSerif;

    .line 85
    invoke-direct {p1}, Lcom/miui/clock/module/FontSilkSerif;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 90
    :goto_0
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
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
    .line 94
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 4
    return-void
    .line 6
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

.method public setIs24HourFormat(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 2
    return-void
    .line 4
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
    iput-boolean p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMagazineInfoVisible:Z

    .line 2
    return-void
    .line 4
.end method

.method public setMinuteColor(II)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iput p1, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mLightMinuteColor:I

    .line 6
    iput p2, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mDarkMinuteColor:I

    .line 8
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateColor()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public setOwnerInfo(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setScaleRatio(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setShowLunarCalendar(Z)V
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

.method public setTextColorDark(Z)V
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

.method public updateColor()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateFaceUnlockIconState(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateResidentTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTime()V
    .locals 4

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 2
    move-result-wide v0

    .line 5
    iget-object v2, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 6
    invoke-virtual {v2, v0, v1}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 11
    if-eqz v0, :cond_0

    .line 13
    const-string v0, "HHmm"

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "hhmm"

    .line 18
    :goto_0
    invoke-static {v0}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const/4 v1, 0x0

    .line 24
    :goto_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 25
    move-result v2

    .line 28
    if-ge v1, v2, :cond_1

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    .line 31
    move-result v2

    .line 34
    iget-object v3, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 35
    invoke-static {v2}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    .line 37
    move-result-object v2

    .line 40
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 41
    move-result v2

    .line 44
    aput v2, v3, v1

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_1
    return-void
    .line 50
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    new-instance v0, Lmiuix/pickerwidget/date/Calendar;

    .line 9
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 11
    move-result-object p1

    .line 14
    invoke-direct {v0, p1}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 15
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 18
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 20
    return-void
    .line 23
.end method

.method public final updateViewTopMargin(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
