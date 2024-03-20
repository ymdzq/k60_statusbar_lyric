.class Lcom/miui/maml/elements/video/BaseVideoView$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/video/BaseVideoView;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/video/BaseVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 2
    const/4 v0, 0x5

    .line 4
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$002(Lcom/miui/maml/elements/video/BaseVideoView;I)I

    .line 5
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 8
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$400(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 10
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 13
    invoke-virtual {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->getDuration()I

    .line 15
    move-result v0

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$500(Lcom/miui/maml/elements/video/BaseVideoView;I)V

    .line 19
    iget-object p1, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 22
    invoke-static {p1}, Lcom/miui/maml/elements/video/BaseVideoView;->access$600(Lcom/miui/maml/elements/video/BaseVideoView;)I

    .line 24
    move-result p1

    .line 27
    if-eqz p1, :cond_0

    .line 28
    iget-object p0, p0, Lcom/miui/maml/elements/video/BaseVideoView$2;->this$0:Lcom/miui/maml/elements/video/BaseVideoView;

    .line 30
    invoke-static {p0}, Lcom/miui/maml/elements/video/BaseVideoView;->access$700(Lcom/miui/maml/elements/video/BaseVideoView;)Landroid/media/AudioManager;

    .line 32
    move-result-object p0

    .line 35
    const/4 p1, 0x0

    .line 36
    invoke-virtual {p0, p1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 37
    :cond_0
    return-void
    .line 40
.end method
