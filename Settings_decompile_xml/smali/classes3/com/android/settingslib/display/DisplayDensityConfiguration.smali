.class public Lcom/android/settingslib/display/DisplayDensityConfiguration;
.super Ljava/lang/Object;
.source "DisplayDensityConfiguration.java"


# direct methods
.method public static synthetic $r8$lambda$TEA8r8bizP6zQNQAoD1d6MTIfsU(III)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/display/DisplayDensityConfiguration;->lambda$setForcedDisplayDensity$1(III)V

    return-void
.end method

.method private static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 1

    .line 81
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 82
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "DisplayDensityConfig"

    const-string p1, "Unable to save forced display density setting"

    .line 84
    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    .line 77
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 78
    new-instance v1, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/DisplayDensityConfiguration$$ExternalSyntheticLambda0;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
