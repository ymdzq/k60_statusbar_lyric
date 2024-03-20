.class Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;
.super Ljava/lang/Object;
.source "MiuiNormalCameraFaceInput.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->enterRiskWarningDialog()V
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

    .line 282
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 286
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 287
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fputmHasClickStartAddBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V

    .line 288
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmCountdownTimer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 289
    iget-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmCountdownTimer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/os/CountDownTimer;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/CountDownTimer;->cancel()V

    .line 290
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$3;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fputmCountdownTimer(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Landroid/os/CountDownTimer;)V

    :cond_0
    return-void
.end method
