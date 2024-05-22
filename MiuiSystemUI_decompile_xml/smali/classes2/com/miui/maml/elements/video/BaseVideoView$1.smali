.class Lcom/miui/maml/elements/video/BaseVideoView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$000(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 4
    move-result p1

    .line 7
    const/4 p2, 0x3

    .line 8
    const/4 v0, 0x1

    .line 9
    const/4 v1, 0x0

    .line 10
    if-ne p1, p2, :cond_0

    .line 11
    move p1, v0

    .line 13
    goto :goto_0

    .line 14
    :cond_0
    move p1, v1

    .line 15
    :goto_0
    iget-object p2, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 16
    iget v2, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoWidth:I

    .line 18
    if-ne v2, p3, :cond_1

    .line 20
    iget p3, p2, Lcom/miui/maml/elements/video/BaseVideoView;->mVideoHeight:I

    .line 22
    if-ne p3, p4, :cond_1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    move v0, v1

    .line 27
    :goto_1
    invoke-static {p2}, Lcom/miui/maml/elements/video/BaseVideoView;->access$100(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/MediaPlayer;

    .line 28
    move-result-object p2

    .line 31
    if-eqz p2, :cond_3

    .line 32
    if-eqz p1, :cond_3

    .line 34
    if-eqz v0, :cond_3

    .line 36
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 38
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 40
    move-result p1

    .line 43
    if-eqz p1, :cond_2

    .line 44
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 46
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$200(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 48
    move-result p2

    .line 51
    invoke-virtual {p1, p2}, Lcom/miui/maml/elements/video/BaseVideoView;->seekTo(I)V

    .line 52
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 55
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->start()V

    .line 57
    :cond_3
    return-void
    .line 60
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "surfaceCreated "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "BaseVideoView"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 22
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceCreated(Landroid/view/SurfaceHolder;)V

    .line 24
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 27
    invoke-static {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$300(Lcom/miui/maml/elements/video/BaseVideoView;)V

    .line 29
    return-void
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$1;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->onSurfaceDestroyed()V

    .line 4
    return-void
    .line 7
.end method
