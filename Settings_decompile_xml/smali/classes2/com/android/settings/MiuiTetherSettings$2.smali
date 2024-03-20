.class Lcom/android/settings/MiuiTetherSettings$2;
.super Landroid/content/BroadcastReceiver;
.source "MiuiTetherSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/MiuiTetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiTetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiTetherSettings;)V
    .locals 0

    .line 310
    iput-object p1, p0, Lcom/android/settings/MiuiTetherSettings$2;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 313
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "android.net.wifi.WIFI_SLAVE_STATE_CHANGED"

    .line 314
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const-string/jumbo p1, "wifi_state"

    const/16 v0, 0x12

    .line 315
    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const/16 p2, 0x10

    if-eq p1, p2, :cond_1

    const/16 p2, 0xe

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 321
    :cond_0
    iget-object p1, p0, Lcom/android/settings/MiuiTetherSettings$2;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p1}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmWifiApEnabler(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 322
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$2;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmWifiApEnabler(Lcom/android/settings/MiuiTetherSettings;)Lcom/android/settings/wifi/WifiApEnabler;

    move-result-object p0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiApEnabler;->updateWifiApSwitch()V

    goto :goto_1

    .line 319
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/android/settings/MiuiTetherSettings$2;->this$0:Lcom/android/settings/MiuiTetherSettings;

    invoke-static {p0}, Lcom/android/settings/MiuiTetherSettings;->-$$Nest$fgetmEnableWifiAp(Lcom/android/settings/MiuiTetherSettings;)Landroidx/preference/CheckBoxPreference;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_2
    :goto_1
    return-void
.end method
