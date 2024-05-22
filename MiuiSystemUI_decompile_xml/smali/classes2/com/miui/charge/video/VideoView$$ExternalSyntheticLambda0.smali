.class public final synthetic Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const-string v2, "ChargeVideoView"

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_3

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    check-cast p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 16
    :try_start_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 19
    if-eqz v0, :cond_0

    .line 21
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 23
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 26
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 28
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 31
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 33
    iput-object v1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 38
    :catch_0
    move-exception v0

    .line 39
    const-string v1, "release rapid MediaPlayer: "

    .line 40
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 42
    :cond_0
    :goto_0
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 45
    if-eqz p0, :cond_1

    .line 47
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 49
    :cond_1
    return-void

    .line 52
    :pswitch_1
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 53
    check-cast p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 55
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 57
    :try_start_1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 60
    if-eqz v0, :cond_2

    .line 62
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 64
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 67
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 69
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 72
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 74
    iput-object v1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 77
    goto :goto_1

    .line 79
    :catch_1
    move-exception v0

    .line 80
    const-string v1, "release MediaPlayer exception:"

    .line 81
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 83
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 86
    if-eqz p0, :cond_3

    .line 88
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 90
    :cond_3
    return-void

    .line 93
    :pswitch_2
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 94
    check-cast p0, Lcom/miui/charge/video/VideoView;

    .line 96
    sget v0, Lcom/miui/charge/video/VideoView;->BASE_VIDEO_WIDTH:I

    .line 98
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 100
    :try_start_2
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 103
    const/4 v1, 0x1

    .line 105
    if-eqz v0, :cond_4

    .line 106
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 108
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 111
    iget-object v3, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 113
    iget-object v4, p0, Lcom/miui/charge/video/VideoView;->mChargeUri:Ljava/lang/String;

    .line 115
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 117
    move-result-object v4

    .line 120
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 121
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 124
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 126
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 129
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 131
    :cond_4
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 134
    if-eqz v0, :cond_5

    .line 136
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 138
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 141
    iget-object v3, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 143
    iget-object v4, p0, Lcom/miui/charge/video/VideoView;->mRapidChargeUri:Ljava/lang/String;

    .line 145
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 147
    move-result-object v4

    .line 150
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 151
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 154
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 156
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 159
    invoke-virtual {v0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 161
    :cond_5
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 164
    if-eqz v0, :cond_6

    .line 166
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->reset()V

    .line 168
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 171
    iget-object v3, p0, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 173
    iget-object v4, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeUri:Ljava/lang/String;

    .line 175
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 177
    move-result-object v4

    .line 180
    invoke-virtual {v0, v3, v4}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 181
    iget-object v0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 184
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 186
    iget-object p0, p0, Lcom/miui/charge/video/VideoView;->mStrongRapidMediaPlayer:Landroid/media/MediaPlayer;

    .line 189
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 191
    goto :goto_2

    .line 194
    :catch_2
    move-exception p0

    .line 195
    const-string/jumbo v0, "update charge video exception:"

    .line 196
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 199
    :cond_6
    :goto_2
    return-void

    .line 202
    :goto_3
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 203
    check-cast p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 205
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 207
    :try_start_3
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 210
    if-eqz v0, :cond_7

    .line 212
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 214
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 217
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 219
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 222
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 224
    iput-object v1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 227
    goto :goto_4

    .line 229
    :catch_3
    move-exception v0

    .line 230
    const-string v1, "release strong rapid MediaPlayer:"

    .line 231
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 233
    :cond_7
    :goto_4
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 236
    if-eqz p0, :cond_8

    .line 238
    invoke-virtual {p0}, Landroid/view/Surface;->release()V

    .line 240
    :cond_8
    return-void

    .line 243
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 244
.end method
