.class public final Lcom/android/systemui/media/RingtonePlayer$1;
.super Landroid/media/IRingtonePlayer$Stub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/media/RingtonePlayer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/media/RingtonePlayer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    invoke-direct {p0}, Landroid/media/IRingtonePlayer$Stub;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getTitle(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 6
    invoke-static {p0, v0}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    invoke-static {p0, p1, v0, v0}, Landroid/media/Ringtone;->getTitle(Landroid/content/Context;Landroid/net/Uri;ZZ)Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    return-object p0
    .line 17
.end method

.method public final isPlaying(Landroid/os/IBinder;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 20
    invoke-virtual {p0}, Landroid/media/Ringtone;->isPlaying()Z

    .line 22
    move-result p0

    .line 25
    return p0

    .line 26
    :cond_0
    const/4 p0, 0x0

    .line 27
    return p0

    .line 28
    :catchall_0
    move-exception p0

    .line 29
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 30
    throw p0
    .line 31
.end method

.method public final openRingtone(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 2
    move-result-object v0

    .line 5
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 6
    invoke-static {p0, v0}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 8
    move-result-object p0

    .line 11
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    sget-object v1, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    .line 20
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 26
    move-result v0

    .line 29
    if-eqz v0, :cond_3

    .line 30
    const-string v0, "is_alarm"

    .line 32
    const-string v1, "is_notification"

    .line 34
    const-string v2, "is_ringtone"

    .line 36
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    const/4 v3, 0x0

    .line 42
    const/4 v4, 0x0

    .line 43
    const/4 v5, 0x0

    .line 44
    move-object v0, p0

    .line 45
    move-object v1, p1

    .line 46
    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    .line 47
    move-result-object v0

    .line 50
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_1

    .line 55
    const/4 v1, 0x0

    .line 57
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 58
    move-result v1

    .line 61
    if-nez v1, :cond_0

    .line 62
    const/4 v1, 0x1

    .line 64
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 65
    move-result v1

    .line 68
    if-nez v1, :cond_0

    .line 69
    const/4 v1, 0x2

    .line 71
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    .line 72
    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    if-eqz v1, :cond_1

    .line 76
    :cond_0
    :try_start_1
    const-string v1, "r"

    .line 78
    invoke-virtual {p0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    .line 80
    move-result-object p0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 83
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    return-object p0

    .line 87
    :catch_0
    move-exception p0

    .line 88
    :try_start_2
    new-instance p1, Ljava/lang/SecurityException;

    .line 89
    invoke-direct {p1, p0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/Throwable;)V

    .line 91
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 94
    :cond_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 95
    goto :goto_1

    .line 98
    :catchall_0
    move-exception p0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 102
    goto :goto_0

    .line 105
    :catchall_1
    move-exception p1

    .line 106
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 107
    :cond_2
    :goto_0
    throw p0

    .line 110
    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/SecurityException;

    .line 111
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    const-string v1, "Uri is not ringtone, alarm, or notification: "

    .line 115
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 117
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 123
    move-result-object p1

    .line 126
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 127
    throw p0
    .line 130
.end method

.method public final play(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZ)V
    .locals 7

    .line 1
    const/4 v6, 0x0

    .line 2
    move-object v0, p0

    .line 3
    move-object v1, p1

    .line 4
    move-object v2, p2

    .line 5
    move-object v3, p3

    .line 6
    move v4, p4

    .line 7
    move v5, p5

    .line 8
    invoke-virtual/range {v0 .. v6}, Lcom/android/systemui/media/RingtonePlayer$1;->playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V

    .line 9
    return-void
    .line 12
.end method

.method public final playAsync(Landroid/net/Uri;Landroid/os/UserHandle;ZLandroid/media/AudioAttributes;)V
    .locals 4

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    if-ne v0, v1, :cond_8

    .line 8
    sget-object v0, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    .line 10
    invoke-virtual {v0, p2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result v0

    .line 15
    if-eqz v0, :cond_0

    .line 16
    sget-object p2, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    .line 18
    :cond_0
    sget-object v0, Lcom/android/systemui/RingtonePlayerInjector;->INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    .line 20
    const/4 v0, 0x1

    .line 22
    if-eqz p1, :cond_4

    .line 23
    invoke-virtual {p4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 25
    move-result v1

    .line 28
    const-string v2, "file"

    .line 29
    const/4 v3, 0x5

    .line 31
    if-ne v1, v3, :cond_2

    .line 32
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 34
    move-result-object v1

    .line 37
    if-eqz v1, :cond_1

    .line 38
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_4

    .line 44
    :cond_1
    new-instance v1, Ljava/io/File;

    .line 46
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 48
    move-result-object v2

    .line 51
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 52
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 55
    move-result v1

    .line 58
    if-nez v1, :cond_4

    .line 59
    const/4 p1, 0x2

    .line 61
    invoke-static {p1}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 62
    move-result-object p1

    .line 65
    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {p4}, Landroid/media/AudioAttributes;->getUsage()I

    .line 67
    move-result v1

    .line 70
    const/4 v3, 0x6

    .line 71
    if-ne v1, v3, :cond_4

    .line 72
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    .line 74
    move-result-object v1

    .line 77
    if-eqz v1, :cond_3

    .line 78
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    move-result v1

    .line 83
    if-eqz v1, :cond_4

    .line 84
    :cond_3
    new-instance v1, Ljava/io/File;

    .line 86
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 88
    move-result-object v2

    .line 91
    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 92
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    .line 95
    move-result v1

    .line 98
    if-nez v1, :cond_4

    .line 99
    invoke-static {v0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    .line 101
    move-result-object p1

    .line 104
    :cond_4
    :goto_0
    if-eqz p1, :cond_5

    .line 105
    const-string/jumbo v1, "settings"

    .line 107
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 110
    move-result-object v2

    .line 113
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 114
    move-result v1

    .line 117
    if-nez v1, :cond_5

    .line 118
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 120
    move-result-object v1

    .line 123
    if-eqz v1, :cond_5

    .line 124
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    .line 126
    move-result-object v1

    .line 129
    const-string v2, "/system/"

    .line 130
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 132
    move-result v1

    .line 135
    if-nez v1, :cond_5

    .line 136
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    .line 138
    move-result v1

    .line 141
    invoke-static {p1, v1}, Landroid/content/ContentProvider;->maybeAddUserId(Landroid/net/Uri;I)Landroid/net/Uri;

    .line 142
    move-result-object p1

    .line 145
    :cond_5
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 146
    iget-object v1, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 148
    invoke-static {p0, p2}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 150
    move-result-object p0

    .line 153
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 154
    new-instance p2, Lcom/android/systemui/media/NotificationPlayer$Command;

    .line 157
    invoke-direct {p2}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>()V

    .line 159
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 162
    move-result-wide v2

    .line 165
    iput-wide v2, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 166
    iput v0, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 168
    iput-object p0, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->context:Landroid/content/Context;

    .line 170
    iput-object p1, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->uri:Landroid/net/Uri;

    .line 172
    iput-boolean p3, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->looping:Z

    .line 174
    iput-object p4, p2, Lcom/android/systemui/media/NotificationPlayer$Command;->attributes:Landroid/media/AudioAttributes;

    .line 176
    iget-object p0, v1, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 178
    monitor-enter p0

    .line 180
    :try_start_0
    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 181
    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 183
    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 186
    if-nez p1, :cond_7

    .line 188
    iget-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 190
    if-eqz p1, :cond_6

    .line 192
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 194
    :cond_6
    new-instance p1, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 197
    invoke-direct {p1, v1}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    .line 199
    iput-object p1, v1, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 202
    invoke-virtual {p1}, Ljava/lang/Thread;->start()V

    .line 204
    :cond_7
    iput v0, v1, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 207
    monitor-exit p0

    .line 209
    return-void

    .line 210
    :catchall_0
    move-exception p1

    .line 211
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 212
    throw p1

    .line 213
    :cond_8
    new-instance p0, Ljava/lang/SecurityException;

    .line 214
    const-string p1, "Async playback only available from system UID."

    .line 216
    invoke-direct {p0, p1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 218
    throw p0
    .line 221
.end method

.method public final playWithVolumeShaping(Landroid/os/IBinder;Landroid/net/Uri;Landroid/media/AudioAttributes;FZLandroid/media/VolumeShaper$Configuration;)V
    .locals 4

    .line 1
    sget-object v0, Lcom/android/systemui/RingtonePlayerInjector;->Q_INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    .line 2
    invoke-virtual {v0, p2}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_1

    .line 9
    sget-boolean p2, Lcom/android/systemui/RingtonePlayerInjector;->sPlayInCallNotification:Z

    .line 11
    if-nez p2, :cond_0

    .line 13
    move-object p2, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object p2, Lcom/android/systemui/RingtonePlayerInjector;->INCALL_NOTIFICATION_URI:Landroid/net/Uri;

    .line 17
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 19
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 21
    monitor-enter v0

    .line 23
    :try_start_0
    iget-object v2, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 24
    iget-object v2, v2, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 26
    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object v2

    .line 31
    check-cast v2, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 32
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    if-nez v2, :cond_3

    .line 35
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    .line 37
    move-result-object v0

    .line 40
    new-instance v2, Landroid/media/Ringtone;

    .line 41
    iget-object v3, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 43
    invoke-static {v3, v0}, Lcom/android/systemui/media/RingtonePlayer;->-$$Nest$mgetContextForUser(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/UserHandle;)Landroid/content/Context;

    .line 45
    move-result-object v0

    .line 48
    const/4 v3, 0x0

    .line 49
    invoke-direct {v2, v0, v3}, Landroid/media/Ringtone;-><init>(Landroid/content/Context;Z)V

    .line 50
    invoke-virtual {v2, p3}, Landroid/media/Ringtone;->setAudioAttributesField(Landroid/media/AudioAttributes;)V

    .line 53
    invoke-virtual {v2, p2, p6}, Landroid/media/Ringtone;->setUri(Landroid/net/Uri;Landroid/media/VolumeShaper$Configuration;)V

    .line 56
    invoke-virtual {v2}, Landroid/media/Ringtone;->createLocalMediaPlayer()Z

    .line 59
    iget-object p2, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 62
    iget-object p2, p2, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 64
    monitor-enter p2

    .line 66
    :try_start_1
    iget-object p3, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 67
    iget-object p3, p3, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 69
    invoke-virtual {p3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    move-result-object p3

    .line 74
    check-cast p3, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 75
    if-nez p3, :cond_2

    .line 77
    new-instance p3, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 79
    iget-object p6, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 81
    invoke-direct {p3, p6, p1, v2}, Lcom/android/systemui/media/RingtonePlayer$Client;-><init>(Lcom/android/systemui/media/RingtonePlayer;Landroid/os/IBinder;Landroid/media/Ringtone;)V

    .line 83
    invoke-interface {p1, p3, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V

    .line 86
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 89
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 91
    invoke-virtual {p0, p1, p3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    goto :goto_1

    .line 96
    :cond_2
    move-object v1, v2

    .line 97
    :goto_1
    move-object v2, p3

    .line 98
    monitor-exit p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 99
    if-eqz v1, :cond_3

    .line 100
    invoke-virtual {v1}, Landroid/media/Ringtone;->stop()V

    .line 102
    goto :goto_2

    .line 105
    :catchall_0
    move-exception p0

    .line 106
    :try_start_2
    monitor-exit p2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 107
    throw p0

    .line 108
    :cond_3
    :goto_2
    iget-object p0, v2, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 109
    invoke-virtual {p0, p5}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 111
    iget-object p0, v2, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 114
    invoke-virtual {p0, p4}, Landroid/media/Ringtone;->setVolume(F)V

    .line 116
    iget-object p0, v2, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 119
    invoke-virtual {p0}, Landroid/media/Ringtone;->play()V

    .line 121
    return-void

    .line 124
    :catchall_1
    move-exception p0

    .line 125
    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 126
    throw p0
    .line 127
.end method

.method public final setPlaybackProperties(Landroid/os/IBinder;FZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 20
    invoke-virtual {p1, p2}, Landroid/media/Ringtone;->setVolume(F)V

    .line 22
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 25
    invoke-virtual {p1, p3}, Landroid/media/Ringtone;->setLooping(Z)V

    .line 27
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 30
    invoke-virtual {p0, p4}, Landroid/media/Ringtone;->setHapticGeneratorEnabled(Z)Z

    .line 32
    :cond_0
    return-void

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 37
    throw p0
    .line 38
.end method

.method public final stop(Landroid/os/IBinder;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 2
    iget-object v0, v0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 4
    monitor-enter v0

    .line 6
    :try_start_0
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 7
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mClients:Ljava/util/HashMap;

    .line 9
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    check-cast p0, Lcom/android/systemui/media/RingtonePlayer$Client;

    .line 15
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 17
    if-eqz p0, :cond_0

    .line 18
    iget-object p1, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mToken:Landroid/os/IBinder;

    .line 20
    const/4 v0, 0x0

    .line 22
    invoke-interface {p1, p0, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 23
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$Client;->mRingtone:Landroid/media/Ringtone;

    .line 26
    invoke-virtual {p0}, Landroid/media/Ringtone;->stop()V

    .line 28
    :cond_0
    return-void

    .line 31
    :catchall_0
    move-exception p0

    .line 32
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 33
    throw p0
    .line 34
.end method

.method public final stopAsync()V
    .locals 5

    .line 1
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    .line 2
    move-result v0

    .line 5
    const/16 v1, 0x3e8

    .line 6
    if-ne v0, v1, :cond_3

    .line 8
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer$1;->this$0:Lcom/android/systemui/media/RingtonePlayer;

    .line 10
    iget-object p0, p0, Lcom/android/systemui/media/RingtonePlayer;->mAsyncPlayer:Lcom/android/systemui/media/NotificationPlayer;

    .line 12
    iget-object v0, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 14
    monitor-enter v0

    .line 16
    :try_start_0
    iget v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 17
    const/4 v2, 0x2

    .line 19
    if-eq v1, v2, :cond_2

    .line 20
    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$Command;

    .line 22
    invoke-direct {v1}, Lcom/android/systemui/media/NotificationPlayer$Command;-><init>()V

    .line 24
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    .line 27
    move-result-wide v3

    .line 30
    iput-wide v3, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->requestTime:J

    .line 31
    iput v2, v1, Lcom/android/systemui/media/NotificationPlayer$Command;->code:I

    .line 33
    iget-object v3, p0, Lcom/android/systemui/media/NotificationPlayer;->mCmdQueue:Ljava/util/LinkedList;

    .line 35
    invoke-virtual {v3, v1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 37
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 40
    if-nez v1, :cond_1

    .line 42
    iget-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 44
    if-eqz v1, :cond_0

    .line 46
    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 48
    :cond_0
    new-instance v1, Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 51
    invoke-direct {v1, p0}, Lcom/android/systemui/media/NotificationPlayer$CmdThread;-><init>(Lcom/android/systemui/media/NotificationPlayer;)V

    .line 53
    iput-object v1, p0, Lcom/android/systemui/media/NotificationPlayer;->mThread:Lcom/android/systemui/media/NotificationPlayer$CmdThread;

    .line 56
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 58
    :cond_1
    iput v2, p0, Lcom/android/systemui/media/NotificationPlayer;->mState:I

    .line 61
    :cond_2
    monitor-exit v0

    .line 63
    return-void

    .line 64
    :catchall_0
    move-exception p0

    .line 65
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 66
    throw p0

    .line 67
    :cond_3
    new-instance p0, Ljava/lang/SecurityException;

    .line 68
    const-string v0, "Async playback only available from system UID."

    .line 70
    invoke-direct {p0, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .line 72
    throw p0
    .line 75
.end method
