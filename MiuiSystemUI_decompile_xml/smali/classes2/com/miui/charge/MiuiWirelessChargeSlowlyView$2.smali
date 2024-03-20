.class public final Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public mMediaPlayer:Landroid/media/MediaPlayer;

.field public mSurface:Landroid/view/Surface;

.field public final synthetic this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;


# direct methods
.method public constructor <init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 2
    iget-object p2, p2, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 4
    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    new-instance p2, Landroid/media/MediaPlayer;

    .line 10
    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    .line 12
    iput-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 15
    new-instance p3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;

    .line 17
    invoke-direct {p3, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$1;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;)V

    .line 19
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 22
    iget-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 25
    new-instance p3, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;

    .line 27
    invoke-direct {p3, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$2;-><init>(Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;)V

    .line 29
    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 32
    new-instance p2, Landroid/view/Surface;

    .line 35
    invoke-direct {p2, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    .line 37
    iput-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mSurface:Landroid/view/Surface;

    .line 40
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 42
    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 44
    :try_start_0
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 47
    iget-object p2, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 49
    iget-object p3, p2, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    .line 53
    const-string v1, "android.resource://"

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    iget-object p2, p2, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mContext:Landroid/content/Context;

    .line 60
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    .line 62
    move-result-object p2

    .line 65
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    const-string p2, "/2131886155"

    .line 69
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    move-result-object p2

    .line 77
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    .line 78
    move-result-object p2

    .line 81
    invoke-virtual {p1, p3, p2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V

    .line 82
    iget-object p0, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 85
    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    goto :goto_0

    .line 90
    :catch_0
    move-exception p0

    .line 91
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 92
    :goto_0
    return-void
    .line 95
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 2
    iget-object p1, p1, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 7
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 10
    const/4 v1, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->pause()V

    .line 15
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 18
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->stop()V

    .line 20
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 23
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 25
    iput-object v1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 28
    :cond_0
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mSurface:Landroid/view/Surface;

    .line 30
    if-eqz p1, :cond_1

    .line 32
    invoke-virtual {p1}, Landroid/view/Surface;->release()V

    .line 34
    iput-object v1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->mSurface:Landroid/view/Surface;

    .line 37
    :cond_1
    return v0
    .line 39
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 2
    iget-object p1, p1, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mImageView:Landroid/widget/ImageView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->getVisibility()I

    .line 6
    move-result p1

    .line 9
    const/16 v0, 0x8

    .line 10
    if-eq p1, v0, :cond_0

    .line 12
    iget-object p1, p0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2;->this$0:Lcom/miui/charge/MiuiWirelessChargeSlowlyView;

    .line 14
    iget-object p1, p1, Lcom/miui/charge/MiuiWirelessChargeSlowlyView;->mHandler:Landroid/os/Handler;

    .line 16
    new-instance v0, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;

    .line 18
    const/4 v1, 0x0

    .line 20
    invoke-direct {v0, v1, p0}, Lcom/miui/charge/MiuiWirelessChargeSlowlyView$2$3;-><init>(ILjava/lang/Object;)V

    .line 21
    const-wide/16 v1, 0x64

    .line 24
    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    :cond_0
    return-void
    .line 29
.end method
