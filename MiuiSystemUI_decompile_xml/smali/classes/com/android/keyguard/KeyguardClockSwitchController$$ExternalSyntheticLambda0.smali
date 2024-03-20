.class public final synthetic Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_4

    .line 9
    :pswitch_0
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 10
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 12
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mDateWeatherView:Landroid/view/ViewGroup;

    .line 14
    iget-object v2, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mClockEventController:Lcom/android/keyguard/ClockEventController;

    .line 16
    iget-object v2, v2, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 18
    if-nez v2, :cond_0

    .line 20
    move v2, v1

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v3, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mCurrentClockSize:I

    .line 24
    if-nez v3, :cond_1

    .line 26
    invoke-interface {v2}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 28
    move-result-object v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    invoke-interface {v2}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 33
    move-result-object v2

    .line 36
    :goto_0
    invoke-interface {v2}, Lcom/android/systemui/plugins/ClockFaceController;->getConfig()Lcom/android/systemui/plugins/ClockFaceConfig;

    .line 37
    move-result-object v2

    .line 40
    invoke-virtual {v2}, Lcom/android/systemui/plugins/ClockFaceConfig;->getHasCustomWeatherDataDisplay()Z

    .line 41
    move-result v2

    .line 44
    :goto_1
    if-eqz v2, :cond_2

    .line 45
    iget v1, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mKeyguardDateWeatherViewInvisibility:I

    .line 47
    :cond_2
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 49
    return-void

    .line 52
    :pswitch_1
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 53
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 55
    iget-object v0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mWeatherView:Landroid/view/View;

    .line 57
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController;->mSmartspaceController:Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;

    .line 59
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->execution:Lcom/android/systemui/util/concurrency/ExecutionImpl;

    .line 61
    invoke-virtual {v3}, Lcom/android/systemui/util/concurrency/ExecutionImpl;->assertIsMainThread()V

    .line 63
    iget-object v3, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->context:Landroid/content/Context;

    .line 66
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object v3

    .line 71
    const v4, 0x11101a0    # @android:bool/config_lowPowerStandbySupported

    .line 72
    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 75
    move-result v3

    .line 78
    iget-object v4, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->userTracker:Lcom/android/systemui/settings/UserTracker;

    .line 79
    check-cast v4, Lcom/android/systemui/settings/UserTrackerImpl;

    .line 81
    invoke-virtual {v4}, Lcom/android/systemui/settings/UserTrackerImpl;->getUserId()I

    .line 83
    move-result v4

    .line 86
    iget-object p0, p0, Lcom/android/systemui/statusbar/lockscreen/LockscreenSmartspaceController;->secureSettings:Lcom/android/systemui/util/settings/SecureSettings;

    .line 87
    const-string v5, "lockscreen_weather_enabled"

    .line 89
    invoke-interface {p0, v3, v4, v5}, Lcom/android/systemui/util/settings/SettingsProxy;->getIntForUser(IILjava/lang/String;)I

    .line 91
    move-result p0

    .line 94
    if-ne p0, v2, :cond_3

    .line 95
    goto :goto_2

    .line 97
    :cond_3
    move v2, v1

    .line 98
    :goto_2
    if-eqz v2, :cond_4

    .line 99
    goto :goto_3

    .line 101
    :cond_4
    const/16 v1, 0x8

    .line 102
    :goto_3
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 104
    return-void

    .line 107
    :pswitch_2
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 108
    check-cast p0, Lcom/android/keyguard/KeyguardClockSwitchController;

    .line 110
    invoke-virtual {p0, v2, v2}, Lcom/android/keyguard/KeyguardClockSwitchController;->displayClock(IZ)V

    .line 112
    return-void

    .line 115
    :goto_4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardClockSwitchController$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 116
    check-cast p0, Lcom/android/systemui/plugins/ClockController;

    .line 118
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 120
    move-result-object p0

    .line 123
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 124
    move-result-object p0

    .line 127
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockAnimations;->enter()V

    .line 128
    return-void

    .line 131
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 132
.end method
