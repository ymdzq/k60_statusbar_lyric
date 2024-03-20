.class Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment$33;
.super Ljava/lang/Object;
.source "MiuiNormalCameraMultiFaceInput.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;->playVideo(Landroid/view/Surface;ZI)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;)V
    .locals 0

    .line 1281
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment$33;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 0

    .line 1284
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment$33;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;->-$$Nest$fgetmFaceEnrollSucceed(Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment$33;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;

    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;->mActivity:Landroid/app/Activity;

    if-eqz p1, :cond_0

    .line 1285
    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;->-$$Nest$mupdateFaceUnlockSuccessView(Lcom/android/settings/faceunlock/MiuiNormalCameraMultiFaceInput$NewMultiFaceEnrollFragment;)V

    :cond_0
    return-void
.end method
