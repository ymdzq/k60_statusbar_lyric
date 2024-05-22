.class public abstract Lcom/android/wm/shell/dagger/WMShellBaseModule_ProvidesMiuiFreeformModeTaskRepositoryFactory;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljavax/inject/Provider;


# direct methods
.method public static providesMiuiFreeformModeTaskRepository(Ljava/util/Optional;)Ljava/util/Optional;
    .locals 1

    .line 1
    invoke-static {}, Lcom/android/wm/shell/miuifreeform/MiuiFreeformModeStatus;->isEnabled()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    goto :goto_0

    .line 8
    :cond_0
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    .line 9
    move-result-object p0

    .line 12
    :goto_0
    invoke-static {p0}, Ldagger/internal/Preconditions;->checkNotNullFromProvides(Ljava/lang/Object;)V

    .line 13
    return-object p0
    .line 16
.end method
