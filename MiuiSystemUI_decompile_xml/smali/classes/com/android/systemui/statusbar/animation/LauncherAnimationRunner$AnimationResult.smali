.class public final Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mFinishRunnable:Ljava/lang/Runnable;

.field public mFinished:Z


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 6
    iput-object p1, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final finish()V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    .line 6
    if-eqz v0, :cond_1

    .line 8
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 10
    const-string v0, "LauncherAnimationRunner"

    .line 13
    const-string v1, "finish: mFinishRunnable.run"

    .line 15
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    const-class v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    .line 20
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;

    .line 26
    const/4 v1, 0x0

    .line 28
    iput-boolean v1, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;->isAnimationShowing:Z

    .line 29
    iget-object v0, v0, Lcom/android/systemui/statusbar/animation/MiuiStatusBarLaunchController;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 31
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 33
    const-string v1, "OverviewProxyService"

    .line 36
    const/4 v2, 0x1

    .line 38
    const/4 v3, 0x0

    .line 39
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 40
    if-eqz v4, :cond_0

    .line 42
    const-string v4, "onStatusBarLaunchAnimFinish: "

    .line 44
    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 49
    check-cast v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 51
    iget-object v4, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 53
    invoke-static {v4}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 55
    move-result-object v4
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :try_start_1
    const-string v5, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 59
    invoke-virtual {v4, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 61
    iget-object v0, v0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 64
    const/16 v5, 0x39

    .line 66
    invoke-interface {v0, v5, v4, v3, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 68
    :try_start_2
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 71
    goto :goto_0

    .line 74
    :catchall_0
    move-exception v0

    .line 75
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 76
    throw v0

    .line 79
    :cond_0
    const-string v0, "Failed to get overview proxy to notify status bar launch anim finish."

    .line 80
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 82
    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    const-string v4, "Failed to call onStatusBarLaunchAnimFinish()"

    .line 87
    invoke-static {v1, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 89
    :goto_0
    iput-boolean v2, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinished:Z

    .line 92
    iput-object v3, p0, Lcom/android/systemui/statusbar/animation/LauncherAnimationRunner$AnimationResult;->mFinishRunnable:Ljava/lang/Runnable;

    .line 94
    :cond_1
    return-void
    .line 96
.end method
