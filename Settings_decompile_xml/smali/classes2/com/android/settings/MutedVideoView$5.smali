.class Lcom/android/settings/MutedVideoView$5;
.super Ljava/lang/Object;
.source "MutedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnErrorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MutedVideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MutedVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/MutedVideoView;)V
    .locals 0

    .line 380
    iput-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Landroid/media/MediaPlayer;II)Z
    .locals 2

    .line 382
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetTAG(Lcom/android/settings/MutedVideoView;)Ljava/lang/String;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Error: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    const/4 v0, -0x1

    invoke-static {p1, v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCurrentState(Lcom/android/settings/MutedVideoView;I)V

    .line 384
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1, v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmTargetState(Lcom/android/settings/MutedVideoView;I)V

    .line 385
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 386
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/MediaController;->hide()V

    .line 390
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmOnErrorListener(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 391
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmOnErrorListener(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer$OnErrorListener;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/MutedVideoView$5;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-interface {p1, p0, p2, p3}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z

    :cond_1
    return v0
.end method
