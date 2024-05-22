.class public final Lcom/android/settingslib/volume/MediaSessions$H;
.super Landroid/os/Handler;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/settingslib/volume/MediaSessions;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/volume/MediaSessions;Landroid/os/Looper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 2
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 7

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    if-eq v0, v1, :cond_a

    .line 6
    const/4 v3, 0x3

    .line 8
    const/4 v4, 0x2

    .line 9
    if-eq v0, v4, :cond_5

    .line 10
    if-eq v0, v3, :cond_0

    .line 12
    goto/16 :goto_2

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 16
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 18
    check-cast p1, Landroid/media/session/MediaSession$Token;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 22
    if-eqz p1, :cond_1

    .line 25
    new-instance v0, Landroid/media/session/MediaController;

    .line 27
    iget-object v3, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {v0, v3, p1}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 31
    goto :goto_0

    .line 34
    :cond_1
    move-object v0, v2

    .line 35
    :goto_0
    if-eqz v0, :cond_2

    .line 36
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    :cond_2
    sget-boolean p1, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 42
    if-eqz p1, :cond_3

    .line 44
    const-string p1, "onUpdateRemoteSessionListH "

    .line 46
    invoke-static {p1, v2}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 48
    move-result-object p1

    .line 51
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 52
    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_3
    iget-boolean p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mInit:Z

    .line 57
    if-nez p1, :cond_4

    .line 59
    goto/16 :goto_2

    .line 61
    :cond_4
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mHandler:Lcom/android/settingslib/volume/MediaSessions$H;

    .line 63
    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 65
    goto/16 :goto_2

    .line 68
    :cond_5
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 70
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 72
    check-cast v0, Landroid/media/session/MediaSession$Token;

    .line 74
    iget p1, p1, Landroid/os/Message;->arg1:I

    .line 76
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 78
    new-instance v2, Landroid/media/session/MediaController;

    .line 81
    iget-object v5, p0, Lcom/android/settingslib/volume/MediaSessions;->mContext:Landroid/content/Context;

    .line 83
    invoke-direct {v2, v5, v0}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 85
    sget-boolean v0, Lcom/android/settingslib/volume/D;->BUG:Z

    .line 88
    if-eqz v0, :cond_6

    .line 90
    sget-object v0, Lcom/android/settingslib/volume/MediaSessions;->TAG:Ljava/lang/String;

    .line 92
    new-instance v5, Ljava/lang/StringBuilder;

    .line 94
    const-string/jumbo v6, "remoteVolumeChangedH "

    .line 96
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getPackageName()Ljava/lang/String;

    .line 102
    move-result-object v6

    .line 105
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    const-string v6, " "

    .line 109
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    invoke-static {p1}, Lcom/android/systemui/volume/Util;->audioManagerFlagsToString(I)Ljava/lang/String;

    .line 114
    move-result-object v6

    .line 117
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 118
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 121
    move-result-object v5

    .line 124
    invoke-static {v0, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_6
    invoke-virtual {v2}, Landroid/media/session/MediaController;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 128
    move-result-object v0

    .line 131
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;

    .line 132
    invoke-virtual {p0, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->showForSession(Landroid/media/session/MediaSession$Token;)Z

    .line 134
    move-result v2

    .line 137
    if-eqz v2, :cond_b

    .line 138
    const-string v2, "onRemoteVolumeChanged"

    .line 140
    invoke-virtual {p0, v0, v2}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->addStream(Landroid/media/session/MediaSession$Token;Ljava/lang/String;)V

    .line 142
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 145
    monitor-enter v2

    .line 147
    :try_start_0
    iget-object v5, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->mRemoteStreams:Ljava/util/HashMap;

    .line 148
    invoke-virtual {v5, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    move-result-object v0

    .line 153
    check-cast v0, Ljava/lang/Integer;

    .line 154
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 156
    move-result v0

    .line 159
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 161
    iget-object v5, v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mWakefulnessLifecycle:Lcom/android/systemui/keyguard/WakefulnessLifecycle;

    .line 163
    iget v5, v5, Lcom/android/systemui/keyguard/WakefulnessLifecycle;->mWakefulness:I

    .line 165
    if-eqz v5, :cond_7

    .line 167
    if-eq v5, v3, :cond_7

    .line 169
    iget-boolean v5, v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mDeviceInteractive:Z

    .line 171
    if-eqz v5, :cond_7

    .line 173
    and-int/2addr p1, v1

    .line 175
    if-eqz p1, :cond_7

    .line 176
    iget-boolean p1, v2, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mShowVolumeDialog:Z

    .line 178
    if-eqz p1, :cond_7

    .line 180
    goto :goto_1

    .line 182
    :cond_7
    const/4 v1, 0x0

    .line 183
    :goto_1
    sget-object p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->TAG:Ljava/lang/String;

    .line 184
    new-instance v2, Ljava/lang/StringBuilder;

    .line 186
    const-string v5, "onRemoteVolumeChanged: stream: "

    .line 188
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 190
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 193
    const-string v5, " showui? "

    .line 196
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 198
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    move-result-object v2

    .line 207
    invoke-static {p1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 211
    invoke-virtual {v2, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->updateActiveStreamW(I)Z

    .line 213
    move-result v0

    .line 216
    if-eqz v1, :cond_8

    .line 217
    iget-object v2, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 219
    invoke-virtual {v2, v3}, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->checkRoutedToBluetoothW(I)Z

    .line 221
    move-result v2

    .line 224
    or-int/2addr v0, v2

    .line 225
    :cond_8
    if-eqz v0, :cond_9

    .line 226
    const-string v0, "onRemoteChanged: updatingState"

    .line 228
    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 233
    iget-object v0, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 235
    iget-object p1, p1, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mState:Lcom/android/systemui/plugins/VolumeDialogController$State;

    .line 237
    invoke-virtual {v0, p1}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onStateChanged(Lcom/android/systemui/plugins/VolumeDialogController$State;)V

    .line 239
    :cond_9
    if-eqz v1, :cond_b

    .line 242
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl$MediaSessionsCallbacks;->this$0:Lcom/android/systemui/volume/VolumeDialogControllerImpl;

    .line 244
    iget-object p1, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mKeyguardManager:Landroid/app/KeyguardManager;

    .line 246
    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    .line 248
    move-result p1

    .line 251
    iget-object v0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mActivityManager:Landroid/app/ActivityManager;

    .line 252
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getLockTaskModeState()I

    .line 254
    move-result v0

    .line 257
    iget-object p0, p0, Lcom/android/systemui/volume/VolumeDialogControllerImpl;->mCallbacks:Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;

    .line 258
    invoke-virtual {p0, v4, p1, v0}, Lcom/android/systemui/volume/VolumeDialogControllerImpl$C;->onShowRequested(IZI)V

    .line 260
    goto :goto_2

    .line 263
    :catchall_0
    move-exception p0

    .line 264
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 265
    throw p0

    .line 266
    :cond_a
    iget-object p0, p0, Lcom/android/settingslib/volume/MediaSessions$H;->this$0:Lcom/android/settingslib/volume/MediaSessions;

    .line 267
    iget-object p1, p0, Lcom/android/settingslib/volume/MediaSessions;->mMgr:Landroid/media/session/MediaSessionManager;

    .line 269
    invoke-virtual {p1, v2}, Landroid/media/session/MediaSessionManager;->getActiveSessions(Landroid/content/ComponentName;)Ljava/util/List;

    .line 271
    move-result-object p1

    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settingslib/volume/MediaSessions;->onActiveSessionsUpdatedH(Ljava/util/List;)V

    .line 275
    :cond_b
    :goto_2
    return-void
    .line 278
.end method
