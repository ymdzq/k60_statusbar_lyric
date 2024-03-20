.class Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;
.super Landroid/database/ContentObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field final synthetic this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 2
    invoke-static {p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->-$$Nest$mgetMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Z

    .line 4
    move-result p1

    .line 7
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 8
    invoke-static {v0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->-$$Nest$fgetmMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Z

    .line 10
    move-result v0

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    iget-object v0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 16
    invoke-static {v0, p1}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->-$$Nest$fputmMiuiOptimizationEnabled(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;Z)V

    .line 18
    iget-object p0, p0, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch$1;->this$0:Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;

    .line 21
    invoke-static {p0}, Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;->-$$Nest$fgetmListeners(Lcom/android/wm/shell/miuimultiwinswitch/MiuiMultiWinSwitch;)Ljava/util/List;

    .line 23
    move-result-object p0

    .line 26
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 27
    move-result-object p0

    .line 30
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result p1

    .line 34
    if-eqz p1, :cond_0

    .line 35
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object p1

    .line 40
    check-cast p1, Ljava/lang/Runnable;

    .line 41
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 43
    goto :goto_0

    .line 46
    :cond_0
    return-void
    .line 47
.end method
