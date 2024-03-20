.class Lcom/android/settings/haptic/widget/HapticGridView$1;
.super Ljava/lang/Object;
.source "HapticGridView.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/haptic/widget/HapticGridView;->initNormalView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/haptic/widget/HapticGridView;

.field final synthetic val$index:I

.field final synthetic val$resID:I

.field final synthetic val$textureView:Landroid/view/TextureView;


# direct methods
.method constructor <init>(Lcom/android/settings/haptic/widget/HapticGridView;IILandroid/view/TextureView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 154
    iput-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    iput p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    iput p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$resID:I

    iput-object p4, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$textureView:Landroid/view/TextureView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 1

    .line 157
    iget-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p2}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmSurfaceList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/Surface;

    move-result-object p2

    iget p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    new-instance v0, Landroid/view/Surface;

    invoke-direct {v0, p1}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    aput-object v0, p2, p3

    .line 158
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, p2

    if-nez p1, :cond_0

    .line 159
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    new-instance p3, Landroid/media/MediaPlayer;

    invoke-direct {p3}, Landroid/media/MediaPlayer;-><init>()V

    aput-object p3, p1, p2

    .line 162
    :cond_0
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, p2

    iget-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p2}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmSurfaceList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/Surface;

    move-result-object p2

    iget p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p2, p2, p3

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 163
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "android.resource://"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-virtual {p2}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "/"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$resID:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 165
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p2}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p2

    iget p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p2, p2, p3

    iget-object p3, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-virtual {p3}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p2, p3, p1}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 167
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 169
    :goto_0
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, p2

    new-instance p2, Lcom/android/settings/haptic/widget/HapticGridView$1$1;

    invoke-direct {p2, p0}, Lcom/android/settings/haptic/widget/HapticGridView$1$1;-><init>(Lcom/android/settings/haptic/widget/HapticGridView$1;)V

    invoke-virtual {p1, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 177
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p0, p1, p0

    invoke-virtual {p0}, Landroid/media/MediaPlayer;->prepare()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 179
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    :goto_1
    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 2

    .line 189
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmSurfaceList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/view/Surface;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    const/4 v1, 0x0

    aput-object v1, p1, v0

    .line 190
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, v0

    if-eqz p1, :cond_0

    .line 191
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->reset()V

    .line 192
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aget-object p1, p1, v0

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->release()V

    .line 193
    iget-object p1, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->this$0:Lcom/android/settings/haptic/widget/HapticGridView;

    invoke-static {p1}, Lcom/android/settings/haptic/widget/HapticGridView;->-$$Nest$fgetmMediaPlayerList(Lcom/android/settings/haptic/widget/HapticGridView;)[Landroid/media/MediaPlayer;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/haptic/widget/HapticGridView$1;->val$index:I

    aput-object v1, p1, p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 0
    return-void
.end method

.method public onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
    .locals 0

    .line 0
    return-void
.end method
