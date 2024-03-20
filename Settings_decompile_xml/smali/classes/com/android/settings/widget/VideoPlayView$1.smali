.class Lcom/android/settings/widget/VideoPlayView$1;
.super Ljava/lang/Object;
.source "VideoPlayView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/widget/VideoPlayView;->addVideoView(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/VideoPlayView;


# direct methods
.method constructor <init>(Lcom/android/settings/widget/VideoPlayView;)V
    .locals 0

    .line 62
    iput-object p1, p0, Lcom/android/settings/widget/VideoPlayView$1;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayView$1;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {p0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/widget/VideoPlayView;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
