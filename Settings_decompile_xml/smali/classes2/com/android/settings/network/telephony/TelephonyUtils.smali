.class public final Lcom/android/settings/network/telephony/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field public static DBG:Z

.field private static mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

.field private static mIsServiceBound:Z

.field private static mIsSmartDdsSwitchFeatureAvailable:Z

.field private static mIsSubsidyFeatureEnabled:Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Optional<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static mServiceCallback:Lcom/qti/extphone/ServiceCallback;


# direct methods
.method static bridge synthetic -$$Nest$sfgetmExtTelephonyManager()Lcom/qti/extphone/ExtTelephonyManager;
    .locals 1

    .line 0
    sget-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    return-object v0
.end method

.method static bridge synthetic -$$Nest$sfgetmIsSmartDdsSwitchFeatureAvailable()Z
    .locals 1

    .line 0
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return v0
.end method

.method static bridge synthetic -$$Nest$sfputmIsServiceBound(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$sfputmIsSmartDdsSwitchFeatureAvailable(Z)V
    .locals 0

    .line 0
    sput-boolean p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    const-string v0, "TelephonyUtils"

    const/4 v1, 0x3

    .line 56
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->DBG:Z

    const/4 v0, 0x1

    .line 73
    sput-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    .line 74
    invoke-static {}, Ljava/util/Optional;->empty()Ljava/util/Optional;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSubsidyFeatureEnabled:Ljava/util/Optional;

    .line 218
    new-instance v0, Lcom/android/settings/network/telephony/TelephonyUtils$1;

    invoke-direct {v0}, Lcom/android/settings/network/telephony/TelephonyUtils$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    return-void
.end method

.method public static abortIncrementalScan(Landroid/content/Context;I)V
    .locals 0

    .line 104
    sget-boolean p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    if-eqz p0, :cond_0

    .line 105
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->abortIncrementalScan(I)Z

    goto :goto_0

    :cond_0
    const-string p0, "TelephonyUtils"

    const-string p1, "abortIncrementalScan: ExtTelephony Service not connected!"

    .line 107
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static allowUsertoSetDDS(Landroid/content/Context;)Z
    .locals 2

    .line 174
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "allow_user_select_dds"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    move v1, v0

    :cond_0
    return v1
.end method

.method public static connectExtTelephonyService(Landroid/content/Context;)V
    .locals 2

    .line 207
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    if-nez v0, :cond_0

    const-string v0, "TelephonyUtils"

    const-string v1, "Connect to ExtTelephonyService..."

    .line 208
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-static {p0}, Lcom/qti/extphone/ExtTelephonyManager;->getInstance(Landroid/content/Context;)Lcom/qti/extphone/ExtTelephonyManager;

    move-result-object p0

    sput-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    .line 210
    sget-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mServiceCallback:Lcom/qti/extphone/ServiceCallback;

    invoke-virtual {p0, v0}, Lcom/qti/extphone/ExtTelephonyManager;->connectService(Lcom/qti/extphone/ServiceCallback;)Z

    :cond_0
    return-void
.end method

.method public static getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;
    .locals 2

    .line 194
    invoke-static {}, Lcom/android/settings/network/telephony/TelephonyUtils;->isServiceConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    sget-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {v0}, Lcom/qti/extphone/ExtTelephonyManager;->getImeiInfo()[Lcom/qti/extphone/QtiImeiInfo;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "TelephonyUtils"

    const-string v1, "getImeiInfo: ExtTelephony Service not connected!"

    .line 197
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static isAdvancedPlmnScanSupported(Landroid/content/Context;)Z
    .locals 3

    .line 81
    sget-boolean p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    const-string v0, "TelephonyUtils"

    const/4 v1, 0x0

    if-eqz p0, :cond_0

    .line 83
    :try_start_0
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    const-string/jumbo v2, "persist.vendor.radio.enableadvancedscan"

    invoke-virtual {p0, v2, v1}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v2, "isAdvancedPlmnScanSupported: , Exception: "

    .line 85
    invoke-static {v0, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    :cond_0
    const-string p0, "isAdvancedPlmnScanSupported: ExtTelephony Service not connected!"

    .line 88
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return v1
.end method

.method public static isServiceConnected()Z
    .locals 1

    .line 215
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    return v0
.end method

.method public static isSmartDdsSwitchFeatureAvailable()Z
    .locals 1

    .line 203
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSmartDdsSwitchFeatureAvailable:Z

    return v0
.end method

.method public static isSubsidyFeatureEnabled(Landroid/content/Context;)Z
    .locals 3

    .line 156
    sget-object v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSubsidyFeatureEnabled:Ljava/util/Optional;

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 157
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    const-string v1, "TelephonyUtils"

    if-nez v0, :cond_0

    const-string v0, "isSubsidyFeatureEnabled: ExtTelephony Service not connected!"

    .line 158
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->connectExtTelephonyService(Landroid/content/Context;)V

    .line 163
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    const-string/jumbo v0, "persist.vendor.radio.subsidydevice"

    const/4 v2, 0x0

    .line 164
    invoke-virtual {p0, v0, v2}, Lcom/qti/extphone/ExtTelephonyManager;->getPropertyValueBool(Ljava/lang/String;Z)Z

    move-result p0

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->of(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    sput-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSubsidyFeatureEnabled:Ljava/util/Optional;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "isSubsidyFeatureEnabled: , Exception: "

    .line 167
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 170
    :cond_1
    :goto_0
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsSubsidyFeatureEnabled:Ljava/util/Optional;

    invoke-virtual {p0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    return p0
.end method

.method public static isSubsidySimCard(Landroid/content/Context;I)Z
    .locals 2

    .line 179
    sget-boolean v0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    const-string v1, "TelephonyUtils"

    if-nez v0, :cond_0

    const-string v0, "isSubsidySimCard: ExtTelephony Service not connected!"

    .line 180
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    invoke-static {p0}, Lcom/android/settings/network/telephony/TelephonyUtils;->connectExtTelephonyService(Landroid/content/Context;)V

    .line 185
    :cond_0
    :try_start_0
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->isPrimaryCarrierSlotId(I)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    const-string p1, "isSubsidySimCard: , Exception: "

    .line 187
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static performIncrementalScan(Landroid/content/Context;I)Z
    .locals 0

    .line 95
    sget-boolean p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mIsServiceBound:Z

    if-eqz p0, :cond_0

    .line 96
    sget-object p0, Lcom/android/settings/network/telephony/TelephonyUtils;->mExtTelephonyManager:Lcom/qti/extphone/ExtTelephonyManager;

    invoke-virtual {p0, p1}, Lcom/qti/extphone/ExtTelephonyManager;->performIncrementalScan(I)Z

    move-result p0

    goto :goto_0

    :cond_0
    const-string p0, "TelephonyUtils"

    const-string/jumbo p1, "performIncrementalScan: ExtTelephony Service not connected!"

    .line 98
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    :goto_0
    return p0
.end method
