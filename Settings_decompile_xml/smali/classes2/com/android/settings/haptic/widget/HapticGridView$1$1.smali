.class Lcom/android/settings/haptic/widget/HapticGridView$1$1;
.super Ljava/lang/Object;
.source "HapticGridView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView$1;->onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/haptic/widget/HapticGridView$1;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView$1;)V
    .locals 0

    .line 169
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 173
    :cond_0
    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1$1;->this$1:Lcom/android/settings/haptic/widget/HapticGridView$1;

    iget-object p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$textureView:Landroid/view/TextureView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result p1

    int-to-float p1, p1

    invoke-static {p0, v0, p1}, Lcom/android/settings/haptic/utils/ViewUtils;->scaleVideoAndFillView(Landroid/view/TextureView;FF)V

    return-void
.end method
