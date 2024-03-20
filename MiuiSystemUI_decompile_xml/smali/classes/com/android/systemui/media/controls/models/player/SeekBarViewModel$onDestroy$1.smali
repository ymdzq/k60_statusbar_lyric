.class public final Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;I)V
    .locals 0

    .line 1
    iput p2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->$r8$classId:I

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    const/4 v3, 0x0

    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    goto :goto_0

    .line 10
    :pswitch_0
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 11
    iget-boolean v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->scrubbing:Z

    .line 13
    if-eqz v0, :cond_0

    .line 15
    iput-boolean v2, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->isFalseSeek:Z

    .line 17
    :cond_0
    return-void

    .line 19
    :pswitch_1
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 20
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 22
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 25
    iput-object v3, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 27
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 29
    if-eqz v0, :cond_1

    .line 31
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 33
    :cond_1
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 36
    iput-object v3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 38
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->_data:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 40
    const/16 v2, 0x3e

    .line 42
    invoke-static {v0, v1, v3, v2}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;->copy$default(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;ZLjava/lang/Integer;I)Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {p0, v0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->set_data(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$Progress;)V

    .line 48
    return-void

    .line 51
    :pswitch_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 52
    invoke-static {p0}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->access$checkPlaybackPosition(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;)V

    .line 54
    return-void

    .line 57
    :pswitch_3
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 58
    invoke-virtual {v0, v3}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->setController(Landroid/media/session/MediaController;)V

    .line 60
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 63
    iput-object v3, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->playbackState:Landroid/media/session/PlaybackState;

    .line 65
    iget-object v0, v0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 67
    if-eqz v0, :cond_2

    .line 69
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 71
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 74
    iput-object v3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->cancel:Ljava/lang/Runnable;

    .line 76
    iput-object v3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->scrubbingChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 78
    iput-object v3, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->enabledChangeListener:Lcom/android/systemui/media/controls/ui/MediaControlPanel$$ExternalSyntheticLambda0;

    .line 80
    return-void

    .line 82
    :goto_0
    iget-object v0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 83
    invoke-static {v0, v2}, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->access$setScrubbing(Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;Z)V

    .line 85
    iget-object p0, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel$onDestroy$1;->this$0:Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;

    .line 88
    iput-boolean v1, p0, Lcom/android/systemui/media/controls/models/player/SeekBarViewModel;->isFalseSeek:Z

    .line 90
    return-void

    .line 92
    nop

    .line 93
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
    .line 94
.end method
