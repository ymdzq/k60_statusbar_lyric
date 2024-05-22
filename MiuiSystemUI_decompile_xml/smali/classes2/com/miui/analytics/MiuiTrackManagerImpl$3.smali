.class public final Lcom/miui/analytics/MiuiTrackManagerImpl$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# instance fields
.field public final synthetic this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;


# direct methods
.method public constructor <init>(Lcom/miui/analytics/MiuiTrackManagerImpl;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final binderDied()V
    .locals 4

    .line 1
    const-string v0, "MiuiTrackManager"

    .line 2
    const-string v1, "binderDied."

    .line 4
    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    iget-object v0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 9
    invoke-static {v0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmTrackLock(Lcom/miui/analytics/MiuiTrackManagerImpl;)Ljava/lang/Object;

    .line 11
    move-result-object v0

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 16
    invoke-static {v1}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmITrackBinder(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/miui/analytics/ITrackBinder;

    .line 18
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    monitor-exit v0

    .line 24
    return-void

    .line 25
    :cond_0
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 26
    invoke-static {v1}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmITrackBinder(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/miui/analytics/ITrackBinder;

    .line 28
    move-result-object v1

    .line 31
    invoke-interface {v1}, Lcom/miui/analytics/ITrackBinder;->asBinder()Landroid/os/IBinder;

    .line 32
    move-result-object v1

    .line 35
    iget-object v2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 36
    invoke-static {v2}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmDeathRecipient(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/os/IBinder$DeathRecipient;

    .line 38
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 43
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 46
    const/4 v2, 0x0

    .line 48
    invoke-static {v1, v2}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fputmITrackBinder(Lcom/miui/analytics/MiuiTrackManagerImpl;Lcom/miui/analytics/ITrackBinder;)V

    .line 49
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 52
    invoke-static {v1}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmContext(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/content/Context;

    .line 54
    move-result-object v2

    .line 57
    iget-object v3, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 58
    invoke-static {v3}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmServiceConnection(Lcom/miui/analytics/MiuiTrackManagerImpl;)Landroid/content/ServiceConnection;

    .line 60
    move-result-object v3

    .line 63
    invoke-static {v1, v2, v3}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$mcloseOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;Landroid/content/Context;Landroid/content/ServiceConnection;)V

    .line 64
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 67
    invoke-static {v1}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmBgExecutor(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 69
    move-result-object v1

    .line 72
    iget-object v2, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 73
    invoke-static {v2}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmBindOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;)Ljava/lang/Runnable;

    .line 75
    move-result-object v2

    .line 78
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 79
    invoke-virtual {v1, v2}, Lcom/android/wm/shell/common/HandlerExecutor;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 81
    iget-object v1, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 84
    invoke-static {v1}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmBgExecutor(Lcom/miui/analytics/MiuiTrackManagerImpl;)Lcom/android/wm/shell/common/ShellExecutor;

    .line 86
    move-result-object v1

    .line 89
    iget-object p0, p0, Lcom/miui/analytics/MiuiTrackManagerImpl$3;->this$0:Lcom/miui/analytics/MiuiTrackManagerImpl;

    .line 90
    invoke-static {p0}, Lcom/miui/analytics/MiuiTrackManagerImpl;->-$$Nest$fgetmBindOneTrackService(Lcom/miui/analytics/MiuiTrackManagerImpl;)Ljava/lang/Runnable;

    .line 92
    move-result-object p0

    .line 95
    check-cast v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 96
    const-wide/16 v2, 0xc8

    .line 98
    invoke-virtual {v1, p0, v2, v3}, Lcom/android/wm/shell/common/HandlerExecutor;->executeDelayed(Ljava/lang/Runnable;J)V

    .line 100
    monitor-exit v0

    .line 103
    return-void

    .line 104
    :catchall_0
    move-exception p0

    .line 105
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 106
    throw p0
    .line 107
.end method
