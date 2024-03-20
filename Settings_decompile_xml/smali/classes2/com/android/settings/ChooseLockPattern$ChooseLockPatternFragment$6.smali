.class Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;
.super Ljava/lang/Object;
.source "ChooseLockPattern.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->showDialogToAddFingerprint([B)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

.field final synthetic val$token:[B


# direct methods
.method constructor <init>(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;[B)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 959
    iput-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iput-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->val$token:[B

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    const/4 v0, 0x1

    const/4 v1, -0x1

    if-ne p2, v1, :cond_0

    .line 963
    invoke-static {v0}, Lcom/android/settings/KeyguardSettingsEventTracker;->trackBiometricUnlockDialogEvent(Z)V

    .line 964
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-class v2, Lcom/android/settings/NewFingerprintInternalActivity;

    invoke-direct {p1, p2, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p2, "add_keyguard_password_then_add_fingerprint"

    .line 965
    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string p2, "hw_auth_token"

    .line 966
    iget-object v0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->val$token:[B

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 967
    invoke-static {p1}, Lcom/android/settings/MiuiKeyguardSettingsUtils;->setCancelSettingsSplit(Landroid/content/Intent;)V

    .line 968
    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p2, p1}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    .line 969
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/app/Activity;->setResult(I)V

    .line 970
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 972
    :cond_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 973
    iget-object p1, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    iget-object p2, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->val$token:[B

    invoke-static {p1, p2}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fputdismissToken(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;[B)V

    .line 974
    iget-object p0, p0, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment$6;->this$0:Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;

    invoke-static {p0, v0}, Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;->-$$Nest$fputisDismiss(Lcom/android/settings/ChooseLockPattern$ChooseLockPatternFragment;Z)V

    :goto_0
    return-void
.end method
