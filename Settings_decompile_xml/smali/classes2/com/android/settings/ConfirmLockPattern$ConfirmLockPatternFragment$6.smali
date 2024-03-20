.class Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;
.super Ljava/lang/Object;
.source "ConfirmLockPattern.java"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->showProgressAnim()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V
    .locals 0

    .line 432
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 454
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 455
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 456
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

    :cond_0
    return-void
.end method

.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .line 442
    sget-object p1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "generateChallenge onAnimationEnd challenge="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {v1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmBiometricEnrollChallenge(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmBiometricEnrollChallenge(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-nez p1, :cond_0

    .line 444
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 446
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 447
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    const/16 v0, 0x64

    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/ProgressDialog;->setProgress(I)V

    .line 448
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$mdismissProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)V

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

    .line 435
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 436
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment$6;->this$0:Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;->-$$Nest$fgetmProgressDialog(Lcom/android/settings/ConfirmLockPattern$ConfirmLockPatternFragment;)Lmiuix/appcompat/app/ProgressDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_0
    return-void
.end method
