.class Lcom/android/settings/MiuiUnificationConfirmationDialog$1;
.super Ljava/lang/Object;
.source "MiuiUnificationConfirmationDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiUnificationConfirmationDialog;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiUnificationConfirmationDialog;

.field final synthetic val$compliant:Z

.field final synthetic val$parentFragment:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiUnificationConfirmationDialog;ZLcom/android/settings/security/MiuiSecurityAndPrivacySettings;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 60
    iput-object p1, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->this$0:Lcom/android/settings/MiuiUnificationConfirmationDialog;

    iput-boolean p2, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->val$compliant:Z

    iput-object p3, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 63
    iget-boolean p1, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->val$compliant:Z

    if-eqz p1, :cond_0

    .line 64
    iget-object p0, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->launchConfirmDeviceLockForUnification()V

    goto :goto_0

    .line 66
    :cond_0
    iget-object p0, p0, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;->val$parentFragment:Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->unifyUncompliantLocks()V

    :goto_0
    return-void
.end method
