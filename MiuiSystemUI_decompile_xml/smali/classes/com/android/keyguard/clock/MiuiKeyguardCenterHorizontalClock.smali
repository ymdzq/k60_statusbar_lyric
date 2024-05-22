.class public Lcom/android/keyguard/clock/MiuiKeyguardCenterHorizontalClock;
.super Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/MiuiKeyguardCenterHorizontalClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    :try_start_0
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 p2, 0x0

    const/4 v0, 0x0

    const v1, 0x7f0d0191    # @layout/miui_center_horizontal_clock 'res/layout/miui_center_horizontal_clock.xml'

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/miui/clock/MiuiBaseClock;

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 4
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->updateLunarCalendarInfo()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string p2, "MiuiKeyguardCenterHorizontalClock"

    const-string v0, "init clock exception"

    .line 5
    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 6
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mClockContainer:Landroid/widget/FrameLayout;

    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public final getNormalStateExtraHeight()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 2
    invoke-virtual {v0}, Lcom/miui/clock/MiuiBaseClock;->getLunarCalendarView()Landroid/view/View;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 8
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->getOwnerInfoExtraHeight()F

    .line 11
    return-void
    .line 14
.end method

.method public setDarkStyle(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 2
    if-ne p1, v0, :cond_0

    .line 4
    if-eqz p2, :cond_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->setTextColorDark(Z)V

    .line 12
    :cond_1
    return-void
    .line 15
.end method
