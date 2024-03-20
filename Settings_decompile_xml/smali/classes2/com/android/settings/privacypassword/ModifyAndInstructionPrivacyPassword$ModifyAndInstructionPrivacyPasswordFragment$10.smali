.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Lcom/android/settings/FingerprintIdentifyCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V
    .locals 0

    .line 460
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailed()V
    .locals 4

    .line 463
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->getWrongFingerAttempts(Landroid/content/Context;)I

    move-result v0

    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 464
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordUtils;->setWrongFingerAttempts(Landroid/content/Context;I)V

    .line 465
    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)I

    move-result v3

    add-int/2addr v3, v1

    invoke-static {v2, v3}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V

    const/4 v2, 0x5

    if-ge v3, v2, :cond_0

    if-ge v0, v2, :cond_0

    .line 467
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintDialogTitle(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_password_fingerprint_dialog_error_title:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 469
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 470
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$msetVibrator(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    goto :goto_0

    .line 472
    :cond_0
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    const/4 v2, 0x0

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V

    .line 473
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0, v2}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V

    .line 475
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->privacy_password_fingerprint_confirm_failed:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 476
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$msetFingerprintRevive(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 477
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    :goto_0
    return-void
.end method

.method public onIdentified(I)V
    .locals 3

    .line 483
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmPrivacyPasswordManager(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    .line 484
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmConfirmUseFingerprint(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 485
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_password_fingerprint_confirm_succes:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 486
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 487
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 488
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V

    .line 489
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V

    .line 490
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$msetFingerprintRevive(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 491
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    return-void
.end method

.method public onLockout()V
    .locals 3

    .line 496
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V

    .line 497
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmAlertDialog(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 498
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0, v1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V

    .line 499
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmActivity(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lmiuix/appcompat/app/AppCompatActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->privacy_password_fingerprint_confirm_failed:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 500
    iget-object v0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$msetFingerprintRevive(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 501
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$10;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    return-void
.end method
