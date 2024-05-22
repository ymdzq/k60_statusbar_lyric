.class public final Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/statusbar/policy/ConfigurationController$ConfigurationListener;
.implements Lcom/android/systemui/demomode/DemoMode;


# instance fields
.field public final mCalendar:Lmiuix/pickerwidget/date/Calendar;

.field public final mClockListeners:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public mCurrentUserId:I

.field public mDemoMode:Z

.field public mIs24:Z

.field public final mKeyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$1;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/statusbar/policy/ConfigurationController;Lcom/android/keyguard/KeyguardUpdateMonitor;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    .line 10
    const/4 v0, -0x2

    .line 12
    iput v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCurrentUserId:I

    .line 13
    new-instance v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$1;

    .line 15
    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$1;-><init>(Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;)V

    .line 17
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mKeyguardUpdateMonitorCallback:Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$1;

    .line 20
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mContext:Landroid/content/Context;

    .line 22
    new-instance p1, Lmiuix/pickerwidget/date/Calendar;

    .line 24
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 26
    move-result-object v1

    .line 29
    invoke-direct {p1, v1}, Lmiuix/pickerwidget/date/Calendar;-><init>(Ljava/util/TimeZone;)V

    .line 30
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 33
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 35
    move-result p1

    .line 38
    iput p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCurrentUserId:I

    .line 39
    invoke-virtual {p3, v0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 41
    check-cast p2, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;

    .line 44
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/phone/ConfigurationControllerImpl;->addCallback(Ljava/lang/Object;)V

    .line 46
    const-class p1, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 49
    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 51
    move-result-object p1

    .line 54
    check-cast p1, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 55
    invoke-virtual {p1, p0}, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->addCallback(Lcom/android/systemui/demomode/DemoMode;)V

    .line 57
    return-void
    .line 60
.end method


# virtual methods
.method public final dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDemoMode:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    const-string p1, "enter"

    .line 6
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 14
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDemoMode:Z

    .line 15
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->updateTime()V

    .line 17
    goto :goto_0

    .line 20
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDemoMode:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    const-string p1, "exit"

    .line 25
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result p1

    .line 30
    if-eqz p1, :cond_1

    .line 31
    const/4 p1, 0x0

    .line 33
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDemoMode:Z

    .line 34
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->updateTime()V

    .line 36
    :cond_1
    :goto_0
    return-void
    .line 39
.end method

.method public final onConfigChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->updateTime()V

    .line 2
    return-void
    .line 5
.end method

.method public final onMiuiThemeChanged(Z)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$ClockListener;

    .line 18
    check-cast p1, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 20
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    filled-new-array {p1}, [Landroid/widget/TextView;

    .line 25
    move-result-object p1

    .line 28
    invoke-static {p1}, Lcom/miui/utils/configs/MiuiConfigs;->setMiuiStatusBarTypeface([Landroid/widget/TextView;)V

    .line 29
    goto :goto_0

    .line 32
    :cond_0
    return-void
    .line 33
.end method

.method public final updateTime()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mDemoMode:Z

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCalendar:Lmiuix/pickerwidget/date/Calendar;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/16 v0, 0x12

    .line 8
    const/16 v2, 0x8

    .line 10
    invoke-virtual {v1, v0, v2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 12
    const/16 v0, 0x14

    .line 15
    const/16 v2, 0x10

    .line 17
    invoke-virtual {v1, v0, v2}, Lmiuix/pickerwidget/date/Calendar;->set(II)V

    .line 19
    goto :goto_0

    .line 22
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 23
    move-result-wide v2

    .line 26
    invoke-virtual {v1, v2, v3}, Lmiuix/pickerwidget/date/Calendar;->setTimeInMillis(J)V

    .line 27
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mContext:Landroid/content/Context;

    .line 30
    iget v1, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mCurrentUserId:I

    .line 32
    invoke-static {v0, v1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;I)Z

    .line 34
    move-result v0

    .line 37
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mIs24:Z

    .line 38
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController;->mClockListeners:Ljava/util/ArrayList;

    .line 40
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p0

    .line 45
    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v0

    .line 49
    if-eqz v0, :cond_1

    .line 50
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 52
    move-result-object v0

    .line 55
    check-cast v0, Lcom/android/systemui/statusbar/policy/MiuiStatusBarClockController$ClockListener;

    .line 56
    check-cast v0, Lcom/android/systemui/statusbar/views/MiuiClock;

    .line 58
    invoke-virtual {v0}, Lcom/android/systemui/statusbar/views/MiuiClock;->updateTime()V

    .line 60
    goto :goto_1

    .line 63
    :cond_1
    return-void
    .line 64
.end method
