.class Lcom/android/wm/shell/miuimultiwinswitch/miuiwindowdecor/MiuiWindowDecorViewModel$InputMonitorFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/hardware/input/InputManager;Landroid/content/Context;)Landroid/view/InputMonitor;
    .locals 0

    .line 1
    const-string p0, "caption-touch"

    .line 2
    invoke-virtual {p2}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result p2

    .line 7
    invoke-virtual {p1, p0, p2}, Landroid/hardware/input/InputManager;->monitorGestureInput(Ljava/lang/String;I)Landroid/view/InputMonitor;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method
