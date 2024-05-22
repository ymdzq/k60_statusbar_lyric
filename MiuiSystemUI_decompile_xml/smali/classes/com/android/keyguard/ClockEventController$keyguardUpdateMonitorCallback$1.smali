.class public final Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;
.super Lcom/android/keyguard/KeyguardUpdateMonitorCallback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/keyguard/ClockEventController;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/ClockEventController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    invoke-direct {p0}, Lcom/android/keyguard/KeyguardUpdateMonitorCallback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onKeyguardVisibilityChanged(Z)V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iput-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    .line 4
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->featureFlags:Lcom/android/systemui/flags/FeatureFlags;

    .line 6
    sget-object v0, Lcom/android/systemui/flags/Flags;->NOTIFICATION_DRAG_TO_CONTENTS:Lcom/android/systemui/flags/ResourceBooleanFlag;

    .line 8
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 10
    iget-boolean p1, p0, Lcom/android/keyguard/ClockEventController;->isKeyguardVisible:Z

    .line 13
    if-nez p1, :cond_2

    .line 15
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 17
    if-eqz p1, :cond_2

    .line 19
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getSmallClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 21
    move-result-object v0

    .line 24
    invoke-interface {v0}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 25
    move-result-object v0

    .line 28
    iget-boolean v1, p0, Lcom/android/keyguard/ClockEventController;->isDozing:Z

    .line 29
    const/high16 v2, 0x3f800000    # 1.0f

    .line 31
    const/4 v3, 0x0

    .line 33
    if-eqz v1, :cond_0

    .line 34
    move v1, v2

    .line 36
    goto :goto_0

    .line 37
    :cond_0
    move v1, v3

    .line 38
    :goto_0
    invoke-interface {v0, v1}, Lcom/android/systemui/plugins/ClockAnimations;->doze(F)V

    .line 39
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getLargeClock()Lcom/android/systemui/plugins/ClockFaceController;

    .line 42
    move-result-object p1

    .line 45
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockFaceController;->getAnimations()Lcom/android/systemui/plugins/ClockAnimations;

    .line 46
    move-result-object p1

    .line 49
    iget-boolean v0, p0, Lcom/android/keyguard/ClockEventController;->isDozing:Z

    .line 50
    if-eqz v0, :cond_1

    .line 52
    goto :goto_1

    .line 54
    :cond_1
    move v2, v3

    .line 55
    :goto_1
    invoke-interface {p1, v2}, Lcom/android/systemui/plugins/ClockAnimations;->doze(F)V

    .line 56
    :cond_2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->smallTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 59
    if-eqz p1, :cond_3

    .line 61
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 63
    move-result v0

    .line 66
    invoke-virtual {p1, v0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 67
    :cond_3
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->largeTimeListener:Lcom/android/keyguard/ClockEventController$TimeListener;

    .line 70
    if-eqz p1, :cond_4

    .line 72
    invoke-virtual {p0}, Lcom/android/keyguard/ClockEventController;->getShouldTimeListenerRun()Z

    .line 74
    move-result p0

    .line 77
    invoke-virtual {p1, p0}, Lcom/android/keyguard/ClockEventController$TimeListener;->update(Z)V

    .line 78
    :cond_4
    return-void
    .line 81
.end method

.method public final onTimeFormatChanged(Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 8
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 12
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 14
    move-result p0

    .line 17
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ClockEvents;->onTimeFormatChanged(Z)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onTimeZoneChanged(Ljava/util/TimeZone;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 4
    if-eqz p0, :cond_0

    .line 6
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 8
    move-result-object p0

    .line 11
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockEvents;->onTimeZoneChanged(Ljava/util/TimeZone;)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final onUserSwitchComplete(I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iget-object p1, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-interface {p1}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 8
    move-result-object p1

    .line 11
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->context:Landroid/content/Context;

    .line 12
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    .line 14
    move-result p0

    .line 17
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/ClockEvents;->onTimeFormatChanged(Z)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onWeatherDataChanged(Lcom/android/systemui/plugins/WeatherData;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController$keyguardUpdateMonitorCallback$1;->this$0:Lcom/android/keyguard/ClockEventController;

    .line 2
    iput-object p1, p0, Lcom/android/keyguard/ClockEventController;->cachedWeatherData:Lcom/android/systemui/plugins/WeatherData;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/ClockEventController;->clock:Lcom/android/systemui/plugins/ClockController;

    .line 6
    if-eqz p0, :cond_0

    .line 8
    invoke-interface {p0}, Lcom/android/systemui/plugins/ClockController;->getEvents()Lcom/android/systemui/plugins/ClockEvents;

    .line 10
    move-result-object p0

    .line 13
    invoke-interface {p0, p1}, Lcom/android/systemui/plugins/ClockEvents;->onWeatherDataChanged(Lcom/android/systemui/plugins/WeatherData;)V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
