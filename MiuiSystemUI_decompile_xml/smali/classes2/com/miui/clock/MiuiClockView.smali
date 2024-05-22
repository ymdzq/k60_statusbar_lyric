.class public Lcom/miui/clock/MiuiClockView;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/miui/clock/MiuiClockView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    :cond_0
    return-void
.end method


# virtual methods
.method public getClockBean()Lcom/miui/clock/module/ClockBean;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getClockHeight()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getClockPalette()Ljava/util/Map;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getClockPaletteType()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getClockStyleInfo()Lcom/miui/clock/module/ClockStyleInfo;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public getClockVisibleHeight()F
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getGalleryGravity()I
    .locals 0

    .line 1
    const p0, 0x800003

    .line 2
    return p0
    .line 5
.end method

.method public getHealthJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public getLocalCity()Ljava/lang/String;
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
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationClockBottom()I
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public getNotificationRelativePosition()I
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
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

.method public getWeatherJson()Ljava/lang/String;
    .locals 0

    .line 1
    const-string p0, ""

    .line 2
    return-object p0
    .line 4
.end method

.method public final onAttachedToWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public setAutoDualClock(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setAutoUpdateTime(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockAlpha(F)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockBean(Lcom/miui/clock/module/ClockBean;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockPalette(IZLjava/util/Map;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockPaletteChangeListener(Lcom/miui/clock/MiuiClockController$ClockPaletteChangeListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setClockStyle(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setHasTopMargin(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setInfoTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setLocalCity(Ljava/lang/String;)V
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

.method public setMinuteColor(II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setMiuiClockInfoListener(Lcom/miui/clock/MiuiClockController$MiuiClockInfoListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
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

.method public setShowLunarCalendar(I)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTextColorDark(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setTimeUpdateListener(Lcom/miui/clock/MiuiClockController$TimeUpdateListener;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setWallpaperSupportDepth(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
