.class public abstract Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellAnimationExecutorFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideShellAnimationExecutor()Lcom/android/wm/shell/common/HandlerExecutor;
    .locals 4

    .line 1
    new-instance v0, Landroid/os/HandlerThread;

    .line 2
    const-string/jumbo v1, "wmshell.anim"

    .line 4
    const/4 v2, -0x4

    .line 7
    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 8
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 11
    sget-boolean v1, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 18
    move-result-object v1

    .line 21
    const-wide/16 v2, 0x20

    .line 22
    invoke-virtual {v1, v2, v3}, Landroid/os/Looper;->setTraceTag(J)V

    .line 24
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 27
    move-result-object v1

    .line 30
    const-wide/16 v2, 0x1e

    .line 31
    invoke-virtual {v1, v2, v3, v2, v3}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 33
    :cond_0
    new-instance v1, Lcom/android/wm/shell/common/HandlerExecutor;

    .line 36
    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 38
    move-result-object v0

    .line 41
    invoke-static {v0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 42
    move-result-object v0

    .line 45
    invoke-direct {v1, v0}, Lcom/android/wm/shell/common/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 46
    return-object v1
    .line 49
.end method
