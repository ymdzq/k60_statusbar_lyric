.class public abstract Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainHandlerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideShellMainHandler(Landroid/content/Context;Landroid/os/HandlerThread;Landroid/os/Handler;)Landroid/os/Handler;
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object p0

    .line 5
    const v0, 0x7f05002f    # @bool/config_enableShellMainThread 'true'

    .line 6
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 9
    move-result p0

    .line 12
    if-eqz p0, :cond_2

    .line 13
    if-nez p1, :cond_0

    .line 15
    new-instance p1, Landroid/os/HandlerThread;

    .line 17
    const-string/jumbo p0, "wmshell.main"

    .line 19
    const/4 p2, -0x4

    .line 22
    invoke-direct {p1, p0, p2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    .line 23
    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 26
    :cond_0
    sget-boolean p0, Landroid/os/Build;->IS_DEBUGGABLE:Z

    .line 29
    if-eqz p0, :cond_1

    .line 31
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 33
    move-result-object p0

    .line 36
    const-wide/16 v0, 0x20

    .line 37
    invoke-virtual {p0, v0, v1}, Landroid/os/Looper;->setTraceTag(J)V

    .line 39
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 42
    move-result-object p0

    .line 45
    const-wide/16 v0, 0x1e

    .line 46
    invoke-virtual {p0, v0, v1, v0, v1}, Landroid/os/Looper;->setSlowLogThresholdMs(JJ)V

    .line 48
    :cond_1
    invoke-virtual {p1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    .line 51
    move-result-object p0

    .line 54
    invoke-static {p0}, Landroid/os/Handler;->createAsync(Landroid/os/Looper;)Landroid/os/Handler;

    .line 55
    move-result-object p2

    .line 58
    :cond_2
    invoke-static {p2}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 59
    return-object p2
    .line 62
.end method
