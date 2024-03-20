.class public final Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;
.super Landroid/content/BroadcastReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 2
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "com.android.systemui.demo"

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    .line 14
    move-result-object p1

    .line 17
    if-eqz p1, :cond_0

    .line 18
    const-string v0, "command"

    .line 20
    const-string v1, ""

    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 36
    move-result v1

    .line 39
    if-lez v1, :cond_0

    .line 40
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController$1;->this$0:Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;

    .line 42
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mLastArgs:Landroid/os/Bundle;

    .line 44
    iput-object v0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mLastCommand:Ljava/lang/String;

    .line 46
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/MiuiDemoModeController;->mCallbacks:Ljava/util/List;

    .line 48
    check-cast p0, Ljava/util/ArrayList;

    .line 50
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 52
    move-result-object p0

    .line 55
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 56
    move-result v1

    .line 59
    if-eqz v1, :cond_0

    .line 60
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 62
    move-result-object v1

    .line 65
    check-cast v1, Lcom/android/systemui/demomode/DemoMode;

    .line 66
    invoke-interface {v1, p1, v0}, Lcom/android/systemui/demomode/DemoModeCommandReceiver;->dispatchDemoCommand(Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 68
    goto :goto_0

    .line 71
    :catchall_0
    move-exception p0

    .line 72
    new-instance p1, Ljava/lang/StringBuilder;

    .line 73
    const-string v0, "Error running demo command, intent="

    .line 75
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 77
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 80
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 83
    move-result-object p1

    .line 86
    const-string p2, "MiuiDemoModeController"

    .line 87
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :cond_0
    return-void
    .line 92
.end method
