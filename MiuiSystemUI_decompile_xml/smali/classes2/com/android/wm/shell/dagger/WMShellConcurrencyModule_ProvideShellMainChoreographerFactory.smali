.class public abstract Lcom/android/wm/shell/dagger/WMShellConcurrencyModule_ProvideShellMainChoreographerFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideShellMainChoreographer(Lcom/android/wm/shell/common/ShellExecutor;)Landroid/view/Choreographer;
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    :try_start_0
    new-array v0, v0, [Landroid/view/Choreographer;

    .line 3
    new-instance v1, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$$ExternalSyntheticLambda0;

    .line 5
    invoke-direct {v1, v0}, Lcom/android/wm/shell/dagger/WMShellConcurrencyModule$$ExternalSyntheticLambda0;-><init>([Landroid/view/Choreographer;)V

    .line 7
    invoke-interface {p0, v1}, Lcom/android/wm/shell/common/ShellExecutor;->executeBlocking(Ljava/lang/Runnable;)V

    .line 10
    const/4 p0, 0x0

    .line 13
    aget-object p0, v0, p0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 14
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 16
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v0, Ljava/lang/RuntimeException;

    .line 21
    const-string v1, "Failed to obtain main Choreographer."

    .line 23
    invoke-direct {v0, v1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 25
    throw v0
    .line 28
.end method
