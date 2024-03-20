.class public final Lcom/android/keyguard/KeyguardClockSwitchController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

.field public final mClockEventController:Lcom/android/keyguard/ClockEventController;

.field public final mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

.field public mCurrentClockSize:I

.field public mDateWeatherView:Landroid/view/ViewGroup;

.field public final mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

.field public final mDumpManager:Lcom/android/systemui/dump/DumpManager;

.field public mKeyguardDateWeatherViewInvisibility:I

.field public final mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

.field public final mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

.field public final mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

.field public mLargeClockFrame:Landroid/widget/FrameLayout;

.field public final mLogBuffer:Lcom/android/systemui/log/LogBuffer;

.field public final mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

.field public mOnlyClock:Z

.field public final mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

.field public final mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

.field public mSmallClockFrame:Landroid/widget/FrameLayout;

.field public final mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

.field public mSmartspaceView:Landroid/view/View;

.field public mStatusArea:Landroid/view/ViewGroup;

.field public final mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

.field public final mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

.field public mWeatherView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardClockSwitch;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shared/clocks/ClockRegistry;Lcom/android/keyguard/KeyguardSliceViewController;Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;Lcom/android/systemui/util/settings/SecureSettings;Lcom/android/systemui/util/concurrency/DelayableExecutor;Lcom/android/systemui/dump/DumpManager;Lcom/android/keyguard/ClockEventController;Lcom/android/systemui/log/LogBuffer;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    .line 6
    const/4 v1, 0x4

    .line 8
    iput v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    .line 9
    const/4 v1, 0x0

    .line 11
    iput-boolean v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    .line 12
    new-instance v2, Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 14
    invoke-direct {v2, p0, v1}, Lcom/android/keyguard/KeyguardClockSwitchController$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;I)V

    .line 16
    iput-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 19
    new-instance v1, Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 21
    invoke-direct {v1, p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController$1;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;I)V

    .line 23
    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 26
    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$3;

    .line 28
    invoke-direct {v0, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$3;-><init>(Lcom/android/keyguard/KeyguardClockSwitchController;)V

    .line 30
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    .line 33
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 35
    iput-object p3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 37
    iput-object p4, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 39
    iput-object p5, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 41
    iput-object p6, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 43
    iput-object p8, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 45
    iput-object p9, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 47
    iput-object p7, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 49
    iput-object p10, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 51
    iput-object p11, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 53
    iput-object p12, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 55
    invoke-virtual {p1, p12}, Lcom/android/keyguard/KeyguardClockSwitch;->setLogBuffer(Lcom/android/systemui/log/LogBuffer;)V

    .line 57
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$4;

    .line 60
    invoke-direct {p1}, Lcom/android/keyguard/KeyguardClockSwitchController$4;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    .line 65
    return-void
    .line 67
.end method


# virtual methods
.method public final addDateWeatherView(I)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    move-object v1, v0

    .line 4
    check-cast v1, Landroid/view/ViewGroup;

    .line 5
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 7
    iget-object v3, v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 9
    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 11
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    .line 14
    move-result v3

    .line 17
    const-string v4, "Cannot build view when not enabled"

    .line 18
    if-eqz v3, :cond_4

    .line 20
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    .line 22
    move-result v3

    .line 25
    if-eqz v3, :cond_3

    .line 26
    iget-object v3, v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->datePlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 28
    const/4 v5, 0x0

    .line 30
    invoke-virtual {v2, v1, v3, v5}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    .line 31
    move-result-object v1

    .line 34
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    .line 35
    check-cast v1, Landroid/view/ViewGroup;

    .line 38
    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 40
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    .line 42
    const/4 v3, -0x1

    .line 44
    const/4 v6, -0x2

    .line 45
    invoke-direct {v1, v3, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 46
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 49
    iget-object v7, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {v3, v7, p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 56
    move-result-object p1

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 60
    move-result-object p1

    .line 63
    const v1, 0x7f0700e2    # @dimen/below_clock_padding_start '32.0dp'

    .line 64
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 67
    move-result p1

    .line 70
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 71
    move-result-object v1

    .line 74
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 75
    move-result-object v1

    .line 78
    const v3, 0x7f0700e1    # @dimen/below_clock_padding_end '16.0dp'

    .line 79
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 82
    move-result v1

    .line 85
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 86
    const/4 v7, 0x0

    .line 88
    invoke-virtual {v3, p1, v7, v1, v7}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 89
    new-instance p1, Landroid/widget/LinearLayout$LayoutParams;

    .line 92
    invoke-direct {p1, v6, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 94
    check-cast v0, Landroid/view/ViewGroup;

    .line 97
    iget-object v1, v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 99
    invoke-virtual {v1}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 101
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    .line 104
    move-result v1

    .line 107
    if-eqz v1, :cond_2

    .line 108
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    .line 110
    move-result v1

    .line 113
    if-eqz v1, :cond_1

    .line 114
    iget-object v1, v2, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->weatherPlugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 116
    invoke-virtual {v2, v0, v1, v5}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    .line 118
    move-result-object v0

    .line 121
    invoke-virtual {v2}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    .line 122
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 125
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 127
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    .line 129
    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    move v0, v7

    .line 135
    goto :goto_0

    .line 136
    :cond_0
    const/4 v0, 0x1

    .line 137
    :goto_0
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 138
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 140
    invoke-virtual {v1, v2, v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 142
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 145
    const/4 p1, 0x4

    .line 147
    invoke-virtual {p0, v7, v7, p1, v7}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 148
    return-void

    .line 151
    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 152
    const-string p1, "Cannot build weather view when not decoupled"

    .line 154
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 156
    throw p0

    .line 159
    :cond_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 160
    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 162
    throw p0

    .line 165
    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    .line 166
    const-string p1, "Cannot build date view when not decoupled"

    .line 168
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 170
    throw p0

    .line 173
    :cond_4
    new-instance p0, Ljava/lang/RuntimeException;

    .line 174
    invoke-direct {p0, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 176
    throw p0
    .line 179
.end method

.method public final addSmartspaceView(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 2
    check-cast v0, Landroid/view/ViewGroup;

    .line 4
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 6
    iget-object v2, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 8
    invoke-virtual {v2}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 10
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    .line 13
    move-result v2

    .line 16
    if-eqz v2, :cond_0

    .line 17
    iget-object v2, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->plugin:Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;

    .line 19
    iget-object v3, v1, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->configPlugin:Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;

    .line 21
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->buildView(Landroid/view/ViewGroup;Lcom/android/systemui/plugins/BcSmartspaceDataPlugin;Lcom/android/systemui/plugins/BcSmartspaceConfigPlugin;)Landroid/view/View;

    .line 23
    move-result-object v0

    .line 26
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->connectSession()V

    .line 27
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 30
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 32
    const/4 v1, -0x1

    .line 34
    const/4 v2, -0x2

    .line 35
    invoke-direct {v0, v1, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 36
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 39
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 41
    invoke-virtual {v1, v2, p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 43
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 46
    move-result-object p1

    .line 49
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 50
    move-result-object p1

    .line 53
    const v0, 0x7f0700e2    # @dimen/below_clock_padding_start '32.0dp'

    .line 54
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 57
    move-result p1

    .line 60
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 61
    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 65
    move-result-object v0

    .line 68
    const v1, 0x7f0700e1    # @dimen/below_clock_padding_end '16.0dp'

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 72
    move-result v0

    .line 75
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 76
    const/4 v2, 0x0

    .line 78
    invoke-virtual {v1, p1, v2, v0, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 79
    iget-object p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceView:Landroid/view/View;

    .line 82
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 84
    iput-object p1, p0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->lockscreenSmartspace:Landroid/view/View;

    .line 86
    return-void

    .line 88
    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    .line 89
    const-string p1, "Cannot build view when not enabled"

    .line 91
    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 93
    throw p0
    .line 96
.end method

.method public final displayClock(IZ)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    .line 7
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 10
    iget-object v0, v0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 12
    iget-object v1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 14
    check-cast v1, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 16
    iget-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 18
    const/4 v3, 0x0

    .line 20
    if-eqz v2, :cond_1

    .line 21
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 23
    move-result v2

    .line 26
    if-ne p1, v2, :cond_1

    .line 27
    goto :goto_1

    .line 29
    :cond_1
    iget-boolean v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mChildrenAreLaidOut:Z

    .line 30
    const/4 v4, 0x1

    .line 32
    if-eqz v2, :cond_3

    .line 33
    if-nez p1, :cond_2

    .line 35
    move v2, v4

    .line 37
    goto :goto_0

    .line 38
    :cond_2
    move v2, v3

    .line 39
    :goto_0
    invoke-virtual {v1, v2, v3}, Lcom/android/keyguard/KeyguardClockSwitch;->updateClockViews(ZZ)V

    .line 40
    :cond_3
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    move-result-object v2

    .line 46
    iput-object v2, v1, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 47
    move v3, v4

    .line 49
    :goto_1
    if-eqz v0, :cond_4

    .line 50
    if-eqz p2, :cond_4

    .line 52
    if-eqz v3, :cond_4

    .line 54
    if-nez p1, :cond_4

    .line 56
    new-instance p1, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    .line 58
    const/4 p2, 0x3

    .line 60
    invoke-direct {p1, p2, v0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 61
    const-wide/16 v0, 0x85

    .line 64
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 66
    invoke-interface {p0, p1, v0, v1}, Lcom/android/systemui/util/concurrency/DelayableExecutor;->executeDelayed(Ljava/lang/Runnable;J)Lcom/android/systemui/util/concurrency/ExecutorImpl$ExecutionToken;

    .line 68
    :cond_4
    return-void
    .line 71
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4

    .line 1
    new-instance p2, Ljava/lang/StringBuilder;

    .line 2
    const-string v0, "currentClockSizeLarge: "

    .line 4
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    .line 9
    if-nez v0, :cond_0

    .line 11
    const/4 v0, 0x1

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    :goto_0
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p2

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 23
    const-string p2, "mCanShowDoubleLineClock: false"

    .line 26
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 28
    iget-object p2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 31
    check-cast p2, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 33
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 35
    const-string v0, "KeyguardClockSwitch:"

    .line 38
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 40
    new-instance v0, Ljava/lang/StringBuilder;

    .line 43
    const-string v1, "  mSmallClockFrame = "

    .line 45
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    iget-object v1, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 52
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 59
    new-instance v0, Ljava/lang/StringBuilder;

    .line 62
    const-string v1, "  mSmallClockFrame.alpha = "

    .line 64
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 66
    iget-object v1, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 69
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 71
    move-result v1

    .line 74
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 75
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 78
    move-result-object v0

    .line 81
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 82
    new-instance v0, Ljava/lang/StringBuilder;

    .line 85
    const-string v1, "  mLargeClockFrame = "

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    iget-object v1, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    .line 92
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 94
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 97
    move-result-object v0

    .line 100
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 101
    new-instance v0, Ljava/lang/StringBuilder;

    .line 104
    const-string v1, "  mLargeClockFrame.alpha = "

    .line 106
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 108
    iget-object v1, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mLargeClockFrame:Lcom/android/keyguard/KeyguardClockFrame;

    .line 111
    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getAlpha()F

    .line 113
    move-result v1

    .line 116
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 117
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 123
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    .line 127
    const-string v1, "  mStatusArea = "

    .line 129
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 131
    iget-object v1, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mStatusArea:Lcom/android/keyguard/KeyguardStatusAreaView;

    .line 134
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 136
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 139
    move-result-object v0

    .line 142
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    .line 146
    const-string v1, "  mDisplayedClockSize = "

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 150
    iget-object p2, p2, Lcom/android/keyguard/KeyguardClockSwitch;->mDisplayedClockSize:Ljava/lang/Integer;

    .line 153
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object p2

    .line 161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 162
    iget-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 165
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 167
    const-string v0, "ClockRegistry:"

    .line 170
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 172
    iget-object v0, p2, Lcom/android/systemui/shared/clocks/ClockRegistry;->settings:Lcom/android/systemui/plugins/ClockSettings;

    .line 175
    new-instance v1, Ljava/lang/StringBuilder;

    .line 177
    const-string v2, "  settings = "

    .line 179
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 181
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 184
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 187
    move-result-object v0

    .line 190
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 191
    iget-object p2, p2, Lcom/android/systemui/shared/clocks/ClockRegistry;->availableClocks:Ljava/util/concurrent/ConcurrentHashMap;

    .line 194
    invoke-virtual {p2}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    .line 196
    move-result-object p2

    .line 199
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 200
    move-result-object p2

    .line 203
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 204
    move-result v0

    .line 207
    if-eqz v0, :cond_1

    .line 208
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 210
    move-result-object v0

    .line 213
    check-cast v0, Ljava/util/Map$Entry;

    .line 214
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 216
    move-result-object v1

    .line 219
    check-cast v1, Ljava/lang/String;

    .line 220
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 222
    move-result-object v0

    .line 225
    check-cast v0, Lcom/android/systemui/shared/clocks/ClockRegistry$ClockInfo;

    .line 226
    new-instance v2, Ljava/lang/StringBuilder;

    .line 228
    const-string v3, "  availableClocks["

    .line 230
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 235
    const-string v1, "] = "

    .line 238
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 240
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 243
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 246
    move-result-object v0

    .line 249
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 250
    goto :goto_1

    .line 253
    :cond_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 254
    iget-object p2, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 256
    if-eqz p2, :cond_2

    .line 258
    invoke-interface {p2, p1}, Lcom/android/systemui/plugins/ClockController;->dump(Ljava/io/PrintWriter;)V

    .line 260
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 263
    return-void
    .line 266
.end method

.method public final onInit()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardSliceViewController:Lcom/android/keyguard/KeyguardSliceViewController;

    .line 2
    invoke-virtual {v0}, Lcom/android/systemui/util/ViewController;->init()V

    .line 4
    iget-object v0, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 7
    check-cast v0, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 9
    const v1, 0x7f0a052d    # @id/lockscreen_clock_view

    .line 11
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Landroid/widget/FrameLayout;

    .line 18
    iput-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 20
    const v1, 0x7f0a052e    # @id/lockscreen_clock_view_large

    .line 22
    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 25
    move-result-object v0

    .line 28
    check-cast v0, Landroid/widget/FrameLayout;

    .line 29
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 31
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 33
    instance-of v1, v0, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 35
    if-eqz v1, :cond_0

    .line 37
    new-instance v1, Lcom/android/keyguard/clock/DisplayExtClockContainerController;

    .line 39
    check-cast v0, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 41
    invoke-direct {v1, v0}, Lcom/android/keyguard/clock/DisplayExtClockContainerController;-><init>(Lcom/android/keyguard/clock/DisplayExtClockContainer;)V

    .line 43
    invoke-virtual {v1}, Lcom/android/systemui/util/ViewController;->init()V

    .line 46
    :cond_0
    const-class v0, Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 51
    move-result-object v1

    .line 54
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDumpManager:Lcom/android/systemui/dump/DumpManager;

    .line 55
    invoke-virtual {v2, v1}, Lcom/android/systemui/dump/DumpManager;->unregisterDumpable(Ljava/lang/String;)V

    .line 57
    invoke-virtual {v0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 60
    move-result-object v0

    .line 63
    invoke-virtual {v2, v0, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Ljava/lang/String;Lcom/android/systemui/Dumpable;)V

    .line 64
    return-void
    .line 67
.end method

.method public final onViewAttached()V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 7
    iget-object v1, v0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    .line 10
    check-cast v1, Ljava/util/ArrayList;

    .line 12
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    .line 14
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v0}, Lcom/android/systemui/shared/clocks/ClockRegistry;->createCurrentClock()Lcom/android/systemui/plugins/ClockController;

    .line 19
    move-result-object v0

    .line 22
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClock(Lcom/android/systemui/plugins/ClockController;)V

    .line 23
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 26
    iget-boolean v1, v0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    .line 28
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 30
    if-eqz v1, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    .line 36
    iget-object v3, v0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 38
    iget-object v4, v0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    .line 40
    new-instance v5, Landroid/content/IntentFilter;

    .line 42
    const-string v1, "android.intent.action.LOCALE_CHANGED"

    .line 44
    invoke-direct {v5, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 46
    const/4 v6, 0x0

    .line 49
    const/4 v7, 0x0

    .line 50
    const/4 v8, 0x0

    .line 51
    const/4 v9, 0x0

    .line 52
    const/16 v10, 0x3c

    .line 53
    invoke-static/range {v3 .. v10}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->registerReceiver$default(Lcom/android/systemui/broadcast/BroadcastDispatcher;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/util/concurrent/Executor;Landroid/os/UserHandle;ILjava/lang/String;I)V

    .line 55
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 58
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 60
    iget-object v3, v0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    .line 62
    invoke-virtual {v1, v3}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 64
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 67
    iget-object v3, v0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    .line 69
    invoke-interface {v1, v3}, Lcom/android/systemui/statusbar/policy/CallbackController;->addCallback(Ljava/lang/Object;)V

    .line 71
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 74
    iget-object v3, v0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    .line 76
    invoke-virtual {v1, v3}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 78
    new-instance v1, Lcom/android/keyguard/ClockEventController$registerListeners$1;

    .line 81
    const/4 v3, 0x0

    .line 83
    invoke-direct {v1, v0, v3}, Lcom/android/keyguard/ClockEventController$registerListeners$1;-><init>(Lcom/android/keyguard/ClockEventController;Lkotlin/coroutines/Continuation;)V

    .line 84
    invoke-static {v2, v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt;->repeatWhenAttached$default(Landroid/view/View;Lkotlin/jvm/functions/Function3;)Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 87
    move-result-object v1

    .line 90
    iput-object v1, v0, Lcom/android/keyguard/ClockEventController;->disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 91
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 93
    if-eqz v1, :cond_1

    .line 95
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 97
    move-result v3

    .line 100
    invoke-virtual {v1, v3}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 101
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 104
    if-eqz v1, :cond_2

    .line 106
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 108
    move-result v0

    .line 111
    invoke-virtual {v1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 112
    :cond_2
    :goto_0
    check-cast v2, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 115
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 117
    move-result-object v0

    .line 120
    const v1, 0x7f070466    # @dimen/keyguard_clock_top_margin '0.0dp'

    .line 121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 124
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 127
    move-result-object v0

    .line 130
    const v1, 0x7f070484    # @dimen/keyguard_large_clock_top_margin '-60.0dp'

    .line 131
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 134
    invoke-virtual {v2}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    .line 137
    move-result-object v0

    .line 140
    const v1, 0x7f0b006f    # @integer/keyguard_date_weather_view_invisibility '4'

    .line 141
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    .line 144
    move-result v0

    .line 147
    iput v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    .line 148
    iget-boolean v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mOnlyClock:Z

    .line 150
    const v1, 0x7f0a049f    # @id/keyguard_slice_view

    .line 152
    const v3, 0x7f0a04dc    # @id/left_aligned_notification_icon_container

    .line 155
    const/16 v4, 0x8

    .line 158
    if-eqz v0, :cond_3

    .line 160
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 162
    move-result-object p0

    .line 165
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 166
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 169
    move-result-object p0

    .line 172
    invoke-virtual {p0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 173
    return-void

    .line 176
    :cond_3
    invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 177
    move-result-object v0

    .line 180
    check-cast v0, Lcom/android/systemui/statusbar/phone/NotificationIconContainer;

    .line 181
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mNotificationIconAreaController:Lcom/android/systemui/statusbar/phone/NotificationIconAreaController;

    .line 183
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 185
    const v0, 0x7f0a04a1    # @id/keyguard_status_area

    .line 188
    invoke-virtual {v2, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 191
    move-result-object v0

    .line 194
    check-cast v0, Landroid/view/ViewGroup;

    .line 195
    iput-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 197
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 199
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isEnabled()Z

    .line 201
    move-result v3

    .line 204
    if-eqz v3, :cond_5

    .line 205
    invoke-virtual {v2, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    .line 207
    move-result-object v1

    .line 210
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 211
    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->indexOfChild(Landroid/view/View;)I

    .line 213
    move-result v2

    .line 216
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 217
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->isDateWeatherDecoupled()Z

    .line 220
    move-result v0

    .line 223
    if-eqz v0, :cond_4

    .line 224
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardClockSwitchController;->addDateWeatherView(I)V

    .line 226
    add-int/lit8 v2, v2, 0x1

    .line 229
    :cond_4
    invoke-virtual {p0, v2}, Lcom/android/keyguard/KeyguardClockSwitchController;->addSmartspaceView(I)V

    .line 231
    :cond_5
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 234
    const-string v1, "lockscreen_use_double_line_clock"

    .line 236
    const/4 v2, 0x0

    .line 238
    iget-object v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 239
    const/4 v4, -0x1

    .line 241
    invoke-interface {v0, v1, v2, v3, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 242
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 245
    const-string v3, "lockscreen_weather_enabled"

    .line 247
    invoke-interface {v0, v3, v2, v1, v4}, Lcom/android/systemui/util/settings/SettingsProxy;->registerContentObserverForUser(Ljava/lang/String;ZLandroid/database/ContentObserver;I)V

    .line 249
    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    .line 252
    invoke-direct {v0, v2, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 254
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 257
    check-cast v1, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 259
    invoke-virtual {v1, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 261
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    .line 264
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setWeatherVisibility()V

    .line 267
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 270
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 272
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    .line 274
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 276
    return-void
    .line 279
.end method

.method public final onViewDetached()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockRegistry:Lcom/android/systemui/shared/clocks/ClockRegistry;

    .line 2
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    invoke-static {}, Lcom/android/systemui/util/Assert;->isMainThread()V

    .line 7
    iget-object v0, v0, Lcom/android/systemui/shared/clocks/ClockRegistry;->clockChangeListeners:Ljava/util/List;

    .line 10
    check-cast v0, Ljava/util/ArrayList;

    .line 12
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockChangedListener:Lcom/android/keyguard/KeyguardClockSwitchController$4;

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 16
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 19
    iget-boolean v1, v0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    .line 21
    if-nez v1, :cond_0

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    const/4 v1, 0x0

    .line 26
    iput-boolean v1, v0, Lcom/android/keyguard/ClockEventController;->isRegistered:Z

    .line 27
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->disposableHandle:Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;

    .line 29
    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v1}, Lcom/android/systemui/lifecycle/RepeatWhenAttachedKt$repeatWhenAttached$1;->dispose()V

    .line 33
    :cond_1
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->broadcastDispatcher:Lcom/android/systemui/broadcast/BroadcastDispatcher;

    .line 36
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->localeBroadcastReceiver:Lcom/android/keyguard/ClockEventController$localeBroadcastReceiver$1;

    .line 38
    invoke-virtual {v1, v2}, Lcom/android/systemui/broadcast/BroadcastDispatcher;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 40
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->configurationController:Lcom/android/systemui/statusbar/policy/ConfigurationController;

    .line 43
    check-cast v1, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 45
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->configListener:Lcom/android/keyguard/ClockEventController$configListener$1;

    .line 47
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 49
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->batteryController:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 52
    check-cast v1, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;

    .line 54
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->batteryCallback:Lcom/android/keyguard/ClockEventController$batteryCallback$1;

    .line 56
    invoke-virtual {v1, v2}, Lcom/android/systemui/statusbar/policy/BatteryControllerImpl;->removeCallback(Ljava/lang/Object;)V

    .line 58
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitor:Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 61
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;

    .line 63
    invoke-virtual {v1, v2}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 65
    iget-object v1, v0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 68
    if-eqz v1, :cond_2

    .line 70
    invoke-virtual {v1}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    .line 72
    :cond_2
    iget-object v0, v0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 75
    if-eqz v0, :cond_3

    .line 77
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    .line 79
    :cond_3
    :goto_0
    const/4 v0, 0x0

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setClock(Lcom/android/systemui/plugins/ClockController;)V

    .line 83
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSecureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 86
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDoubleLineClockObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 88
    invoke-interface {v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 90
    iget-object v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mShowWeatherObserver:Lcom/android/keyguard/KeyguardClockSwitchController$1;

    .line 93
    invoke-interface {v0, v1}, Lcom/android/systemui/util/settings/SettingsProxy;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 95
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationController:Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;

    .line 98
    iget-object v0, v0, Lcom/android/systemui/keyguard/KeyguardUnlockAnimationController;->listeners:Ljava/util/ArrayList;

    .line 100
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardUnlockAnimationListener:Lcom/android/keyguard/KeyguardClockSwitchController$3;

    .line 102
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 104
    return-void
    .line 107
.end method

.method public final setClock(Lcom/android/systemui/plugins/ClockController;)V
    .locals 6

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    sget-object v1, Lcom/android/systemui/log/LogLevel;->INFO:Lcom/android/systemui/log/LogLevel;

    .line 8
    const-string v2, "New Clock"

    .line 10
    const-string v3, "KeyguardClockSwitchController"

    .line 12
    invoke-virtual {v0, v3, v1, v2}, Lcom/android/systemui/log/LogBuffer;->log(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Ljava/lang/String;)V

    .line 14
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 17
    iput-object p1, v0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 19
    if-eqz p1, :cond_7

    .line 21
    sget-object v1, Lcom/android/keyguard/ClockEventController;->TAG:Ljava/lang/String;

    .line 23
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->smallLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 25
    const/4 v3, 0x0

    .line 27
    if-eqz v2, :cond_1

    .line 28
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 30
    sget-object v5, Lcom/android/keyguard/ClockEventController$clock$2;->INSTANCE:Lcom/android/keyguard/ClockEventController$clock$2;

    .line 32
    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 34
    move-result-object v4

    .line 37
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 38
    :cond_1
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 41
    move-result-object v4

    .line 44
    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/ClockFaceController;->setLogBuffer(Lcom/android/systemui/log/LogBuffer;)V

    .line 45
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->largeLogBuffer:Lcom/android/systemui/log/LogBuffer;

    .line 48
    if-eqz v2, :cond_2

    .line 50
    sget-object v4, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 52
    sget-object v5, Lcom/android/keyguard/ClockEventController$clock$4;->INSTANCE:Lcom/android/keyguard/ClockEventController$clock$4;

    .line 54
    invoke-virtual {v2, v1, v4, v5, v3}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 56
    move-result-object v4

    .line 59
    invoke-virtual {v2, v4}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 60
    :cond_2
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 63
    move-result-object v4

    .line 66
    invoke-interface {v4, v2}, Lcom/android/systemui/plugins/ClockFaceController;->setLogBuffer(Lcom/android/systemui/log/LogBuffer;)V

    .line 67
    iget v2, v0, Lcom/android/keyguard/ClockEventController;->dozeAmount:F

    .line 70
    const/4 v4, 0x0

    .line 72
    iget-object v5, v0, Lcom/android/keyguard/ClockEventController;->resources:Landroid/content/res/Resources;

    .line 73
    invoke-interface {p1, v5, v2, v4}, Lcom/android/systemui/plugins/ClockController;->initialize(Landroid/content/res/Resources;FF)V

    .line 75
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->updateColors()V

    .line 78
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->updateFontSizes()V

    .line 81
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 84
    if-eqz v2, :cond_3

    .line 86
    invoke-virtual {v2}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    .line 88
    :cond_3
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 91
    if-eqz v2, :cond_4

    .line 93
    invoke-virtual {v2}, Lcom/android/keyguard/ClockEventController$TimeListener;->stop()V

    .line 95
    :cond_4
    iput-object v3, v0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 98
    iput-object v3, v0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 100
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 102
    if-eqz v2, :cond_5

    .line 104
    new-instance v3, Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 106
    invoke-interface {v2}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 108
    move-result-object v4

    .line 111
    iget-object v5, v0, Lcom/android/keyguard/ClockEventController;->mainExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 112
    invoke-direct {v3, v4, v5}, Lcom/android/keyguard/ClockEventController$TimeListener;-><init>(Lcom/android/systemui/plugins/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 114
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 117
    move-result v4

    .line 120
    invoke-virtual {v3, v4}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 121
    iput-object v3, v0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 124
    new-instance v3, Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 126
    invoke-interface {v2}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 128
    move-result-object v2

    .line 131
    invoke-direct {v3, v2, v5}, Lcom/android/keyguard/ClockEventController$TimeListener;-><init>(Lcom/android/systemui/plugins/ClockFaceController;Lcom/android/systemui/util/concurrency/DelayableExecutor;)V

    .line 132
    invoke-virtual {v0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 135
    move-result v2

    .line 138
    invoke-virtual {v3, v2}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 139
    iput-object v3, v0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 142
    :cond_5
    iget-object v2, v0, Lcom/android/keyguard/ClockEventController;->cachedWeatherData:Lcom/android/systemui/plugins/WeatherData;

    .line 144
    if-eqz v2, :cond_6

    .line 146
    new-instance v3, Ljava/lang/StringBuilder;

    .line 148
    const-string v4, "Pushing cached weather data to new clock: "

    .line 150
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 152
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 155
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 158
    move-result-object v3

    .line 161
    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 165
    move-result-object v1

    .line 168
    invoke-interface {v1, v2}, Lcom/android/systemui/plugins/ClockEvents;->onWeatherDataChanged(Lcom/android/systemui/plugins/WeatherData;)V

    .line 169
    :cond_6
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 172
    move-result-object v1

    .line 175
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 176
    move-result-object v1

    .line 179
    new-instance v2, Lcom/android/keyguard/ClockEventController$clock$6;

    .line 180
    const/4 v3, 0x0

    .line 182
    invoke-direct {v2, p1, v0, v3}, Lcom/android/keyguard/ClockEventController$clock$6;-><init>(Lcom/android/systemui/plugins/ClockController;Lcom/android/keyguard/ClockEventController;I)V

    .line 183
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 186
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 189
    move-result-object v1

    .line 192
    invoke-interface {v1}, Lcom/android/systemui/plugins/ClockFaceController;->getView()Landroid/view/View;

    .line 193
    move-result-object v1

    .line 196
    new-instance v2, Lcom/android/keyguard/ClockEventController$clock$6;

    .line 197
    const/4 v3, 0x1

    .line 199
    invoke-direct {v2, p1, v0, v3}, Lcom/android/keyguard/ClockEventController$clock$6;-><init>(Lcom/android/systemui/plugins/ClockController;Lcom/android/keyguard/ClockEventController;I)V

    .line 200
    invoke-virtual {v1, v2}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V

    .line 203
    :cond_7
    iget-object p1, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 206
    check-cast p1, Lcom/android/keyguard/KeyguardClockSwitch;

    .line 208
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 210
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->getState()I

    .line 212
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 215
    invoke-virtual {p0}, Lcom/android/keyguard/KeyguardClockSwitchController;->setDateWeatherVisibility()V

    .line 218
    return-void
    .line 221
.end method

.method public final setDateWeatherVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x2

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 12
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final setWeatherVisibility()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;

    .line 6
    const/4 v1, 0x1

    .line 8
    invoke-direct {v0, v1, p0}, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 9
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mUiExecutor:Lcom/android/systemui/util/concurrency/DelayableExecutor;

    .line 12
    check-cast p0, Lcom/android/systemui/util/concurrency/ExecutorImpl;

    .line 14
    invoke-virtual {p0, v0}, Lcom/android/systemui/util/concurrency/ExecutorImpl;->execute(Ljava/lang/Runnable;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method public final updatePosition(IFLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V
    .locals 2

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x1

    .line 10
    if-ne v0, v1, :cond_0

    .line 11
    neg-int p1, p1

    .line 13
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmallClockFrame:Landroid/widget/FrameLayout;

    .line 14
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->TRANSLATION_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 16
    int-to-float p1, p1

    .line 18
    invoke-static {v0, v1, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 19
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 22
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_X:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 24
    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mLargeClockFrame:Landroid/widget/FrameLayout;

    .line 29
    sget-object v1, Lcom/android/systemui/statusbar/notification/AnimatableProperty;->SCALE_Y:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 31
    invoke-static {v0, v1, p2, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 33
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mStatusArea:Landroid/view/ViewGroup;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    sget-object p2, Lcom/android/keyguard/KeyguardStatusAreaView;->TRANSLATE_X_AOD:Lcom/android/systemui/statusbar/notification/AnimatableProperty$7;

    .line 40
    invoke-static {p0, p2, p1, p3, p4}, Lcom/android/systemui/statusbar/notification/PropertyAnimator;->setProperty(Landroid/view/View;Lcom/android/systemui/statusbar/notification/AnimatableProperty;FLcom/android/systemui/statusbar/notification/stack/AnimationProperties;Z)V

    .line 42
    :cond_1
    return-void
    .line 45
.end method
