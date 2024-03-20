.class public Lcom/android/settings/wifi/WifiConnectionDialog;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiConnectionDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mConfig:Landroid/net/wifi/WifiConfiguration;

.field private mDialogType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method private createDialog()V
    .locals 3

    .line 68
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    const/4 v1, 0x0

    .line 69
    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getDialogTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 71
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->getMessage()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 72
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->isRemind(Landroid/content/Context;)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    sget v2, Lcom/android/settings/R$string;->wifi_datanetwork_switch_not_remind:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(ZLjava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x1040009    # @android:string/no

    .line 73
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    const v1, 0x1040013    # @android:string/yes

    .line 74
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 75
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->show()Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method

.method private getDialogTitle()Ljava/lang/CharSequence;
    .locals 2

    const/4 v0, 0x2

    .line 79
    iget v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez v0, :cond_0

    .line 80
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_gsm_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 81
    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_available_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getMessage()Ljava/lang/CharSequence;
    .locals 2

    .line 84
    iget v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 85
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->isWifiAutoConnectAsk(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/android/settings/R$string;->msg_wlan_signal_found:I

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    sget v0, Lcom/android/settings/R$string;->wifi_signal_found_msg:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0

    :cond_1
    const/4 v1, 0x2

    if-ne v1, v0, :cond_3

    .line 87
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/R$string;->wifi_signal_found_msg:I

    goto :goto_1

    :cond_2
    sget v0, Lcom/android/settings/R$string;->wifi_switch_to_gsm_message:I

    :goto_1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method static isRemind(Landroid/content/Context;)Z
    .locals 2

    .line 136
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_dialog_remind_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method static isRemindExpired(Landroid/content/Context;)Z
    .locals 5

    .line 126
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-string v2, "donot_remind_switch_to_wifi_dialog"

    const-wide/32 v3, 0x7fffffff

    invoke-interface {p0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long p0, v0, v2

    if-ltz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static isWifiAutoConnectAsk(Landroid/content/Context;)Z
    .locals 2

    .line 146
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_connect_type"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method private setIsRemind(Z)V
    .locals 1

    .line 141
    invoke-virtual {p0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "wifi_dialog_remind_type"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setWifiConnectionValue(J)V
    .locals 1

    .line 131
    invoke-static {p0}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p0

    .line 132
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    const-string v0, "donot_remind_switch_to_wifi_dialog"

    invoke-interface {p0, v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object p0

    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method private showWifiList()V
    .locals 2

    .line 150
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.WIFI_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne p2, v0, :cond_4

    .line 96
    iget p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    if-ne v3, p2, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_1

    .line 97
    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->isWifiAutoConnectAsk(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 98
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->showWifiList()V

    goto :goto_0

    :cond_0
    const-string/jumbo p2, "wifi"

    .line 100
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/wifi/WifiManager;

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {p2, v0, v1}, Landroid/net/wifi/WifiManager;->connect(ILandroid/net/wifi/WifiManager$ActionListener;)V

    const-wide/32 v0, 0x7fffffff

    .line 102
    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConnectionDialog;->setWifiConnectionValue(J)V

    goto :goto_0

    :cond_1
    if-ne v2, p2, :cond_3

    .line 105
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_2

    .line 106
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->showWifiList()V

    goto :goto_0

    .line 108
    :cond_2
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 111
    :cond_3
    :goto_0
    move-object p2, p1

    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    move-result p2

    xor-int/2addr p2, v3

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/WifiConnectionDialog;->setIsRemind(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, -0x2

    if-ne p2, v0, :cond_6

    .line 113
    iget p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    if-ne v3, p2, :cond_5

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_5

    invoke-static {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->isWifiAutoConnectAsk(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 114
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConnectionDialog;->setWifiConnectionValue(J)V

    goto :goto_1

    .line 115
    :cond_5
    iget p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    if-ne v2, p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-eqz p2, :cond_6

    .line 116
    new-instance p2, Landroid/content/Intent;

    const-string v0, "miui.intent.action.SELECT_WIFI_AP"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v0, "extra_best_ap"

    .line 117
    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 118
    invoke-virtual {p0, p2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 121
    :cond_6
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 122
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->requestFeature(I)Z

    .line 42
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    const/4 v2, 0x0

    .line 43
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 44
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 46
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "miui.intent.action.SWITCH_TO_WIFI"

    .line 48
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const-string v2, "SwitchToWifiDialog"

    const-string v3, "extra_best_ap"

    if-eqz v0, :cond_0

    .line 49
    iput v1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    if-nez p1, :cond_1

    const-string p1, "config is null"

    .line 52
    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_0
    const-string v0, "miui.intent.action.SELECT_WIFI_AP"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    .line 57
    iput p1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mDialogType:I

    .line 58
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConnectionDialog;->mConfig:Landroid/net/wifi/WifiConfiguration;

    .line 65
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConnectionDialog;->createDialog()V

    return-void

    .line 60
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown action: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method
