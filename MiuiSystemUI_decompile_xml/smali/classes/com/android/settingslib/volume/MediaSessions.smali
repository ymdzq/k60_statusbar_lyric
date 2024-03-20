.class public final Lcom/android/settingslib/volume/MediaSessions;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field public final mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

.field public final mContext:Landroid/content/Context;

.field public final mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public mInit:Z

.field public final mMgr:Landroid/media/session/MediaSessionManager;

.field public final mRecords:Ljava/util/Map;

.field public final mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

.field public final mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "MediaSessions"

    .line 2
    const-string/jumbo v1, "vol."

    .line 4
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 11
    move-result v1

    .line 14
    const/16 v2, 0x17

    .line 15
    if-ge v1, v2, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/4 v1, 0x0

    .line 20
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    :goto_0
    sput-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 25
    return-void
    .line 27
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    .line 10
    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/settingslib/volume/MediaSessions$1;-><init>(Lcom/android/settingslib/volume/MediaSessions;)V

    .line 14
    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;

    .line 17
    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$2;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/settingslib/volume/MediaSessions$2;-><init>(Lcom/android/settingslib/volume/MediaSessions;)V

    .line 21
    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

    .line 24
    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    .line 26
    new-instance v0, Lcom/android/settingslib/volume/MediaSessions$H;

    .line 28
    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/volume/MediaSessions$H;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V

    .line 30
    iput-object v0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    .line 33
    new-instance p2, Landroid/os/HandlerExecutor;

    .line 35
    invoke-direct {p2, v0}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 37
    iput-object p2, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 40
    const-string p2, "media_session"

    .line 42
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 44
    move-result-object p1

    .line 47
    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 48
    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    .line 50
    iput-object p3, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 52
    return-void
    .line 54
.end method


# virtual methods
.method public final onActiveSessionsUpdatedH(Ljava/util/List;)V
    .locals 11

    .line 1
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 2
    sget-object v1, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v2, "onActiveSessionsUpdatedH n="

    .line 10
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 15
    move-result v2

    .line 18
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    .line 29
    iget-object v2, p0, Lcom/android/settingslib/volume/MediaSessions;->mRecords:Ljava/util/Map;

    .line 31
    check-cast v2, Ljava/util/HashMap;

    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    .line 35
    move-result-object v3

    .line 38
    invoke-direct {v0, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 39
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 42
    move-result-object p1

    .line 45
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 46
    move-result v3

    .line 49
    const/4 v4, 0x0

    .line 50
    if-eqz v3, :cond_5

    .line 51
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 53
    move-result-object v3

    .line 56
    check-cast v3, Landroid/media/session/MediaController;

    .line 57
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 59
    move-result-object v5

    .line 62
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPlaybackInfo()Landroid/media/session/MediaController$PlaybackInfo;

    .line 63
    move-result-object v6

    .line 66
    invoke-virtual {v0, v5}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 67
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 70
    move-result v7

    .line 73
    if-nez v7, :cond_3

    .line 74
    new-instance v7, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    .line 76
    invoke-direct {v7, p0, v3}, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;-><init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/media/session/MediaController;)V

    .line 78
    iget-object v8, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    .line 81
    invoke-virtual {v8}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 83
    move-result-object v8

    .line 86
    invoke-virtual {v3}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 87
    move-result-object v9

    .line 90
    :try_start_0
    invoke-virtual {v8, v9, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 91
    move-result-object v10

    .line 94
    invoke-virtual {v10, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    .line 95
    move-result-object v8

    .line 98
    const-string v10, ""

    .line 99
    invoke-static {v8, v10}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    .line 101
    move-result-object v8

    .line 104
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 105
    move-result-object v8

    .line 108
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    .line 109
    move-result v10
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    if-lez v10, :cond_2

    .line 113
    move-object v9, v8

    .line 115
    :catch_0
    :cond_2
    iput-object v9, v7, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    .line 116
    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 118
    iget-object v8, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    .line 121
    invoke-virtual {v3, v7, v8}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 123
    :cond_3
    invoke-virtual {v2, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    move-result-object v3

    .line 129
    check-cast v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    .line 130
    const/4 v7, 0x1

    .line 132
    if-eqz v6, :cond_4

    .line 133
    invoke-virtual {v6}, Landroid/media/session/MediaController$PlaybackInfo;->getPlaybackType()I

    .line 135
    move-result v8

    .line 138
    const/4 v9, 0x2

    .line 139
    if-ne v8, v9, :cond_4

    .line 140
    move v4, v7

    .line 142
    :cond_4
    if-eqz v4, :cond_1

    .line 143
    iget-object v4, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    .line 145
    invoke-virtual {p0, v5, v4, v6}, Lcom/android/settingslib/volume/MediaSessions;->updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V

    .line 147
    iput-boolean v7, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 150
    goto :goto_0

    .line 152
    :cond_5
    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    .line 153
    move-result-object p1

    .line 156
    :cond_6
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 157
    move-result v0

    .line 160
    if-eqz v0, :cond_8

    .line 161
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 163
    move-result-object v0

    .line 166
    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 167
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 169
    move-result-object v3

    .line 172
    check-cast v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;

    .line 173
    iget-object v5, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->controller:Landroid/media/session/MediaController;

    .line 175
    invoke-virtual {v5, v3}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 177
    invoke-virtual {v2, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    sget-boolean v5, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 183
    if-eqz v5, :cond_7

    .line 185
    new-instance v5, Ljava/lang/StringBuilder;

    .line 187
    const-string v6, "Removing "

    .line 189
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 191
    iget-object v6, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->name:Ljava/lang/String;

    .line 194
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 196
    const-string v6, " sentRemote="

    .line 199
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    iget-boolean v6, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 204
    invoke-static {v5, v6, v1}, Lcom/android/keyguard/KeyguardEditorHelper$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ZLjava/lang/String;)V

    .line 206
    :cond_7
    iget-boolean v5, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 209
    if-eqz v5, :cond_6

    .line 211
    iget-object v5, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 213
    invoke-virtual {v5, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->onRemoteRemoved(Landroid/media/session/MediaSession$Token;)V

    .line 215
    iput-boolean v4, v3, Lcom/android/settingslib/volume/MediaSessions$MediaControllerRecord;->sentRemote:Z

    .line 218
    goto :goto_1

    .line 220
    :cond_8
    return-void
    .line 221
.end method

.method public final updateRemoteH(Landroid/media/session/MediaSession$Token;Ljava/lang/String;Landroid/media/session/MediaController$PlaybackInfo;)V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 2
    if-eqz p0, :cond_3

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_3

    .line 10
    const-string v0, "onRemoteUpdate"

    .line 12
    invoke-virtual {p0, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 17
    monitor-enter v0

    .line 19
    :try_start_0
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 20
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    check-cast p1, Ljava/lang/Integer;

    .line 26
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 28
    move-result p1

    .line 31
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 32
    sget-object v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 33
    const-string v1, "onRemoteUpdate: stream: "

    .line 35
    const-string v2, " volume: "

    .line 37
    invoke-static {v1, p1, v2}, Landroidx/appcompat/widget/SuggestionsAdapter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    move-result-object v1

    .line 42
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 43
    move-result v2

    .line 46
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v1

    .line 53
    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 57
    iget-object v1, v1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 59
    iget-object v1, v1, Lcom/android/systemui/plugins/VolumeDialogController$State;->states:Landroid/util/SparseArray;

    .line 61
    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfKey(I)I

    .line 63
    move-result v1

    .line 66
    const/4 v2, 0x0

    .line 67
    const/4 v3, 0x1

    .line 68
    if-gez v1, :cond_0

    .line 69
    move v1, v3

    .line 71
    goto :goto_0

    .line 72
    :cond_0
    move v1, v2

    .line 73
    :goto_0
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 74
    invoke-virtual {v4, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->streamStateW(I)Lcom/android/systemui/plugins/VolumeDialogController$StreamState;

    .line 76
    move-result-object p1

    .line 79
    iput-boolean v3, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->dynamic:Z

    .line 80
    iput v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMin:I

    .line 82
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getMaxVolume()I

    .line 84
    move-result v2

    .line 87
    iput v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 88
    iget v2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 90
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 92
    move-result v4

    .line 95
    if-eq v2, v4, :cond_1

    .line 96
    invoke-virtual {p3}, Landroid/media/session/MediaController$PlaybackInfo;->getCurrentVolume()I

    .line 98
    move-result p3

    .line 101
    iput p3, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 102
    move v1, v3

    .line 104
    :cond_1
    iget-object p3, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 105
    invoke-static {p3, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 107
    move-result p3

    .line 110
    if-nez p3, :cond_2

    .line 111
    const/4 p3, -0x1

    .line 113
    iput p3, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->name:I

    .line 114
    iput-object p2, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->remoteLabel:Ljava/lang/String;

    .line 116
    goto :goto_1

    .line 118
    :cond_2
    move v3, v1

    .line 119
    :goto_1
    if-eqz v3, :cond_3

    .line 120
    const-string p3, "onRemoteUpdate: "

    .line 122
    const-string v1, ": "

    .line 124
    invoke-static {p3, p2, v1}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    move-result-object p2

    .line 129
    iget p3, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->level:I

    .line 130
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 132
    const-string p3, " of "

    .line 135
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget p1, p1, Lcom/android/systemui/plugins/VolumeDialogController$StreamState;->levelMax:I

    .line 140
    invoke-static {p2, p1, v0}, Lcom/android/keyguard/AwesomeLockScreen$2$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)V

    .line 142
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 145
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 147
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 149
    invoke-virtual {p1, p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 151
    goto :goto_2

    .line 154
    :catchall_0
    move-exception p0

    .line 155
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 156
    throw p0

    .line 157
    :cond_3
    :goto_2
    return-void
    .line 158
.end method
