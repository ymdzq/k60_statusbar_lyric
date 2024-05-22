.class public final Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic $context:Landroid/content/Context;

.field public final synthetic $we:Lcom/android/wifitrackerlib/WifiEntry;

.field public final synthetic this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;Lcom/android/wifitrackerlib/WifiEntry;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->$context:Landroid/content/Context;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 4
    iput-object p3, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->$we:Lcom/android/wifitrackerlib/WifiEntry;

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    move-object p2, p1

    .line 2
    check-cast p2, Lmiuix/appcompat/app/AlertDialog;

    .line 3
    invoke-virtual {p2}, Lmiuix/appcompat/app/AlertDialog;->isChecked()Z

    .line 5
    move-result p2

    .line 8
    if-eqz p2, :cond_0

    .line 9
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->$context:Landroid/content/Context;

    .line 11
    invoke-static {p2}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferencesName(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const/4 v1, 0x0

    .line 17
    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 18
    move-result-object p2

    .line 21
    invoke-interface {p2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 22
    move-result-object p2

    .line 25
    const-string v0, "dual_wifi_switching_not_remind"

    .line 26
    const/4 v1, 0x1

    .line 28
    invoke-interface {p2, v0, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 29
    move-result-object p2

    .line 32
    invoke-interface {p2}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 33
    :cond_0
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 36
    iget-object p2, p2, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->slaveWifiUtils:Lcom/miui/utils/SlaveWifiUtils;

    .line 38
    invoke-virtual {p2}, Lcom/miui/utils/SlaveWifiUtils;->checkIsVaild()Z

    .line 40
    move-result v0

    .line 43
    if-nez v0, :cond_1

    .line 44
    goto :goto_1

    .line 46
    :cond_1
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 47
    :try_start_0
    iget-object v1, p2, Lcom/miui/utils/SlaveWifiUtils;->method_disconnectSlaveWifi:Ljava/lang/reflect/Method;

    .line 49
    invoke-virtual {p2}, Lcom/miui/utils/SlaveWifiUtils;->getSlaveWifiManager()Ljava/lang/Object;

    .line 51
    move-result-object p2

    .line 54
    const/4 v2, 0x0

    .line 55
    invoke-virtual {v1, p2, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 56
    move-result-object p2

    .line 59
    check-cast p2, Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    move-object v0, p2

    .line 62
    goto :goto_0

    .line 63
    :catch_0
    move-exception p2

    .line 64
    const-string v1, "disconnectSlaveWifi Exception:"

    .line 65
    const-string v2, "SlaveWifiUtils"

    .line 67
    invoke-static {v1, p2, v2}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 69
    :goto_0
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 72
    :goto_1
    iget-object p2, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->this$0:Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;

    .line 75
    iget-object p2, p2, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper;->accessPointController:Lcom/android/systemui/statusbar/connectivity/AccessPointController;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/controlcenter/policy/SlaveWifiHelper$showAlertDialog$2;->$we:Lcom/android/wifitrackerlib/WifiEntry;

    .line 79
    check-cast p2, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;

    .line 81
    invoke-virtual {p2, p0}, Lcom/android/systemui/statusbar/connectivity/AccessPointControllerImpl;->connect(Lcom/android/wifitrackerlib/WifiEntry;)Z

    .line 83
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 86
    return-void
    .line 89
.end method
