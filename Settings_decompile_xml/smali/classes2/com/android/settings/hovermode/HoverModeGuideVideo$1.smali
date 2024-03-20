.class Lcom/android/settings/hovermode/HoverModeGuideVideo$1;
.super Ljava/lang/Object;
.source "HoverModeGuideVideo.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/hovermode/HoverModeGuideVideo;->onAttachedToWindow()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;


# direct methods
.method constructor <init>(Lcom/android/settings/hovermode/HoverModeGuideVideo;)V
    .locals 0

    .line 46
    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$1;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 49
    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$1;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {p0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmMediaPlayer(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/media/MediaPlayer;

    move-result-object p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
