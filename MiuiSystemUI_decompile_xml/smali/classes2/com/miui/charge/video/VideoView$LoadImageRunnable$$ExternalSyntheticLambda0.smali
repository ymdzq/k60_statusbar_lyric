.class public final synthetic Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic f$0:Ljava/lang/Object;

.field public final synthetic f$1:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    iput-object p2, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 4
    iput-object p3, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final run()V
    .locals 5

    .line 1
    iget v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->$r8$classId:I

    .line 2
    const/4 v1, 0x1

    .line 4
    const-string v2, "ChargeVideoView"

    .line 5
    packed-switch v0, :pswitch_data_0

    .line 7
    goto/16 :goto_2

    .line 10
    :pswitch_0
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 12
    check-cast v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 14
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 16
    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 20
    :try_start_0
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 23
    if-eqz v3, :cond_0

    .line 25
    new-instance v3, Landroid/view/Surface;

    .line 27
    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 29
    iput-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 32
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 34
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 36
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 39
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 41
    iget-object v4, v3, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 43
    iget-object v3, v3, Lcom/miui/charge/video/VideoView;->mRapidChargeUri:Ljava/lang/String;

    .line 45
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 51
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 54
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 56
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 59
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 61
    goto :goto_0

    .line 64
    :catch_0
    move-exception p0

    .line 65
    const-string v0, "play rapid charge video exception:"

    .line 66
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 68
    :cond_0
    :goto_0
    return-void

    .line 71
    :pswitch_1
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 72
    check-cast v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 74
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 76
    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 78
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    :try_start_1
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 83
    if-eqz v3, :cond_1

    .line 85
    new-instance v3, Landroid/view/Surface;

    .line 87
    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 89
    iput-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 92
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 94
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 96
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 99
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 101
    iget-object v4, v3, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 103
    iget-object v3, v3, Lcom/miui/charge/video/VideoView;->mChargeUri:Ljava/lang/String;

    .line 105
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 107
    move-result-object v3

    .line 110
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 111
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 114
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 116
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 119
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 121
    goto :goto_1

    .line 124
    :catch_1
    move-exception p0

    .line 125
    const-string v0, "play charge video exception:"

    .line 126
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 128
    :cond_1
    :goto_1
    return-void

    .line 131
    :pswitch_2
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 132
    check-cast v0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;

    .line 134
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 136
    check-cast p0, Landroid/graphics/drawable/Drawable;

    .line 138
    iget v1, v0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mResourceId:I

    .line 140
    iget-object v2, v0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 142
    invoke-virtual {v2}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    .line 144
    move-result-object v2

    .line 147
    check-cast v2, Ljava/lang/Integer;

    .line 148
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 150
    move-result v2

    .line 153
    if-ne v1, v2, :cond_2

    .line 154
    iget-object v0, v0, Lcom/miui/charge/video/VideoView$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 156
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 158
    :cond_2
    return-void

    .line 161
    :goto_2
    iget-object v0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$0:Ljava/lang/Object;

    .line 162
    check-cast v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;

    .line 164
    iget-object p0, p0, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;->f$1:Ljava/lang/Object;

    .line 166
    check-cast p0, Landroid/graphics/SurfaceTexture;

    .line 168
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 170
    :try_start_2
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 173
    if-eqz v3, :cond_3

    .line 175
    new-instance v3, Landroid/view/Surface;

    .line 177
    invoke-direct {v3, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 179
    iput-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mSurface:Landroid/view/Surface;

    .line 182
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 184
    invoke-virtual {p0, v3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 186
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 189
    iget-object v3, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 191
    iget-object v4, v3, Lcom/miui/charge/video/VideoView;->mContext:Landroid/content/Context;

    .line 193
    iget-object v3, v3, Lcom/miui/charge/video/VideoView;->mStrongRapidChargeUri:Ljava/lang/String;

    .line 195
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 197
    move-result-object v3

    .line 200
    invoke-virtual {p0, v4, v3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 201
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 204
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 206
    iget-object p0, v0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 209
    invoke-virtual {p0, v1}, Landroid/media/MediaPlayer;->setLooping(Z)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 211
    goto :goto_3

    .line 214
    :catch_2
    move-exception p0

    .line 215
    const-string v0, "play strong rapid charge video exception:"

    .line 216
    invoke-static {v2, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 218
    :cond_3
    :goto_3
    return-void

    .line 221
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 222
.end method
