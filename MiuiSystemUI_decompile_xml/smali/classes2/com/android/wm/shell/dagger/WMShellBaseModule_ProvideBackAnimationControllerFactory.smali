.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideBackAnimationControllerFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideBackAnimationController(Landroid/content/Context;Landroid/os/Handler;Lcom/android/wm/shell/back/BackAnimationBackground;Lcom/android/wm/shell/common/ShellExecutor;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/sysui/ShellInit;)Ljava/util/Optional;
    .locals 10

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/back/BackAnimationController;->IS_ENABLED:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/android/wm/shell/back/BackAnimationController;

    .line 6
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 8
    move-result-object v6

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object v8

    .line 15
    move-object v1, v0

    .line 16
    move-object v2, p5

    .line 17
    move-object v3, p4

    .line 18
    move-object v4, p3

    .line 19
    move-object v5, p1

    .line 20
    move-object v7, p0

    .line 21
    move-object v9, p2

    .line 22
    invoke-direct/range {v1 .. v9}, Lcom/android/wm/shell/back/BackAnimationController;-><init>(Lcom/android/wm/shell/sysui/ShellInit;Lcom/android/wm/shell/sysui/ShellController;Lcom/android/wm/shell/common/ShellExecutor;Landroid/os/Handler;Landroid/app/IActivityTaskManager;Landroid/content/Context;Landroid/content/ContentResolver;Lcom/android/wm/shell/back/BackAnimationBackground;)V

    .line 23
    invoke-static {v0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    .line 26
    move-result-object p0

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 31
    move-result-object p0

    .line 34
    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 35
    return-object p0
    .line 38
.end method
