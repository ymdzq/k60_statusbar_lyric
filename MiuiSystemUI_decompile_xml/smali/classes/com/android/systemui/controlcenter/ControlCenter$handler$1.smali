.class public final Lcom/android/systemui/controlcenter/ControlCenter$handler$1;
.super Landroid/os/Handler;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/controlcenter/ControlCenter;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controlcenter/ControlCenter;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter$handler$1;->this$0:Lcom/android/systemui/controlcenter/ControlCenter;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_2

    .line 5
    const/4 p1, 0x2

    .line 7
    if-eq v0, p1, :cond_0

    .line 8
    goto :goto_1

    .line 10
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter$handler$1;->this$0:Lcom/android/systemui/controlcenter/ControlCenter;

    .line 11
    iget-object p1, p0, Lcom/android/systemui/controlcenter/ControlCenter;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 13
    if-eqz p1, :cond_3

    .line 15
    iget v0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled1:I

    .line 17
    const/high16 v2, 0x10000

    .line 19
    and-int/2addr v0, v2

    .line 21
    if-nez v0, :cond_1

    .line 22
    iget p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->disabled2:I

    .line 24
    and-int/lit8 v0, p0, 0x4

    .line 26
    if-nez v0, :cond_1

    .line 28
    and-int/2addr p0, v1

    .line 30
    if-nez p0, :cond_1

    .line 31
    move p0, v1

    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    :goto_0
    if-eqz p0, :cond_3

    .line 36
    invoke-interface {p1, v1, v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->showPanel(ZZ)V

    .line 38
    goto :goto_1

    .line 41
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter$handler$1;->this$0:Lcom/android/systemui/controlcenter/ControlCenter;

    .line 42
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 44
    check-cast p1, Ljava/lang/Boolean;

    .line 46
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 48
    move-result p1

    .line 51
    iget-object p0, p0, Lcom/android/systemui/controlcenter/ControlCenter;->controlPanelWindowManager:Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;

    .line 52
    iget-boolean v0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->added:Z

    .line 54
    if-eqz v0, :cond_3

    .line 56
    iget-object p0, p0, Lcom/android/systemui/controlcenter/phone/ControlPanelWindowManager;->windowView:Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;

    .line 58
    if-eqz p0, :cond_3

    .line 60
    invoke-interface {p0, p1, v1}, Lcom/android/systemui/plugins/miui/controlcenter/ControlCenterWindowView;->hidePanel(ZZ)V

    .line 62
    :cond_3
    :goto_1
    return-void
    .line 65
.end method
