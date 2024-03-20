.class public final Lcom/android/systemui/ControlCenterPluginManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/plugins/PluginListener;


# instance fields
.field public callback:Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;

.field public controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

.field public currentState:I

.field public final handler:Lcom/android/systemui/ControlCenterPluginManager$H;

.field public final pluginManager:Ldagger/Lazy;

.field public retryCount:I


# direct methods
.method public constructor <init>(Ldagger/Lazy;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->pluginManager:Ldagger/Lazy;

    .line 5
    new-instance p1, Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 7
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 9
    move-result-object v0

    .line 12
    invoke-direct {p1, v0, p0}, Lcom/android/systemui/ControlCenterPluginManager$H;-><init>(Landroid/os/Looper;Lcom/android/systemui/ControlCenterPluginManager;)V

    .line 13
    iput-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 16
    const/4 p1, 0x3

    .line 18
    iput p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public final onPluginConnected(Lcom/android/systemui/plugins/Plugin;Landroid/content/Context;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 2
    const-string p2, "ControlCenterPluginManager"

    .line 4
    const-string v0, "onPluginConnected"

    .line 6
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    iget-object p2, p0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 11
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p2, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 14
    const/4 p2, 0x1

    .line 17
    iput p2, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 18
    iput-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget-object p0, p0, Lcom/android/systemui/ControlCenterPluginManager;->callback:Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;

    .line 24
    if-eqz p0, :cond_0

    .line 26
    check-cast p0, Lcom/android/systemui/controlcenter/ControlCenter;

    .line 28
    const-string p2, "ControlCenter"

    .line 30
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->removeControlPanelWindow()V

    .line 35
    iput-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 38
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 40
    if-eqz p1, :cond_0

    .line 42
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->addControlPanelWindow()V

    .line 44
    :cond_0
    return-void
    .line 47
.end method

.method public final onPluginDisconnected(Lcom/android/systemui/plugins/Plugin;)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 2
    const-string p1, "ControlCenterPluginManager"

    .line 4
    const-string v0, "onPluginDisconnected"

    .line 6
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 12
    iget v1, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 14
    const/4 v2, 0x3

    .line 16
    if-nez v1, :cond_0

    .line 17
    iput v2, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 19
    const/4 v1, 0x0

    .line 21
    iput v1, p0, Lcom/android/systemui/ControlCenterPluginManager;->retryCount:I

    .line 22
    iget-object v2, p0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 24
    invoke-virtual {v2, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 26
    move-result-object v1

    .line 29
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 30
    goto :goto_0

    .line 33
    :cond_0
    iput v2, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 34
    :goto_0
    iget-object p0, p0, Lcom/android/systemui/ControlCenterPluginManager;->callback:Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;

    .line 36
    if-eqz p0, :cond_1

    .line 38
    check-cast p0, Lcom/android/systemui/controlcenter/ControlCenter;

    .line 40
    const-string v1, "ControlCenter"

    .line 42
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    iput-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 47
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->removeControlPanelWindow()V

    .line 49
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 52
    if-eqz p1, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->addControlPanelWindow()V

    .line 56
    :cond_1
    return-void
    .line 59
.end method
