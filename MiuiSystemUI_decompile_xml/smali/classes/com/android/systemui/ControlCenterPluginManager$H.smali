.class public final Lcom/android/systemui/ControlCenterPluginManager$H;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final pluginManager:Lcom/android/systemui/ControlCenterPluginManager;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Lcom/android/systemui/ControlCenterPluginManager;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Lcom/android/systemui/ControlCenterPluginManager$H;->pluginManager:Lcom/android/systemui/ControlCenterPluginManager;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 2
    iget p1, p1, Landroid/os/Message;->what:I

    .line 5
    const/4 v0, 0x0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz p1, :cond_1

    .line 9
    if-eq p1, v1, :cond_0

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/ControlCenterPluginManager$H;->pluginManager:Lcom/android/systemui/ControlCenterPluginManager;

    .line 14
    iget-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 16
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 18
    const/4 p1, 0x2

    .line 21
    iput p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 22
    iget-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->pluginManager:Ldagger/Lazy;

    .line 24
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    .line 30
    invoke-interface {p1, p0}, Lcom/android/systemui/plugins/PluginManager;->removePluginListener(Lcom/android/systemui/plugins/PluginListener;)V

    .line 32
    goto :goto_0

    .line 35
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/ControlCenterPluginManager$H;->pluginManager:Lcom/android/systemui/ControlCenterPluginManager;

    .line 36
    iget-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 38
    if-eqz p1, :cond_2

    .line 40
    goto :goto_0

    .line 42
    :cond_2
    iget p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->retryCount:I

    .line 43
    const/4 v2, 0x3

    .line 45
    iget-object v3, p0, Lcom/android/systemui/ControlCenterPluginManager;->handler:Lcom/android/systemui/ControlCenterPluginManager$H;

    .line 46
    if-lt p1, v2, :cond_4

    .line 48
    iget-object p0, p0, Lcom/android/systemui/ControlCenterPluginManager;->callback:Lcom/android/systemui/ControlCenterPluginManager$OnPluginConnectChangeCallback;

    .line 50
    if-eqz p0, :cond_3

    .line 52
    check-cast p0, Lcom/android/systemui/controlcenter/ControlCenter;

    .line 54
    const-string p1, "ControlCenter"

    .line 56
    const-string v1, "onPluginConnectFailed"

    .line 58
    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    const/4 p1, 0x0

    .line 63
    iput-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlCenterPlugin:Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 64
    iget-boolean p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->useControlCenter:Z

    .line 66
    if-eqz p1, :cond_3

    .line 68
    invoke-virtual {p0}, Lcom/android/systemui/controlcenter/ControlCenter;->addControlPanelWindow()V

    .line 70
    :cond_3
    invoke-virtual {v3, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 73
    goto :goto_0

    .line 76
    :cond_4
    add-int/2addr p1, v1

    .line 77
    iput p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->retryCount:I

    .line 78
    new-instance v2, Ljava/lang/StringBuilder;

    .line 80
    const-string/jumbo v4, "trying to connect plugin for the "

    .line 82
    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, " time."

    .line 91
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 96
    move-result-object p1

    .line 99
    const-string v2, "ControlCenterPluginManager"

    .line 100
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    iget-object p1, p0, Lcom/android/systemui/ControlCenterPluginManager;->pluginManager:Ldagger/Lazy;

    .line 105
    invoke-interface {p1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 107
    move-result-object p1

    .line 110
    check-cast p1, Lcom/android/systemui/plugins/PluginManager;

    .line 111
    const-class v2, Lcom/android/systemui/plugins/miui/controlcenter/MiuiControlCenterPluginTest;

    .line 113
    invoke-interface {p1, p0, v2, v1}, Lcom/android/systemui/plugins/PluginManager;->addPluginListener(Lcom/android/systemui/plugins/PluginListener;Ljava/lang/Class;Z)V

    .line 115
    iput v0, p0, Lcom/android/systemui/ControlCenterPluginManager;->currentState:I

    .line 118
    invoke-virtual {v3, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    .line 120
    move-result-object p0

    .line 123
    const-wide/16 v0, 0x7d0

    .line 124
    invoke-virtual {v3, p0, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 126
    :goto_0
    return-void
    .line 129
.end method
