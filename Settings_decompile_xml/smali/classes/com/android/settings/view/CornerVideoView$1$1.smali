.class Lcom/android/settings/view/CornerVideoView$1$1;
.super Ljava/lang/Object;
.source "CornerVideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/view/CornerVideoView$1;->onPrepared(Landroid/media/MediaPlayer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/view/CornerVideoView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/view/CornerVideoView$1;)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/view/CornerVideoView$1$1;->this$1:Lcom/android/settings/view/CornerVideoView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 0

    const/4 p1, 0x3

    if-ne p2, p1, :cond_0

    .line 68
    iget-object p0, p0, Lcom/android/settings/view/CornerVideoView$1$1;->this$1:Lcom/android/settings/view/CornerVideoView$1;

    iget-object p0, p0, Lcom/android/settings/view/CornerVideoView$1;->this$0:Lcom/android/settings/view/CornerVideoView;

    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/android/settings/R$color;->miuix_sbl_transparent:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getColor(I)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/widget/VideoView;->setBackgroundColor(I)V

    :cond_0
    const/4 p0, 0x1

    return p0
.end method
