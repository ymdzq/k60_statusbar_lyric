.class Lcom/android/settings/MutedVideoView$6;
.super Ljava/lang/Object;
.source "MutedVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


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

    .line 400
    iput-object p1, p0, Lcom/android/settings/MutedVideoView$6;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 402
    iget-object p0, p0, Lcom/android/settings/MutedVideoView$6;->this$0:Lcom/android/settings/MutedVideoView;

    invoke-static {p0, p2}, Lcom/android/settings/MutedVideoView;->-$$Nest$fputmCurrentBufferPercentage(Lcom/android/settings/MutedVideoView;I)V

    return-void
.end method
