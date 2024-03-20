.class public Lcom/android/settings/mqsas/PrivacyDialogActivity;
.super Landroid/app/Activity;
.source "PrivacyDialogActivity.java"


# instance fields
.field private mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDgt:Ljava/lang/String;

.field private mType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDgt(Lcom/android/settings/mqsas/PrivacyDialogActivity;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mDgt:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmType(Lcom/android/settings/mqsas/PrivacyDialogActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mType:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 13
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 26
    sget p1, Lcom/android/settings/R$layout;->privacy_dialog_activity:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setContentView(I)V

    .line 27
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "type"

    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mType:I

    const-string v0, "dgt"

    .line 29
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mDgt:Ljava/lang/String;

    .line 30
    invoke-virtual {p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity;->showPrivacyDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 74
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method

.method public showPrivacyDialog()V
    .locals 3

    .line 34
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 35
    sget v1, Lcom/android/settings/R$string;->mqs_privacy_dialog_title:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 36
    sget v1, Lcom/android/settings/R$string;->mqs_privacy_dialog_content:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$string;->mqs_privacy_automatically_upload:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 39
    new-instance v1, Lcom/android/settings/mqsas/PrivacyDialogActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity$1;-><init>(Lcom/android/settings/mqsas/PrivacyDialogActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 45
    new-instance v1, Lcom/android/settings/mqsas/PrivacyDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity$2;-><init>(Lcom/android/settings/mqsas/PrivacyDialogActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 51
    sget v1, Lcom/android/settings/R$string;->mqs_privacy_dialog_cancel:I

    new-instance v2, Lcom/android/settings/mqsas/PrivacyDialogActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity$3;-><init>(Lcom/android/settings/mqsas/PrivacyDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    sget v1, Lcom/android/settings/R$string;->mqs_privacy_dialog_confirm:I

    new-instance v2, Lcom/android/settings/mqsas/PrivacyDialogActivity$4;

    invoke-direct {v2, p0}, Lcom/android/settings/mqsas/PrivacyDialogActivity$4;-><init>(Lcom/android/settings/mqsas/PrivacyDialogActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/mqsas/PrivacyDialogActivity;->mAlertDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 68
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method
