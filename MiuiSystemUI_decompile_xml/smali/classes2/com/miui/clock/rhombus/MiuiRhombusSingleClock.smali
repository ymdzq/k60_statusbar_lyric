.class public Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;
.super Lcom/miui/clock/rhombus/MiuiRhombusBase;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

.field public mColon1View:Landroid/view/View;

.field public mColon2View:Landroid/view/View;

.field public mColonView:Landroid/widget/ImageView;

.field public mDeviceScale:F

.field public mHourContainer:Landroid/view/View;

.field public mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

.field public mMinuteContainer:Landroid/view/View;

.field public mTimeContainer:Landroid/view/ViewGroup;

.field public minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mDeviceScale:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/rhombus/MiuiRhombusBase;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 4
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mDeviceScale:F

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
    const/4 v1, 0x5

    .line 6
    if-eq v0, v1, :cond_4

    .line 7
    const/4 v1, 0x6

    .line 9
    if-eq v0, v1, :cond_3

    .line 10
    const/4 v1, 0x7

    .line 12
    if-eq v0, v1, :cond_2

    .line 13
    const/16 v1, 0x8

    .line 15
    if-eq v0, v1, :cond_1

    .line 17
    const/16 v1, 0xc

    .line 19
    if-eq v0, v1, :cond_0

    .line 21
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 23
    move-result-object p0

    .line 26
    return-object p0

    .line 27
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColonView:Landroid/widget/ImageView;

    .line 28
    return-object p0

    .line 30
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mMinuteContainer:Landroid/view/View;

    .line 31
    return-object p0

    .line 33
    :cond_2
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mHourContainer:Landroid/view/View;

    .line 34
    return-object p0

    .line 36
    :cond_3
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon2View:Landroid/view/View;

    .line 37
    return-object p0

    .line 39
    :cond_4
    iget-object p0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon1View:Landroid/view/View;

    .line 40
    return-object p0
    .line 42
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
    new-instance v0, Lcom/miui/clock/module/FontSilkSerif;

    .line 5
    invoke-direct {v0}, Lcom/miui/clock/module/FontSilkSerif;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 10
    const v0, 0x7f0a020e    # @id/colon1

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon1View:Landroid/view/View;

    .line 19
    const v0, 0x7f0a020f    # @id/colon2

    .line 21
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon2View:Landroid/view/View;

    .line 28
    const v0, 0x7f0a098e    # @id/time_container

    .line 30
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/view/ViewGroup;

    .line 37
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 39
    const v0, 0x7f0a0210    # @id/colon_view

    .line 41
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 44
    move-result-object v0

    .line 47
    check-cast v0, Landroid/widget/ImageView;

    .line 48
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColonView:Landroid/widget/ImageView;

    .line 50
    const v0, 0x7f0a040b    # @id/hour_container

    .line 52
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 55
    move-result-object v0

    .line 58
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mHourContainer:Landroid/view/View;

    .line 59
    const v0, 0x7f0a05be    # @id/minute_container

    .line 61
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 64
    move-result-object v0

    .line 67
    iput-object v0, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mMinuteContainer:Landroid/view/View;

    .line 68
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->updateTime()V

    .line 70
    return-void
    .line 73
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 5
    if-nez p1, :cond_0

    .line 7
    return-void

    .line 9
    :cond_0
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->updateTime()V

    .line 10
    return-void
    .line 13
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 2
    check-cast p1, Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 5
    iput-object p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 7
    iget p1, p1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mClockStyle:I

    .line 9
    invoke-virtual {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setClockStyle(I)V

    .line 11
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->updateTime()V

    .line 14
    return-void
    .line 17
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

.method public setScaleRatio(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->setScaleRatio(F)V

    .line 2
    iput p1, p0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mDeviceScale:F

    .line 5
    invoke-virtual {p0}, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->updateTime()V

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

.method public bridge synthetic setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final updateTime()V
    .locals 41

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-super/range {p0 .. p0}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->updateTime()V

    .line 4
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 7
    if-nez v1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    iget-boolean v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->m24HourFormat:Z

    .line 12
    if-eqz v1, :cond_1

    .line 14
    const/16 v1, 0x20

    .line 16
    goto :goto_0

    .line 18
    :cond_1
    const/16 v1, 0x10

    .line 19
    :goto_0
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 21
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 23
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 25
    move-result-wide v4

    .line 28
    or-int/lit8 v1, v1, 0xc

    .line 29
    or-int/lit8 v1, v1, 0x40

    .line 31
    invoke-static {v3, v4, v5, v1}, Lmiuix/pickerwidget/date/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 37
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 40
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 42
    invoke-virtual {v1, v2}, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->calculateFinalAODColor(Landroid/content/Context;)V

    .line 44
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mTimeContainer:Landroid/view/ViewGroup;

    .line 47
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 53
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v2

    .line 58
    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 59
    move-result-object v2

    .line 62
    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    .line 63
    sget-boolean v3, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 65
    const/4 v4, 0x1

    .line 67
    if-eqz v3, :cond_2

    .line 68
    if-ne v2, v4, :cond_2

    .line 70
    const v2, 0x3f99999a    # 1.2f

    .line 72
    goto :goto_1

    .line 75
    :cond_2
    invoke-static {}, Lcom/miui/clock/utils/DeviceConfig;->isJ18()Z

    .line 76
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mContext:Landroid/content/Context;

    .line 82
    invoke-static {v2}, Lcom/miui/clock/utils/DeviceConfig;->inLargeScreen(Landroid/content/Context;)Z

    .line 84
    move-result v2

    .line 87
    if-nez v2, :cond_3

    .line 88
    const v2, 0x3f4ccccd    # 0.8f

    .line 90
    goto :goto_1

    .line 93
    :cond_3
    const/high16 v2, 0x3f800000    # 1.0f

    .line 94
    :goto_1
    iget v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mDeviceScale:F

    .line 96
    const/4 v5, 0x0

    .line 98
    cmpl-float v6, v3, v5

    .line 99
    if-lez v6, :cond_4

    .line 101
    mul-float/2addr v2, v3

    .line 103
    :cond_4
    new-instance v3, Ljava/lang/StringBuilder;

    .line 104
    const-string v6, "radio = "

    .line 106
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 111
    const-string v6, ", mDeviceScale = "

    .line 114
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    iget v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mDeviceScale:F

    .line 119
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object v3

    .line 127
    const-string v6, "MiuiClock"

    .line 128
    invoke-static {v6, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    const v3, 0x7f070986    # @dimen/miui_rhombus_clock_width '392.0dp'

    .line 133
    invoke-virtual {v0, v3}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 136
    move-result v3

    .line 139
    int-to-float v3, v3

    .line 140
    mul-float/2addr v3, v2

    .line 141
    float-to-int v3, v3

    .line 142
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 143
    const v3, 0x7f07097e    # @dimen/miui_rhombus_clock_height '660.0dp'

    .line 145
    invoke-virtual {v0, v3}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 148
    move-result v3

    .line 151
    int-to-float v3, v3

    .line 152
    mul-float/2addr v3, v2

    .line 153
    float-to-int v3, v3

    .line 154
    iput v3, v1, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 155
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mHourContainer:Landroid/view/View;

    .line 157
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 159
    move-result-object v1

    .line 162
    const v3, 0x7f07097f    # @dimen/miui_rhombus_clock_inner_height '460.0dp'

    .line 163
    invoke-virtual {v0, v3}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 166
    move-result v6

    .line 169
    int-to-float v6, v6

    .line 170
    mul-float/2addr v6, v2

    .line 171
    float-to-int v6, v6

    .line 172
    iput v6, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 173
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mMinuteContainer:Landroid/view/View;

    .line 175
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 177
    move-result-object v1

    .line 180
    invoke-virtual {v0, v3}, Lcom/miui/clock/rhombus/MiuiRhombusBase;->getDimen(I)I

    .line 181
    move-result v3

    .line 184
    int-to-float v3, v3

    .line 185
    mul-float/2addr v3, v2

    .line 186
    float-to-int v3, v3

    .line 187
    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 188
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mCurrentTimeArray:[I

    .line 190
    const/4 v3, 0x0

    .line 192
    aget v6, v1, v3

    .line 193
    aget v4, v1, v4

    .line 195
    const/4 v7, 0x2

    .line 197
    aget v7, v1, v7

    .line 198
    const/4 v8, 0x3

    .line 200
    aget v1, v1, v8

    .line 201
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 203
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getHourOffset()[[[I

    .line 205
    move-result-object v8

    .line 208
    aget-object v8, v8, v6

    .line 209
    aget-object v8, v8, v4

    .line 211
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 213
    invoke-virtual {v9}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteOffset()[[[I

    .line 215
    move-result-object v9

    .line 218
    aget-object v9, v9, v7

    .line 219
    aget-object v9, v9, v1

    .line 221
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 223
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 225
    move-result-object v10

    .line 228
    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 229
    iget-object v11, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 231
    invoke-virtual {v11}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 233
    move-result-object v11

    .line 236
    check-cast v11, Landroid/widget/FrameLayout$LayoutParams;

    .line 237
    iget-object v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 239
    invoke-virtual {v12}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 241
    move-result-object v12

    .line 244
    check-cast v12, Landroid/widget/FrameLayout$LayoutParams;

    .line 245
    iget-object v13, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 247
    invoke-virtual {v13}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 249
    move-result-object v13

    .line 252
    check-cast v13, Landroid/widget/FrameLayout$LayoutParams;

    .line 253
    iget-object v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 255
    invoke-virtual {v14}, Lcom/miui/clock/module/BaseFontStyle;->getFontStyle()Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 257
    move-result-object v14

    .line 260
    sget-object v15, Lcom/miui/clock/module/BaseFontStyle$Style;->Copperplate:Lcom/miui/clock/module/BaseFontStyle$Style;

    .line 261
    if-ne v14, v15, :cond_7

    .line 263
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 265
    const/16 v9, 0x8

    .line 267
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 269
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 272
    invoke-virtual {v8, v9}, Landroid/view/View;->setVisibility(I)V

    .line 274
    const/4 v8, -0x1

    .line 277
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 278
    iput v8, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 280
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 282
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 284
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 287
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 289
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 291
    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 293
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 296
    invoke-virtual {v8, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 298
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 301
    invoke-virtual {v8, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 303
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 306
    if-nez v8, :cond_5

    .line 308
    new-instance v8, Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 310
    invoke-direct {v8}, Lcom/miui/clock/module/FontWholeHourCopperplate;-><init>()V

    .line 312
    iput-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 315
    :cond_5
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 317
    if-nez v8, :cond_6

    .line 319
    new-instance v8, Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 321
    invoke-direct {v8}, Lcom/miui/clock/module/FontWholeMinuteCopperplate;-><init>()V

    .line 323
    iput-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 326
    :cond_6
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 328
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->hourCopperplate:Lcom/miui/clock/module/FontWholeHourCopperplate;

    .line 330
    iput-object v9, v8, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 332
    iput v5, v8, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 334
    iput v2, v8, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 336
    iput v3, v8, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 338
    iput v3, v8, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 340
    iput v3, v8, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 342
    iput v3, v8, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 344
    mul-int/lit8 v6, v6, 0xa

    .line 346
    add-int/2addr v6, v4

    .line 348
    iput v6, v8, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 349
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 351
    iget v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 353
    iput v4, v8, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 355
    invoke-virtual {v8}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 357
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 360
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->minuteCopperplate:Lcom/miui/clock/module/FontWholeMinuteCopperplate;

    .line 362
    iput-object v6, v4, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 364
    iput v5, v4, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 366
    iput v2, v4, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 368
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 370
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 372
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 374
    iput v3, v4, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 376
    mul-int/lit8 v7, v7, 0xa

    .line 378
    add-int/2addr v7, v1

    .line 380
    iput v7, v4, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 381
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 383
    iget v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 385
    iput v1, v4, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 387
    invoke-virtual {v4}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 389
    goto/16 :goto_2

    .line 392
    :cond_7
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 394
    invoke-virtual {v5}, Lcom/miui/clock/module/BaseFontStyle;->enableRotate()Z

    .line 396
    move-result v5

    .line 399
    if-eqz v5, :cond_8

    .line 400
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 402
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 404
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 407
    invoke-virtual {v5, v3}, Landroid/view/View;->setVisibility(I)V

    .line 409
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 412
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 414
    move-result-object v3

    .line 417
    aget v3, v3, v6

    .line 418
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 420
    invoke-virtual {v5}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 422
    move-result-object v5

    .line 425
    aget v5, v5, v6

    .line 426
    iget-object v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 428
    invoke-virtual {v14}, Lcom/miui/clock/module/BaseFontStyle;->getMaxRotateDegree()F

    .line 430
    move-result v14

    .line 433
    float-to-double v14, v14

    .line 434
    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    .line 435
    move-result-wide v14

    .line 438
    move-object/from16 v23, v12

    .line 439
    move-object/from16 v22, v13

    .line 441
    int-to-double v12, v3

    .line 443
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 444
    move-result-wide v16

    .line 447
    mul-double v20, v16, v12

    .line 448
    move/from16 v24, v6

    .line 450
    int-to-double v5, v5

    .line 452
    move-wide/from16 v16, v14

    .line 453
    move-wide/from16 v18, v5

    .line 455
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 457
    move-result-wide v25

    .line 460
    invoke-static {v14, v15}, Ljava/lang/Math;->cos(D)D

    .line 461
    move-result-wide v16

    .line 464
    mul-double v20, v16, v5

    .line 465
    move-wide/from16 v16, v14

    .line 467
    move-wide/from16 v18, v12

    .line 469
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 471
    move-result-wide v5

    .line 474
    iget v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 475
    float-to-double v12, v3

    .line 477
    mul-double v12, v12, v25

    .line 478
    move-wide/from16 v27, v14

    .line 480
    float-to-double v14, v2

    .line 482
    mul-double/2addr v12, v14

    .line 483
    double-to-int v12, v12

    .line 484
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 485
    float-to-double v12, v3

    .line 487
    mul-double/2addr v12, v5

    .line 488
    mul-double/2addr v12, v14

    .line 489
    double-to-int v12, v12

    .line 490
    iput v12, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 491
    const/4 v12, 0x0

    .line 493
    aget v12, v8, v12

    .line 494
    int-to-float v12, v12

    .line 496
    mul-float/2addr v12, v3

    .line 497
    mul-float/2addr v12, v2

    .line 498
    float-to-int v3, v12

    .line 499
    invoke-virtual {v10, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 500
    const/4 v3, 0x1

    .line 503
    aget v3, v8, v3

    .line 504
    int-to-float v3, v3

    .line 506
    iget v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 507
    mul-float/2addr v3, v12

    .line 509
    mul-float/2addr v3, v2

    .line 510
    float-to-int v3, v3

    .line 511
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 512
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 514
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 516
    move-result-object v3

    .line 519
    aget v3, v3, v4

    .line 520
    iget-object v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 522
    invoke-virtual {v12}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 524
    move-result-object v12

    .line 527
    aget v12, v12, v4

    .line 528
    move-wide/from16 v29, v5

    .line 530
    int-to-double v5, v3

    .line 532
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 533
    move-result-wide v16

    .line 536
    mul-double v20, v16, v5

    .line 537
    int-to-double v12, v12

    .line 539
    move-wide/from16 v16, v27

    .line 540
    move-wide/from16 v18, v12

    .line 542
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 544
    move-result-wide v31

    .line 547
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 548
    move-result-wide v16

    .line 551
    mul-double v20, v16, v12

    .line 552
    move-wide/from16 v16, v27

    .line 554
    move-wide/from16 v18, v5

    .line 556
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 558
    move-result-wide v5

    .line 561
    iget v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 562
    float-to-double v12, v3

    .line 564
    mul-double v12, v12, v31

    .line 565
    mul-double/2addr v12, v14

    .line 567
    double-to-int v12, v12

    .line 568
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 569
    float-to-double v12, v3

    .line 571
    mul-double/2addr v12, v5

    .line 572
    mul-double/2addr v12, v14

    .line 573
    double-to-int v12, v12

    .line 574
    iput v12, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 575
    const/4 v12, 0x2

    .line 577
    aget v12, v8, v12

    .line 578
    int-to-float v12, v12

    .line 580
    mul-float/2addr v12, v3

    .line 581
    mul-float/2addr v12, v2

    .line 582
    float-to-int v3, v12

    .line 583
    invoke-virtual {v11, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 584
    const/4 v3, 0x3

    .line 587
    aget v3, v8, v3

    .line 588
    int-to-float v3, v3

    .line 590
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 591
    mul-float/2addr v3, v8

    .line 593
    mul-float/2addr v3, v2

    .line 594
    float-to-int v3, v3

    .line 595
    iput v3, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 596
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 598
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 600
    move-result-object v3

    .line 603
    aget v3, v3, v7

    .line 604
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 606
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 608
    move-result-object v8

    .line 611
    aget v8, v8, v7

    .line 612
    int-to-double v12, v3

    .line 614
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 615
    move-result-wide v16

    .line 618
    mul-double v20, v16, v12

    .line 619
    move-wide/from16 v33, v5

    .line 621
    int-to-double v5, v8

    .line 623
    move-wide/from16 v16, v27

    .line 624
    move-wide/from16 v18, v5

    .line 626
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 628
    move-result-wide v35

    .line 631
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 632
    move-result-wide v16

    .line 635
    mul-double v20, v16, v5

    .line 636
    move-wide/from16 v16, v27

    .line 638
    move-wide/from16 v18, v12

    .line 640
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 642
    move-result-wide v5

    .line 645
    iget v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 646
    float-to-double v12, v3

    .line 648
    mul-double v12, v12, v35

    .line 649
    mul-double/2addr v12, v14

    .line 651
    double-to-int v8, v12

    .line 652
    move-object/from16 v12, v23

    .line 653
    iput v8, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 655
    move v13, v7

    .line 657
    float-to-double v7, v3

    .line 658
    mul-double/2addr v7, v5

    .line 659
    mul-double/2addr v7, v14

    .line 660
    double-to-int v7, v7

    .line 661
    iput v7, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 662
    const/4 v7, 0x0

    .line 664
    aget v7, v9, v7

    .line 665
    int-to-float v7, v7

    .line 667
    mul-float/2addr v7, v3

    .line 668
    mul-float/2addr v7, v2

    .line 669
    float-to-int v3, v7

    .line 670
    invoke-virtual {v12, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 671
    const/4 v3, 0x1

    .line 674
    aget v3, v9, v3

    .line 675
    int-to-float v3, v3

    .line 677
    iget v7, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 678
    mul-float/2addr v3, v7

    .line 680
    mul-float/2addr v3, v2

    .line 681
    float-to-int v3, v3

    .line 682
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 683
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 685
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockWidth()[I

    .line 687
    move-result-object v3

    .line 690
    aget v3, v3, v1

    .line 691
    iget-object v7, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 693
    invoke-virtual {v7}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeights()[I

    .line 695
    move-result-object v7

    .line 698
    aget v7, v7, v1

    .line 699
    move-wide/from16 v37, v5

    .line 701
    int-to-double v5, v3

    .line 703
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 704
    move-result-wide v16

    .line 707
    mul-double v20, v16, v5

    .line 708
    int-to-double v7, v7

    .line 710
    move-wide/from16 v16, v27

    .line 711
    move-wide/from16 v18, v7

    .line 713
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 715
    move-result-wide v39

    .line 718
    invoke-static/range {v27 .. v28}, Ljava/lang/Math;->cos(D)D

    .line 719
    move-result-wide v16

    .line 722
    mul-double v20, v16, v7

    .line 723
    move-wide/from16 v16, v27

    .line 725
    move-wide/from16 v18, v5

    .line 727
    invoke-static/range {v16 .. v21}, Landroidx/appcompat/app/TwilightCalculator$$ExternalSyntheticOutline0;->m(DDD)D

    .line 729
    move-result-wide v5

    .line 732
    iget v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 733
    float-to-double v7, v3

    .line 735
    mul-double v7, v7, v39

    .line 736
    mul-double/2addr v7, v14

    .line 738
    double-to-int v7, v7

    .line 739
    move-object/from16 v8, v22

    .line 740
    iput v7, v8, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 742
    move v7, v13

    .line 744
    float-to-double v12, v3

    .line 745
    mul-double/2addr v12, v5

    .line 746
    mul-double/2addr v12, v14

    .line 747
    double-to-int v12, v12

    .line 748
    iput v12, v8, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 749
    const/4 v12, 0x2

    .line 751
    aget v12, v9, v12

    .line 752
    int-to-float v12, v12

    .line 754
    mul-float/2addr v12, v3

    .line 755
    mul-float/2addr v12, v2

    .line 756
    float-to-int v3, v12

    .line 757
    invoke-virtual {v8, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 758
    const/4 v3, 0x3

    .line 761
    aget v3, v9, v3

    .line 762
    int-to-float v3, v3

    .line 764
    iget v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 765
    mul-float/2addr v3, v9

    .line 767
    mul-float/2addr v3, v2

    .line 768
    float-to-int v3, v3

    .line 769
    iput v3, v8, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 770
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 772
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 774
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 777
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 779
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 782
    move-object/from16 v12, v23

    .line 784
    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 786
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 789
    invoke-virtual {v3, v8}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 791
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 794
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getHourRotateDegree()[[[F

    .line 796
    move-result-object v3

    .line 799
    aget-object v3, v3, v24

    .line 800
    aget-object v3, v3, v4

    .line 802
    iget-object v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 804
    invoke-virtual {v8}, Lcom/miui/clock/module/BaseFontStyle;->getMinuteRotateDegree()[[[F

    .line 806
    move-result-object v8

    .line 809
    aget-object v8, v8, v7

    .line 810
    aget-object v8, v8, v1

    .line 812
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 814
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 816
    iput-object v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 818
    move/from16 v13, v24

    .line 820
    iput v13, v9, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 822
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 824
    mul-double v25, v25, v10

    .line 826
    iget v12, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 828
    float-to-double v10, v12

    .line 830
    mul-double v25, v25, v10

    .line 831
    mul-double v10, v25, v14

    .line 833
    double-to-int v10, v10

    .line 835
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    .line 836
    mul-double v16, v16, v29

    .line 838
    float-to-double v11, v12

    .line 840
    mul-double v16, v16, v11

    .line 841
    mul-double v11, v16, v14

    .line 843
    double-to-int v11, v11

    .line 845
    iput v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 846
    iput v11, v9, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 848
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 850
    iget v10, v10, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 852
    iput v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 854
    const/4 v10, 0x0

    .line 856
    aget v11, v3, v10

    .line 857
    iput v11, v9, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 859
    iput v2, v9, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 861
    iput v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 863
    iput v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 865
    invoke-virtual {v9}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 867
    iget-object v9, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 870
    iget-object v10, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 872
    iput-object v10, v9, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 874
    iput v4, v9, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 876
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    .line 878
    mul-double v31, v31, v10

    .line 880
    iget v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 882
    float-to-double v12, v4

    .line 884
    mul-double v31, v31, v12

    .line 885
    mul-double v12, v31, v14

    .line 887
    double-to-int v12, v12

    .line 889
    mul-double v10, v10, v33

    .line 890
    move-wide/from16 v16, v5

    .line 892
    float-to-double v4, v4

    .line 894
    mul-double/2addr v10, v4

    .line 895
    mul-double/2addr v10, v14

    .line 896
    double-to-int v4, v10

    .line 897
    iput v12, v9, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 898
    iput v4, v9, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 900
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 902
    iget v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 904
    iput v4, v9, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 906
    const/4 v4, 0x1

    .line 908
    aget v3, v3, v4

    .line 909
    iput v3, v9, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 911
    iput v2, v9, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 913
    const/4 v3, 0x0

    .line 915
    iput v3, v9, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 916
    iput v3, v9, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 918
    invoke-virtual {v9}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 920
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 923
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 925
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 927
    iput v7, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 929
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 931
    mul-double v35, v35, v4

    .line 933
    iget v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 935
    float-to-double v9, v6

    .line 937
    mul-double v35, v35, v9

    .line 938
    mul-double v9, v35, v14

    .line 940
    double-to-int v7, v9

    .line 942
    mul-double v4, v4, v37

    .line 943
    float-to-double v9, v6

    .line 945
    mul-double/2addr v4, v9

    .line 946
    mul-double/2addr v4, v14

    .line 947
    double-to-int v4, v4

    .line 948
    iput v7, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 949
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 951
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 953
    iget v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 955
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 957
    const/4 v4, 0x0

    .line 959
    aget v5, v8, v4

    .line 960
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 962
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 964
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 966
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 968
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 970
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 973
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 975
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 977
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 979
    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 981
    mul-double v39, v39, v4

    .line 983
    iget v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 985
    float-to-double v6, v1

    .line 987
    mul-double v39, v39, v6

    .line 988
    mul-double v6, v39, v14

    .line 990
    double-to-int v6, v6

    .line 992
    mul-double v4, v4, v16

    .line 993
    float-to-double v9, v1

    .line 995
    mul-double/2addr v4, v9

    .line 996
    mul-double/2addr v4, v14

    .line 997
    double-to-int v1, v4

    .line 998
    iput v6, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 999
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1001
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1003
    iget v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 1005
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 1007
    const/4 v1, 0x1

    .line 1009
    aget v1, v8, v1

    .line 1010
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1012
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1014
    const/4 v1, 0x0

    .line 1016
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1017
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1019
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1021
    goto/16 :goto_2

    .line 1024
    :cond_8
    move-object v5, v13

    .line 1026
    move v13, v6

    .line 1027
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1028
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1030
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1033
    invoke-virtual {v6, v3}, Landroid/view/View;->setVisibility(I)V

    .line 1035
    const/4 v3, -0x2

    .line 1038
    iput v3, v10, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1039
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1041
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1043
    move-result v6

    .line 1046
    int-to-float v6, v6

    .line 1047
    iget v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1048
    mul-float/2addr v6, v14

    .line 1050
    mul-float/2addr v6, v2

    .line 1051
    float-to-int v6, v6

    .line 1052
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1053
    const/4 v6, 0x1

    .line 1055
    aget v6, v8, v6

    .line 1056
    int-to-float v6, v6

    .line 1058
    mul-float/2addr v6, v14

    .line 1059
    mul-float/2addr v6, v2

    .line 1060
    float-to-int v6, v6

    .line 1061
    iput v6, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1062
    const/4 v6, 0x0

    .line 1064
    aget v6, v8, v6

    .line 1065
    int-to-float v6, v6

    .line 1067
    mul-float/2addr v6, v14

    .line 1068
    mul-float/2addr v6, v2

    .line 1069
    float-to-int v6, v6

    .line 1070
    invoke-virtual {v10, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1071
    iput v3, v11, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1074
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1076
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1078
    move-result v6

    .line 1081
    int-to-float v6, v6

    .line 1082
    iget v14, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1083
    mul-float/2addr v6, v14

    .line 1085
    mul-float/2addr v6, v2

    .line 1086
    float-to-int v6, v6

    .line 1087
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1088
    const/4 v6, 0x2

    .line 1090
    aget v6, v8, v6

    .line 1091
    int-to-float v6, v6

    .line 1093
    mul-float/2addr v6, v14

    .line 1094
    mul-float/2addr v6, v2

    .line 1095
    float-to-int v6, v6

    .line 1096
    invoke-virtual {v11, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1097
    const/4 v6, 0x3

    .line 1100
    aget v6, v8, v6

    .line 1101
    int-to-float v6, v6

    .line 1103
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1104
    mul-float/2addr v6, v8

    .line 1106
    mul-float/2addr v6, v2

    .line 1107
    float-to-int v6, v6

    .line 1108
    iput v6, v11, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1109
    iput v3, v12, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1111
    iget-object v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1113
    invoke-virtual {v6}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1115
    move-result v6

    .line 1118
    int-to-float v6, v6

    .line 1119
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1120
    mul-float/2addr v6, v8

    .line 1122
    mul-float/2addr v6, v2

    .line 1123
    float-to-int v6, v6

    .line 1124
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1125
    const/4 v6, 0x0

    .line 1127
    aget v6, v9, v6

    .line 1128
    int-to-float v6, v6

    .line 1130
    mul-float/2addr v6, v8

    .line 1131
    mul-float/2addr v6, v2

    .line 1132
    float-to-int v6, v6

    .line 1133
    invoke-virtual {v12, v6}, Landroid/widget/FrameLayout$LayoutParams;->setMarginEnd(I)V

    .line 1134
    const/4 v6, 0x1

    .line 1137
    aget v6, v9, v6

    .line 1138
    int-to-float v6, v6

    .line 1140
    iget v8, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1141
    mul-float/2addr v6, v8

    .line 1143
    mul-float/2addr v6, v2

    .line 1144
    float-to-int v6, v6

    .line 1145
    iput v6, v12, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1146
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 1148
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1150
    invoke-virtual {v3}, Lcom/miui/clock/module/BaseFontStyle;->getLargeClockHeight()I

    .line 1152
    move-result v3

    .line 1155
    int-to-float v3, v3

    .line 1156
    iget v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1157
    mul-float/2addr v3, v6

    .line 1159
    mul-float/2addr v3, v2

    .line 1160
    float-to-int v3, v3

    .line 1161
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 1162
    const/4 v3, 0x2

    .line 1164
    aget v3, v9, v3

    .line 1165
    int-to-float v3, v3

    .line 1167
    mul-float/2addr v3, v6

    .line 1168
    mul-float/2addr v3, v2

    .line 1169
    float-to-int v3, v3

    .line 1170
    invoke-virtual {v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMarginStart(I)V

    .line 1171
    const/4 v3, 0x3

    .line 1174
    aget v3, v9, v3

    .line 1175
    int-to-float v3, v3

    .line 1177
    iget v6, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1178
    mul-float/2addr v3, v6

    .line 1180
    mul-float/2addr v3, v2

    .line 1181
    float-to-int v3, v3

    .line 1182
    iput v3, v5, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1183
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1185
    invoke-virtual {v3, v10}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1187
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1190
    invoke-virtual {v3, v11}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1192
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1195
    invoke-virtual {v3, v12}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1197
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1200
    invoke-virtual {v3, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1202
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1205
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1207
    iput-object v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1209
    const/4 v5, 0x0

    .line 1211
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1212
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1214
    const/4 v5, 0x0

    .line 1216
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1217
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1219
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1221
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1223
    iput v13, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1225
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1227
    iget v5, v5, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 1229
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 1231
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1233
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mHour2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1236
    iget-object v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1238
    iput-object v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1240
    const/4 v5, 0x0

    .line 1242
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1243
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1245
    const/4 v5, 0x0

    .line 1247
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1248
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1250
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1252
    iput v5, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1254
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1256
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1258
    iget v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodHourColor:I

    .line 1260
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 1262
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1264
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute1View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1267
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1269
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1271
    const/4 v4, 0x0

    .line 1273
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1274
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1276
    const/4 v4, 0x0

    .line 1278
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1279
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1281
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1283
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1285
    iput v7, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1287
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1289
    iget v4, v4, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 1291
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 1293
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1295
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mMinute2View:Lcom/miui/clock/MiuiClockNumberView;

    .line 1298
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1300
    iput-object v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mFontStyle:Lcom/miui/clock/module/BaseFontStyle;

    .line 1302
    const/4 v4, 0x0

    .line 1304
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mOriginAngel:F

    .line 1305
    iput v2, v3, Lcom/miui/clock/MiuiClockNumberView;->mScaleRadio:F

    .line 1307
    const/4 v4, 0x0

    .line 1309
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterX:I

    .line 1310
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mTargetCenterY:I

    .line 1312
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetX:I

    .line 1314
    iput v4, v3, Lcom/miui/clock/MiuiClockNumberView;->mCenterOffsetY:I

    .line 1316
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mIndex:I

    .line 1318
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1320
    iget v1, v1, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodMinuteColor:I

    .line 1322
    iput v1, v3, Lcom/miui/clock/MiuiClockNumberView;->mTextColor:I

    .line 1324
    invoke-virtual {v3}, Lcom/miui/clock/MiuiClockNumberView;->build()V

    .line 1326
    :goto_2
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon1View:Landroid/view/View;

    .line 1329
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1331
    move-result-object v1

    .line 1334
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1335
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon2View:Landroid/view/View;

    .line 1337
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 1339
    move-result-object v3

    .line 1342
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 1343
    iget-object v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1345
    invoke-virtual {v4}, Lcom/miui/clock/module/BaseFontStyle;->getColonSize()F

    .line 1347
    move-result v4

    .line 1350
    iget v5, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1351
    mul-float/2addr v4, v5

    .line 1353
    mul-float/2addr v4, v2

    .line 1354
    float-to-int v4, v4

    .line 1355
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1356
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1358
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 1360
    iput v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 1362
    iget-object v1, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1364
    invoke-virtual {v1}, Lcom/miui/clock/module/BaseFontStyle;->getColonInterval()F

    .line 1366
    move-result v1

    .line 1369
    iget v4, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->mDensity:F

    .line 1370
    mul-float/2addr v1, v4

    .line 1372
    mul-float/2addr v1, v2

    .line 1373
    float-to-int v1, v1

    .line 1374
    iput v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 1375
    invoke-virtual/range {p0 .. p0}, Landroid/widget/RelativeLayout;->getContext()Landroid/content/Context;

    .line 1377
    move-result-object v1

    .line 1380
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusBase;->style:Lcom/miui/clock/module/BaseFontStyle;

    .line 1381
    invoke-virtual {v2}, Lcom/miui/clock/module/BaseFontStyle;->getColonResource()I

    .line 1383
    move-result v2

    .line 1386
    sget-object v3, Landroidx/core/app/ActivityCompat;->sLock:Ljava/lang/Object;

    .line 1387
    invoke-virtual {v1, v2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    .line 1389
    move-result-object v1

    .line 1392
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon1View:Landroid/view/View;

    .line 1393
    iget-object v3, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1395
    iget v3, v3, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 1397
    invoke-static {v1, v3}, Lcom/miui/clock/utils/SvgUtils;->initSvgColor(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 1399
    move-result-object v3

    .line 1402
    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1403
    iget-object v2, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mColon2View:Landroid/view/View;

    .line 1406
    iget-object v0, v0, Lcom/miui/clock/rhombus/MiuiRhombusSingleClock;->mInfo:Lcom/miui/clock/rhombus/MiuiRhombusSingleClockInfo;

    .line 1408
    iget v0, v0, Lcom/miui/clock/rhombus/MiuiRhombusClockBaseInfo;->mAodColonColor:I

    .line 1410
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    .line 1412
    move-result-object v1

    .line 1415
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 1416
    invoke-virtual {v2, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1419
    return-void
    .line 1422
.end method
