.class public Lcom/android/settings/wfd/WifiDisplayStatusActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "WifiDisplayStatusActivity.java"


# instance fields
.field private mDialog:Lmiuix/appcompat/app/AlertDialog;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private final mStatusReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static bridge synthetic -$$Nest$fgetmDialog(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Lmiuix/appcompat/app/AlertDialog;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmDisplayManager(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 18
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    .line 85
    new-instance v0, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity$4;-><init>(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method private showWifiDisplayStatusDialog()V
    .locals 3

    .line 54
    new-instance v0, Lmiuix/appcompat/app/AlertDialog$Builder;

    sget v1, Lcom/android/settings/R$style;->AlertDialog_Theme_DayNight:I

    invoke-direct {v0, p0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 55
    sget v1, Lcom/android/settings/R$string;->wfd_status_dialog_title:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 56
    sget v1, Lcom/android/settings/R$string;->wfd_status_dialog_message:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 57
    new-instance v1, Lcom/android/settings/wfd/WifiDisplayStatusActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity$1;-><init>(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 64
    sget v1, Lcom/android/settings/R$string;->wfd_status_dialog_disconnect:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wfd/WifiDisplayStatusActivity$2;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity$2;-><init>(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 73
    sget v1, Lcom/android/settings/R$string;->dlg_cancel:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/android/settings/wfd/WifiDisplayStatusActivity$3;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity$3;-><init>(Lcom/android/settings/wfd/WifiDisplayStatusActivity;)V

    invoke-virtual {v0, v1, v2}, Lmiuix/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lmiuix/appcompat/app/AlertDialog$Builder;

    .line 81
    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog$Builder;->create()Lmiuix/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    .line 82
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "WifiDisplayStatus"

    const-string/jumbo v1, "onCreate"

    .line 27
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string p1, "display"

    .line 29
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-void
.end method

.method protected onStart()V
    .locals 3

    const-string v0, "WifiDisplayStatus"

    const-string/jumbo v1, "onStart"

    .line 34
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    .line 36
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    .line 37
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 38
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v0, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    .line 39
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->showWifiDisplayStatusDialog()V

    return-void
.end method

.method protected onStop()V
    .locals 2

    const-string v0, "WifiDisplayStatus"

    const-string/jumbo v1, "onStop"

    .line 44
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onStop()V

    .line 46
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mStatusReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 47
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    invoke-virtual {v0}, Lmiuix/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const/4 v0, 0x0

    .line 50
    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplayStatusActivity;->mDialog:Lmiuix/appcompat/app/AlertDialog;

    return-void
.end method
