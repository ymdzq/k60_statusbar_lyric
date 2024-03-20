.class public Lcom/android/settings/MiuiUnificationConfirmationDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "MiuiUnificationConfirmationDialog.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/MiuiUnificationConfirmationDialog;
    .locals 3

    .line 34
    new-instance v0, Lcom/android/settings/MiuiUnificationConfirmationDialog;

    invoke-direct {v0}, Lcom/android/settings/MiuiUnificationConfirmationDialog;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "compliant"

    .line 36
    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 51
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    .line 52
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "compliant"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 53
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-direct {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_title:I

    .line 54
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_0

    .line 55
    sget v2, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_body:I

    goto :goto_0

    .line 56
    :cond_0
    sget v2, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_uncompliant_body:I

    .line 55
    :goto_0
    invoke-virtual {v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    if-eqz v0, :cond_1

    .line 58
    sget v2, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_confirm:I

    goto :goto_1

    .line 59
    :cond_1
    sget v2, Lcom/android/settings/R$string;->lock_settings_profile_unification_dialog_uncompliant_confirm:I

    :goto_1
    new-instance v3, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;

    invoke-direct {v3, p0, v0, p1}, Lcom/android/settings/MiuiUnificationConfirmationDialog$1;-><init>(Lcom/android/settings/MiuiUnificationConfirmationDialog;ZLcom/android/settings/security/MiuiSecurityAndPrivacySettings;)V

    .line 57
    invoke-virtual {v1, v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    sget p1, Lcom/android/settings/R$string;->cancel:I

    const/4 v0, 0x0

    .line 71
    invoke-virtual {p0, p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 72
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 78
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;

    invoke-virtual {p0}, Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;->updateUnificationPreference()V

    return-void
.end method

.method public show(Lcom/android/settings/security/MiuiSecurityAndPrivacySettings;)V
    .locals 2

    .line 42
    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string/jumbo v0, "unification_dialog"

    .line 43
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v1

    if-nez v1, :cond_0

    .line 45
    invoke-virtual {p0, p1, v0}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
