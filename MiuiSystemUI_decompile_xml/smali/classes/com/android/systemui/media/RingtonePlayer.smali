.class public final Lcom/android/systemui/media/RingtonePlayer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# instance fields
.field public final mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

.field public final mCallback:Lcom/android/systemui/media/RingtonePlayer$1;

.field public final mClients:Ljava/util/HashMap;

.field public final mContext:Landroid/content/Context;


# direct methods
.method public static -$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    sget-object v0, Lcom/android/systemui/RingtonePlayerInjector;->INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    .line 5
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    .line 7
    move-result v0

    .line 10
    const/16 v1, 0x3e7

    .line 11
    if-ne v1, v0, :cond_0

    .line 13
    sget-object p1, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 15
    :cond_0
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    .line 17
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    const/4 v1, 0x0

    .line 23
    invoke-virtual {p0, v0, v1, p1}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    .line 24
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    return-object p0

    .line 28
    :catch_0
    move-exception p0

    .line 29
    new-instance p1, Ljava/lang/RuntimeException;

    .line 30
    invoke-direct {p1, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 32
    throw p1
    .line 35
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/android/systemui/media/NotificationPlayer;

    .line 5
    invoke-direct {v0}, Lcom/android/systemui/media/NotificationPlayer;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 10
    new-instance v0, Ljava/util/HashMap;

    .line 12
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 17
    new-instance v0, Lcom/android/systemui/media/RingtonePlayer$1;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/systemui/media/RingtonePlayer$1;-><init>(Lcom/android/systemui/media/RingtonePlayer;)V

    .line 21
    iput-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Lcom/android/systemui/media/RingtonePlayer$1;

    .line 24
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    .line 26
    return-void
    .line 28
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .line 1
    const-string p2, "Clients:"

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4
    iget-object p2, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 7
    monitor-enter p2

    .line 9
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 10
    invoke-virtual {p0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    .line 12
    move-result-object p0

    .line 15
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 16
    move-result-object p0

    .line 19
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    move-result-object v0

    .line 29
    check-cast v0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 30
    const-string v1, "  mToken="

    .line 32
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 34
    iget-object v1, v0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 37
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 39
    const-string v1, " mUri="

    .line 42
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 44
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 47
    invoke-virtual {v0}, Landroid/media/Ringtone;->getUri()Landroid/net/Uri;

    .line 49
    move-result-object v0

    .line 52
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 53
    goto :goto_0

    .line 56
    :cond_0
    monitor-exit p2

    .line 57
    return-void

    .line 58
    :catchall_0
    move-exception p0

    .line 59
    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 60
    throw p0
    .line 61
.end method

.method public final start()V
    .locals 6

    .line 1
    sget-object v0, Lcom/android/systemui/RingtonePlayerInjector;->INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2
    const-class v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 4
    invoke-static {v0}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    .line 6
    move-result-object v0

    .line 9
    check-cast v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;

    .line 10
    iget-object v1, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mNoMccMncResources:Landroid/content/res/Resources;

    .line 12
    const v2, 0x7f050099    # @bool/play_incall_notification 'false'

    .line 14
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-nez v1, :cond_1

    .line 22
    const-string v1, "OR"

    .line 24
    iget-object v0, v0, Lcom/android/systemui/MiuiOperatorCustomizedPolicy;->mCotaCarrier:Ljava/lang/String;

    .line 26
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    goto :goto_0

    .line 34
    :cond_0
    const/4 v0, 0x0

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    move v0, v2

    .line 37
    :goto_1
    sput-boolean v0, Lcom/android/systemui/RingtonePlayerInjector;->sPlayInCallNotification:Z

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    .line 40
    const-string v1, "RingtonePlayer sPlayInCallNotification="

    .line 42
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    sget-boolean v1, Lcom/android/systemui/RingtonePlayerInjector;->sPlayInCallNotification:Z

    .line 47
    const-string v3, "MiuiRingtonePlayer"

    .line 49
    invoke-static {v0, v1, v3}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 51
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 54
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mContext:Landroid/content/Context;

    .line 56
    const-string v3, "assertion failed mWakeLock="

    .line 58
    iget-object v4, v0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 60
    monitor-enter v4

    .line 62
    :try_start_0
    iget-object v5, v0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 63
    if-nez v5, :cond_2

    .line 65
    iget-object v5, v0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 67
    if-nez v5, :cond_2

    .line 69
    const-string v3, "power"

    .line 71
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 73
    move-result-object v1

    .line 76
    check-cast v1, Landroid/os/PowerManager;

    .line 77
    iget-object v3, v0, Lcom/android/systemui/media/NotificationPlayer;->mTag:Ljava/lang/String;

    .line 79
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    .line 81
    move-result-object v1

    .line 84
    iput-object v1, v0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 85
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    const-string v0, "audio"

    .line 88
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 90
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    .line 94
    move-result-object v0

    .line 97
    :try_start_1
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mCallback:Lcom/android/systemui/media/RingtonePlayer$1;

    .line 98
    invoke-interface {v0, p0}, Landroid/media/IAudioService;->setRingtonePlayer(Landroid/media/IRingtonePlayer;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 100
    goto :goto_2

    .line 103
    :catch_0
    move-exception p0

    .line 104
    const-string v0, "RingtonePlayer"

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    .line 107
    const-string v2, "Problem registering RingtonePlayer: "

    .line 109
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 111
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 114
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :goto_2
    return-void

    .line 124
    :cond_2
    :try_start_2
    new-instance p0, Ljava/lang/RuntimeException;

    .line 125
    new-instance v1, Ljava/lang/StringBuilder;

    .line 127
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    iget-object v2, v0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 132
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 134
    const-string v2, " mThread="

    .line 137
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    iget-object v0, v0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 142
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 144
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 147
    move-result-object v0

    .line 150
    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 151
    throw p0

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 156
    throw p0
    .line 157
.end method
