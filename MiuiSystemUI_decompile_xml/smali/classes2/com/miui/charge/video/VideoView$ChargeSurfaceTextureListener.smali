.class public final Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public mPlayer:Landroid/media/MediaPlayer;

.field public mSurface:Landroid/view/Surface;

.field public final synthetic this$0:Lcom/miui/charge/video/VideoView;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/charge/video/VideoView;Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    iput p3, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 4
    iput-object p2, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->mPlayer:Landroid/media/MediaPlayer;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 1
    iget p2, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->$r8$classId:I

    .line 2
    packed-switch p2, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p2, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 8
    invoke-static {p2}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 10
    move-result-object p2

    .line 13
    new-instance p3, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;

    .line 14
    const/4 v0, 0x2

    .line 16
    invoke-direct {p3, v0, p0, p1}, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 20
    return-void

    .line 23
    :pswitch_1
    iget-object p2, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 24
    invoke-static {p2}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 26
    move-result-object p2

    .line 29
    new-instance p3, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;

    .line 30
    const/4 v0, 0x1

    .line 32
    invoke-direct {p3, v0, p0, p1}, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 33
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 36
    return-void

    .line 39
    :goto_0
    iget-object p2, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 40
    invoke-static {p2}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 42
    move-result-object p2

    .line 45
    new-instance p3, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;

    .line 46
    const/4 v0, 0x3

    .line 48
    invoke-direct {p3, v0, p0, p1}, Lcom/miui/charge/video/VideoView$LoadImageRunnable$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {p2, p3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 52
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 56
.end method

.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 3

    .line 1
    iget p1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->$r8$classId:I

    .line 2
    const/4 v0, 0x0

    .line 4
    packed-switch p1, :pswitch_data_0

    .line 5
    goto :goto_0

    .line 8
    :pswitch_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 9
    invoke-static {p1}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 11
    move-result-object p1

    .line 14
    new-instance v1, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;

    .line 15
    const/4 v2, 0x2

    .line 17
    invoke-direct {v1, v2, p0}, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 18
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 21
    return v0

    .line 24
    :pswitch_1
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 25
    invoke-static {p1}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 27
    move-result-object p1

    .line 30
    new-instance v1, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;

    .line 31
    const/4 v2, 0x1

    .line 33
    invoke-direct {v1, v2, p0}, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 34
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 37
    return v0

    .line 40
    :goto_0
    iget-object p1, p0, Lcom/miui/charge/video/VideoView$ChargeSurfaceTextureListener;->this$0:Lcom/miui/charge/video/VideoView;

    .line 41
    invoke-static {p1}, Lcom/miui/charge/video/VideoView;->-$$Nest$mgetSequentialWorkHandler(Lcom/miui/charge/video/VideoView;)Landroid/os/Handler;

    .line 43
    move-result-object p1

    .line 46
    new-instance v1, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;

    .line 47
    const/4 v2, 0x3

    .line 49
    invoke-direct {v1, v2, p0}, Lcom/miui/charge/video/VideoView$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;)V

    .line 50
    invoke-virtual {p1, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 53
    return v0

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 58
.end method

.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
