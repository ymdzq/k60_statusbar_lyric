.class public final Lcom/android/systemui/toast/view/TextureVideoView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/view/TextureVideoView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/view/TextureVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    move-result p3

    .line 7
    iput p3, p2, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 8
    iget-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 12
    move-result p1

    .line 15
    iput p1, p2, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 16
    iget-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 18
    iget p2, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 20
    if-eqz p2, :cond_0

    .line 22
    iget p2, p1, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 24
    if-eqz p2, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    .line 28
    move-result-object p1

    .line 31
    iget-object p2, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 32
    iget p3, p2, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoWidth:I

    .line 34
    iget p2, p2, Lcom/android/systemui/toast/view/TextureVideoView;->mVideoHeight:I

    .line 36
    invoke-virtual {p1, p3, p2}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 38
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$1;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 41
    invoke-virtual {p0}, Landroid/view/TextureView;->requestLayout()V

    .line 43
    :cond_0
    return-void
    .line 46
.end method
