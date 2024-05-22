.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvideDesktopModeFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static provideDesktopMode(Ljava/util/Optional;Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/android/wm/shell/desktopmode/DesktopModeStatus;->IS_PROTO2_ENABLED:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance p0, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 6
    const/4 v0, 0x7

    .line 8
    invoke-direct {p0, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 9
    invoke-virtual {p1, p0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 12
    move-result-object p0

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    new-instance p1, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;

    .line 17
    const/16 v0, 0x8

    .line 19
    invoke-direct {p1, v0}, Lcom/android/wm/shell/dagger/WMShellBaseModule$$ExternalSyntheticLambda0;-><init>(I)V

    .line 21
    invoke-virtual {p0, p1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 24
    move-result-object p0

    .line 27
    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 28
    return-object p0
    .line 31
.end method
