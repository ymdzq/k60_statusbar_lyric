.class Lcom/android/settings/MutedVideoView$1;
.super Ljava/lang/Object;
.source "MutedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnVideoSizeChangedListener;


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

    .line 299
    iput-object p1, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onVideoSizeChanged(Landroid/media/MediaPlayer;II)V
    .locals 0

    .line 301
    iget-object p2, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result p3

    invoke-static {p2, p3}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmVideoWidth(Lcom/android/settings/MutedVideoView;I)V

    .line 302
    iget-object p2, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    invoke-static {p2, p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmVideoHeight(Lcom/android/settings/MutedVideoView;I)V

    .line 303
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoWidth(Lcom/android/settings/MutedVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p1}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoHeight(Lcom/android/settings/MutedVideoView;)I

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    iget-object p1, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p1}, Landroid/view/SurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoWidth(Lcom/android/settings/MutedVideoView;)I

    move-result p2

    iget-object p3, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p3}, Lcom/android/settings/MutedVideoView;->-$$Nest$fgetmVideoHeight(Lcom/android/settings/MutedVideoView;)I

    move-result p3

    invoke-interface {p1, p2, p3}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 305
    iget-object p0, p0, Lcom/android/settings/MutedVideoView$1;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-virtual {p0}, Landroid/view/SurfaceView;->requestLayout()V

    :cond_0
    return-void
.end method
