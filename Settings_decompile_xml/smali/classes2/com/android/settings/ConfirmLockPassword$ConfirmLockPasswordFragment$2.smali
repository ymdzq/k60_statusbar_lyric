.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->showProgressAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V
    .locals 0

    .line 280
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 301
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 302
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 303
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 290
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmBiometricEnrollChallenge(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 291
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 293
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 294
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 295
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)V

    :cond_1
    return-void
.end method

.method public onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 283
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 284
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$2;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
