.class Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;
.super Landroid/view/IRecentsAnimationController$Default;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field public mWillFinishToHome:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/IRecentsAnimationController$Default;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6
    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final animateNavigationBarToApp(J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final cleanupScreenshot()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final detachNavigationBarFromApp(Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 2
    move-result-object p0

    .line 5
    const/4 p1, 0x0

    .line 6
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->detachNavigationBarFromApp(Landroid/os/IBinder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    goto :goto_0

    .line 10
    :catch_0
    move-exception p0

    .line 11
    const-string p1, "RemoteTransitionCompat"

    .line 12
    const-string v0, "Failed to detach the navigation bar from app"

    .line 14
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 16
    :goto_0
    return-void
    .line 19
.end method

.method public final finish(ZZ)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/RuntimeException;

    .line 2
    invoke-direct {p0}, Ljava/lang/RuntimeException;-><init>()V

    .line 4
    const-string p1, "Duplicate call to finish"

    .line 7
    const-string p2, "RemoteTransitionCompat"

    .line 9
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 11
    return-void
    .line 14
.end method

.method public final removeTask(I)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public final screenshotTask(I)Landroid/window/TaskSnapshot;
    .locals 1

    .line 1
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 2
    move-result-object p0

    .line 5
    const/4 v0, 0x1

    .line 6
    invoke-interface {p0, p1, v0}, Landroid/app/IActivityTaskManager;->takeTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    .line 7
    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    return-object p0

    .line 11
    :catch_0
    move-exception p0

    .line 12
    const-string p1, "RemoteTransitionCompat"

    .line 13
    const-string v0, "Failed to screenshot task"

    .line 15
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 17
    const/4 p0, 0x0

    .line 20
    return-object p0
    .line 21
.end method

.method public final setAnimationTargetsBehindSystemBars(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setDeferCancelUntilNextTransition(ZZ)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final setFinishTaskTransaction(ILandroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mPipTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 2
    return-void
    .line 4
.end method

.method public final setInputConsumerEnabled(Z)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityTaskManager;->getService()Landroid/app/IActivityTaskManager;

    .line 5
    move-result-object p0

    .line 8
    const/4 p1, 0x0

    .line 9
    invoke-interface {p0, p1}, Landroid/app/IActivityTaskManager;->setFocusedTask(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    const-string p1, "RemoteTransitionCompat"

    .line 15
    const-string v0, "Failed to set focused task"

    .line 17
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 19
    :goto_0
    return-void
    .line 22
.end method

.method public final setWillFinishToHome(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/android/systemui/shared/system/RemoteTransitionCompat$RecentsControllerWrap;->mWillFinishToHome:Z

    .line 2
    return-void
    .line 4
.end method
