.class public abstract Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractConnectivityPreferenceController;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final CONNECTIVITY_INTENTS:[Ljava/lang/String;

.field static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    const-string v0, "android.net.wifi.LINK_CONFIGURATION_CHANGED"

    .line 2
    const-string v1, "android.net.wifi.STATE_CHANGE"

    .line 4
    const-string v2, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 6
    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    sput-object v0, Lcom/android/settingslib/deviceinfo/AbstractIpAddressPreferenceController;->CONNECTIVITY_INTENTS:[Ljava/lang/String;

    .line 12
    return-void
    .line 14
.end method
