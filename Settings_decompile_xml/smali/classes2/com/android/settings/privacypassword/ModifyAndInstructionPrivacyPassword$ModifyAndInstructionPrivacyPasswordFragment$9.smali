.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


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

    .line 442
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "ModifyAndInstructionPrivacyPassword"

    const-string v0, "mFingerprintDialog dismiss"

    .line 445
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 446
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmIsVerifyFingerprintFailed(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;Z)V

    .line 447
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1, v0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fputmFingerprintErrorCount(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;I)V

    .line 448
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$msetFingerprintRevive(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)V

    .line 449
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$9;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    return-void
.end method
