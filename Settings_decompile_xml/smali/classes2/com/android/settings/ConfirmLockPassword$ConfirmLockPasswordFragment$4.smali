.class Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;
.super Ljava/lang/Object;
.source "ConfirmLockPassword.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->createView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 441
    iput-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 444
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget p1, p1, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    if-eqz p1, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    if-nez p1, :cond_0

    .line 445
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmLockPatternUtils(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Landroid/security/MiuiLockPatternUtils;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    iget p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->mUserIdToConfirmPassword:I

    const/4 v1, 0x0

    invoke-static {p1, v1, v1, v0, p0}, Lcom/android/settings/MiuiUtils;->handleForgetPasswordRequestForSSpace(Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;Landroid/security/MiuiLockPatternUtils;I)V

    goto :goto_0

    .line 448
    :cond_0
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/ForgetPasswordDialog;

    move-result-object p1

    if-nez p1, :cond_1

    .line 449
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    new-instance v0, Lcom/android/settings/ForgetPasswordDialog;

    iget-object v1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/ForgetPasswordDialog;-><init>(Landroid/content/Context;)V

    invoke-static {p1, v0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fputmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;Lcom/android/settings/ForgetPasswordDialog;)V

    .line 451
    :cond_1
    iget-object p1, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/ForgetPasswordDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 452
    iget-object p0, p0, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment$4;->this$0:Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;->-$$Nest$fgetmForgetPasswordDialog(Lcom/android/settings/ConfirmLockPassword$ConfirmLockPasswordFragment;)Lcom/android/settings/ForgetPasswordDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    :cond_2
    :goto_0
    return-void
.end method
