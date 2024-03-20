.class Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;
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

    .line 269
    iput-object p1, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 273
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmHasClickNextBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 274
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    const/4 v0, 0x1

    invoke-static {p2, v0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fputmHasClickNextBtn(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;Z)V

    .line 275
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmFaceInputFirstSuggestion(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/widget/TextView;

    move-result-object p2

    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object p2

    sget-object v0, Lcom/android/settings/faceunlock/KeyguardSettingsFaceUnlockUtils;->HIDE_ANIM_CONFING:Lmiuix/animation/base/AnimConfig;

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v1

    invoke-interface {p2, v1}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 276
    iget-object p2, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p2}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$fgetmFaceInputNextOrSuccessButton(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)Landroid/widget/Button;

    move-result-object p2

    filled-new-array {p2}, [Landroid/view/View;

    move-result-object p2

    invoke-static {p2}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IFolme;->visible()Lmiuix/animation/IVisibleStyle;

    move-result-object p2

    invoke-interface {p2}, Lmiuix/animation/IVisibleStyle;->setShow()Lmiuix/animation/IVisibleStyle;

    move-result-object p2

    filled-new-array {v0}, [Lmiuix/animation/base/AnimConfig;

    move-result-object v0

    invoke-interface {p2, v0}, Lmiuix/animation/IVisibleStyle;->hide([Lmiuix/animation/base/AnimConfig;)V

    .line 277
    iget-object p0, p0, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment$4;->this$0:Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;

    invoke-static {p0}, Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;->-$$Nest$menterFaceInputStepAnimation(Lcom/android/settings/faceunlock/MiuiNormalCameraFaceInput$NewFaceEnrollFragment;)V

    .line 279
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
