.class public final Lcom/android/systemui/volume/VolumeUI;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/CoreStartable;


# static fields
.field public static final LOGD:Z


# instance fields
.field public final mContext:Landroid/content/Context;

.field public mEnabled:Z

.field public final mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    const-string v0, "VolumeUI"

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    .line 5
    move-result v0

    .line 8
    sput-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/volume/VolumeDialogComponent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    .line 5
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 10
    iput-object p2, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 12
    return-void
    .line 14
.end method


# virtual methods
.method public final dump(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p2, "mEnabled="

    .line 2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4
    iget-boolean p2, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->println(Z)V

    .line 9
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 12
    if-nez p1, :cond_0

    .line 14
    return-void

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 17
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 19
    return-void
    .line 22
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 7
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 9
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 11
    move-result-object p1

    .line 14
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 15
    invoke-virtual {v0, p1}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    .line 17
    move-result p1

    .line 20
    if-eqz p1, :cond_1

    .line 21
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 23
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 25
    invoke-virtual {p0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onConfigurationChanged()V

    .line 27
    :cond_1
    return-void
    .line 30
.end method

.method public final start()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeUI;->mContext:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 4
    move-result-object v1

    .line 7
    const v2, 0x7f05007c    # @bool/enable_volume_ui 'true'

    .line 8
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 11
    move-result v1

    .line 14
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 15
    move-result-object v2

    .line 18
    const v3, 0x7f05007b    # @bool/enable_safety_warning 'true'

    .line 19
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 22
    move-result v2

    .line 25
    const/4 v3, 0x1

    .line 26
    if-nez v1, :cond_1

    .line 27
    if-eqz v2, :cond_0

    .line 29
    goto :goto_0

    .line 31
    :cond_0
    const/4 v4, 0x0

    .line 32
    goto :goto_1

    .line 33
    :cond_1
    :goto_0
    move v4, v3

    .line 34
    :goto_1
    iput-boolean v4, p0, Lcom/android/systemui/volume/VolumeUI;->mEnabled:Z

    .line 35
    if-nez v4, :cond_2

    .line 37
    return-void

    .line 39
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeUI;->mVolumeComponent:Lcom/android/systemui/volume/VolumeDialogComponent;

    .line 40
    iget-object v4, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 42
    iput-boolean v1, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 44
    iput-boolean v2, v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowSafetyWarning:Z

    .line 46
    sget-object v1, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 48
    const-string v1, "DndTileVisible"

    .line 50
    invoke-static {v0, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 52
    sget-boolean v0, Lcom/android/systemui/volume/VolumeUI;->LOGD:Z

    .line 55
    if-eqz v0, :cond_3

    .line 57
    const-string v0, "VolumeUI"

    .line 59
    const-string v2, "Registering default volume controller"

    .line 61
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mController:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 66
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 68
    sget-object v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 71
    :try_start_0
    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mAudio:Landroid/media/AudioManager;

    .line 73
    iget-object v5, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumeController:Lcom/android/systemui/volume/VolumeDialogControllerImpl$VC;

    .line 75
    invoke-virtual {v4, v5}, Landroid/media/AudioManager;->setVolumeController(Landroid/media/IVolumeController;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 77
    goto :goto_2

    .line 80
    :catch_0
    move-exception v4

    .line 81
    const-string v5, "Unable to set the volume controller"

    .line 82
    invoke-static {v2, v5, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 84
    :goto_2
    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mVolumePolicy:Landroid/media/VolumePolicy;

    .line 87
    invoke-virtual {v0, v4}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->setVolumePolicy(Landroid/media/VolumePolicy;)V

    .line 89
    sget-boolean v4, Lcom/android/systemui/volume/D;->BUG:Z

    .line 92
    if-eqz v4, :cond_4

    .line 94
    sget-object v4, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 96
    const-string/jumbo v5, "showDndTile"

    .line 98
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    :cond_4
    sget-object v4, Lcom/android/systemui/qs/tiles/DndTile;->ZEN_SETTINGS:Landroid/content/Intent;

    .line 104
    iget-object v4, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mContext:Landroid/content/Context;

    .line 106
    invoke-static {v4, v1, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 108
    :try_start_1
    iget-object v0, v0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mMediaSessions:Lcom/android/settingslib/volume/MediaSessions;

    .line 111
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_1

    .line 113
    iget-object v1, v0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    .line 116
    :try_start_2
    sget-boolean v4, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 118
    if-eqz v4, :cond_5

    .line 120
    sget-object v4, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 122
    const-string v5, "init"

    .line 124
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    :cond_5
    iget-object v4, v0, Lcom/android/settingslib/volume/MediaSessions;->mSessionsListener:Lcom/android/settingslib/volume/MediaSessions$1;

    .line 129
    iget-object v5, v0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    .line 131
    const/4 v6, 0x0

    .line 133
    invoke-virtual {v5, v4, v6, v1}, Landroid/media/session/MediaSessionManager;->addOnActiveSessionsChangedListener(Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;Landroid/content/ComponentName;Landroid/os/Handler;)V

    .line 134
    iput-boolean v3, v0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    .line 137
    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 139
    iget-object v1, v0, Lcom/android/settingslib/volume/MediaSessions;->mHandlerExecutor:Landroid/os/HandlerExecutor;

    .line 142
    iget-object v0, v0, Lcom/android/settingslib/volume/MediaSessions;->mRemoteSessionCallback:Lcom/android/settingslib/volume/MediaSessions$2;

    .line 144
    invoke-virtual {v5, v1, v0}, Landroid/media/session/MediaSessionManager;->registerRemoteSessionCallback(Ljava/util/concurrent/Executor;Landroid/media/session/MediaSessionManager$RemoteSessionCallback;)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 146
    goto :goto_3

    .line 149
    :catch_1
    move-exception v0

    .line 150
    const-string v1, "No access to media sessions"

    .line 151
    invoke-static {v2, v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_3
    const-string v0, "DndTileCombinedIcon"

    .line 156
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogComponent;->mContext:Landroid/content/Context;

    .line 158
    invoke-static {p0, v0, v3}, Lcom/android/systemui/Prefs;->putBoolean(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 160
    return-void
    .line 163
.end method
