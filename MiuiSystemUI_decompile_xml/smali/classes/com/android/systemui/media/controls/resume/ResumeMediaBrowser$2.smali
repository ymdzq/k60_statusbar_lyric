.class public final Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;
.super Landroid/media/browse/MediaBrowser$ConnectionCallback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 4
    invoke-direct {p0}, Landroid/media/browse/MediaBrowser$ConnectionCallback;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onConnected()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->$r8$classId:I

    .line 2
    const-string v1, "ResumeMediaBrowser"

    .line 4
    packed-switch v0, :pswitch_data_0

    .line 6
    goto :goto_1

    .line 9
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 10
    const-string v2, "Service connected for "

    .line 12
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    iget-object v2, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 17
    iget-object v2, v2, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    .line 19
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object v0

    .line 27
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 31
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->updateMediaController()V

    .line 33
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 36
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    .line 38
    move-result v0

    .line 41
    if-eqz v0, :cond_1

    .line 42
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 44
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 46
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getRoot()Ljava/lang/String;

    .line 48
    move-result-object v0

    .line 51
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 52
    move-result v1

    .line 55
    if-nez v1, :cond_1

    .line 56
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 58
    iget-object v1, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 60
    if-eqz v1, :cond_0

    .line 62
    invoke-virtual {v1}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onConnected()V

    .line 64
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 67
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 69
    if-eqz v1, :cond_3

    .line 71
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mSubscriptionCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$1;

    .line 73
    invoke-virtual {v1, v0, p0}, Landroid/media/browse/MediaBrowser;->subscribe(Ljava/lang/String;Landroid/media/browse/MediaBrowser$SubscriptionCallback;)V

    .line 75
    goto :goto_0

    .line 78
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 79
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 81
    if-eqz v0, :cond_2

    .line 83
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 85
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 88
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 90
    :cond_3
    :goto_0
    return-void

    .line 93
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 94
    const-string v2, "Connected for restart "

    .line 96
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v2, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 101
    iget-object v2, v2, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 103
    invoke-virtual {v2}, Landroid/media/browse/MediaBrowser;->isConnected()Z

    .line 105
    move-result v2

    .line 108
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 109
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 112
    move-result-object v0

    .line 115
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 119
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->updateMediaController()V

    .line 121
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 124
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->isBrowserConnected()Z

    .line 126
    move-result v0

    .line 129
    if-nez v0, :cond_5

    .line 130
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 132
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 134
    if-eqz v0, :cond_4

    .line 136
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 138
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 141
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 143
    goto :goto_2

    .line 146
    :cond_5
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 147
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mMediaBrowser:Landroid/media/browse/MediaBrowser;

    .line 149
    invoke-virtual {v0}, Landroid/media/browse/MediaBrowser;->getSessionToken()Landroid/media/session/MediaSession$Token;

    .line 151
    move-result-object v0

    .line 154
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 155
    invoke-virtual {v1, v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->createMediaController(Landroid/media/session/MediaSession$Token;)Landroid/media/session/MediaController;

    .line 157
    move-result-object v0

    .line 160
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 161
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 164
    move-result-object v1

    .line 167
    invoke-virtual {v1}, Landroid/media/session/MediaController$TransportControls;->prepare()V

    .line 168
    invoke-virtual {v0}, Landroid/media/session/MediaController;->getTransportControls()Landroid/media/session/MediaController$TransportControls;

    .line 171
    move-result-object v0

    .line 174
    invoke-virtual {v0}, Landroid/media/session/MediaController$TransportControls;->play()V

    .line 175
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 178
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 180
    if-eqz p0, :cond_6

    .line 182
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onConnected()V

    .line 184
    :cond_6
    :goto_2
    return-void

    .line 187
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 188
.end method

.method public final onConnectionFailed()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Connection failed for "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "ResumeMediaBrowser"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 42
    return-void

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 57
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method

.method public final onConnectionSuspended()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->$r8$classId:I

    .line 2
    packed-switch v0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 8
    const-string v1, "Connection suspended for "

    .line 10
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 12
    iget-object v1, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 15
    iget-object v1, v1, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mComponentName:Landroid/content/ComponentName;

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object v0

    .line 25
    const-string v1, "ResumeMediaBrowser"

    .line 26
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 31
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 33
    if-eqz v0, :cond_0

    .line 35
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 37
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 40
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 42
    return-void

    .line 45
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 46
    iget-object v0, v0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->mCallback:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;

    .line 48
    if-eqz v0, :cond_1

    .line 50
    invoke-virtual {v0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$Callback;->onError()V

    .line 52
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser$2;->this$0:Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/media/controls/resume/ResumeMediaBrowser;->disconnect()V

    .line 57
    return-void

    .line 60
    nop

    .line 61
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 62
.end method
