.class Lcom/android/settings/hovermode/HoverModeGuideVideo$3;
.super Ljava/lang/Object;
.source "HoverModeGuideVideo.java"

# interfaces
.implements Ljava/lang/Runnable;


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

    .line 88
    iput-object p1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 91
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/ViewFlipper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ViewFlipper;->getWidth()I

    move-result v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v1}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmViewFlipper(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/ViewFlipper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/ViewFlipper;->getHeight()I

    move-result v1

    .line 93
    iget-object v2, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v2}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v2

    add-int/lit8 v0, v0, 0x1

    iput v0, v2, Landroid/widget/FrameLayout$LayoutParams;->width:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->height:I

    .line 95
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object v0

    const/16 v1, 0x11

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 96
    iget-object v0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {v0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmVideoTextureView(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/view/TextureView;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/hovermode/HoverModeGuideVideo$3;->this$0:Lcom/android/settings/hovermode/HoverModeGuideVideo;

    invoke-static {p0}, Lcom/android/settings/hovermode/HoverModeGuideVideo;->-$$Nest$fgetmLayoutParams(Lcom/android/settings/hovermode/HoverModeGuideVideo;)Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/TextureView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method
