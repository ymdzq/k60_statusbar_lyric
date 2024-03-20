.class public Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FriendlyWarningDialogFragment.java"


# instance fields
.field private mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;


# direct methods
.method public static synthetic $r8$lambda$7o6JOGROSJgiXSMdu1L5S4nIxEg(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gTf8eR9pecU_CCJ6mJQBKcP7gYk(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->lambda$onCreateDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private synthetic lambda$onCreateDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 94
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->deleteRules(Landroid/content/Context;Ljava/lang/String;)V

    .line 95
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x0

    invoke-static {p2, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 96
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    .line 97
    invoke-interface {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 103
    invoke-interface {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x22b

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 62
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "p"

    .line 64
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    .line 65
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->zen_access_revoke_warning_dialog_title:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->zen_access_revoke_warning_dialog_summary:I

    .line 70
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 72
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 89
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 90
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 91
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->okay:I

    new-instance v2, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;Ljava/lang/String;)V

    .line 92
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->cancel:I

    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;)V

    .line 100
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 106
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 107
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;
    .locals 2

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "p"

    .line 47
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    const-string p2, "l"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    .line 49
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 50
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setResultCallback(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V
    .locals 0

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/FriendlyWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    return-void
.end method
