.class Lcom/android/settings/search/AboutDeviceUpdateHelper;
.super Lcom/android/settings/search/BaseSearchUpdateHelper;
.source "AboutDeviceUpdateHelper.java"


# static fields
.field private static final ACTION_COPYRIGHT:Ljava/lang/String; = "android.settings.COPYRIGHT"

.field private static final ACTION_LICENSE:Ljava/lang/String; = "android.settings.LICENSE"

.field private static final ACTION_TERMS:Ljava/lang/String; = "android.settings.TERMS"

.field private static final APPROVE_RESOURCE:Ljava/lang/String; = "approve_title"

.field private static final BASEBAND_VERSION_RESOURCE:Ljava/lang/String; = "baseband_version"

.field private static final COPYRIGHT_RESOURCE:Ljava/lang/String; = "copyright_title"

.field private static final HARDWARE_VERSION_RESOURCE:Ljava/lang/String; = "hardware_version"

.field private static final INSTRUCTION_RESOURCE:Ljava/lang/String; = "instruction_title"

.field private static final LICENSE_RESOURCE:Ljava/lang/String; = "license_title"

.field private static final PRE_INSTALLED_APPLICATION_RESOURCE:Ljava/lang/String; = "pre_installed_application"

.field private static final SAFETY_LEGAL_RESOURCE:Ljava/lang/String; = "settings_safetylegal_title"

.field private static final STATUS_BT_ADDRESS_RESOURCE:Ljava/lang/String; = "status_bt_address"

.field private static final STATUS_SERIALNO_RESOURCE:Ljava/lang/String; = "status_serialno"

.field private static final STATUS_SERIAL_NUMBER_RESOURCE:Ljava/lang/String; = "status_serial_number"

.field private static final STATUS_WIMAX_MAC_ADDRESS_RESOURCE:Ljava/lang/String; = "status_wimax_mac_address"

.field private static final TERMS_RESOURCE:Ljava/lang/String; = "terms_title"

.field private static final TYPE_APPROVAL_RESOURCE:Ljava/lang/String; = "wifi_type_approval_title"


# direct methods
.method constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchUpdateHelper;-><init>()V

    return-void
.end method

.method private static hideByResourceIfNoActivity(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ")V"
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p3

    .line 94
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 96
    invoke-interface {p3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 97
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_0

    return-void

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    invoke-static {p0, p1, p2}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    return-void
.end method

.method static update(Landroid/content/Context;Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/ContentProviderOperation;",
            ">;)V"
        }
    .end annotation

    const-string v0, "connectivity"

    .line 45
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 47
    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "baseband_version"

    .line 48
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_0
    const-string/jumbo v1, "ro.miui.cust_hardware"

    const-string v2, ""

    .line 51
    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hardware_version"

    .line 52
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 55
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->wifi_type_approval:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "wifi_type_approval_title"

    .line 56
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_2
    const-string/jumbo v1, "ro.url.safetylegal"

    .line 59
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_3

    const-string/jumbo v1, "settings_safetylegal_title"

    .line 60
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 64
    :cond_3
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->enableShowCredentials()Z

    move-result v1

    if-nez v1, :cond_4

    const-string v1, "approve_title"

    .line 65
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 68
    :cond_4
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.COPYRIGHT"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "copyright_title"

    invoke-static {p0, p1, v3, v1}, Lcom/android/settings/search/AboutDeviceUpdateHelper;->hideByResourceIfNoActivity(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;)V

    .line 69
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.LICENSE"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "license_title"

    invoke-static {p0, p1, v3, v1}, Lcom/android/settings/search/AboutDeviceUpdateHelper;->hideByResourceIfNoActivity(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;)V

    .line 70
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.settings.TERMS"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "terms_title"

    invoke-static {p0, p1, v3, v1}, Lcom/android/settings/search/AboutDeviceUpdateHelper;->hideByResourceIfNoActivity(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;Landroid/content/Intent;)V

    .line 72
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    if-nez v1, :cond_5

    const-string/jumbo v1, "status_bt_address"

    .line 73
    invoke-static {p0, p1, v1}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_5
    const/4 v1, 0x6

    .line 76
    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    if-nez v0, :cond_6

    const-string/jumbo v0, "status_wimax_mac_address"

    .line 77
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 79
    :cond_6
    sget-object v0, Lmiui/os/Build;->SERIAL:Ljava/lang/String;

    if-eqz v0, :cond_7

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    :cond_7
    const-string/jumbo v0, "status_serial_number"

    .line 80
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_8
    const-string/jumbo v0, "permanent.hw.custom.serialno"

    .line 82
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_9

    const-string/jumbo v0, "status_serialno"

    .line 83
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    .line 86
    :cond_9
    invoke-static {}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->supportDisplayPreInstalledApplication()Z

    move-result v0

    if-nez v0, :cond_a

    const-string/jumbo v0, "pre_installed_application"

    .line 87
    invoke-static {p0, p1, v0}, Lcom/android/settings/search/BaseSearchUpdateHelper;->hideByResource(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)V

    :cond_a
    return-void
.end method
