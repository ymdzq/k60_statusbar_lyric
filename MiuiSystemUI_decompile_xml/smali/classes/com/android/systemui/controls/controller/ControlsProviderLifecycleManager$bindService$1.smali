.class public final Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $bind:Z

.field public final synthetic $forPanel:Z

.field public final synthetic this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;


# direct methods
.method public constructor <init>(Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;ZZ)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 2
    iput-boolean p2, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$bind:Z

    .line 4
    iput-boolean p3, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$forPanel:Z

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->this$0:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;

    .line 2
    iget-boolean v1, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$bind:Z

    .line 4
    iget-boolean p0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$bindService$1;->$forPanel:Z

    .line 6
    iget-object v2, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    .line 8
    const-string v3, "Couldn\'t bind to "

    .line 10
    iput-boolean v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->requiresBound:Z

    .line 12
    const/4 v4, 0x1

    .line 14
    const/4 v5, 0x0

    .line 15
    if-eqz v1, :cond_2

    .line 16
    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->wrapper:Lcom/android/systemui/controls/controller/ServiceWrapper;

    .line 18
    if-nez v1, :cond_3

    .line 20
    iget-object v1, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->intent:Landroid/content/Intent;

    .line 22
    new-instance v6, Ljava/lang/StringBuilder;

    .line 24
    const-string v7, "Binding service "

    .line 26
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 28
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object v6

    .line 37
    iget-object v7, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->TAG:Ljava/lang/String;

    .line 38
    invoke-static {v7, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    :try_start_0
    iput-boolean p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->lastForPanel:Z

    .line 43
    if-eqz p0, :cond_0

    .line 45
    const/16 p0, 0x101

    .line 47
    goto :goto_0

    .line 49
    :cond_0
    const p0, 0x4000101

    .line 50
    :goto_0
    iget-object v6, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 53
    invoke-virtual {v6, v5, v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 55
    move-result v6
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    iget-object v8, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->context:Landroid/content/Context;

    .line 59
    if-eqz v6, :cond_1

    .line 61
    :try_start_1
    iget-object v6, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->user:Landroid/os/UserHandle;

    .line 63
    invoke-virtual {v8, v1, v2, p0, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    .line 65
    move-result p0

    .line 68
    goto :goto_1

    .line 69
    :cond_1
    move p0, v5

    .line 70
    :goto_1
    if-nez p0, :cond_3

    .line 71
    new-instance p0, Ljava/lang/StringBuilder;

    .line 73
    invoke-direct {p0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 75
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 78
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 81
    move-result-object p0

    .line 84
    invoke-static {v7, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    iget-object p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->serviceConnection:Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;

    .line 88
    iget-object v0, p0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 90
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 92
    move-result v0

    .line 95
    if-eqz v0, :cond_3

    .line 96
    invoke-virtual {v8, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 98
    goto :goto_2

    .line 101
    :catch_0
    move-exception p0

    .line 102
    const-string v0, "Failed to bind to service"

    .line 103
    invoke-static {v7, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 105
    iget-object p0, v2, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager$serviceConnection$1;->connected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 108
    invoke-virtual {p0, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 110
    goto :goto_2

    .line 113
    :cond_2
    const-string/jumbo p0, "unbind requested"

    .line 114
    invoke-virtual {v0, p0}, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->unbindAndCleanup(Ljava/lang/String;)V

    .line 117
    iget-object p0, v0, Lcom/android/systemui/controls/controller/ControlsProviderLifecycleManager;->packageUpdateMonitor:Lcom/android/systemui/controls/controller/PackageUpdateMonitor;

    .line 120
    iget-object v0, p0, Lcom/android/systemui/controls/controller/PackageUpdateMonitor;->monitoring:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 122
    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    .line 124
    move-result v0

    .line 127
    if-eqz v0, :cond_3

    .line 128
    invoke-virtual {p0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 130
    :cond_3
    :goto_2
    return-void
    .line 133
.end method
