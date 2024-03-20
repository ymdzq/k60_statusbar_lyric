.class public final Lcom/android/systemui/toast/view/TextureVideoView$6;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/view/TextureVideoView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/view/TextureVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    new-instance p3, Landroid/view/Surface;

    .line 4
    invoke-direct {p3, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 6
    iput-object p3, p2, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 9
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->openVideo()V

    .line 13
    return-void
    .line 16
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    iget-object p1, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 8
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 11
    const/4 v0, 0x0

    .line 13
    iput-object v0, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mSurface:Landroid/view/Surface;

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 16
    const/4 p1, 0x1

    .line 18
    invoke-virtual {p0, p1}, Lcom/android/systemui/toast/view/TextureVideoView;->release(Z)V

    .line 19
    return p1
    .line 22
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    iget v0, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mTargetState:I

    .line 4
    const/4 v1, 0x3

    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    move v0, v2

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    move v0, v3

    .line 13
    :goto_0
    if-lez p2, :cond_1

    .line 14
    if-lez p3, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    move v2, v3

    .line 19
    :goto_1
    iget-object p2, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 20
    if-eqz p2, :cond_3

    .line 22
    if-eqz v0, :cond_3

    .line 24
    if-eqz v2, :cond_3

    .line 26
    iget p2, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mSeekWhenPrepared:I

    .line 28
    if-eqz p2, :cond_2

    .line 30
    invoke-virtual {p1, p2}, Lcom/android/systemui/toast/view/TextureVideoView;->seekTo(I)V

    .line 32
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$6;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 35
    invoke-virtual {p0}, Lcom/android/systemui/toast/view/TextureVideoView;->start()V

    .line 37
    :cond_3
    return-void
    .line 40
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
