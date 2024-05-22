.class public final Lcom/android/systemui/recents/Recents;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;
.implements Lcom/android/systemui/statusbar/CommandQueue$Callbacks;


# instance fields
.field public final mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

.field public final mContext:Landroid/content/Context;

.field public final mImpl:Lcom/android/systemui/recents/RecentsImplementation;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/recents/RecentsImplementation;Lcom/android/systemui/statusbar/CommandQueue;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final appTransitionFinished(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getDisplayId()I

    .line 4
    move-result v0

    .line 7
    if-ne v0, p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public final cancelPreloadRecentApps()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    return-void
    .line 14
.end method

.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final hideRecentApps(ZZ)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 9
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 23
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 35
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 38
    const/4 p1, 0x0

    .line 40
    const/4 p2, 0x1

    .line 41
    const/16 v1, 0x9

    .line 42
    invoke-interface {p0, v1, v0, p1, p2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 44
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 47
    goto :goto_0

    .line 50
    :catchall_0
    move-exception p0

    .line 51
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 52
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 55
    :catch_0
    move-exception p0

    .line 56
    const-string p1, "OverviewProxyRecentsImpl"

    .line 57
    const-string p2, "Failed to send overview hide event to launcher."

    .line 59
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 61
    :cond_1
    :goto_0
    return-void
    .line 64
.end method

.method public final isUserSetup()Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 4
    move-result-object p0

    .line 7
    const-string v0, "device_provisioned"

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    const-string/jumbo v0, "user_setup_complete"

    .line 17
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 20
    move-result p0

    .line 23
    if-eqz p0, :cond_0

    .line 24
    const/4 v1, 0x1

    .line 26
    :cond_0
    return v1
    .line 27
.end method

.method public final onBootCompleted()V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 4
    return-void
    .line 7
.end method

.method public final preloadRecentApps()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    return-void
    .line 14
.end method

.method public final showRecentApps(Z)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 9
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 11
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 13
    iget-object p0, p0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 15
    if-eqz p0, :cond_1

    .line 17
    :try_start_0
    check-cast p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;

    .line 19
    iget-object v0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 21
    invoke-static {v0}, Landroid/os/Parcel;->obtain(Landroid/os/IBinder;)Landroid/os/Parcel;

    .line 23
    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    :try_start_1
    const-string v1, "com.android.systemui.shared.recents.IOverviewProxy"

    .line 27
    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 32
    iget-object p0, p0, Lcom/android/systemui/shared/recents/IOverviewProxy$Stub$Proxy;->mRemote:Landroid/os/IBinder;

    .line 35
    const/4 p1, 0x0

    .line 37
    const/4 v1, 0x1

    .line 38
    const/16 v2, 0x8

    .line 39
    invoke-interface {p0, v2, v0, p1, v1}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 41
    :try_start_2
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 44
    goto :goto_0

    .line 47
    :catchall_0
    move-exception p0

    .line 48
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 49
    throw p0
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 52
    :catch_0
    move-exception p0

    .line 53
    const-string p1, "OverviewProxyRecentsImpl"

    .line 54
    const-string v0, "Failed to send overview show event to launcher."

    .line 56
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 58
    :cond_1
    :goto_0
    return-void
    .line 61
.end method

.method public final start()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/recents/Recents;->mCommandQueue:Lcom/android/systemui/statusbar/CommandQueue;

    .line 2
    invoke-virtual {v0, p0}, Lcom/android/systemui/statusbar/CommandQueue;->addCallback(Lcom/android/systemui/statusbar/CommandQueue$Callbacks;)V

    .line 4
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 7
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    new-instance v0, Landroid/os/Handler;

    .line 14
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 16
    iput-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mHandler:Landroid/os/Handler;

    .line 19
    return-void
    .line 21
.end method

.method public final toggleRecentApps()V
    .locals 8

    .line 1
    invoke-virtual {p0}, Lcom/android/systemui/recents/Recents;->isUserSetup()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/recents/Recents;->mImpl:Lcom/android/systemui/recents/RecentsImplementation;

    .line 9
    check-cast p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;

    .line 11
    iget-object v0, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mOverviewProxyService:Lcom/android/systemui/recents/OverviewProxyService;

    .line 13
    iget-object v0, v0, Lcom/android/systemui/recents/OverviewProxyService;->mOverviewProxy:Lcom/android/systemui/shared/recents/IOverviewProxy;

    .line 15
    if-eqz v0, :cond_2

    .line 17
    new-instance v0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;)V

    .line 21
    iget-object v1, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mCentralSurfacesOptionalLazy:Ldagger/Lazy;

    .line 24
    invoke-interface {v1}, Ldagger/Lazy;->get()Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Ljava/util/Optional;

    .line 30
    new-instance v2, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;

    .line 32
    invoke-direct {v2}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda1;-><init>()V

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    .line 37
    move-result-object v1

    .line 40
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 41
    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    .line 43
    move-result-object v1

    .line 46
    check-cast v1, Ljava/lang/Boolean;

    .line 47
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 49
    move-result v1

    .line 52
    if-eqz v1, :cond_1

    .line 53
    iget-object v2, p0, Lcom/android/systemui/recents/OverviewProxyRecentsImpl;->mActivityStarter:Lcom/android/systemui/plugins/ActivityStarter;

    .line 55
    new-instance v3, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;

    .line 57
    invoke-direct {v3, p0, v0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda2;-><init>(Lcom/android/systemui/recents/OverviewProxyRecentsImpl;Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;)V

    .line 59
    const/4 v4, 0x0

    .line 62
    const/4 v5, 0x1

    .line 63
    const/4 v6, 0x0

    .line 64
    const/4 v7, 0x1

    .line 65
    invoke-interface/range {v2 .. v7}, Lcom/android/systemui/plugins/ActivityStarter;->executeRunnableDismissingKeyguard(Ljava/lang/Runnable;Ljava/lang/Runnable;ZZZ)V

    .line 66
    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {v0}, Lcom/android/systemui/recents/OverviewProxyRecentsImpl$$ExternalSyntheticLambda0;->run()V

    .line 70
    :cond_2
    :goto_0
    return-void
    .line 73
.end method
