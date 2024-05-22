.class public Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

.field public mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->finish()V

    .line 2
    return-void
    .line 5
.end method

.method public final onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 2
    const-string/jumbo p1, "wifi"

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/internal/app/AlertActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    check-cast p1, Landroid/net/wifi/WifiManager;

    .line 12
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 14
    new-instance p1, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    .line 16
    invoke-direct {p1, p0, p0}, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;-><init>(Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;Landroid/app/Activity;)V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    .line 21
    iget-object p1, p0, Lcom/android/internal/app/AlertActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 23
    const v0, 0x7f130c7a    # @string/wifi_debugging_secondary_user_title 'Wireless debugging not allowed'

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 32
    const v0, 0x7f130c79    # @string/wifi_debugging_secondary_user_message 'The user currently signed in to this device can’t turn on wireless debugging. To use this feature, s ...'

    .line 34
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 37
    move-result-object v0

    .line 40
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 41
    const v0, 0x104000a    # @android:string/ok

    .line 43
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->getString(I)Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 50
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 52
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->setupAlert()V

    .line 54
    return-void
    .line 57
.end method

.method public final onStart()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

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
    iget-object v1, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    .line 17
    invoke-virtual {p0, v1, v0}, Lcom/android/internal/app/AlertActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 19
    invoke-virtual {p0}, Lcom/android/internal/app/AlertActivity;->closeSystemDialogs()V

    .line 22
    return-void
    .line 25
.end method

.method public final onStop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity;->mWifiChangeReceiver:Lcom/android/systemui/wifi/WifiDebuggingSecondaryUserActivity$WifiChangeReceiver;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0, v0}, Lcom/android/internal/app/AlertActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 6
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 9
    return-void
    .line 12
.end method
