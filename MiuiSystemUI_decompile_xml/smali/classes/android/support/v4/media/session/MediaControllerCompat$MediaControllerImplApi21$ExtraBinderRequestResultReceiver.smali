.class Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;
.super Landroid/os/ResultReceiver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mMediaControllerImpl:Ljava/lang/ref/WeakReference;


# virtual methods
.method public final onReceiveResult(ILandroid/os/Bundle;)V
    .locals 5

    .line 1
    iget-object p0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21$ExtraBinderRequestResultReceiver;->mMediaControllerImpl:Ljava/lang/ref/WeakReference;

    .line 2
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;

    .line 8
    if-eqz p0, :cond_5

    .line 10
    if-nez p2, :cond_0

    .line 12
    goto :goto_2

    .line 14
    :cond_0
    iget-object p1, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mLock:Ljava/lang/Object;

    .line 15
    monitor-enter p1

    .line 17
    :try_start_0
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 18
    const-string v1, "android.support.v4.media.session.EXTRA_BINDER"

    .line 20
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBinder(Ljava/lang/String;)Landroid/os/IBinder;

    .line 22
    move-result-object v1

    .line 25
    sget v2, Landroid/support/v4/media/session/IMediaSession$Stub;->$r8$clinit:I

    .line 26
    const/4 v2, 0x0

    .line 28
    if-nez v1, :cond_1

    .line 29
    move-object v3, v2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const-string v3, "android.support.v4.media.session.IMediaSession"

    .line 33
    invoke-interface {v1, v3}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 35
    move-result-object v3

    .line 38
    if-eqz v3, :cond_2

    .line 39
    instance-of v4, v3, Landroid/support/v4/media/session/IMediaSession;

    .line 41
    if-eqz v4, :cond_2

    .line 43
    check-cast v3, Landroid/support/v4/media/session/IMediaSession;

    .line 45
    goto :goto_0

    .line 47
    :cond_2
    new-instance v3, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;

    .line 48
    invoke-direct {v3, v1}, Landroid/support/v4/media/session/IMediaSession$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    .line 50
    :goto_0
    iget-object v1, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    .line 53
    monitor-enter v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 55
    :try_start_1
    iput-object v3, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mExtraBinder:Landroid/support/v4/media/session/IMediaSession;

    .line 56
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 58
    :try_start_2
    iget-object v0, p0, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->mSessionToken:Landroid/support/v4/media/session/MediaSessionCompat$Token;

    .line 59
    const-string v1, "android.support.v4.media.session.SESSION_TOKEN2"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 61
    :try_start_3
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 63
    move-result-object p2

    .line 66
    check-cast p2, Landroid/os/Bundle;

    .line 67
    if-nez p2, :cond_3

    .line 69
    goto :goto_1

    .line 71
    :cond_3
    const-class v1, Landroidx/versionedparcelable/ParcelUtils;

    .line 72
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 74
    move-result-object v1

    .line 77
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 78
    const-string v1, "a"

    .line 81
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 83
    move-result-object p2

    .line 86
    instance-of v1, p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 87
    if-eqz v1, :cond_4

    .line 89
    check-cast p2, Landroidx/versionedparcelable/ParcelImpl;

    .line 91
    iget-object v2, p2, Landroidx/versionedparcelable/ParcelImpl;->mParcel:Landroidx/versionedparcelable/VersionedParcelable;

    .line 93
    goto :goto_1

    .line 95
    :cond_4
    new-instance p2, Ljava/lang/IllegalArgumentException;

    .line 96
    const-string v1, "Invalid parcel"

    .line 98
    invoke-direct {p2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 100
    throw p2
    :try_end_3
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 103
    :catch_0
    :goto_1
    :try_start_4
    iget-object p2, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mLock:Ljava/lang/Object;

    .line 104
    monitor-enter p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 106
    :try_start_5
    iput-object v2, v0, Landroid/support/v4/media/session/MediaSessionCompat$Token;->mSession2Token:Landroidx/versionedparcelable/VersionedParcelable;

    .line 107
    monitor-exit p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 109
    :try_start_6
    invoke-virtual {p0}, Landroid/support/v4/media/session/MediaControllerCompat$MediaControllerImplApi21;->processPendingCallbacksLocked()V

    .line 110
    monitor-exit p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 113
    return-void

    .line 114
    :catchall_0
    move-exception p0

    .line 115
    :try_start_7
    monitor-exit p2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 116
    :try_start_8
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 117
    :catchall_1
    move-exception p0

    .line 118
    :try_start_9
    monitor-exit v1
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 119
    :try_start_a
    throw p0

    .line 120
    :catchall_2
    move-exception p0

    .line 121
    monitor-exit p1
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 122
    throw p0

    .line 123
    :cond_5
    :goto_2
    return-void
    .line 124
.end method
