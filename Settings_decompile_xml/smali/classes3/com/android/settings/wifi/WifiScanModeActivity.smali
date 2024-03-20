.class public Lcom/android/settings/wifi/WifiScanModeActivity;
.super Lcom/android/settingslib/core/lifecycle/ObservableActivity;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    }
.end annotation


# instance fields
.field mApp:Ljava/lang/String;

.field private mDialog:Landroidx/fragment/app/DialogFragment;

.field mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;


# direct methods
.method static bridge synthetic -$$Nest$mdoNegativeClick(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doNegativeClick()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mdoPositiveClick(Lcom/android/settings/wifi/WifiScanModeActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->doPositiveClick()V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;-><init>()V

    return-void
.end method

.method private dismissDialog()V
    .locals 1

    .line 103
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    const/4 v0, 0x0

    .line 105
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    :cond_0
    return-void
.end method

.method private doNegativeClick()V
    .locals 1

    const/4 v0, 0x0

    .line 116
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 117
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private doPositiveClick()V
    .locals 2

    .line 110
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/net/wifi/WifiManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    const/4 v0, -0x1

    .line 111
    invoke-virtual {p0, v0}, Landroid/app/Activity;->setResult(I)V

    .line 112
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void
.end method

.method private static isGuestUser(Landroid/content/Context;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return v0

    .line 189
    :cond_0
    const-class v1, Landroid/os/UserManager;

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    if-nez p0, :cond_1

    return v0

    .line 191
    :cond_1
    invoke-virtual {p0}, Landroid/os/UserManager;->isGuestUser()Z

    move-result p0

    return p0
.end method


# virtual methods
.method createDialog()V
    .locals 3

    .line 89
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity;->isGuestUser(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "WifiScanModeActivity"

    const-string v1, "Guest user is not allowed to configure Wi-Fi Scan Mode!"

    .line 90
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, -0x1

    .line 91
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "User is a guest"

    const-string v2, "235601169"

    filled-new-array {v2, v0, v1}, [Ljava/lang/Object;

    move-result-object v0

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 92
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    if-nez v0, :cond_1

    .line 97
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-static {v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mDialog:Landroidx/fragment/app/DialogFragment;

    .line 98
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    const-string v1, "dialog"

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addSystemFlags(I)V

    .line 59
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez p1, :cond_1

    if-eqz v0, :cond_0

    const-string p1, "android.net.wifi.action.REQUEST_SCAN_ALWAYS_AVAILABLE"

    .line 62
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->refreshAppLabel()V

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->finish()V

    return-void

    :cond_1
    const-string v0, "app"

    .line 69
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onPause()V
    .locals 0

    .line 128
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onPause()V

    .line 129
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->dismissDialog()V

    return-void
.end method

.method public onResume()V
    .locals 0

    .line 133
    invoke-super {p0}, Lcom/android/settingslib/core/lifecycle/ObservableActivity;->onResume()V

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity;->createDialog()V

    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 122
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "app"

    .line 123
    iget-object p0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method refreshAppLabel()V
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    if-nez v0, :cond_0

    .line 77
    new-instance v0, Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-direct {v0, p0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    .line 79
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mWifiPermissionChecker:Lcom/android/settingslib/wifi/WifiPermissionChecker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiPermissionChecker;->getLaunchedPackage()Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v0, 0x0

    .line 81
    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    return-void

    .line 84
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/Utils;->getApplicationLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity;->mApp:Ljava/lang/String;

    return-void
.end method
