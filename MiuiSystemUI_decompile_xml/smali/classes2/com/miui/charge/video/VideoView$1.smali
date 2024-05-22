.class public final Lcom/miui/charge/video/VideoView$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# virtual methods
.method public final onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->isPlaying()Z

    .line 4
    move-result p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    .line 10
    :cond_0
    return-void
    .line 13
.end method
