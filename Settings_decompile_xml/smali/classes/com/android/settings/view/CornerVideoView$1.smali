.class Lcom/android/settings/view/CornerVideoView$1;
.super Ljava/lang/Object;
.source "CornerVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/view/CornerVideoView;->play(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/view/CornerVideoView;


# direct methods
.method constructor <init>(Lcom/android/settings/view/CornerVideoView;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/android/settings/view/CornerVideoView$1;->this$0:Lcom/android/settings/view/CornerVideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setLooping(Z)V

    .line 64
    new-instance v0, Lcom/android/settings/view/CornerVideoView$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/view/CornerVideoView$1$1;-><init>(Lcom/android/settings/view/CornerVideoView$1;)V

    invoke-virtual {p1, v0}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 73
    invoke-virtual {p1}, Landroid/media/MediaPlayer;->start()V

    return-void
.end method
