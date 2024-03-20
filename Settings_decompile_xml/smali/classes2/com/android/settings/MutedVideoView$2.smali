.class Lcom/android/settings/MutedVideoView$2;
.super Ljava/lang/Object;
.source "MutedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


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

    .line 310
    iput-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 4

    .line 312
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    const/4 v1, 0x2

    invoke-static {v0, v1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCurrentState(Lcom/android/settings/MutedVideoView;I)V

    .line 313
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCanSeekForward(Lcom/android/settings/MutedVideoView;Z)V

    invoke-static {v0, v1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCanSeekBack(Lcom/android/settings/MutedVideoView;Z)V

    invoke-static {v0, v1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCanPause(Lcom/android/settings/MutedVideoView;Z)V

    .line 314
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmOnPreparedListener(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmOnPreparedListener(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer$OnPreparedListener;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/MutedVideoView;)Landroid/media/MediaPlayer;

    move-result-object v2

    invoke-interface {v0, v2}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 320
    :cond_1
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmVideoWidth(Lcom/android/settings/MutedVideoView;I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {v0, p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmVideoHeight(Lcom/android/settings/MutedVideoView;I)V

    .line 322
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmSeekWhenPrepared(Lcom/android/settings/MutedVideoView;)I

    move-result p1

    if-eqz p1, :cond_2

    .line 324
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0, p1}, Lcom/android/settings/MutedVideoView;->seekTo(I)V

    .line 326
    :cond_2
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoWidth(Lcom/android/settings/MutedVideoView;)I

    move-result v0

    const/4 v1, 0x3

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoHeight(Lcom/android/settings/MutedVideoView;)I

    move-result v0

    if-eqz v0, :cond_5

    .line 327
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoWidth(Lcom/android/settings/MutedVideoView;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v3}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoHeight(Lcom/android/settings/MutedVideoView;)I

    move-result v3

    invoke-interface {v0, v2, v3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 328
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmSurfaceWidth(Lcom/android/settings/MutedVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoWidth(Lcom/android/settings/MutedVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmSurfaceHeight(Lcom/android/settings/MutedVideoView;)I

    move-result v0

    iget-object v2, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoHeight(Lcom/android/settings/MutedVideoView;)I

    move-result v2

    if-ne v0, v2, :cond_6

    .line 332
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {v0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmTargetState(Lcom/android/settings/MutedVideoView;)I

    move-result v0

    if-ne v0, v1, :cond_3

    .line 333
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Lcom/android/settings/MutedVideoView;->start()V

    .line 334
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 335
    iget-object p0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/MediaController;->show()V

    goto :goto_0

    .line 337
    :cond_3
    iget-object v0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {v0}, Lcom/android/settings/MutedVideoView;->isPlaying()Z

    move-result v0

    if-nez v0, :cond_6

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    .line 338
    invoke-virtual {p1}, Lcom/android/settings/MutedVideoView;->getCurrentPosition()I

    move-result p1

    if-lez p1, :cond_6

    .line 339
    :cond_4
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p1

    if-eqz p1, :cond_6

    .line 341
    iget-object p0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p0}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmMediaController(Lcom/android/settings/MutedVideoView;)Landroid/widget/MediaController;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/MediaController;->show(I)V

    goto :goto_0

    .line 348
    :cond_5
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmTargetState(Lcom/android/settings/MutedVideoView;)I

    move-result p1

    if-ne p1, v1, :cond_6

    .line 349
    iget-object p0, p0, Lcom/android/settings/MutedVideoView$2;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p0}, Lcom/android/settings/MutedVideoView;->start()V

    :cond_6
    :goto_0
    return-void
.end method
