.class Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$2;
.super Ljava/lang/Object;
.source "ModifyAndInstructionPrivacyPassword.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->showClosePasswordDialog()V
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

    .line 221
    iput-object p1, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$2;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 225
    iget-object p0, p0, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment$2;->this$0:Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;

    const/16 p1, 0x7164

    invoke-virtual {p0, p1}, Lcom/android/settings/privacypassword/ModifyAndInstructionPrivacyPassword$ModifyAndInstructionPrivacyPasswordFragment;->startConfirmPassword(I)V

    return-void
.end method
