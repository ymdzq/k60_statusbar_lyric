.class public Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;
.super Landroid/app/Activity;
.source "UsbHeadsetUnSupportActivity.java"


# instance fields
.field private mDialog:Lmiuix/appcompat/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private initDialog()V
    .locals 3

    .line 40
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 42
    sget v1, Lcom/android/settings/R$string;->usb_headset_not_support_tile:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 43
    sget v1, Lcom/android/settings/R$string;->usb_headset_not_support_message:I

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(I)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 44
    new-instance v1, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$1;-><init>(Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 50
    sget v1, Lcom/android/settings/R$string;->usb_headset_not_support_cancel:I

    new-instance v2, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity$2;-><init>(Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 58
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 35
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;->initDialog()V

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 63
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 64
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/UsbHeadsetUnSupportActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz p0, :cond_0

    .line 65
    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method
