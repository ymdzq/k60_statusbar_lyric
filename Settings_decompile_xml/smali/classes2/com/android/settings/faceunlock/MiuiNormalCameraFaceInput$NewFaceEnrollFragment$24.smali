.class Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;
.super Ljava/lang/Object;
.source "MiuiNormalCameraFaceInput.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V
    .locals 0

    .line 888
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 891
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {v0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmFaceInputSuggestionVideo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/view/TextureView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/TextureView;->setAlpha(F)V

    .line 892
    iget-object v0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    new-instance v1, Landroid/view/Surface;

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$24;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmFaceInputSuggestionVideo(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/view/TextureView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/view/TextureView;->getSurfaceTexture()Landroid/graphics/SurfaceTexture;

    move-result-object p0

    invoke-direct {v1, p0}, Landroid/view/Surface;-><init>(Landroid/graphics/SurfaceTexture;)V

    const/4 p0, 0x1

    sget v2, Lcom/android/settings/R$raw;->miui_face_input_suggestion_video:I

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->playVideo(Landroid/view/Surface;ZI)V

    return-void
.end method
