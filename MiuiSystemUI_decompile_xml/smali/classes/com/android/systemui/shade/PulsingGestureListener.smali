.class public final Lcom/android/systemui/shade/PulsingGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/Dumpable;


# instance fields
.field public final ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

.field public final centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

.field public final dockManager:Lcom/android/systemui/dock/DockManager;

.field public doubleTapEnabled:Z

.field public final falsingManager:Lcom/android/systemui/plugins/FalsingManager;

.field public final shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

.field public singleTapEnabled:Z

.field public final statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/plugins/FalsingManager;Lcom/android/systemui/dock/DockManager;Lcom/android/systemui/statusbar/phone/CentralSurfaces;Landroid/hardware/display/AmbientDisplayConfiguration;Lcom/android/systemui/plugins/statusbar/StatusBarStateController;Lcom/android/systemui/shade/ShadeLogger;Lcom/android/systemui/settings/UserTracker;Lcom/android/systemui/tuner/TunerService;Lcom/android/systemui/dump/DumpManager;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/shade/PulsingGestureListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/shade/PulsingGestureListener;->ambientDisplayConfiguration:Landroid/hardware/display/AmbientDisplayConfiguration;

    .line 11
    iput-object p5, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 13
    iput-object p6, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 15
    new-instance p1, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;

    .line 17
    invoke-direct {p1, p0, p7}, Lcom/android/systemui/shade/PulsingGestureListener$tunable$1;-><init>(Lcom/android/systemui/shade/PulsingGestureListener;Lcom/android/systemui/settings/UserTracker;)V

    .line 19
    const-string p2, "doze_pulse_on_double_tap"

    .line 22
    const-string p3, "doze_tap_gesture"

    .line 24
    filled-new-array {p2, p3}, [Ljava/lang/String;

    .line 26
    move-result-object p2

    .line 29
    invoke-virtual {p8, p1, p2}, Lcom/android/systemui/tuner/TunerService;->addTunable(Lcom/android/systemui/tuner/TunerService$Tunable;[Ljava/lang/String;)V

    .line 30
    invoke-virtual {p9, p0}, Lcom/android/systemui/dump/DumpManager;->registerDumpable(Lcom/android/systemui/Dumpable;)V

    .line 33
    return-void
    .line 36
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    .line 2
    const-string/jumbo v0, "singleTapEnabled="

    .line 4
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 7
    iget-boolean p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->doubleTapEnabled:Z

    .line 10
    const-string v0, "doubleTapEnabled="

    .line 12
    invoke-static {v0, p2, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 14
    iget-object p2, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    .line 17
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    const-string p2, "isDocked=false"

    .line 22
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 27
    invoke-interface {p0}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    .line 29
    move-result p0

    .line 32
    const-string p2, "isProxCovered="

    .line 33
    invoke-static {p2, p0, p1}, Lcom/android/keyguard/ActiveUnlockConfig$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ZLjava/io/PrintWriter;)V

    .line 35
    return-void
    .line 38
.end method

.method public final onDoubleTapEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result p1

    .line 5
    const/4 v0, 0x1

    .line 6
    if-ne p1, v0, :cond_1

    .line 7
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 11
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    iget-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->doubleTapEnabled:Z

    .line 17
    if-nez p1, :cond_0

    .line 19
    iget-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    .line 21
    if-eqz p1, :cond_1

    .line 23
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 25
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    .line 27
    move-result p1

    .line 30
    if-nez p1, :cond_1

    .line 31
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 33
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isFalseDoubleTap()Z

    .line 35
    move-result p1

    .line 38
    if-nez p1, :cond_1

    .line 39
    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 41
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 43
    move-result-wide v1

    .line 46
    const/16 p1, 0xf

    .line 47
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 49
    const-string v3, "PULSING_DOUBLE_TAP"

    .line 51
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(Ljava/lang/String;IJ)V

    .line 53
    return v0

    .line 56
    :cond_1
    const/4 p0, 0x0

    .line 57
    return p0
    .line 58
.end method

.method public final onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->dockManager:Lcom/android/systemui/dock/DockManager;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 7
    iget-object v0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 9
    invoke-interface {v0}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 11
    move-result v0

    .line 14
    iget-boolean v1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    .line 15
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    sget-object v2, Lcom/android/systemui/log/LogLevel;->DEBUG:Lcom/android/systemui/log/LogLevel;

    .line 20
    sget-object v3, Lcom/android/systemui/shade/ShadeLogger$logSingleTapUp$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSingleTapUp$2;

    .line 22
    iget-object p1, p1, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 24
    const-string/jumbo v4, "systemui.shade"

    .line 26
    const/4 v5, 0x0

    .line 29
    invoke-virtual {p1, v4, v2, v3, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 30
    move-result-object v3

    .line 33
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 34
    invoke-interface {v3, v1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 37
    const/4 v0, 0x1

    .line 40
    invoke-interface {v3, v0}, Lcom/android/systemui/log/LogMessage;->setBool3(Z)V

    .line 41
    invoke-virtual {p1, v3}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 44
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->statusBarStateController:Lcom/android/systemui/plugins/statusbar/StatusBarStateController;

    .line 47
    invoke-interface {p1}, Lcom/android/systemui/plugins/statusbar/StatusBarStateController;->isDozing()Z

    .line 49
    move-result p1

    .line 52
    if-eqz p1, :cond_1

    .line 53
    iget-boolean p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->singleTapEnabled:Z

    .line 55
    if-eqz p1, :cond_1

    .line 57
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 59
    invoke-interface {p1}, Lcom/android/systemui/plugins/FalsingManager;->isProximityNear()Z

    .line 61
    move-result p1

    .line 64
    xor-int/2addr p1, v0

    .line 65
    iget-object v1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->falsingManager:Lcom/android/systemui/plugins/FalsingManager;

    .line 66
    invoke-interface {v1, v0}, Lcom/android/systemui/plugins/FalsingManager;->isFalseTap(I)Z

    .line 68
    move-result v1

    .line 71
    xor-int/2addr v1, v0

    .line 72
    iget-object v3, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 73
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 75
    sget-object v6, Lcom/android/systemui/shade/ShadeLogger$logSingleTapUpFalsingState$2;->INSTANCE:Lcom/android/systemui/shade/ShadeLogger$logSingleTapUpFalsingState$2;

    .line 78
    iget-object v3, v3, Lcom/android/systemui/shade/ShadeLogger;->buffer:Lcom/android/systemui/log/LogBuffer;

    .line 80
    invoke-virtual {v3, v4, v2, v6, v5}, Lcom/android/systemui/log/LogBuffer;->obtain(Ljava/lang/String;Lcom/android/systemui/log/LogLevel;Lkotlin/jvm/functions/Function1;Ljava/lang/Throwable;)Lcom/android/systemui/log/LogMessage;

    .line 82
    move-result-object v2

    .line 85
    invoke-interface {v2, p1}, Lcom/android/systemui/log/LogMessage;->setBool1(Z)V

    .line 86
    invoke-interface {v2, v1}, Lcom/android/systemui/log/LogMessage;->setBool2(Z)V

    .line 89
    invoke-virtual {v3, v2}, Lcom/android/systemui/log/LogBuffer;->commit(Lcom/android/systemui/log/LogMessage;)V

    .line 92
    if-eqz p1, :cond_0

    .line 95
    if-eqz v1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 99
    const-string v1, "Single tap handled, requesting centralSurfaces.wakeUpIfDozing"

    .line 101
    invoke-virtual {p1, v1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 103
    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->centralSurfaces:Lcom/android/systemui/statusbar/phone/CentralSurfaces;

    .line 106
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 108
    move-result-wide v1

    .line 111
    const/16 p1, 0xf

    .line 112
    check-cast p0, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;

    .line 114
    const-string v3, "PULSING_SINGLE_TAP"

    .line 116
    invoke-virtual {p0, v3, p1, v1, v2}, Lcom/android/systemui/statusbar/phone/CentralSurfacesImpl;->wakeUpIfDozing(Ljava/lang/String;IJ)V

    .line 118
    :cond_0
    return v0

    .line 121
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/shade/PulsingGestureListener;->shadeLogger:Lcom/android/systemui/shade/ShadeLogger;

    .line 122
    const-string p1, "onSingleTapUp event ignored"

    .line 124
    invoke-virtual {p0, p1}, Lcom/android/systemui/shade/ShadeLogger;->d(Ljava/lang/String;)V

    .line 126
    const/4 p0, 0x0

    .line 129
    return p0
    .line 130
.end method
