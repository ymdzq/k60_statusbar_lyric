.class public final Lcom/android/systemui/toast/view/TextureVideoView$5;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/media/MediaPlayer$OnBufferingUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/toast/view/TextureVideoView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/toast/view/TextureVideoView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/toast/view/TextureVideoView$5;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onBufferingUpdate(Landroid/media/MediaPlayer;I)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/toast/view/TextureVideoView$5;->this$0:Lcom/android/systemui/toast/view/TextureVideoView;

    .line 2
    iput p2, p0, Lcom/android/systemui/toast/view/TextureVideoView;->mCurrentBufferPercentage:I

    .line 4
    return-void
    .line 6
.end method
