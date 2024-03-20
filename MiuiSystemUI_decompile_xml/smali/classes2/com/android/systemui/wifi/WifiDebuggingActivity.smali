.class public Lcom/android/systemui/wifi/WifiDebuggingActivity;
.super Landroid/app/Activity;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mBssid:Ljava/lang/String;

.field public mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

.field public mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;

.field public mWifiManager:Landroid/net/wifi/WifiManager;

.field public onClickListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$1;

.field public onDismissListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$2;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 5
    move-result-object p1

    .line 8
    if-eqz p1, :cond_0

    .line 9
    invoke-virtual {p0}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    .line 11
    move-result-object p1

    .line 14
    invoke-virtual {p1}, Landroid/app/ActionBar;->hide()V

    .line 15
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    .line 18
    move-result-object p1

    .line 21
    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    .line 22
    move-result-object p1

    .line 25
    const/4 v0, 0x0

    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 27
    const-string/jumbo p1, "wifi"

    .line 30
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 33
    move-result-object p1

    .line 36
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 37
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 39
    new-instance p1, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;

    .line 41
    invoke-direct {p1, p0, p0}, Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;-><init>(Lcom/android/systemui/wifi/WifiDebuggingActivity;Landroid/app/Activity;)V

    .line 43
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;

    .line 46
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    .line 48
    move-result-object p1

    .line 51
    const-string/jumbo v0, "ssid"

    .line 52
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object v0

    .line 58
    const-string v1, "bssid"

    .line 59
    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 61
    move-result-object p1

    .line 64
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mBssid:Ljava/lang/String;

    .line 65
    if-eqz v0, :cond_2

    .line 67
    if-nez p1, :cond_1

    .line 69
    goto :goto_0

    .line 71
    :cond_1
    new-instance p1, Lcom/android/systemui/wifi/WifiDebuggingActivity$1;

    .line 72
    invoke-direct {p1, p0}, Lcom/android/systemui/wifi/WifiDebuggingActivity$1;-><init>(Lcom/android/systemui/wifi/WifiDebuggingActivity;)V

    .line 74
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->onClickListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$1;

    .line 77
    new-instance p1, Lcom/android/systemui/wifi/WifiDebuggingActivity$2;

    .line 79
    invoke-direct {p1, p0}, Lcom/android/systemui/wifi/WifiDebuggingActivity$2;-><init>(Lcom/android/systemui/wifi/WifiDebuggingActivity;)V

    .line 81
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->onDismissListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$2;

    .line 84
    new-instance p1, Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 86
    const v1, 0x7f1404ee    # @style/Theme.Dialog.Alert

    .line 88
    invoke-direct {p1, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 91
    const v1, 0x7f130c75    # @string/wifi_debugging_title 'Allow wireless debugging on this network?'

    .line 94
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 97
    move-result-object v1

    .line 100
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mBssid:Ljava/lang/String;

    .line 104
    filled-new-array {v0, v1}, [Ljava/lang/Object;

    .line 106
    move-result-object v0

    .line 109
    const v1, 0x7f130c72    # @string/wifi_debugging_message 'Network Name (SSID)\n%1$s\n\nWi‑Fi Address (BSSID)\n%2$s'

    .line 110
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    move-result-object v0

    .line 116
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)V

    .line 117
    const v0, 0x7f130c71    # @string/wifi_debugging_always 'Always allow on this network'

    .line 120
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 123
    move-result-object v0

    .line 126
    const/4 v1, 0x1

    .line 127
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCheckBox(Ljava/lang/CharSequence;Z)V

    .line 128
    invoke-virtual {p1, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setCancelable(Z)V

    .line 131
    const v0, 0x104000a    # @android:string/ok

    .line 134
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 137
    move-result-object v0

    .line 140
    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->onClickListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$1;

    .line 141
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 143
    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 146
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    .line 148
    move-result-object v0

    .line 151
    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->onClickListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$1;

    .line 152
    invoke-virtual {p1, v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 154
    iget-object v0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->onDismissListener:Lcom/android/systemui/wifi/WifiDebuggingActivity$2;

    .line 157
    invoke-virtual {p1, v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 159
    invoke-virtual {p1}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    .line 162
    move-result-object p1

    .line 165
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mCheckBoxDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 166
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 168
    return-void

    .line 171
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 172
    return-void
    .line 175
.end method

.method public final onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 2
    :try_start_0
    const-string p0, "adb"

    .line 5
    invoke-static {p0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    .line 7
    move-result-object p0

    .line 10
    invoke-static {p0}, Landroid/debug/IAdbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/debug/IAdbManager;

    .line 11
    move-result-object p0

    .line 14
    invoke-interface {p0}, Landroid/debug/IAdbManager;->denyWirelessDebugging()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    goto :goto_0

    .line 18
    :catch_0
    move-exception p0

    .line 19
    const-string v0, "WifiDebuggingActivity"

    .line 20
    const-string v1, "Unable to notify Adb service"

    .line 22
    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 24
    :goto_0
    return-void
    .line 27
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    .line 5
    const-string v1, "android.net.wifi.WIFI_STATE_CHANGED"

    .line 7
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 9
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 12
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 14
    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;

    .line 17
    invoke-virtual {p0, v1, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    new-instance v0, Landroid/content/Intent;

    .line 22
    const-string v1, "android.intent.action.CLOSE_SYSTEM_DIALOGS"

    .line 24
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 26
    invoke-virtual {p0, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 29
    return-void
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wifi/WifiDebuggingActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingActivity$WifiChangeReceiver;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 9
    return-void
    .line 12
.end method

.method public final onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowAttributesChanged(Landroid/view/WindowManager$LayoutParams;)V

    .line 2
    return-void
    .line 5
.end method
