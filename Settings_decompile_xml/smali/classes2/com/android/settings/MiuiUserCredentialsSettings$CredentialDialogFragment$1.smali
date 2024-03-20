.class Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;
.super Ljava/lang/Object;
.source "MiuiUserCredentialsSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

.field final synthetic val$item:Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

.field final synthetic val$myUserId:I


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;ILcom/android/settings/MiuiUserCredentialsSettings$Credential;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 135
    iput-object p1, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    iput p2, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    iput-object p3, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 137
    iget-object p2, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    .line 138
    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string/jumbo v0, "no_config_credentials"

    iget v1, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->val$myUserId:I

    .line 137
    invoke-static {p2, v0, v1}, Lcom/android/settingslib/RestrictedLockUtilsInternal;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 140
    iget-object p0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance p2, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;

    iget-object v0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->this$0:Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;

    invoke-virtual {v2}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    invoke-direct {p2, v0, v1, v2}, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$RemoveCredentialsTask;-><init>(Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment;Landroid/content/Context;Landroidx/fragment/app/Fragment;)V

    iget-object p0, p0, Lcom/android/settings/MiuiUserCredentialsSettings$CredentialDialogFragment$1;->val$item:Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    filled-new-array {p0}, [Lcom/android/settings/MiuiUserCredentialsSettings$Credential;

    move-result-object p0

    .line 144
    invoke-virtual {p2, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 146
    :goto_0
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
