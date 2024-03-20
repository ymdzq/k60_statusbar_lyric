.class public Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog;
.super Ljava/lang/Object;
.source "KDDIDataConnectionDialog.java"


# direct methods
.method public static setDataEnabled(Landroid/app/Activity;)V
    .locals 3

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioning_mobile_data"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 90
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_first_using_data"

    invoke-static {p0, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 92
    invoke-static {}, Lmiui/telephony/TelephonyManagerEx;->getDefault()Lmiui/telephony/TelephonyManagerEx;

    move-result-object p0

    invoke-virtual {p0}, Lmiui/telephony/TelephonyManagerEx;->enableDataConnectivity()Z

    return-void
.end method

.method public static showDataConnectionDialog(Landroid/app/Activity;)V
    .locals 3

    .line 52
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    .line 53
    new-instance v1, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v2, 0x11

    .line 55
    invoke-virtual {v0, v2}, Landroid/view/Window;->setGravity(I)V

    .line 56
    sget v0, Lcom/android/settings/R$string;->dialog_wifi_title:I

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    sget v0, Lcom/android/settings/R$string;->dialog_wifi_context:I

    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x0

    .line 58
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    sget v0, Lcom/android/settings/R$string;->dialog_wifi_button_positive:I

    new-instance v2, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;

    invoke-direct {v2, p0}, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$1;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 76
    sget p0, Lcom/android/settings/R$string;->dialog_wifi_button_negative:I

    new-instance v0, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$2;

    invoke-direct {v0}, Lcom/android/settings/operator/kddi/KDDIDataConnectionDialog$2;-><init>()V

    invoke-virtual {v1, p0, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 84
    invoke-virtual {v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
