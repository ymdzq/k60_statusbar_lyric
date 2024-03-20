.class Lcom/miui/maml/elements/video/BaseVideoView$5;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 1
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    move-result p3

    .line 7
    iput p3, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 8
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 12
    move-result p1

    .line 15
    iput p1, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$5;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 18
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 20
    if-eqz p1, :cond_0

    .line 22
    iget p1, p0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 24
    if-eqz p1, :cond_0

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->updateVideoSize()V

    .line 28
    :cond_0
    return-void
    .line 31
.end method
