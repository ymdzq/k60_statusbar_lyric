.class public Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ScaryWarningDialogFragment.java"


# instance fields
.field private mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;


# direct methods
.method public static synthetic $r8$lambda$QcfPS4owRDSwCW3TMdmGKrPlOhk(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Ljava/lang/String;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$0(Ljava/lang/String;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bgwrFpjWDepVs1LJUrdTwoWscnk(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V

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

    .line 93
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->setAccess(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 94
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    if-eqz p0, :cond_0

    .line 95
    invoke-interface {p0, p3}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 100
    iget-object p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    if-eqz p0, :cond_0

    const/4 p1, 0x0

    .line 101
    invoke-interface {p0, p1}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;->onResult(Z)V

    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x22a

    return p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 61
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string/jumbo v0, "p"

    .line 63
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "l"

    .line 64
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 66
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->zen_access_warning_dialog_title:I

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v1, v2, p1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->zen_access_warning_dialog_summary:I

    .line 69
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 71
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails;

    .line 88
    new-instance v2, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 89
    invoke-virtual {v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 90
    invoke-virtual {v1, p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v1, Lcom/android/settings/R$string;->allow:I

    new-instance v2, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;Ljava/lang/String;)V

    .line 91
    invoke-virtual {p1, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p1

    sget v0, Lcom/android/settings/R$string;->deny:I

    new-instance v1, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;)V

    .line 98
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object p0

    .line 104
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    const/4 p1, 0x0

    .line 105
    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    return-object p0
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;Landroidx/fragment/app/Fragment;)Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string/jumbo v1, "p"

    .line 46
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
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

    .line 48
    invoke-virtual {p0, p3, p1}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 49
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    return-object p0
.end method

.method public setResultCallback(Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/ScaryWarningDialogFragment;->mResultCallback:Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessDetails$OnCheckResult;

    return-void
.end method
