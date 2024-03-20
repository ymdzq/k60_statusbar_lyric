.class public Lcom/miui/clock/magazine/MiuiMagazineABase;
.super Lcom/miui/clock/MiuiGalleryBaseClock;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public chamberi:Landroid/graphics/Typeface;

.field public chamberi_italic:Landroid/graphics/Typeface;

.field public mChoosePaletteType:I

.field public mClockContainer:Landroid/view/ViewGroup;

.field public mClockContainerInner:Landroid/view/ViewGroup;

.field public mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

.field public mDateCenterSpace:Landroid/widget/Space;

.field public mDateSpace:Landroid/view/View;

.field public mDateText:Landroid/widget/TextView;

.field public mPalette:Ljava/util/Map;

.field public mTextDark:Z

.field public mTimeCenterSpace:Landroid/widget/Space;

.field public mTimeSpace:Landroid/view/View;

.field public mTimeText:Landroid/widget/TextView;

.field public mWallpaperSupportDepth:Z

.field public mWeekSpace:Landroid/view/View;

.field public mWeekText:Landroid/widget/TextView;

.field public qinghe:Landroid/graphics/Typeface;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method


# virtual methods
.method public final clearPassBlur()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

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
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 32
    invoke-static {p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->clearMemberBlendColor(Landroid/view/View;)V

    .line 34
    :cond_2
    return-void
    .line 37
.end method

.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 2
    return-object p0
    .line 4
.end method

.method public getGalleryGravity()I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 2
    const v0, 0x800003

    .line 4
    if-eqz p0, :cond_2

    .line 7
    iget p0, p0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 9
    const/4 v1, 0x1

    .line 11
    if-ne p0, v1, :cond_0

    .line 12
    return v0

    .line 14
    :cond_0
    const/4 v2, 0x2

    .line 15
    if-ne p0, v2, :cond_1

    .line 16
    return v1

    .line 18
    :cond_1
    const/4 v1, 0x3

    .line 19
    if-ne p0, v1, :cond_2

    .line 20
    const p0, 0x800005

    .line 22
    return p0

    .line 25
    :cond_2
    return v0
    .line 26
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
    const/16 v1, 0xd

    .line 6
    if-eq v0, v1, :cond_1

    .line 8
    const/16 v1, 0x10

    .line 10
    if-eq v0, v1, :cond_0

    .line 12
    packed-switch v0, :pswitch_data_0

    .line 14
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :pswitch_0
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 22
    return-object p0

    .line 24
    :pswitch_1
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 25
    return-object p0

    .line 27
    :pswitch_2
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 28
    return-object p0

    .line 30
    :cond_0
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 31
    return-object p0

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 34
    return-object p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x9
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 38
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
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/module/ClockStyleInfo;->getOriginMagazineColor()I

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

.method public getNotificationClockBottom()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f070d76    # @dimen/notification_bottom_magazine_a_with_gallery '272.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const v0, 0x7f070d75    # @dimen/notification_bottom_magazine_a '240.0dp'

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
.end method

.method public getNotificationRelativePosition()I
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 6
    move-result-object v0

    .line 9
    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 10
    sget-boolean v1, Lcom/miui/clock/utils/DeviceConfig;->PAD_DEVICE:Z

    .line 12
    const/4 v2, 0x1

    .line 14
    if-eqz v1, :cond_2

    .line 15
    const/4 v1, 0x2

    .line 17
    if-ne v0, v1, :cond_2

    .line 18
    iget-object p0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 20
    if-nez p0, :cond_0

    .line 22
    return v2

    .line 24
    :cond_0
    iget p0, p0, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 25
    if-ne p0, v2, :cond_1

    .line 27
    return v1

    .line 29
    :cond_1
    const/4 v0, 0x3

    .line 30
    if-ne p0, v0, :cond_2

    .line 31
    return v0

    .line 33
    :cond_2
    return v2
    .line 34
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
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a0263    # @id/current_date

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Landroid/widget/TextView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 14
    const v0, 0x7f0a0273    # @id/current_week

    .line 16
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroid/widget/TextView;

    .line 23
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 25
    const v0, 0x7f0a0267    # @id/current_time

    .line 27
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 30
    move-result-object v0

    .line 33
    check-cast v0, Landroid/widget/TextView;

    .line 34
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 36
    const v0, 0x7f0a0291    # @id/date_space

    .line 38
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 41
    move-result-object v0

    .line 44
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateSpace:Landroid/view/View;

    .line 45
    const v0, 0x7f0a0997    # @id/time_space

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeSpace:Landroid/view/View;

    .line 54
    const v0, 0x7f0a0aa0    # @id/week_space

    .line 56
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 59
    move-result-object v0

    .line 62
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekSpace:Landroid/view/View;

    .line 63
    const v0, 0x7f0a028d    # @id/date_center_space

    .line 65
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 68
    move-result-object v0

    .line 71
    check-cast v0, Landroid/widget/Space;

    .line 72
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateCenterSpace:Landroid/widget/Space;

    .line 74
    const v0, 0x7f0a098d    # @id/time_center_space

    .line 76
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 79
    move-result-object v0

    .line 82
    check-cast v0, Landroid/widget/Space;

    .line 83
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeCenterSpace:Landroid/widget/Space;

    .line 85
    const v0, 0x7f0a01fd    # @id/clock_container

    .line 87
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 90
    move-result-object v0

    .line 93
    check-cast v0, Landroid/view/ViewGroup;

    .line 94
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 96
    const v0, 0x7f0a01ff    # @id/clock_container_inner

    .line 98
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 101
    move-result-object v0

    .line 104
    check-cast v0, Landroid/view/ViewGroup;

    .line 105
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainerInner:Landroid/view/ViewGroup;

    .line 107
    const-string v0, "miclock-chamberi-display-semibold"

    .line 109
    const/4 v1, 0x0

    .line 111
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 112
    move-result-object v0

    .line 115
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi:Landroid/graphics/Typeface;

    .line 116
    const-string v0, "miclock-chamberi-display-semibold-italic"

    .line 118
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 120
    move-result-object v0

    .line 123
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi_italic:Landroid/graphics/Typeface;

    .line 124
    const-string v0, "miclock-qinghe-75w"

    .line 126
    invoke-static {v0, v1}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 128
    move-result-object v0

    .line 131
    iput-object v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->qinghe:Landroid/graphics/Typeface;

    .line 132
    return-void
    .line 134
.end method

.method public final onHighTextContrastEnabledChanged(Z)V
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->clearPassBlur()V

    .line 4
    goto :goto_0

    .line 7
    :cond_0
    iget p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mChoosePaletteType:I

    .line 8
    iget-boolean v0, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTextDark:Z

    .line 10
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mPalette:Ljava/util/Map;

    .line 12
    iget-boolean v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWallpaperSupportDepth:Z

    .line 14
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/miui/clock/magazine/MiuiMagazineABase;->setClockPalette(IZLjava/util/Map;Z)V

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 4

    .line 1
    iput p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mPalette:Ljava/util/Map;

    .line 6
    iput-boolean p4, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWallpaperSupportDepth:Z

    .line 8
    const-string p4, "secondary30"

    .line 10
    if-eqz p3, :cond_0

    .line 12
    new-instance v0, Ljava/lang/StringBuilder;

    .line 14
    const-string v1, "secondary30="

    .line 16
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 18
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    goto :goto_0

    .line 32
    :cond_0
    const-string v0, "null"

    .line 33
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    const-string/jumbo v2, "setClockPalette: type = "

    .line 37
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 43
    const-string p1, ", textDark = "

    .line 46
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 51
    const-string p1, ", palette = "

    .line 54
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    const-string p1, "ClockPalette"

    .line 59
    invoke-static {v1, v0, p1}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 64
    if-eqz p1, :cond_f

    .line 66
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 68
    move-result p1

    .line 71
    if-eqz p1, :cond_f

    .line 72
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 74
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->isHighTextContrastEnabled(Landroid/content/Context;)Z

    .line 76
    move-result p1

    .line 79
    if-eqz p1, :cond_1

    .line 80
    goto/16 :goto_9

    .line 82
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 84
    invoke-static {p1}, Lcom/miui/clock/utils/DeviceConfig;->supportBackgroundBlur(Landroid/content/Context;)Z

    .line 86
    move-result p1

    .line 89
    const/4 v0, -0x1

    .line 90
    if-eqz p1, :cond_a

    .line 91
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 93
    invoke-virtual {p1, v0}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 95
    if-eqz p2, :cond_3

    .line 98
    if-eqz p3, :cond_2

    .line 100
    const-string p1, "neutral-variant30"

    .line 102
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 110
    move-result-object p1

    .line 113
    check-cast p1, Ljava/lang/Integer;

    .line 114
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 116
    move-result p1

    .line 119
    goto :goto_1

    .line 120
    :cond_2
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 121
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 123
    move-result p1

    .line 126
    goto :goto_1

    .line 127
    :cond_3
    const-string p1, "#FFABABAB"

    .line 128
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 130
    move-result p1

    .line 133
    :goto_1
    if-eqz p2, :cond_5

    .line 134
    if-eqz p3, :cond_4

    .line 136
    const-string v1, "secondary70"

    .line 138
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    move-result-object v2

    .line 143
    if-eqz v2, :cond_4

    .line 144
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    move-result-object v1

    .line 149
    check-cast v1, Ljava/lang/Integer;

    .line 150
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 152
    move-result v1

    .line 155
    goto :goto_2

    .line 156
    :cond_4
    move v1, p1

    .line 157
    goto :goto_2

    .line 158
    :cond_5
    const-string v1, "#FFBEBEBE"

    .line 159
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 161
    move-result v1

    .line 164
    :goto_2
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 165
    if-eqz p1, :cond_6

    .line 167
    iput p1, v2, Lcom/miui/clock/module/ClockStyleInfo;->blendColor:I

    .line 169
    goto :goto_3

    .line 171
    :cond_6
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 172
    :goto_3
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 175
    if-eqz v1, :cond_7

    .line 177
    iput v1, v2, Lcom/miui/clock/module/ClockStyleInfo;->aodBlendColor:I

    .line 179
    goto :goto_4

    .line 181
    :cond_7
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 182
    :goto_4
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 185
    iget v2, v2, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->displayType:I

    .line 187
    invoke-static {v2}, Lcom/miui/clock/module/ClockStyleInfo;->isAODType(I)Z

    .line 189
    move-result v2

    .line 192
    if-eqz v2, :cond_8

    .line 193
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 195
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 197
    goto :goto_5

    .line 200
    :cond_8
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 201
    iget-boolean v2, v2, Lcom/miui/clock/module/ClockStyleInfo;->disableContainerPassBlur:Z

    .line 203
    if-nez v2, :cond_9

    .line 205
    const v2, 0x7f0708e9    # @dimen/miui_magazine_a_clock_blur_radius '30.0dp'

    .line 207
    invoke-virtual {p0, v2}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 210
    move-result v2

    .line 213
    invoke-static {v2, p0}, Lcom/miui/clock/utils/MiuiBlurUtils;->setContainerPassBlur(ILandroid/view/View;)V

    .line 214
    :cond_9
    iget-object v2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 217
    iget-object v3, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 219
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 221
    move-result v3

    .line 224
    invoke-static {p1, v3, v2, p2}, Lcom/miui/clock/utils/MiuiBlurUtils;->setMemberBlendColors(IILandroid/view/View;Z)V

    .line 225
    :goto_5
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 228
    iput v1, p1, Lcom/miui/clock/module/ClockStyleInfo;->aodPrimaryColor:I

    .line 230
    goto :goto_7

    .line 232
    :cond_a
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 233
    if-nez p2, :cond_b

    .line 235
    move v1, v0

    .line 237
    goto :goto_6

    .line 238
    :cond_b
    if-eqz p3, :cond_c

    .line 239
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    move-result-object v1

    .line 244
    if-eqz v1, :cond_c

    .line 245
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    move-result-object v1

    .line 250
    check-cast v1, Ljava/lang/Integer;

    .line 251
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 253
    move-result v1

    .line 256
    goto :goto_6

    .line 257
    :cond_c
    iget-object v1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 258
    invoke-virtual {v1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 260
    move-result v1

    .line 263
    :goto_6
    invoke-virtual {p1, v1}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 264
    :goto_7
    iget-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 267
    if-nez p2, :cond_d

    .line 269
    goto :goto_8

    .line 271
    :cond_d
    if-eqz p3, :cond_e

    .line 272
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    move-result-object p2

    .line 277
    if-eqz p2, :cond_e

    .line 278
    invoke-interface {p3, p4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    move-result-object p2

    .line 283
    check-cast p2, Ljava/lang/Integer;

    .line 284
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 286
    move-result v0

    .line 289
    goto :goto_8

    .line 290
    :cond_e
    iget-object p2, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 291
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 293
    move-result v0

    .line 296
    :goto_8
    iput v0, p1, Lcom/miui/clock/module/ClockStyleInfo;->originMagazineColor:I

    .line 297
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->updateTime()V

    .line 299
    :cond_f
    :goto_9
    return-void
    .line 302
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->clearPassBlur()V

    .line 6
    invoke-virtual {p0}, Lcom/miui/clock/magazine/MiuiMagazineABase;->updateTime()V

    .line 9
    return-void
    .line 12
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

.method public updateTime()V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 4
    move-result-wide v1

    .line 7
    iget-object v3, v0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 8
    invoke-virtual {v3, v1, v2}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 10
    iget-object v1, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 13
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 15
    move-result-object v1

    .line 18
    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 19
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainerInner:Landroid/view/ViewGroup;

    .line 21
    invoke-virtual {v2}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 27
    iget-object v3, v0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 29
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 31
    move-result-object v3

    .line 34
    check-cast v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 35
    const v4, 0x7f070913    # @dimen/miui_magazine_a_clock_width '392.0dp'

    .line 37
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 40
    move-result v4

    .line 43
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 44
    const v4, 0x7f0708f5    # @dimen/miui_magazine_a_clock_height '154.0dp'

    .line 46
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 49
    move-result v4

    .line 52
    iput v4, v1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 53
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 55
    invoke-virtual {v4}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 57
    move-result-object v4

    .line 60
    check-cast v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 61
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 63
    invoke-virtual {v5}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 65
    move-result-object v5

    .line 68
    check-cast v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 69
    iget-object v6, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 71
    invoke-virtual {v6}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    move-result-object v6

    .line 76
    check-cast v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 77
    iget-object v7, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateSpace:Landroid/view/View;

    .line 79
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 81
    move-result-object v7

    .line 84
    check-cast v7, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 85
    iget-object v8, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeSpace:Landroid/view/View;

    .line 87
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 89
    move-result-object v8

    .line 92
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 93
    iget-object v9, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekSpace:Landroid/view/View;

    .line 95
    invoke-virtual {v9}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 97
    move-result-object v9

    .line 100
    check-cast v9, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 101
    iget-object v10, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 103
    if-eqz v10, :cond_4

    .line 105
    iget v10, v10, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 107
    const/4 v12, 0x2

    .line 109
    const v14, 0x7f0a0997    # @id/time_space

    .line 110
    const v15, 0x7f0a0291    # @id/date_space

    .line 113
    const/4 v13, -0x1

    .line 116
    const/4 v11, 0x0

    .line 117
    if-ne v10, v12, :cond_0

    .line 118
    const v10, 0x7f0708f1    # @dimen/miui_magazine_a_clock_date_style2_margin_top '48.0dp'

    .line 120
    invoke-virtual {v0, v10}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 123
    move-result v12

    .line 126
    iput v12, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 127
    const v7, 0x7f070908    # @dimen/miui_magazine_a_clock_time_style2_margin_top '107.0dp'

    .line 129
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 132
    move-result v12

    .line 135
    iput v12, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 136
    const v8, 0x7f070911    # @dimen/miui_magazine_a_clock_week_style2_margin_top '131.0dp'

    .line 138
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 141
    move-result v8

    .line 144
    iput v8, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 145
    iget-object v8, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateCenterSpace:Landroid/widget/Space;

    .line 147
    invoke-virtual {v8}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 149
    move-result-object v8

    .line 152
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 153
    invoke-virtual {v0, v10}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 155
    move-result v9

    .line 158
    iput v9, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 159
    const v9, 0x7f0708ee    # @dimen/miui_magazine_a_clock_date_style2_center_x '106.0dp'

    .line 161
    invoke-virtual {v0, v9}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 164
    move-result v9

    .line 167
    invoke-virtual {v8, v9}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 168
    iget-object v9, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateCenterSpace:Landroid/widget/Space;

    .line 171
    invoke-virtual {v9, v8}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 173
    iget-object v8, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeCenterSpace:Landroid/widget/Space;

    .line 176
    invoke-virtual {v8}, Landroid/widget/Space;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 178
    move-result-object v8

    .line 181
    check-cast v8, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 182
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 184
    move-result v7

    .line 187
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 188
    const v7, 0x7f070905    # @dimen/miui_magazine_a_clock_time_style2_center_x '98.5dp'

    .line 190
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 193
    move-result v7

    .line 196
    invoke-virtual {v8, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 197
    iget-object v7, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeCenterSpace:Landroid/widget/Space;

    .line 200
    invoke-virtual {v7, v8}, Landroid/widget/Space;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 202
    const v7, 0x7f0708f2    # @dimen/miui_magazine_a_clock_date_style2_minwidth '200.0dp'

    .line 205
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 208
    move-result v8

    .line 211
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 212
    const v8, 0x7f0708ef    # @dimen/miui_magazine_a_clock_date_style2_height '66.0dp'

    .line 214
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 217
    move-result v8

    .line 220
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 221
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 223
    move-result v7

    .line 226
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 227
    const v7, 0x7f070906    # @dimen/miui_magazine_a_clock_time_style2_height '116.0dp'

    .line 229
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 232
    move-result v7

    .line 235
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 236
    iput v13, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 238
    const v7, 0x7f07090f    # @dimen/miui_magazine_a_clock_week_style2_height '47.0dp'

    .line 240
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 243
    move-result v7

    .line 246
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 247
    iput v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 249
    iput v14, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 251
    const v7, 0x7f0a0aa0    # @id/week_space

    .line 253
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 256
    const v7, 0x7f0a028d    # @id/date_center_space

    .line 258
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 261
    const v8, 0x7f0a098d    # @id/time_center_space

    .line 263
    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 266
    iput v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 268
    iput v7, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 270
    iput v8, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 272
    iput v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 274
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 276
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 279
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 282
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 285
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 288
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 291
    iget-object v7, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 294
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 296
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 299
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 301
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 304
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 306
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 309
    const v5, 0x7f0708f3    # @dimen/miui_magazine_a_clock_date_style2_text_size '42.0dp'

    .line 311
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 314
    move-result v5

    .line 317
    int-to-float v5, v5

    .line 318
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 319
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 322
    const v5, 0x7f070909    # @dimen/miui_magazine_a_clock_time_style2_text_size '74.0dp'

    .line 324
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 327
    move-result v5

    .line 330
    int-to-float v5, v5

    .line 331
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 332
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 335
    const v5, 0x7f070912    # @dimen/miui_magazine_a_clock_week_style2_text_size '24.0dp'

    .line 337
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 340
    move-result v5

    .line 343
    int-to-float v5, v5

    .line 344
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 345
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 348
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi_italic:Landroid/graphics/Typeface;

    .line 350
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 352
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 355
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi_italic:Landroid/graphics/Typeface;

    .line 357
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 359
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 362
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->qinghe:Landroid/graphics/Typeface;

    .line 364
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 366
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 369
    const/4 v5, 0x0

    .line 371
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 372
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 375
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 377
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 380
    const/4 v5, 0x1

    .line 382
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 383
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 386
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 388
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 391
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setGravity(I)V

    .line 393
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 396
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 398
    iput v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 400
    iput v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 402
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 404
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 406
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 409
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 412
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 415
    const v4, 0x7f070900    # @dimen/miui_magazine_a_clock_style_2_margin_inner_top '1.0dp'

    .line 418
    invoke-virtual {v0, v4}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 421
    move-result v4

    .line 424
    iput v4, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 425
    goto/16 :goto_1

    .line 427
    :cond_0
    const v10, 0x7f0708ec    # @dimen/miui_magazine_a_clock_date_style1_margin_top '44.0dp'

    .line 429
    invoke-virtual {v0, v10}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 432
    move-result v10

    .line 435
    iput v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 436
    const v7, 0x7f070903    # @dimen/miui_magazine_a_clock_time_style1_margin_top '92.0dp'

    .line 438
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 441
    move-result v7

    .line 444
    iput v7, v8, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 445
    const v7, 0x7f07090d    # @dimen/miui_magazine_a_clock_week_style1_margin_top '121.0dp'

    .line 447
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 450
    move-result v7

    .line 453
    iput v7, v9, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 454
    const/4 v7, -0x2

    .line 456
    iput v7, v5, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 457
    const v8, 0x7f0708ea    # @dimen/miui_magazine_a_clock_date_style1_height '66.0dp'

    .line 459
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 462
    move-result v8

    .line 465
    iput v8, v5, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 466
    iput v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 468
    const v8, 0x7f070901    # @dimen/miui_magazine_a_clock_time_style1_height '82.0dp'

    .line 470
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 473
    move-result v8

    .line 476
    iput v8, v4, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 477
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 479
    const v7, 0x7f07090a    # @dimen/miui_magazine_a_clock_week_style1_height '42.0dp'

    .line 481
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 484
    move-result v7

    .line 487
    iput v7, v6, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 488
    iput v15, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 490
    iput v14, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 492
    const v7, 0x7f0a0aa0    # @id/week_space

    .line 494
    iput v7, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->baselineToBaseline:I

    .line 497
    iget-object v7, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 499
    iget v7, v7, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 501
    const v8, 0x7f0708ff    # @dimen/miui_magazine_a_clock_style_1_margin_inner_top '11.0dp'

    .line 503
    const v9, 0x7f070902    # @dimen/miui_magazine_a_clock_time_style1_margin_start '0.0dp'

    .line 506
    const v10, 0x7f0708eb    # @dimen/miui_magazine_a_clock_date_style1_margin_start '1.0dp'

    .line 509
    const/4 v12, 0x1

    .line 512
    if-ne v7, v12, :cond_1

    .line 513
    iput v11, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 515
    iput v11, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 517
    iput v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 519
    iput v13, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 521
    iput v13, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 523
    iput v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 525
    invoke-virtual {v0, v10}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 527
    move-result v7

    .line 530
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 531
    invoke-virtual {v0, v9}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 534
    move-result v7

    .line 537
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 538
    const v7, 0x7f07090c    # @dimen/miui_magazine_a_clock_week_style1_margin_start '4.0dp'

    .line 541
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 544
    move-result v7

    .line 547
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 548
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 551
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 554
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 557
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 560
    iput v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 562
    iput v13, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 564
    iput v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 566
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 568
    const v7, 0x7f0708fa    # @dimen/miui_magazine_a_clock_margin_start '26.0dp'

    .line 570
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 573
    move-result v7

    .line 576
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 577
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 580
    move-result v7

    .line 583
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 584
    const v7, 0x7f070915    # @dimen/miui_magazine_a_gallery_margin_start '27.0dp'

    .line 586
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 589
    move-result v7

    .line 592
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 593
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 596
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 599
    goto :goto_0

    .line 602
    :cond_1
    iput v11, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 603
    iput v11, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 605
    iput v11, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 607
    iput v13, v5, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 609
    iput v13, v4, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 611
    iput v13, v6, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 613
    invoke-virtual {v5, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 615
    invoke-virtual {v4, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 618
    invoke-virtual {v6, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 621
    invoke-virtual {v0, v10}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 624
    move-result v7

    .line 627
    invoke-virtual {v5, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 628
    invoke-virtual {v0, v9}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 631
    move-result v7

    .line 634
    invoke-virtual {v4, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 635
    const v7, 0x7f07090b    # @dimen/miui_magazine_a_clock_week_style1_margin_end '3.0dp'

    .line 638
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 641
    move-result v7

    .line 644
    invoke-virtual {v6, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 645
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 648
    iput v11, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 650
    iput v13, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 652
    iput v13, v3, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 654
    iput v11, v2, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->topToTop:I

    .line 656
    invoke-virtual {v2, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 658
    invoke-virtual {v0, v8}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 661
    move-result v7

    .line 664
    iput v7, v2, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 665
    invoke-virtual {v3, v11}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginStart(I)V

    .line 667
    const v7, 0x7f0708f9    # @dimen/miui_magazine_a_clock_margin_end '26.0dp'

    .line 670
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 673
    move-result v7

    .line 676
    invoke-virtual {v2, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 677
    const v7, 0x7f070914    # @dimen/miui_magazine_a_gallery_margin_end '24.75dp'

    .line 680
    invoke-virtual {v0, v7}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 683
    move-result v7

    .line 686
    invoke-virtual {v3, v7}, Landroid/view/ViewGroup$MarginLayoutParams;->setMarginEnd(I)V

    .line 687
    :goto_0
    iget-object v7, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 690
    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 692
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 695
    invoke-virtual {v5, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 697
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 700
    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 702
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 705
    const v5, 0x7f0708ed    # @dimen/miui_magazine_a_clock_date_style1_text_size '42.0dp'

    .line 707
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 710
    move-result v5

    .line 713
    int-to-float v5, v5

    .line 714
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 715
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 718
    const v5, 0x7f070904    # @dimen/miui_magazine_a_clock_time_style1_text_size '52.0dp'

    .line 720
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 723
    move-result v5

    .line 726
    int-to-float v5, v5

    .line 727
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 728
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 731
    const v5, 0x7f07090e    # @dimen/miui_magazine_a_clock_week_style1_text_size '24.0dp'

    .line 733
    invoke-virtual {v0, v5}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 736
    move-result v5

    .line 739
    int-to-float v5, v5

    .line 740
    invoke-virtual {v4, v11, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 741
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 744
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi:Landroid/graphics/Typeface;

    .line 746
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 748
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 751
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->chamberi:Landroid/graphics/Typeface;

    .line 753
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 755
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 758
    iget-object v5, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->qinghe:Landroid/graphics/Typeface;

    .line 760
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 762
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 765
    const v5, 0x3cf5c28f    # 0.03f

    .line 767
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 770
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 773
    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setLetterSpacing(F)V

    .line 775
    :goto_1
    iget-object v4, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainerInner:Landroid/view/ViewGroup;

    .line 778
    invoke-virtual {v4, v2}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 780
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 783
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 785
    iget-object v2, v0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineGroup:Landroid/view/ViewGroup;

    .line 788
    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 790
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 793
    iget-object v3, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 795
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 797
    move-result v3

    .line 800
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 801
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 804
    iget-object v3, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 806
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 808
    move-result v3

    .line 811
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 812
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 815
    iget-object v3, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 817
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 819
    move-result v3

    .line 822
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 823
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockInfo:Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;

    .line 826
    iget v2, v2, Lcom/miui/clock/magazine/MiuiMagazineAInfoBase;->mClockStyle:I

    .line 828
    const/4 v3, 0x2

    .line 830
    if-ne v2, v3, :cond_2

    .line 831
    iput v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 833
    iput v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 835
    goto :goto_2

    .line 837
    :cond_2
    const/4 v3, 0x1

    .line 838
    if-ne v2, v3, :cond_3

    .line 839
    iput v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 841
    iput v13, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 843
    goto :goto_2

    .line 845
    :cond_3
    iput v11, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->endToEnd:I

    .line 846
    iput v13, v1, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;->startToStart:I

    .line 848
    :goto_2
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mClockContainer:Landroid/view/ViewGroup;

    .line 850
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 852
    :cond_4
    iget-boolean v1, v0, Lcom/miui/clock/MiuiBaseClock2;->m24HourFormat:Z

    .line 855
    if-eqz v1, :cond_5

    .line 857
    const v1, 0x7f13073a    # @string/miui_clock_time_format_24 'HH:mm'

    .line 859
    goto :goto_3

    .line 862
    :cond_5
    const v1, 0x7f130739    # @string/miui_clock_time_format_12 'hh:mm'

    .line 863
    :goto_3
    iget-object v2, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mTimeText:Landroid/widget/TextView;

    .line 866
    iget-object v3, v0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 868
    invoke-virtual {v3, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 870
    move-result-object v1

    .line 873
    invoke-static {v1}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 874
    move-result-object v1

    .line 877
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 878
    iget-object v1, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 881
    iget-object v2, v0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 883
    const v3, 0x7f130763    # @string/miui_magazine_clock_date 'M/d'

    .line 885
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 888
    move-result-object v2

    .line 891
    invoke-static {v2}, Lcom/miui/clock/utils/DateFormatUtils;->formatTime(Ljava/lang/String;)Ljava/lang/String;

    .line 892
    move-result-object v2

    .line 895
    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 896
    move-result-object v2

    .line 899
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    iget-object v1, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mDateText:Landroid/widget/TextView;

    .line 903
    iget-object v2, v0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 905
    iget-object v3, v0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 907
    const v4, 0x7f130764    # @string/miui_magazine_clock_date_content_description 'MM/dd'

    .line 909
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 912
    move-result-object v4

    .line 915
    invoke-virtual {v2, v3, v4}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 916
    move-result-object v2

    .line 919
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 920
    iget-object v1, v0, Lcom/miui/clock/magazine/MiuiMagazineABase;->mWeekText:Landroid/widget/TextView;

    .line 923
    iget-object v2, v0, Lcom/miui/clock/MiuiBaseClock2;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 925
    iget-object v0, v0, Lcom/miui/clock/MiuiBaseClock2;->mContext:Landroid/content/Context;

    .line 927
    const v3, 0x7f130765    # @string/miui_magazine_clock_week 'EEE'

    .line 929
    invoke-virtual {v0, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 932
    move-result-object v3

    .line 935
    invoke-virtual {v2, v0, v3}, Lmiuix/pickerwidget/date/Calendar;->format(Landroid/content/Context;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 936
    move-result-object v0

    .line 939
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 940
    move-result-object v0

    .line 943
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 944
    return-void
    .line 947
.end method
