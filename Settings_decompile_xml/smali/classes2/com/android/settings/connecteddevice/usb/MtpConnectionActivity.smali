.class public Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;
.super Landroid/app/Activity;
.source "MtpConnectionActivity.java"


# instance fields
.field private mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mContext:Landroid/content/Context;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private onClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private onDismissListener:Landroid/content/DialogInterface$OnDismissListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCheckBoxDialog(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mshowTips(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->showTips()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 40
    new-instance v0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$1;-><init>(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)V

    iput-object v0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showTips()V
    .locals 3

    .line 128
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v0

    const-string v1, "CN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "https://cdn.cnbj1.fds.api.mi-img.com/usb-solution/index.html"

    goto :goto_0

    :cond_0
    const-string v0, "https://cdn.cnbj1.fds.api.mi-img.com/usb-solution/index2.html"

    .line 133
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 134
    invoke-virtual {p0, v1}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "MtpConnectionActivity"

    const-string v0, "display Mtp Connection Failed dialog"

    .line 55
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mContext:Landroid/content/Context;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string/jumbo v0, "mtp_connection_not_remind"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 60
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 64
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 67
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 69
    new-instance p1, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$2;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$2;-><init>(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 83
    new-instance p1, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$3;

    invoke-direct {p1, p0}, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity$3;-><init>(Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;)V

    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 92
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v2, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {p1, p0, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 93
    sget v2, Lcom/android/settings/R$string;->mtp_connection_failed_title:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->mtp_connection_failed:I

    .line 94
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v2

    sget v3, Lcom/android/settings/R$string;->mtp_connection_not_remind:I

    .line 95
    invoke-virtual {p0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->mtp_solution_button_cancel:I

    .line 97
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->mtp_solution_button_ok:I

    .line 98
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->onClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->onDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 99
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 100
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p1

    .line 101
    iput-object p1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 102
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 120
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 121
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 122
    iget-object p0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 107
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 109
    iget-object v1, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/connecteddevice/usb/MtpConnectionActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 115
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    return-void
.end method
