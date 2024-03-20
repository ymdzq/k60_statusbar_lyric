.class Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$2;
.super Ljava/lang/Object;
.source "MiuiFaceDataPrompt.java"

# interfaces
.implements Landroid/view/TextureView$SurfaceTextureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;)V
    .locals 0

    .line 96
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
    .locals 0

    .line 99
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt$2;->this$0:Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;

    invoke-virtual {p0}, Lcom/android/settings/faceunlock/MiuiFaceDataPrompt;->playVideo()V

    return-void
.end method

.method public onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

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
