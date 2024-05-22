.class public Lcom/miui/maml/elements/MusicListenerService;
.super Landroid/service/notification/NotificationListenerService;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/RemoteController$OnClientUpdateListener;


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ACTION:Ljava/lang/String; = "android.service.notification.MusicListenerService"

.field private static final BITMAP_HEIGHT:I = 0x400

.field private static final BITMAP_WIDTH:I = 0x400

.field private static final LOG_TAG:Ljava/lang/String; = "MusicListenerService"


# instance fields
.field private mBinder:Landroid/os/IBinder;

.field private mClientUpdateListeners:Ljava/util/List;

.field private mContext:Landroid/content/Context;

.field private mRemoteController:Landroid/media/RemoteController;

.field private mRemoteControllerEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    .line 2
    new-instance v0, Lcom/miui/maml/elements/MusicListenerService$RCBinder;

    .line 5
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/MusicListenerService$RCBinder;-><init>(Lcom/miui/maml/elements/MusicListenerService;)V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 10
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 12
    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 17
    return-void
    .line 19
.end method

.method private disableRemoteController()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 6
    const-string v1, "audio"

    .line 8
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    move-result-object v0

    .line 13
    check-cast v0, Landroid/media/AudioManager;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 16
    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterRemoteController(Landroid/media/RemoteController;)V

    .line 18
    const/4 v0, 0x0

    .line 21
    iput-boolean v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 22
    :cond_0
    return-void
    .line 24
.end method

.method private enableRemoteController()V
    .locals 5

    .line 1
    const-string v0, "fail to register RemoteController!"

    .line 2
    const-string v1, "MusicListenerService"

    .line 4
    iget-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 6
    if-nez v2, :cond_1

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 10
    const-string v3, "audio"

    .line 12
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    move-result-object v2

    .line 17
    check-cast v2, Landroid/media/AudioManager;

    .line 18
    new-instance v3, Landroid/media/RemoteController;

    .line 20
    iget-object v4, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 22
    invoke-direct {v3, v4, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 24
    iput-object v3, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 27
    :try_start_0
    invoke-virtual {v2, v3}, Landroid/media/AudioManager;->registerRemoteController(Landroid/media/RemoteController;)Z

    .line 29
    move-result v2

    .line 32
    iput-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 35
    :catch_0
    move-exception v2

    .line 36
    invoke-static {v1, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 37
    :goto_0
    iget-boolean v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteControllerEnabled:Z

    .line 40
    if-eqz v2, :cond_0

    .line 42
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 44
    const/16 v1, 0x400

    .line 46
    invoke-virtual {v0, v1, v1}, Landroid/media/RemoteController;->setArtworkConfiguration(II)Z

    .line 48
    iget-object p0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 51
    const/4 v0, 0x1

    .line 53
    invoke-virtual {p0, v0}, Landroid/media/RemoteController;->setSynchronizationMode(I)Z

    .line 54
    goto :goto_1

    .line 57
    :cond_0
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    :cond_1
    :goto_1
    return-void
    .line 61
.end method


# virtual methods
.method public getRemoteController()Landroid/media/RemoteController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 2
    return-object p0
    .line 4
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    .line 1
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    .line 2
    move-result-object p1

    .line 5
    const-string v0, "android.service.notification.MusicListenerService"

    .line 6
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 8
    move-result p1

    .line 11
    const-string v0, "MusicListenerService"

    .line 12
    if-eqz p1, :cond_0

    .line 14
    const-string p1, "onBind: success"

    .line 16
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    iget-object p0, p0, Lcom/miui/maml/elements/MusicListenerService;->mBinder:Landroid/os/IBinder;

    .line 21
    return-object p0

    .line 23
    :cond_0
    const-string p0, "onBind: fail"

    .line 24
    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    const/4 p0, 0x0

    .line 29
    return-object p0
    .line 30
.end method

.method public onClientChange(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientChange(Z)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public onClientFolderInfoBrowsedPlayer(Ljava/lang/String;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientMetadataUpdate(Landroid/media/RemoteController$MetadataEditor;)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public onClientNowPlayingContentChange()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onClientPlayItemResponse(Z)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onClientPlaybackStateUpdate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(I)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientPlaybackStateUpdate(IJJF)V
    .locals 11

    move-object v0, p0

    .line 7
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Landroid/media/RemoteController$OnClientUpdateListener;

    if-eqz v4, :cond_0

    move v5, p1

    move-wide v6, p2

    move-wide v8, p4

    move/from16 v10, p6

    .line 9
    invoke-interface/range {v4 .. v10}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientPlaybackStateUpdate(IJJF)V

    goto :goto_0

    .line 10
    :cond_0
    iget-object v3, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_1
    iget-object v1, v0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    :cond_2
    return-void
.end method

.method public onClientTransportControlUpdate(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 24
    if-eqz v2, :cond_0

    .line 26
    invoke-interface {v2, p1}, Landroid/media/RemoteController$OnClientUpdateListener;->onClientTransportControlUpdate(I)V

    .line 28
    goto :goto_0

    .line 31
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 32
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 34
    goto :goto_0

    .line 37
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 38
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 46
    :cond_2
    return-void
    .line 49
.end method

.method public onClientUpdateNowPlayingEntries([J)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onCreate()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/service/notification/NotificationListenerService;->getApplicationContext()Landroid/content/Context;

    .line 2
    move-result-object v0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 6
    new-instance v0, Landroid/media/RemoteController;

    .line 8
    iget-object v1, p0, Lcom/miui/maml/elements/MusicListenerService;->mContext:Landroid/content/Context;

    .line 10
    invoke-direct {v0, v1, p0}, Landroid/media/RemoteController;-><init>(Landroid/content/Context;Landroid/media/RemoteController$OnClientUpdateListener;)V

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mRemoteController:Landroid/media/RemoteController;

    .line 15
    return-void
    .line 17
.end method

.method public onDestroy()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 2
    return-void
    .line 5
.end method

.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V

    .line 2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 5
    const-string v0, "onNotificationPosted: pkg = "

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 9
    invoke-virtual {p1}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    .line 12
    move-result-object p1

    .line 15
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    const-string p1, "MusicListenerService"

    .line 23
    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 25
    return-void
    .line 28
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/service/notification/NotificationListenerService;->onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V

    .line 2
    return-void
    .line 5
.end method

.method public registerClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->enableRemoteController()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object v0

    .line 10
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v1

    .line 14
    if-eqz v1, :cond_1

    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 21
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 27
    if-eqz v1, :cond_0

    .line 29
    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    return-void

    .line 37
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 38
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 40
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 42
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    return-void
    .line 48
.end method

.method public unregisterClientUpdateListener(Landroid/media/RemoteController$OnClientUpdateListener;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object v0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_2

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v1

    .line 17
    check-cast v1, Ljava/lang/ref/WeakReference;

    .line 18
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Landroid/media/RemoteController$OnClientUpdateListener;

    .line 24
    if-eqz v2, :cond_1

    .line 26
    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v2

    .line 31
    if-eqz v2, :cond_0

    .line 32
    :cond_1
    iget-object v2, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 34
    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 36
    goto :goto_0

    .line 39
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/MusicListenerService;->mClientUpdateListeners:Ljava/util/List;

    .line 40
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 42
    move-result p1

    .line 45
    if-eqz p1, :cond_3

    .line 46
    invoke-direct {p0}, Lcom/miui/maml/elements/MusicListenerService;->disableRemoteController()V

    .line 48
    :cond_3
    return-void
    .line 51
.end method
