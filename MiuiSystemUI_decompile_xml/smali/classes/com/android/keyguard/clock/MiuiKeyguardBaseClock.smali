.class public Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;
.super Landroid/widget/FrameLayout;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public m24HourFormat:Z

.field public mContext:Landroid/content/Context;

.field public mDarkStyle:Z

.field public mDensityDpi:I

.field public mFontScale:F

.field public mLanguage:Ljava/lang/String;

.field public mLayoutInflater:Landroid/view/LayoutInflater;

.field public mOrientation:I

.field public mSmalleastScreenWidth:I

.field public mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-boolean p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 4
    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mOrientation:I

    .line 8
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    .line 9
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLanguage:Ljava/lang/String;

    .line 10
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateHourFormat()V

    return-void
.end method


# virtual methods
.method public getClockHeight()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getHeight()I

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

.method public final hasOverlappingRendering()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 2
    iget-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 5
    const/4 v1, 0x1

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->setDarkStyle(ZZ)V

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsLayoutParams()V

    .line 11
    return-void
    .line 14
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget v0, p1, Landroid/content/res/Configuration;->fontScale:F

    .line 5
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mFontScale:F

    .line 7
    cmpl-float v1, v1, v0

    .line 9
    if-eqz v1, :cond_0

    .line 11
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsTextSize()V

    .line 13
    iput v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mFontScale:F

    .line 16
    :cond_0
    iget v0, p1, Landroid/content/res/Configuration;->densityDpi:I

    .line 18
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDensityDpi:I

    .line 20
    if-eq v1, v0, :cond_1

    .line 22
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsTextSize()V

    .line 24
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsLayoutParams()V

    .line 27
    iput v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDensityDpi:I

    .line 30
    :cond_1
    iget v0, p1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 32
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mSmalleastScreenWidth:I

    .line 34
    if-eq v1, v0, :cond_2

    .line 36
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsLayoutParams()V

    .line 38
    iput v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mSmalleastScreenWidth:I

    .line 41
    :cond_2
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 43
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 45
    move-result-object v0

    .line 48
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 49
    move-result v1

    .line 52
    if-nez v1, :cond_3

    .line 53
    iget-object v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLanguage:Ljava/lang/String;

    .line 55
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 57
    move-result v1

    .line 60
    if-nez v1, :cond_3

    .line 61
    iput-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLanguage:Ljava/lang/String;

    .line 63
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateLunarCalendarInfo()V

    .line 65
    :cond_3
    iget v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mOrientation:I

    .line 68
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 70
    if-eq v0, p1, :cond_4

    .line 72
    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mOrientation:I

    .line 74
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateViewsLayoutParams()V

    .line 76
    :cond_4
    return-void
    .line 79
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 2
    return-void
    .line 5
.end method

.method public final onFinishInflate()V
    .locals 0

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onFinishInflate()V

    .line 2
    return-void
    .line 5
.end method

.method public setDarkStyle(ZZ)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 2
    return-void
    .line 4
.end method

.method public updateHourFormat()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 2
    iget v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    .line 4
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 6
    move-result v0

    .line 9
    iput-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->m24HourFormat:Z

    .line 10
    return-void
    .line 12
.end method

.method public updateLunarCalendarInfo()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateResidentTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTime()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateViewsLayoutParams()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public updateViewsTextSize()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
