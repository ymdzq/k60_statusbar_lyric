.class public Lcom/android/settings/wifi/WifiTipActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiTipActivity.java"


# instance fields
.field private mDialogType:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialogType(Lcom/android/settings/wifi/WifiTipActivity;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    return p0
.end method

.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private getCancelString()Ljava/lang/String;
    .locals 2

    .line 117
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 122
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_connect_cmcc_dialog_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 119
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_off_airplane_on_cancel:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getCheckboxString()Ljava/lang/String;
    .locals 2

    .line 104
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 109
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_connect_cmcc_dialog_not_remind:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 106
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_off_airplane_on_not_remind:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getCmccConnectedTipValue(Landroid/content/Context;)Z
    .locals 2

    .line 155
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    const-string v0, "donot_remind_wifi_cmcc_connected_dialog"

    const/4 v1, 0x0

    .line 156
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method private getConfirmString()Ljava/lang/String;
    .locals 2

    .line 130
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 135
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_connect_cmcc_dialog_confirm:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 132
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_off_airplane_on_confirm:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method private getMessage()Ljava/lang/String;
    .locals 2

    .line 91
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 96
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_connect_cmcc_dialog_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 93
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_off_airplane_on_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getPreferenceKey(I)Ljava/lang/String;
    .locals 1

    .line 0
    if-eqz p0, :cond_1

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const-string p0, ""

    goto :goto_0

    :cond_0
    const-string p0, "donot_remind_wifi_cmcc_connected_dialog"

    goto :goto_0

    :cond_1
    const-string p0, "donot_remind_wifi_off_airplane_on_dialog"

    :goto_0
    return-object p0
.end method

.method private getTitleString()Ljava/lang/String;
    .locals 2

    .line 78
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const-string p0, ""

    goto :goto_0

    .line 83
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_connect_cmcc_dialog_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    .line 80
    :cond_1
    sget v0, Lcom/android/settings/R$string;->wifi_off_airplane_on_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static setCmccConnectedTipValue(Landroid/content/Context;Z)V
    .locals 1

    .line 160
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 161
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "donot_remind_wifi_cmcc_connected_dialog"

    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showWifiTipDialog()V
    .locals 3

    .line 41
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x0

    .line 42
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 43
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getTitleString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 44
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const/4 v1, 0x1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getCheckboxString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 46
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getCancelString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiTipActivity$1;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiTipActivity$1;-><init>(Lcom/android/settings/wifi/WifiTipActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 59
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->getConfirmString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wifi/WifiTipActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/WifiTipActivity$2;-><init>(Lcom/android/settings/wifi/WifiTipActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 73
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 29
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_dialog_type"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 32
    iget v0, p0, Lcom/android/settings/wifi/WifiTipActivity;->mDialogType:I

    invoke-static {v0}, Lcom/android/settings/wifi/WifiTipActivity;->getPreferenceKey(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 34
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    goto :goto_0

    .line 36
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiTipActivity;->showWifiTipDialog()V

    :goto_0
    return-void
.end method
