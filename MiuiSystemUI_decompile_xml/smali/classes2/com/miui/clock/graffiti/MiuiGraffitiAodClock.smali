.class public Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;
.super Lcom/miui/clock/MiuiGalleryBaseClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

.field public mChoosePaletteType:I

.field public mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

.field public mPalette:Ljava/util/Map;

.field public mTextDark:Z


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

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/clock/MiuiGalleryBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    return-object p0
    .line 4
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
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->ALL_VIEW:Lcom/miui/clock/module/ClockViewType;

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 6
    return-object p0

    .line 8
    :cond_0
    sget-object v0, Lcom/miui/clock/module/ClockViewType;->CLOCK_CONTAINER:Lcom/miui/clock/module/ClockViewType;

    .line 9
    if-ne p1, v0, :cond_1

    .line 11
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 13
    return-object p0

    .line 15
    :cond_1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;

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

.method public bridge synthetic getMagazineColor()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationClockBottom()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/clock/MiuiGalleryBaseClock;->mMagazineInfoVisible:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const v0, 0x7f070d74    # @dimen/notification_bottom_graffiti_with_gallery '302.0dp'

    .line 6
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 9
    move-result p0

    .line 12
    return p0

    .line 13
    :cond_0
    const v0, 0x7f070d73    # @dimen/notification_bottom_graffiti '274.0dp'

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock2;->getDimen(I)I

    .line 17
    move-result p0

    .line 20
    return p0
    .line 21
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

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiBaseClock2;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->invalidate()V

    .line 5
    return-void
    .line 8
.end method

.method public final onFinishInflate()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/clock/MiuiGalleryBaseClock;->onFinishInflate()V

    .line 2
    const v0, 0x7f0a022e    # @id/content_miui_graffiti

    .line 5
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 12
    iput-object v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 14
    const v1, 0x7f0a03d9    # @id/guideline

    .line 16
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    .line 19
    move-result-object v0

    .line 22
    check-cast v0, Landroidx/constraintlayout/widget/Guideline;

    .line 23
    const/high16 v1, 0x3f000000    # 0.5f

    .line 25
    invoke-virtual {v0, v1}, Landroidx/constraintlayout/widget/Guideline;->setGuidelinePercent(F)V

    .line 27
    new-instance v0, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;

    .line 30
    const/4 v1, -0x1

    .line 32
    const/4 v2, -0x2

    .line 33
    invoke-direct {v0, v1, v2}, Landroidx/constraintlayout/widget/ConstraintLayout$LayoutParams;-><init>(II)V

    .line 34
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 37
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 39
    return-void
    .line 42
.end method

.method public setClockPalette(IZLjava/util/Map;Z)V
    .locals 6

    .line 1
    iput p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mChoosePaletteType:I

    .line 2
    iput-boolean p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mTextDark:Z

    .line 4
    iput-object p3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mPalette:Ljava/util/Map;

    .line 6
    const-string v0, "secondary60"

    .line 8
    const-string v1, "primary18"

    .line 10
    const-string v2, "primary7"

    .line 12
    if-eqz p3, :cond_0

    .line 14
    new-instance v3, Ljava/lang/StringBuilder;

    .line 16
    const-string v4, "primary7="

    .line 18
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 20
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v4

    .line 26
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 27
    const-string v4, ",primary18="

    .line 30
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 39
    const-string v4, ",secondary60="

    .line 42
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 44
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 51
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 54
    move-result-object v3

    .line 57
    goto :goto_0

    .line 58
    :cond_0
    const-string v3, "null"

    .line 59
    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 61
    const-string/jumbo v5, "setClockPalette: type = "

    .line 63
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    const-string v5, ", textDark = "

    .line 72
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 77
    const-string p2, ", palette = "

    .line 80
    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    const-string p2, "MiuiGraffitiAodClock ClockPalette"

    .line 85
    invoke-static {v4, v3, p2}, Landroidx/exifinterface/media/ExifInterface$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object p2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 90
    if-eqz p2, :cond_7

    .line 92
    invoke-virtual {p2}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 94
    move-result p2

    .line 97
    iget-object v3, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 98
    invoke-virtual {v3}, Lcom/miui/clock/module/ClockStyleInfo;->isAutoPrimaryColor()Z

    .line 100
    move-result v3

    .line 103
    if-eqz v3, :cond_6

    .line 104
    const/4 p2, 0x1

    .line 106
    if-ne p1, p2, :cond_2

    .line 107
    if-eqz p3, :cond_1

    .line 109
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 111
    move-result-object p1

    .line 114
    if-eqz p1, :cond_1

    .line 115
    invoke-interface {p3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 117
    move-result-object p1

    .line 120
    check-cast p1, Ljava/lang/Integer;

    .line 121
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 123
    move-result p1

    .line 126
    goto :goto_1

    .line 127
    :cond_1
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 128
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 130
    move-result p1

    .line 133
    :goto_1
    move p2, p1

    .line 134
    goto :goto_2

    .line 135
    :cond_2
    const/4 p2, 0x2

    .line 136
    if-ne p1, p2, :cond_4

    .line 137
    if-eqz p3, :cond_3

    .line 139
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 144
    if-eqz p1, :cond_3

    .line 145
    invoke-interface {p3, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    move-result-object p1

    .line 150
    check-cast p1, Ljava/lang/Integer;

    .line 151
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 153
    move-result p1

    .line 156
    goto :goto_1

    .line 157
    :cond_3
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 158
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 160
    move-result p1

    .line 163
    goto :goto_1

    .line 164
    :cond_4
    if-eqz p3, :cond_5

    .line 165
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    move-result-object p1

    .line 170
    if-eqz p1, :cond_5

    .line 171
    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 173
    move-result-object p1

    .line 176
    check-cast p1, Ljava/lang/Integer;

    .line 177
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 179
    move-result p1

    .line 182
    goto :goto_1

    .line 183
    :cond_5
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 184
    invoke-virtual {p1}, Lcom/miui/clock/module/ClockStyleInfo;->getPrimaryColor()I

    .line 186
    move-result p1

    .line 189
    goto :goto_1

    .line 190
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 191
    invoke-static {p2}, Lcom/miui/clock/utils/GlobalColorUtils;->transformAodColor(I)I

    .line 193
    move-result p2

    .line 196
    invoke-virtual {p1, p2}, Lcom/miui/clock/module/ClockStyleInfo;->setPrimaryColor(I)V

    .line 197
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 200
    invoke-virtual {p1, p4}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->setWallpaperSupportDepth(Z)V

    .line 202
    iget-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 205
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 207
    invoke-virtual {p1, p0}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 209
    :cond_7
    return-void
    .line 212
.end method

.method public setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 2
    iput-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mClockInfo:Lcom/miui/clock/graffiti/MiuiGraffitiClockInfoBase;

    .line 4
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V

    .line 8
    return-void
    .line 11
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

.method public setWallpaperSupportDepth(Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/clock/MiuiGalleryBaseClock;->setWallpaperSupportDepth(Z)V

    .line 2
    iget v0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mChoosePaletteType:I

    .line 5
    iget-boolean v1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mTextDark:Z

    .line 7
    iget-object v2, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->mPalette:Ljava/util/Map;

    .line 9
    invoke-virtual {p0, v0, v1, v2, p1}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->setClockPalette(IZLjava/util/Map;Z)V

    .line 11
    return-void
    .line 14
.end method

.method public final updateTime()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->updateTime()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClock;->clockView:Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    invoke-static {p1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    .line 14
    move-result-object p1

    .line 17
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/TimeZone;)Ljava/util/Calendar;

    .line 18
    move-result-object p1

    .line 21
    iput-object p1, p0, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->mCalendar:Ljava/util/Calendar;

    .line 22
    invoke-virtual {p0}, Lcom/miui/clock/graffiti/MiuiGraffitiAodClockView;->updateTime()V

    .line 24
    :goto_0
    return-void
    .line 27
.end method
