.class Lcom/miui/maml/elements/video/BaseVideoView$6;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    .line 4
    move-result v1

    .line 7
    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 8
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 10
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    .line 12
    move-result v1

    .line 15
    iput v1, v0, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 16
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 18
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 26
    invoke-virtual {v1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 31
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$800(Lcom/miui/maml/elements/video/BaseVideoView;)Z

    .line 33
    move-result v0

    .line 36
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 37
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 40
    invoke-static {v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    .line 42
    move-result v0

    .line 45
    iget-object v1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 46
    invoke-static {v1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$900(Lcom/miui/maml/elements/video/BaseVideoView;)F

    .line 48
    move-result v1

    .line 51
    invoke-virtual {p1, v0, v1}, Landroid/media/MediaPlayer;->setVolume(FF)V

    .line 52
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 55
    const/4 v0, 0x2

    .line 57
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 58
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 61
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    .line 63
    move-result v0

    .line 66
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$1000(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 70
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 72
    move-result p1

    .line 75
    const/4 v0, 0x3

    .line 76
    if-ne p1, v0, :cond_1

    .line 77
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$6;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 79
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    .line 81
    :cond_1
    return-void
    .line 84
.end method
