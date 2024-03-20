.class public Lcom/android/settings/wifi/WifiConfigActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiConfigActivity.java"

# interfaces
.implements Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;


# instance fields
.field private dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog2;

.field private mIsSlave:Ljava/lang/Boolean;

.field private mMainHandler:Landroid/os/Handler;

.field private mWifiConfigActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/wifi/WifiConfigActivity;",
            ">;"
        }
    .end annotation
.end field

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 8

    .line 45
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfigActivity:Ljava/lang/ref/WeakReference;

    const-string/jumbo p1, "wifi"

    .line 47
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const-string/jumbo p1, "statusbar"

    .line 48
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/StatusBarManager;

    invoke-virtual {p1}, Landroid/app/StatusBarManager;->collapsePanels()V

    .line 50
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string/jumbo v0, "wifi_config"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiConfiguration;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 51
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "isSlave"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mIsSlave:Ljava/lang/Boolean;

    .line 52
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mMainHandler:Landroid/os/Handler;

    .line 53
    new-instance p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 55
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 56
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 p1, 0x0

    .line 57
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 0

    .line 0
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 8

    .line 87
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    const-string/jumbo v0, "wifi_config"

    .line 88
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiConfiguration;

    const-string v1, "isSlave"

    const/4 v2, 0x0

    .line 89
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mIsSlave:Ljava/lang/Boolean;

    .line 90
    new-instance p1, Lcom/android/wifitrackerlib/StandardWifiEntry;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mMainHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 92
    invoke-virtual {v1}, Landroid/net/wifi/WifiConfiguration;->getPrintableSsid()Ljava/lang/String;

    move-result-object v6

    .line 93
    invoke-static {v0}, Lcom/android/wifitrackerlib/Utils;->getSecurityTypesFromWifiConfiguration(Landroid/net/wifi/WifiConfiguration;)Ljava/util/List;

    move-result-object v7

    move-object v1, p1

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/wifitrackerlib/StandardWifiEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/net/wifi/WifiManager;ZLjava/lang/String;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    return-void
.end method

.method public onResume()V
    .locals 9

    .line 63
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 64
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 66
    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/DetachWifiDialogListener;->finishOnDismiss(Z)V

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    .line 69
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/DetachWifiDialogListener;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfigActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    invoke-direct {v0, v1}, Lcom/android/settings/wifi/DetachWifiDialogListener;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    .line 71
    new-instance v0, Lcom/android/settings/wifi/WifiDialog2;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfigActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfigActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigActivity;->wifiEntry:Lcom/android/wifitrackerlib/WifiEntry;

    const/4 v6, 0x3

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, v0

    invoke-direct/range {v2 .. v8}, Lcom/android/settings/wifi/WifiDialog2;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog2$WifiDialog2Listener;Lcom/android/wifitrackerlib/WifiEntry;IIZ)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    .line 73
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 74
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {v0, p0}, Lcom/android/settings/wifi/DetachWifiDialogListener;->clearOnDetach(Landroid/app/Dialog;)V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 81
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    const/4 v0, 0x1

    .line 82
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setVisible(Z)V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 116
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 120
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->dismissListener:Lcom/android/settings/wifi/DetachWifiDialogListener;

    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog2;)V
    .locals 1

    .line 102
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mDialog:Lcom/android/settings/wifi/WifiDialog2;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog2;->getController()Lcom/android/settings/wifi/WifiConfigController2;

    move-result-object p1

    .line 103
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController2;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 104
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget-boolean v0, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v0, p1, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 106
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mIsSlave:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->connectToSlaveAp(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 109
    :cond_0
    iget-object p0, p0, Lcom/android/settings/wifi/WifiConfigActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    :goto_0
    return-void
.end method
