.class public final Lcom/android/wm/shell/pip/PipMediaController;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mActionListeners:Ljava/util/ArrayList;

.field public final mContext:Landroid/content/Context;

.field public final mHandlerExecutor:Landroid/os/HandlerExecutor;

.field public final mMainHandler:Landroid/os/Handler;

.field public final mMediaActionReceiver:Lcom/android/wm/shell/pip/PipMediaController$1;

.field public mMediaController:Landroid/media/session/MediaController;

.field public final mMediaSessionManager:Landroid/media/session/MediaSessionManager;

.field public final mMetadataListeners:Ljava/util/ArrayList;

.field public final mNextAction:Landroid/app/RemoteAction;

.field public final mPauseAction:Landroid/app/RemoteAction;

.field public final mPlayAction:Landroid/app/RemoteAction;

.field public final mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

.field public final mPrevAction:Landroid/app/RemoteAction;

.field public final mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

.field public final mTokenListeners:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 10

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$1;

    .line 5
    invoke-direct {v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$1;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    .line 7
    iput-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaActionReceiver:Lcom/android/wm/shell/pip/PipMediaController$1;

    .line 10
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$2;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipMediaController$2;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    .line 14
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

    .line 17
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 19
    invoke-direct {v0, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/pip/PipMediaController;)V

    .line 21
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mSessionsChangedListener:Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda0;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    .line 26
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 28
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 31
    new-instance v0, Ljava/util/ArrayList;

    .line 33
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 35
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    .line 38
    new-instance v0, Ljava/util/ArrayList;

    .line 40
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    .line 45
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    .line 49
    new-instance v0, Landroid/os/HandlerExecutor;

    .line 51
    invoke-direct {v0, p2}, Landroid/os/HandlerExecutor;-><init>(Landroid/os/Handler;)V

    .line 53
    iput-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 56
    new-instance v2, Landroid/content/IntentFilter;

    .line 58
    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 60
    const-string v6, "com.android.wm.shell.pip.PLAY"

    .line 63
    invoke-virtual {v2, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 65
    const-string v7, "com.android.wm.shell.pip.PAUSE"

    .line 68
    invoke-virtual {v2, v7}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 70
    const-string v8, "com.android.wm.shell.pip.NEXT"

    .line 73
    invoke-virtual {v2, v8}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v9, "com.android.wm.shell.pip.PREV"

    .line 78
    invoke-virtual {v2, v9}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    const-string v3, "com.android.systemui.permission.SELF"

    .line 83
    const/4 v5, 0x2

    .line 85
    move-object v0, p1

    .line 86
    move-object v4, p2

    .line 87
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    .line 88
    const p2, 0x7f1308ee    # @string/pip_pause 'Pause'

    .line 91
    const v0, 0x7f0816ef    # @drawable/pip_ic_pause_white 'res/drawable/pip_ic_pause_white.xml'

    .line 94
    invoke-virtual {p0, p2, v0, v7}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    .line 97
    move-result-object p2

    .line 100
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 101
    const p2, 0x7f1308f5    # @string/pip_play 'Play'

    .line 103
    const v0, 0x7f0816f0    # @drawable/pip_ic_play_arrow_white 'res/drawable/pip_ic_play_arrow_white.xml'

    .line 106
    invoke-virtual {p0, p2, v0, v6}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    .line 109
    move-result-object p2

    .line 112
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 113
    const p2, 0x7f1308f7    # @string/pip_skip_to_next 'Skip to next'

    .line 115
    const v0, 0x7f0816f2    # @drawable/pip_ic_skip_next_white 'res/drawable/pip_ic_skip_next_white.xml'

    .line 118
    invoke-virtual {p0, p2, v0, v8}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    .line 121
    move-result-object p2

    .line 124
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 125
    const p2, 0x7f1308f8    # @string/pip_skip_to_prev 'Skip to previous'

    .line 127
    const v0, 0x7f0816f3    # @drawable/pip_ic_skip_previous_white 'res/drawable/pip_ic_skip_previous_white.xml'

    .line 130
    invoke-virtual {p0, p2, v0, v9}, Lcom/android/wm/shell/pip/PipMediaController;->getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;

    .line 133
    move-result-object p2

    .line 136
    iput-object p2, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    .line 137
    const-class p2, Landroid/media/session/MediaSessionManager;

    .line 139
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 141
    move-result-object p1

    .line 144
    check-cast p1, Landroid/media/session/MediaSessionManager;

    .line 145
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaSessionManager:Landroid/media/session/MediaSessionManager;

    .line 147
    return-void
    .line 149
.end method


# virtual methods
.method public final getDefaultRemoteAction(IILjava/lang/String;)Landroid/app/RemoteAction;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    new-instance v0, Landroid/content/Intent;

    .line 8
    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 13
    move-result-object p3

    .line 16
    invoke-virtual {v0, p3}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 17
    new-instance p3, Landroid/app/RemoteAction;

    .line 20
    invoke-static {p0, p2}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    .line 22
    move-result-object p2

    .line 25
    const/4 v1, 0x0

    .line 26
    const/high16 v2, 0xc000000

    .line 27
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    .line 29
    move-result-object p0

    .line 32
    invoke-direct {p3, p2, p1, p1, p0}, Landroid/app/RemoteAction;-><init>(Landroid/graphics/drawable/Icon;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 33
    return-object p3
    .line 36
.end method

.method public final getMediaActions()Ljava/util/List;
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    if-eqz v0, :cond_5

    .line 4
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPlaybackState()Landroid/media/session/PlaybackState;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    goto :goto_3

    .line 12
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 15
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->isActive()Z

    .line 18
    move-result v2

    .line 21
    invoke-virtual {v0}, Landroid/media/session/PlaybackState;->getActions()J

    .line 22
    move-result-wide v3

    .line 25
    const-wide/16 v5, 0x10

    .line 26
    and-long/2addr v5, v3

    .line 28
    const-wide/16 v7, 0x0

    .line 29
    cmp-long v0, v5, v7

    .line 31
    const/4 v5, 0x1

    .line 33
    const/4 v6, 0x0

    .line 34
    if-eqz v0, :cond_1

    .line 35
    move v0, v5

    .line 37
    goto :goto_0

    .line 38
    :cond_1
    move v0, v6

    .line 39
    :goto_0
    iget-object v9, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPrevAction:Landroid/app/RemoteAction;

    .line 40
    invoke-virtual {v9, v0}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 42
    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 45
    if-nez v2, :cond_2

    .line 48
    const-wide/16 v9, 0x4

    .line 50
    and-long/2addr v9, v3

    .line 52
    cmp-long v0, v9, v7

    .line 53
    if-eqz v0, :cond_2

    .line 55
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlayAction:Landroid/app/RemoteAction;

    .line 57
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    goto :goto_1

    .line 62
    :cond_2
    if-eqz v2, :cond_3

    .line 63
    const-wide/16 v9, 0x2

    .line 65
    and-long/2addr v9, v3

    .line 67
    cmp-long v0, v9, v7

    .line 68
    if-eqz v0, :cond_3

    .line 70
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPauseAction:Landroid/app/RemoteAction;

    .line 72
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    :cond_3
    :goto_1
    const-wide/16 v9, 0x20

    .line 77
    and-long v2, v3, v9

    .line 79
    cmp-long v0, v2, v7

    .line 81
    if-eqz v0, :cond_4

    .line 83
    goto :goto_2

    .line 85
    :cond_4
    move v5, v6

    .line 86
    :goto_2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mNextAction:Landroid/app/RemoteAction;

    .line 87
    invoke-virtual {p0, v5}, Landroid/app/RemoteAction;->setEnabled(Z)V

    .line 89
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    return-object v1

    .line 95
    :cond_5
    :goto_3
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 96
    move-result-object p0

    .line 99
    return-object p0
    .line 100
.end method

.method public final resolveActiveMediaController(Ljava/util/List;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mContext:Landroid/content/Context;

    .line 4
    invoke-static {v0}, Lcom/android/wm/shell/pip/PipUtils;->getTopPipActivity(Landroid/content/Context;)Landroid/util/Pair;

    .line 6
    move-result-object v0

    .line 9
    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 10
    check-cast v0, Landroid/content/ComponentName;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    const/4 v1, 0x0

    .line 16
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    .line 17
    move-result v2

    .line 20
    if-ge v1, v2, :cond_1

    .line 21
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v2

    .line 26
    check-cast v2, Landroid/media/session/MediaController;

    .line 27
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 29
    move-result-object v3

    .line 32
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 33
    move-result-object v4

    .line 36
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v3

    .line 40
    if-eqz v3, :cond_0

    .line 41
    invoke-virtual {p0, v2}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 43
    return-void

    .line 46
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 47
    goto :goto_0

    .line 49
    :cond_1
    const/4 p1, 0x0

    .line 50
    invoke-virtual {p0, p1}, Lcom/android/wm/shell/pip/PipMediaController;->setActiveMediaController(Landroid/media/session/MediaController;)V

    .line 51
    return-void
    .line 54
.end method

.method public final setActiveMediaController(Landroid/media/session/MediaController;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 2
    if-eq p1, v0, :cond_6

    .line 4
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mPlaybackChangedListener:Lcom/android/wm/shell/pip/PipMediaController$2;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {v0, v1}, Landroid/media/session/MediaController;->unregisterCallback(Landroid/media/session/MediaController$Callback;)V

    .line 10
    :cond_0
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 13
    if-eqz p1, :cond_1

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMainHandler:Landroid/os/Handler;

    .line 17
    invoke-virtual {p1, v1, v0}, Landroid/media/session/MediaController;->registerCallback(Landroid/media/session/MediaController$Callback;Landroid/os/Handler;)V

    .line 19
    :cond_1
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 24
    move-result v0

    .line 27
    if-nez v0, :cond_2

    .line 28
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    .line 30
    move-result-object v0

    .line 33
    new-instance v1, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    .line 34
    const/4 v2, 0x2

    .line 36
    invoke-direct {v1, v2, v0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 37
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 40
    :cond_2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 43
    const/4 v0, 0x0

    .line 45
    if-eqz p1, :cond_3

    .line 46
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getMetadata()Landroid/media/MediaMetadata;

    .line 48
    move-result-object p1

    .line 51
    goto :goto_0

    .line 52
    :cond_3
    move-object p1, v0

    .line 53
    :goto_0
    iget-object v1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    .line 54
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 56
    move-result v2

    .line 59
    if-nez v2, :cond_4

    .line 60
    new-instance v2, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    .line 62
    const/4 v3, 0x0

    .line 64
    invoke-direct {v2, v3, p1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 65
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 68
    :cond_4
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMediaController:Landroid/media/session/MediaController;

    .line 71
    if-nez p1, :cond_5

    .line 73
    goto :goto_1

    .line 75
    :cond_5
    invoke-virtual {p1}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 76
    move-result-object v0

    .line 79
    :goto_1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mTokenListeners:Ljava/util/ArrayList;

    .line 80
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 82
    move-result p1

    .line 85
    if-nez p1, :cond_6

    .line 86
    new-instance p1, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    .line 88
    const/4 v1, 0x1

    .line 90
    invoke-direct {p1, v1, v0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 91
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 94
    :cond_6
    return-void
    .line 97
.end method
