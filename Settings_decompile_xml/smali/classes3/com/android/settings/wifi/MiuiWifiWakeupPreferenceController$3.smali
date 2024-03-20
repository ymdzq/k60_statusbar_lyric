.class Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;
.super Ljava/lang/Object;
.source "MiuiWifiWakeupPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->showScanningDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)V
    .locals 0

    .line 198
    iput-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 200
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroid/content/Context;

    move-result-object p1

    const-class p2, Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Landroid/net/wifi/WifiManager;->setScanAlwaysAvailable(Z)V

    .line 201
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroid/content/Context;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-static {v0}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->-$$Nest$fgetmContext(Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;)Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_settings_scanning_required_enabled:I

    .line 203
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    .line 201
    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 205
    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    invoke-virtual {p1, p2}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->setWifiWakeupEnabled(Z)V

    .line 206
    iget-object p0, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController$3;->this$0:Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;

    iget-object p1, p0, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->mPreference:Landroidx/preference/SwitchPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/MiuiWifiWakeupPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method
