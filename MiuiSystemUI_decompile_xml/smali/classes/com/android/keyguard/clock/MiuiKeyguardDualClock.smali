.class public Lcom/android/keyguard/clock/MiuiKeyguardDualClock;
.super Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public final mLocalCityChangeListener:Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;

.field public final mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3
    new-instance p1, Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;

    invoke-direct {p1, p0}, Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;-><init>(Lcom/android/keyguard/clock/MiuiKeyguardDualClock;)V

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mLocalCityChangeListener:Lcom/android/keyguard/clock/MiuiKeyguardDualClock$$ExternalSyntheticLambda0;

    const/4 p2, 0x0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLayoutInflater:Landroid/view/LayoutInflater;

    const/4 v1, 0x0

    const v2, 0x7f0d01ab    # @layout/miui_dual_clock 'res/layout/miui_dual_clock.xml'

    invoke-virtual {v0, v2, v1, p2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/miui/clock/MiuiDualClock;

    iput-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/clock/MiuiDualClock;->setOnLocalCityChangeListener(Lcom/miui/clock/MiuiDualClock$OnLocalCityChangeListener;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "MiuiKeyguardDualClock"

    const-string v1, "init clock exception"

    .line 6
    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 7
    :goto_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f070884    # @dimen/miui_keyguard_clock_margin_bottom '20.0dp'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {p0, p2, p2, p2, p1}, Landroid/widget/FrameLayout;->setPadding(IIII)V

    .line 8
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public setDarkStyle(ZZ)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 2
    if-ne v0, p1, :cond_0

    .line 4
    if-eqz p2, :cond_1

    .line 6
    :cond_0
    iput-boolean p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mDarkStyle:Z

    .line 8
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiDualClock;->setTextColorDark(Z)V

    .line 12
    :cond_1
    return-void
    .line 15
.end method

.method public final updateHourFormat()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateHourFormat()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->m24HourFormat:Z

    .line 9
    invoke-virtual {v0, p0}, Lcom/miui/clock/MiuiDualClock;->setIs24HourFormat(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final updateResidentTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiDualClock;->updateResidentTimeZone(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method

.method public final updateTime()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 2
    invoke-virtual {p0}, Lcom/miui/clock/MiuiDualClock;->updateTime()V

    .line 4
    return-void
    .line 7
.end method

.method public final updateTimeZone(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardDualClock;->mMiuiDualClock:Lcom/miui/clock/MiuiDualClock;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiDualClock;->updateTimeZone(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method
