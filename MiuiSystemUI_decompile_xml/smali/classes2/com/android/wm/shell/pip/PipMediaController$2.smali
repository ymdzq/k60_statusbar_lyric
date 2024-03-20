.class public final Lcom/android/wm/shell/pip/PipMediaController$2;
.super Landroid/media/session/MediaController$Callback;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/wm/shell/pip/PipMediaController;


# direct methods
.method public constructor <init>(Lcom/android/wm/shell/pip/PipMediaController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController$2;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    invoke-direct {p0}, Landroid/media/session/MediaController$Callback;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onMetadataChanged(Landroid/media/MediaMetadata;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$2;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController;->mMetadataListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    .line 12
    const/4 v1, 0x0

    .line 14
    invoke-direct {v0, v1, p1}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 15
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method public final onPlaybackStateChanged(Landroid/media/session/PlaybackState;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/pip/PipMediaController$2;->this$0:Lcom/android/wm/shell/pip/PipMediaController;

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/pip/PipMediaController;->mActionListeners:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    .line 6
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0}, Lcom/android/wm/shell/pip/PipMediaController;->getMediaActions()Ljava/util/List;

    .line 12
    move-result-object p0

    .line 15
    new-instance v0, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;

    .line 16
    const/4 v1, 0x2

    .line 18
    invoke-direct {v0, v1, p0}, Lcom/android/wm/shell/pip/PipMediaController$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    .line 19
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->forEach(Ljava/util/function/Consumer;)V

    .line 22
    :cond_0
    return-void
    .line 25
.end method
