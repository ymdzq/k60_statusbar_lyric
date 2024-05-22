.class public Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;
.super Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mClockContainer:Landroid/widget/FrameLayout;

.field public final mClockExtraInfo:Landroid/widget/LinearLayout;

.field public mLastOwnerInfoString:Ljava/lang/String;

.field public final mLunarCalendarObserver:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;

.field public mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

.field public final mOwnerInfo:Landroid/widget/TextView;

.field public mOwnerInfoString:Ljava/lang/String;

.field public mShowLunarCalendar:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    .line 3
    iput-object p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    .line 4
    iput-object p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLastOwnerInfoString:Ljava/lang/String;

    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mShowLunarCalendar:Z

    .line 6
    new-instance v1, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;-><init>(Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLunarCalendarObserver:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;

    .line 7
    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 8
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 9
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 10
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    move-result p1

    iput p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    .line 11
    new-instance p1, Landroid/security/MiuiLockPatternUtils;

    iget-object v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    invoke-direct {p1, v2}, Landroid/security/MiuiLockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 12
    iget-object v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0d00f9    # @layout/keyguard_base_clock_layout 'res/layout/keyguard_base_clock_layout.xml'

    invoke-virtual {v2, v3, p0, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    const v3, 0x7f0a01fe    # @id/clock_container1

    .line 13
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout;

    iput-object v3, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mClockContainer:Landroid/widget/FrameLayout;

    const v3, 0x7f0a05ce    # @id/miui_keyguard_clock_extra_info

    .line 14
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mClockExtraInfo:Landroid/widget/LinearLayout;

    const v3, 0x7f0a0a2f    # @id/unlock_screen_owner_info

    .line 15
    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    const v4, 0x7f0a0a2d    # @id/unlock_screen_lock_screen_magazine_info

    .line 16
    invoke-virtual {v2, v4}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    const/16 v5, 0x8

    .line 17
    invoke-virtual {v4, v5}, Landroid/view/View;->setVisibility(I)V

    .line 18
    invoke-virtual {p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    if-nez v3, :cond_0

    goto :goto_1

    .line 19
    :cond_0
    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->isDeviceOwnerInfoEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 20
    invoke-virtual {p1}, Landroid/security/MiuiLockPatternUtils;->getDeviceOwnerInfo()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    goto :goto_0

    .line 21
    :cond_1
    iget v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    invoke-virtual {p1, v2}, Landroid/security/MiuiLockPatternUtils;->isOwnerInfoEnabled(I)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 22
    iget p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    invoke-virtual {p1, p2}, Landroid/security/MiuiLockPatternUtils;->getOwnerInfo(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    goto :goto_0

    .line 23
    :cond_2
    iput-object p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    .line 24
    iget v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mUserId:I

    invoke-virtual {p1, p2, v2}, Landroid/security/MiuiLockPatternUtils;->setOwnerInfo(Ljava/lang/String;I)V

    .line 25
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 26
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 27
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 28
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    iget-object p2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLastOwnerInfoString:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 29
    iget-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfoString:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLastOwnerInfoString:Ljava/lang/String;

    .line 30
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 31
    :cond_3
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 32
    :cond_4
    :goto_1
    invoke-virtual {v1, v0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;->onChange(Z)V

    return-void
.end method


# virtual methods
.method public getNormalStateExtraHeight()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public getOwnerInfoExtraHeight()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 10
    invoke-virtual {v0}, Landroid/widget/TextView;->getMeasuredHeight()I

    .line 12
    move-result v0

    .line 15
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const v1, 0x7f0704a1    # @dimen/keyguard_owner_info_top_margin '10.2dp'

    .line 22
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result p0

    .line 28
    add-int/2addr p0, v0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    int-to-float p0, p0

    .line 32
    return p0
    .line 33
.end method

.method public final onAttachedToWindow()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 10
    const-string/jumbo v1, "show_lunar_calendar"

    .line 11
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 14
    move-result-object v1

    .line 17
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLunarCalendarObserver:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;

    .line 18
    const/4 v2, -0x1

    .line 20
    const/4 v3, 0x0

    .line 21
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 22
    return-void
    .line 25
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->getNormalStateExtraHeight()V

    .line 5
    return-void
    .line 8
.end method

.method public final onDetachedFromWindow()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->onDetachedFromWindow()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 7
    move-result-object v0

    .line 10
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mLunarCalendarObserver:Lcom/android/keyguard/clock/MiuiKeyguardSingleClock$1;

    .line 11
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 13
    return-void
    .line 16
.end method

.method public final updateHourFormat()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateHourFormat()V

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    iget-boolean p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->m24HourFormat:Z

    .line 9
    invoke-virtual {v0, p0}, Lcom/miui/clock/MiuiBaseClock;->setIs24HourFormat(Z)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final updateLunarCalendarInfo()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mShowLunarCalendar:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Ljava/util/Locale;->CHINESE:Ljava/util/Locale;

    .line 10
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    iget-object v1, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mLanguage:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 27
    invoke-virtual {p0, v0}, Lcom/miui/clock/MiuiBaseClock;->setShowLunarCalendar(Z)V

    .line 29
    :cond_1
    return-void
    .line 32
.end method

.method public final updateTime()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/clock/MiuiBaseClock;->updateTime()V

    .line 6
    :cond_0
    return-void
    .line 9
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
    invoke-virtual {p0}, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->updateTime()V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 12
    if-eqz p0, :cond_1

    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/clock/MiuiBaseClock;->updateTimeZone(Ljava/lang/String;)V

    .line 16
    :cond_1
    return-void
    .line 19
.end method

.method public final updateViewsLayoutParams()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mMiuiBaseClock:Lcom/miui/clock/MiuiBaseClock;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/clock/MiuiBaseClock;->updateViewTopMargin(Z)V

    .line 7
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mClockExtraInfo:Landroid/widget/LinearLayout;

    .line 10
    const/16 v1, 0x11

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 20
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 22
    iget-object v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mClockExtraInfo:Landroid/widget/LinearLayout;

    .line 24
    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 26
    :cond_1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 37
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 39
    iget-object v2, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 41
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 43
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 46
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 48
    :cond_2
    return-void
    .line 51
.end method

.method public final updateViewsTextSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v0

    .line 7
    const v1, 0x7f0707ea    # @dimen/miui_clock_date_text_size '17.0sp'

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 11
    move-result v0

    .line 14
    iget-object p0, p0, Lcom/android/keyguard/clock/MiuiKeyguardSingleClock;->mOwnerInfo:Landroid/widget/TextView;

    .line 15
    const/4 v1, 0x0

    .line 17
    int-to-float v0, v0

    .line 18
    invoke-virtual {p0, v1, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 19
    return-void
    .line 22
.end method
