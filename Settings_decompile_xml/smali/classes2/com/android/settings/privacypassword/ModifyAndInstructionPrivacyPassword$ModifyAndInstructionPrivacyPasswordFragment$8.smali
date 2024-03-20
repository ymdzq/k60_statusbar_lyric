.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 433
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 436
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmPrivacyPasswordManager(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/privacypassword/PrivacyPasswordManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/privacypassword/PrivacyPasswordManager;->setFingerprintEnable(Z)V

    .line 437
    iget-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmConfirmUseFingerprint(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Landroidx/preference/CheckBoxPreference;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroidx/preference/TwoStatePreference;->setChecked(Z)V

    .line 438
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$8;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-static {p0}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->-$$Nest$fgetmFingerprintHelper(Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;)Lcom/android/settings/FingerprintHelper;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/FingerprintHelper;->cancelIdentify()V

    return-void
.end method
