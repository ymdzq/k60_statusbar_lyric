.class public interface abstract Lcom/miui/clock/MiuiClockController$IClockView;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# virtual methods
.method public clearPassBlur()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract getClockHeight()I
.end method

.method public abstract getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
.end method

.method public getClockViewPosition(Lcom/miui/clock/module/ClockViewType;[I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getClockViewRotateDegree(Lcom/miui/clock/module/ClockViewType;)F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public abstract getGalleryGravity()I
.end method

.method public abstract getHealthJson()Ljava/lang/String;
.end method

.method public abstract getIClockView(Lcom/miui/clock/module/ClockViewType;)Landroid/view/View;
.end method

.method public abstract getLocalCity()Ljava/lang/String;
.end method

.method public abstract getMagazineColor()I
.end method

.method public getMagazinePositionY(Z)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    .line 6
    move-result-object p1

    .line 9
    const-string v0, "getMagazinePositionY default, this = "

    .line 10
    invoke-virtual {v0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    const-string v0, "MiuiClockController"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-interface {p0}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockHeight()I

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public abstract getNotificationClockBottom()I
.end method

.method public getRhombusClockHeight(Lcom/miui/clock/module/ClockViewType;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getRhombusClockWidth(Lcom/miui/clock/module/ClockViewType;)I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getRotateRhombusClockInfo(Lcom/miui/clock/module/ClockViewType;)Lcom/miui/clock/rhombus/MiuiRotateRhombusInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public abstract getTopMargin()F
.end method

.method public abstract getWeatherJson()Ljava/lang/String;
.end method

.method public ignoreAccessibilityScale()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onHighTextContrastEnabledChanged(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onScreenOn()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public abstract setClockAlpha(F)V
.end method

.method public abstract setClockPalette(IZLjava/util/Map;Z)V
.end method

.method public abstract setClockStyleInfo(Lcom/miui/clock/module/ClockStyleInfo;)V
.end method

.method public abstract setCurrentUserId(I)V
.end method

.method public abstract setInfoTextColorDark(Z)V
.end method

.method public abstract setMagazineInfoVisible(Z)V
.end method

.method public abstract setOwnerInfo(Ljava/lang/String;)V
.end method

.method public abstract setScaleRatio(F)V
.end method

.method public abstract setShowLunarCalendar(Z)V
.end method

.method public setSuperSaveOpen(Z)V
    .locals 1

    .line 1
    invoke-interface {p0}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/miui/clock/MiuiClockController$IClockView;->getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;

    .line 8
    move-result-object p0

    .line 11
    iput-boolean p1, p0, Lcom/miui/clock/module/ClockStyleInfo;->isSuperSaveOpen:Z

    .line 12
    :cond_0
    return-void
    .line 14
.end method

.method public abstract setTextColorDark(Z)V
.end method

.method public abstract setWallpaperSupportDepth(Z)V
.end method

.method public abstract updateFaceUnlockIconState(Z)V
.end method

.method public abstract updateResidentTimeZone(Ljava/lang/String;)V
.end method

.method public abstract updateTime()V
.end method

.method public abstract updateTimeZone(Ljava/lang/String;)V
.end method

.method public abstract updateViewTopMargin(Z)V
.end method
