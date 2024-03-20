.class Lcom/android/settings/widget/VideoPlayView$3;
.super Ljava/lang/Object;
.source "VideoPlayView.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 104
    iput-object p1, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v0

    .line 108
    iget-object v1, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v1}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getHeight()I

    move-result v1

    .line 109
    iget-object v2, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v2}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 110
    iget-object v0, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 112
    iget-object v0, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {v0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmVideoTextureView(Lcom/android/settings/widget/VideoPlayView;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/widget/VideoPlayView$3;->this$0:Lcom/android/settings/widget/VideoPlayView;

    invoke-static {p0}, Lcom/android/settings/widget/VideoPlayView;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/widget/VideoPlayView;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
