.class public Lcom/android/settings/provider/MiuiSettingsDataProvider;
.super Landroid/content/ContentProvider;
.source "MiuiSettingsDataProvider.java"


# static fields
.field private static AUTHORITY:Ljava/lang/String; = "com.android.settings.provider.MiuiSettingsDataProvider"

.field private static RESTORE_DELAY_MINLLIS:I = 0xea60

.field private static final sMatcher:Landroid/content/UriMatcher;


# instance fields
.field private mCellularStateInited:Z

.field private mHandler:Landroid/os/Handler;

.field private mOriginCellularState:Z

.field private mOriginHotspotMaxNum:I

.field private mOriginNetworkPriorityMode:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmOriginHotspotMaxNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmOriginNetworkPriorityMode(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mresetCellularState(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->resetCellularState()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetHotSpotMaxStationNum(Lcom/android/settings/provider/MiuiSettingsDataProvider;I)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->setHotSpotMaxStationNum(I)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .line 60
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->sMatcher:Landroid/content/UriMatcher;

    .line 61
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "dual_zone_info"

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 62
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "zone_info"

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 63
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string v2, "hotspot_max_num"

    const/4 v3, 0x3

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 64
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "restore_hotspot_num"

    const/4 v3, 0x4

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 65
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "start_tethering"

    const/4 v3, 0x5

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 66
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "stop_tethering"

    const/4 v3, 0x6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->AUTHORITY:Ljava/lang/String;

    const-string/jumbo v2, "set_ap_config"

    const/4 v3, 0x7

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 29
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    const/4 v1, 0x0

    .line 56
    iput-boolean v1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginCellularState:Z

    .line 57
    iput-boolean v1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mCellularStateInited:Z

    .line 58
    iput v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    return-void
.end method

.method private disableCellularState()V
    .locals 3

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mCellularStateInited:Z

    if-nez v0, :cond_1

    .line 233
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 234
    invoke-virtual {v0}, Lcom/android/settingslib/net/DataUsageController;->getTelephonyManager()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isDataEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 235
    iput-boolean v2, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginCellularState:Z

    const/4 v1, 0x0

    .line 236
    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    .line 238
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mCellularStateInited:Z

    .line 239
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " 6100 try disable mobile data state , origin state = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginCellularState:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "MiuiSettingsDataProvider"

    invoke-static {v0, p0}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method private getHotSpotMaxStationNum()I
    .locals 1

    .line 253
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    .line 254
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 255
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p0

    .line 256
    invoke-virtual {p0}, Landroid/net/wifi/SoftApConfiguration;->getMaxNumberOfClients()I

    move-result p0

    return p0
.end method

.method public static getTrafficPriority(Landroid/content/Context;)I
    .locals 2

    .line 274
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_network_priority_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    return p0
.end method

.method private resetCellularState()V
    .locals 3

    .line 244
    iget-boolean v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mCellularStateInited:Z

    if-eqz v0, :cond_0

    .line 245
    new-instance v0, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 246
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " 6100 try reset mobile data state , origin state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginCellularState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "MiuiSettingsDataProvider"

    invoke-static {v2, v1}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 247
    iget-boolean v1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginCellularState:Z

    invoke-virtual {v0, v1}, Lcom/android/settingslib/net/DataUsageController;->setMobileDataEnabled(Z)V

    const/4 v0, 0x0

    .line 248
    iput-boolean v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mCellularStateInited:Z

    :cond_0
    return-void
.end method

.method private setHotSpotMaxStationNum(I)V
    .locals 2

    .line 260
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    .line 261
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    .line 262
    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>(Landroid/net/wifi/SoftApConfiguration;)V

    .line 264
    invoke-virtual {v1, p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 265
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method public static setTrafficPriority(Landroid/content/Context;I)V
    .locals 1

    .line 270
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v0, "user_network_priority_enabled"

    invoke-static {p0, v0, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    return-void
.end method

.method private setWifiApConfig(Landroid/content/ContentValues;)V
    .locals 3

    .line 217
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string/jumbo v0, "wifi"

    .line 218
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/wifi/WifiManager;

    const-string/jumbo v0, "support5g"

    .line 219
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 221
    new-instance v1, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v1}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    const-string/jumbo v2, "ssid"

    .line 222
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v1

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    move v0, v2

    .line 223
    :goto_0
    invoke-virtual {v1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v0

    const-string/jumbo v1, "pwd"

    .line 224
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    const/16 v0, 0xa

    .line 225
    invoke-virtual {p1, v0}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object p1

    .line 228
    invoke-virtual {p0, p1}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    return-void
.end method

.method private startTethering(Landroid/content/ContentValues;)V
    .locals 5

    .line 173
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 174
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "wifi"

    .line 175
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    const-string/jumbo v2, "support5g"

    .line 176
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    .line 178
    new-instance v3, Landroid/net/wifi/SoftApConfiguration$Builder;

    invoke-direct {v3}, Landroid/net/wifi/SoftApConfiguration$Builder;-><init>()V

    const-string/jumbo v4, "ssid"

    .line 179
    invoke-virtual {p1, v4}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setSsid(Ljava/lang/String;)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v3

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    const/4 v2, 0x2

    goto :goto_0

    :cond_0
    move v2, v4

    .line 180
    :goto_0
    invoke-virtual {v3, v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->setBand(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    const-string/jumbo v3, "pwd"

    .line 181
    invoke-virtual {p1, v3}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setPassphrase(Ljava/lang/String;I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 182
    invoke-virtual {v2, v4}, Landroid/net/wifi/SoftApConfiguration$Builder;->setMaxNumberOfClients(I)Landroid/net/wifi/SoftApConfiguration$Builder;

    move-result-object v2

    .line 183
    invoke-virtual {v2}, Landroid/net/wifi/SoftApConfiguration$Builder;->build()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v2

    .line 185
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->setSoftApConfiguration(Landroid/net/wifi/SoftApConfiguration;)Z

    const-string/jumbo v1, "type"

    .line 187
    invoke-virtual {p1, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const-string/jumbo v2, "showProvisioningUi"

    .line 188
    invoke-virtual {p1, v2}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    new-instance v2, Lcom/android/settings/provider/MiuiSettingsDataProvider$2;

    invoke-direct {v2, p0}, Lcom/android/settings/provider/MiuiSettingsDataProvider$2;-><init>(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V

    .line 186
    invoke-virtual {v0, v1, p1, v2}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;)V

    .line 203
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->getTrafficPriority(Landroid/content/Context;)I

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "MiuiSettingsDataProvider"

    const-string v0, " setTrafficPriority 0"

    .line 204
    invoke-static {p1, v0}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 205
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->setTrafficPriority(Landroid/content/Context;I)V

    .line 207
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->disableCellularState()V

    return-void
.end method

.method private stopTethering(Landroid/content/ContentValues;)V
    .locals 1

    .line 212
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/net/ConnectivityManager;

    const-string/jumbo v0, "type"

    .line 213
    invoke-virtual {p1, v0}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    return-void
.end method


# virtual methods
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 0

    .line 0
    const/4 p0, 0x0

    return-object p0
.end method

.method public onCreate()Z
    .locals 1

    .line 72
    new-instance v0, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;

    invoke-direct {v0, p0}, Lcom/android/settings/provider/MiuiSettingsDataProvider$1;-><init>(Lcom/android/settings/provider/MiuiSettingsDataProvider;)V

    iput-object v0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mHandler:Landroid/os/Handler;

    const/4 p0, 0x1

    return p0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 0

    .line 97
    sget-object p2, Lcom/android/settings/provider/MiuiSettingsDataProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p2, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p2, 0x1

    if-eq p1, p2, :cond_4

    const/4 p2, 0x2

    if-eq p1, p2, :cond_3

    const/4 p2, 0x3

    if-eq p1, p2, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 105
    :cond_0
    iget p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    const/4 p2, -0x1

    if-ne p1, p2, :cond_1

    .line 106
    invoke-direct {p0}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->getHotSpotMaxStationNum()I

    move-result p1

    iput p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    .line 108
    :cond_1
    new-instance p1, Landroid/database/MatrixCursor;

    const-string p3, "hotspot_max_num"

    filled-new-array {p3}, [Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 109
    iget p3, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginHotspotMaxNum:I

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 111
    iget p3, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    if-ne p3, p2, :cond_2

    .line 112
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->getTrafficPriority(Landroid/content/Context;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    .line 113
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "getTrafficPriority: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mOriginNetworkPriorityMode:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "MiuiSettingsDataProvider"

    invoke-static {p2, p0}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    move-object p0, p1

    goto :goto_0

    .line 99
    :cond_3
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datetime/DualClockHealper;->getZoneInfoCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    goto :goto_0

    .line 102
    :cond_4
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/datetime/DualClockHealper;->getDualTimeZoneCursor(Landroid/content/Context;)Landroid/database/Cursor;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 2

    .line 139
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p3

    const-string p4, "MiuiSettingsDataProvider"

    const/16 v0, 0x17d4

    if-eq p3, v0, :cond_0

    .line 140
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "update uid error: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p4, p0}, Lmiuix/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, -0x1

    return p0

    .line 143
    :cond_0
    sget-object p3, Lcom/android/settings/provider/MiuiSettingsDataProvider;->sMatcher:Landroid/content/UriMatcher;

    invoke-virtual {p3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result p1

    const/4 p3, 0x3

    const/4 v1, 0x4

    if-eq p1, p3, :cond_5

    if-eq p1, v1, :cond_4

    const/4 p3, 0x5

    if-eq p1, p3, :cond_3

    const/4 p3, 0x6

    if-eq p1, p3, :cond_2

    const/4 p3, 0x7

    if-eq p1, p3, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->setWifiApConfig(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 160
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->stopTethering(Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_3
    const-string/jumbo p1, "update: KEY_START_TETHERING"

    .line 156
    invoke-static {p4, p1}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p2}, Lcom/android/settings/provider/MiuiSettingsDataProvider;->startTethering(Landroid/content/ContentValues;)V

    goto :goto_0

    .line 152
    :cond_4
    iget-object p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 153
    iget-object p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 145
    :cond_5
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p1

    if-ne p1, v0, :cond_6

    const-string p1, "hotspot_max_num"

    invoke-virtual {p2, p1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    if-eqz p1, :cond_6

    const-string p1, " 6100 try set KEY_UPDATE_HOTSPOT_NUM"

    .line 146
    invoke-static {p4, p1}, Lmiuix/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 147
    iget-object p1, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 148
    iget-object p0, p0, Lcom/android/settings/provider/MiuiSettingsDataProvider;->mHandler:Landroid/os/Handler;

    sget p1, Lcom/android/settings/provider/MiuiSettingsDataProvider;->RESTORE_DELAY_MINLLIS:I

    int-to-long p1, p1

    invoke-virtual {p0, v1, p1, p2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_6
    :goto_0
    const/4 p0, 0x0

    return p0
.end method
