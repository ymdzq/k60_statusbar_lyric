.class public final Lcom/android/keyguard/clock/DisplayExtClockContainerController;
.super Lcom/android/systemui/util/ViewController;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final currentTimezone:Ljava/lang/String;

.field public final dualClockObserverCallback:Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;

.field public final keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

.field public locale:Ljava/util/Locale;

.field public residentTimezone:Ljava/lang/String;

.field public final residentTimezoneObserver:Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

.field public showDualClock:Z

.field public userId:I


# direct methods
.method public constructor <init>(Lcom/android/keyguard/clock/DisplayExtClockContainer;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/util/ViewController;-><init>(Landroid/view/View;)V

    .line 2
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 5
    move-result-object p1

    .line 8
    invoke-virtual {p1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    .line 9
    move-result-object p1

    .line 12
    iput-object p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->currentTimezone:Ljava/lang/String;

    .line 13
    new-instance p1, Landroid/os/Handler;

    .line 15
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 17
    move-result-object v0

    .line 20
    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 21
    new-instance v0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;

    .line 24
    invoke-direct {v0, p0}, Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;-><init>(Lcom/android/keyguard/clock/DisplayExtClockContainerController;)V

    .line 26
    iput-object v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->dualClockObserverCallback:Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;

    .line 29
    new-instance v0, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

    .line 31
    invoke-direct {v0, p0, p1}, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;-><init>(Lcom/android/keyguard/clock/DisplayExtClockContainerController;Landroid/os/Handler;)V

    .line 33
    iput-object v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezoneObserver:Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

    .line 36
    new-instance p1, Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;

    .line 38
    invoke-direct {p1, p0}, Lcom/android/keyguard/clock/DisplayExtClockContainerController$keyguardUpdateMonitorCallback$1;-><init>(Lcom/android/keyguard/clock/DisplayExtClockContainerController;)V

    .line 40
    iput-object p1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 43
    return-void
    .line 45
.end method


# virtual methods
.method public final onInit()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onViewAttached()V
    .locals 5

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->locale:Ljava/util/Locale;

    .line 6
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 8
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/android/systemui/util/ViewController;->mView:Landroid/view/View;

    .line 12
    if-nez v1, :cond_0

    .line 14
    iput-object v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->locale:Ljava/util/Locale;

    .line 16
    move-object v0, v2

    .line 18
    check-cast v0, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    iget-object v0, v0, Lcom/android/keyguard/clock/DisplayExtClockContainer;->mClockView:Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;

    .line 23
    if-eqz v0, :cond_0

    .line 25
    invoke-virtual {v0}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateHourFormat()V

    .line 27
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezoneObserver:Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

    .line 30
    const/4 v1, 0x0

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;->onChange(Z)V

    .line 33
    check-cast v2, Lcom/android/keyguard/clock/DisplayExtClockContainer;

    .line 36
    if-eqz v2, :cond_1

    .line 38
    iget-object v2, v2, Lcom/android/keyguard/clock/DisplayExtClockContainer;->mClockView:Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;

    .line 40
    if-eqz v2, :cond_1

    .line 42
    invoke-virtual {v2}, Lcom/android/keyguard/clock/MiuiKeyguardBaseClock;->updateTime()V

    .line 44
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 47
    move-result-object v2

    .line 50
    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 51
    move-result-object v2

    .line 54
    const-string/jumbo v3, "resident_timezone"

    .line 55
    invoke-static {v3}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    .line 58
    move-result-object v3

    .line 61
    const/4 v4, -0x1

    .line 62
    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 63
    invoke-static {}, Lcom/android/keyguard/KeyguardUpdateMonitor;->getCurrentUser()I

    .line 66
    move-result v0

    .line 69
    iput v0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->userId:I

    .line 70
    const-class v0, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 72
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 74
    move-result-object v0

    .line 77
    check-cast v0, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 78
    iget-object v1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->dualClockObserverCallback:Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/policy/DualClockObserver;->addCallback(Lcom/android/systemui/statusbar/policy/DualClockObserver$Callback;)V

    .line 82
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 85
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 87
    move-result-object v0

    .line 90
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 91
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 93
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->registerCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 95
    return-void
    .line 98
.end method

.method public final onViewDetached()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/util/ViewController;->getContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->residentTimezoneObserver:Lcom/android/keyguard/clock/DisplayExtClockContainerController$residentTimezoneObserver$1;

    .line 10
    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 12
    const-class v0, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 15
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/android/systemui/statusbar/policy/DualClockObserver;

    .line 21
    iget-object v0, v0, Lcom/android/systemui/statusbar/policy/DualClockObserver;->mCallbacks:Ljava/util/ArrayList;

    .line 23
    iget-object v1, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->dualClockObserverCallback:Lcom/android/keyguard/clock/DisplayExtClockContainerController$dualClockObserverCallback$1;

    .line 25
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 27
    const-class v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 30
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 32
    move-result-object v0

    .line 35
    check-cast v0, Lcom/android/keyguard/KeyguardUpdateMonitor;

    .line 36
    iget-object p0, p0, Lcom/android/keyguard/clock/DisplayExtClockContainerController;->keyguardUpdateMonitorCallback:Lcom/android/keyguard/KeyguardUpdateMonitorCallback;

    .line 38
    invoke-virtual {v0, p0}, Lcom/android/keyguard/KeyguardUpdateMonitor;->removeCallback(Lcom/android/keyguard/KeyguardUpdateMonitorCallback;)V

    .line 40
    return-void
    .line 43
.end method
