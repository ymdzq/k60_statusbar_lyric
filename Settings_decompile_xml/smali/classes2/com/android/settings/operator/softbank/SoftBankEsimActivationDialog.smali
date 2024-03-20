.class public Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog;
.super Ljava/lang/Object;
.source "SoftBankEsimActivationDialog.java"


# direct methods
.method public static show(Landroid/app/Activity;)V
    .locals 3

    .line 43
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 44
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    .line 46
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 47
    sget v0, Lcom/android/settings/R$string;->dialog_softbank_esime_title:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 48
    sget v0, Lcom/android/settings/R$string;->dialog_softbank_esime_context:I

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 49
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 50
    sget v0, Lcom/android/settings/R$string;->dialog_esim_button_positive:I

    new-instance v2, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    sget p0, Lcom/android/settings/R$string;->dialog_esim_button_negative:I

    new-instance v0, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$2;

    invoke-direct {v0}, Lcom/android/settings/operator/softbank/SoftBankEsimActivationDialog$2;-><init>()V

    invoke-virtual {v1, p0, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 67
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
