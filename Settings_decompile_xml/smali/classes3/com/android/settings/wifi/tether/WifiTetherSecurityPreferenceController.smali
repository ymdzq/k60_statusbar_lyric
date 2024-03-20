.class public Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSecurityPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$SoftApCallback;


# instance fields
.field mIsDualSapSupported:Z

.field mIsOweSapSupported:Z

.field mIsWpa3Supported:Z

.field private mSecurityMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSecurityValue:I

.field mShouldHidePreference:Z

.field private mWifiRes:Landroid/content/res/Resources;

.field private mWifiResContext:Landroid/content/Context;

.field private securityNames:[Ljava/lang/String;

.field private securityValues:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$-W7_ALskdkDrXBUlC-jdHfC0DXc(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$14(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$4-eH5jrAhSYBc5GtVRoxy7IpBGw(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$1(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$8BqiG208YH_W_5DhfC6bOrU2QZU(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$4(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BAoNAAN9CnM63mSHcn4fTZUGkHQ(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$12(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$BOJdMtSvxPci5wjcmCuLlRnxeJ0(Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$11(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$EtEBqMA7v0An2bNifSbSCeE79Kk(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$2(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$GE9aNq8xn3axIeiXsvQdURs5FgY(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$6(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$L8wTLwF10jivzj07g_5FO20RTbU(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$13(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$Lq8y_w6aj4Ud7-aIXW7JmEpPlFo(Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$7(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$P17Q6tnj0kj7xfRHigcolqVjStg(Ljava/lang/Integer;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$3(Ljava/lang/Integer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$U1n66rmKuHSox30HQDEHMReSr9k(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$5(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$geMH_WvyCCi8HVaQDLvrPmStrlk(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$10(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$lY7DBYNgKNLxJ73aPB-eo-Aaa4c(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$8(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$rrN2PoU5QiqKlJLRhFUmSTs_wos(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$0(I)[Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$x2VoMnhNzfnpYR1fFjxyv0cOvvY(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->lambda$updateDisplay$9(Ljava/lang/Integer;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 3

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 54
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    const/4 p2, 0x1

    .line 56
    iput-boolean p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsWpa3Supported:Z

    .line 58
    iput-boolean p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsOweSapSupported:Z

    const/4 p2, 0x0

    .line 59
    iput-boolean p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsDualSapSupported:Z

    .line 69
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/factory/WifiFeatureProvider;->getWifiHotspotRepository()Lcom/android/settings/wifi/repository/WifiHotspotRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/wifi/repository/WifiHotspotRepository;->isSpeedFeatureAvailable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mShouldHidePreference:Z

    .line 71
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "shouldHidePreference():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mShouldHidePreference:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefControllerMixin"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mShouldHidePreference:Z

    if-eqz v0, :cond_0

    return-void

    .line 75
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_tether_security:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityNames:[Ljava/lang/String;

    .line 77
    iget-object v0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$array;->wifi_tether_security_values:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityValues:[Ljava/lang/String;

    .line 79
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityNames:[Ljava/lang/String;

    array-length v0, v0

    if-ge p2, v0, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityValues:[Ljava/lang/String;

    aget-object v1, v1, p2

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityNames:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 82
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/content/Context;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object p1

    invoke-virtual {p2, p1, p0}, Landroid/net/wifi/WifiManager;->registerSoftApCallback(Ljava/util/concurrent/Executor;Landroid/net/wifi/WifiManager$SoftApCallback;)V

    .line 83
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->isBridgedApConcurrencySupported()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsDualSapSupported:Z

    .line 86
    :try_start_0
    iget-object p1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "com.android.wifi.resources"

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiResContext:Landroid/content/Context;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p1

    .line 89
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "exception in createPackageContext: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string/jumbo p2, "wifi_tether_security"

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    .line 90
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiRes:Landroid/content/res/Resources;

    .line 91
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiResContext:Landroid/content/Context;

    .line 93
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiResContext:Landroid/content/Context;

    if-eqz p1, :cond_2

    .line 94
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiRes:Landroid/content/res/Resources;

    :cond_2
    return-void
.end method

.method private getWifiResId(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1

    .line 98
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiRes:Landroid/content/res/Resources;

    if-nez p0, :cond_0

    .line 99
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "no WIFI resources, fail to get "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "."

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string/jumbo p1, "wifi_tether_security"

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, -0x1

    return p0

    :cond_0
    const-string v0, "com.android.wifi.resources"

    .line 102
    invoke-virtual {p0, p2, p1, v0}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p0

    return p0
.end method

.method private static synthetic lambda$updateDisplay$0(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 140
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$1(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 141
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$10(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 157
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$11(Ljava/lang/Integer;)Z
    .locals 1

    .line 159
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-le p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDisplay$12(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 160
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$13(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 161
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$14(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 162
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$2(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 142
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$3(Ljava/lang/Integer;)Z
    .locals 1

    .line 146
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x3

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static synthetic lambda$updateDisplay$4(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 147
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$5(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 148
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$6(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 149
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$7(Ljava/lang/Integer;)Z
    .locals 1

    .line 154
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    const/4 v0, 0x1

    if-le p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private static synthetic lambda$updateDisplay$8(I)[Ljava/lang/CharSequence;
    .locals 0

    .line 155
    new-array p0, p0, [Ljava/lang/CharSequence;

    return-object p0
.end method

.method private static synthetic lambda$updateDisplay$9(Ljava/lang/Integer;)Ljava/lang/String;
    .locals 0

    .line 156
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 115
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v0, "settings_tether_all_in_one"

    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    const-string/jumbo p0, "wifi_tether_security_2"

    goto :goto_0

    :cond_0
    const-string/jumbo p0, "wifi_tether_security"

    :goto_0
    return-object p0
.end method

.method public getSecurityType()I
    .locals 0

    .line 224
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return p0
.end method

.method public isAvailable()Z
    .locals 1

    .line 107
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mShouldHidePreference:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 110
    :cond_0
    invoke-super {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->isAvailable()Z

    move-result p0

    return p0
.end method

.method public isOweDualSapSupported()Z
    .locals 1

    .line 228
    iget-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsDualSapSupported:Z

    if-eqz v0, :cond_0

    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsOweSapSupported:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public onCapabilityChanged(Landroid/net/wifi/SoftApCapability;)V
    .locals 4

    const-wide/16 v0, 0x4

    .line 202
    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result v0

    const-string/jumbo v1, "wifi_tether_security"

    if-nez v0, :cond_0

    const-string v2, "WPA3 SAE is not supported on this device"

    .line 204
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    const-wide/16 v2, 0x800

    .line 208
    invoke-virtual {p1, v2, v3}, Landroid/net/wifi/SoftApCapability;->areFeaturesSupported(J)Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiRes:Landroid/content/res/Resources;

    if-eqz p1, :cond_1

    const-string v2, "bool"

    const-string v3, "config_vendor_wifi_softap_owe_supported"

    .line 209
    invoke-direct {p0, v2, v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getWifiResId(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_3

    const-string v2, "OWE not supported."

    .line 211
    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    :cond_3
    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsWpa3Supported:Z

    if-ne v1, v0, :cond_4

    iget-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsOweSapSupported:Z

    if-eq v1, p1, :cond_5

    .line 216
    :cond_4
    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsWpa3Supported:Z

    .line 217
    iput-boolean p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsOweSapSupported:Z

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 220
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1, p0}, Landroid/net/wifi/WifiManager;->unregisterSoftApCallback(Landroid/net/wifi/WifiManager$SoftApCallback;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 185
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 188
    check-cast p1, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 189
    invoke-virtual {p1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 190
    iget-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/CharSequence;

    invoke-virtual {p1, p2}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 193
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    if-eqz p1, :cond_1

    .line 194
    invoke-interface {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated(Lcom/android/settingslib/core/AbstractPreferenceController;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public updateDisplay()V
    .locals 6

    .line 126
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mPreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_9

    instance-of v1, v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    if-nez v1, :cond_0

    goto/16 :goto_4

    .line 132
    :cond_0
    check-cast v0, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;

    .line 133
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v1

    const/4 v2, 0x0

    .line 136
    :goto_0
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityNames:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 137
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    iget-object v4, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityValues:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->securityNames:[Ljava/lang/String;

    aget-object v5, v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 140
    :cond_1
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 141
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda6;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda6;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda7;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda7;-><init>()V

    .line 142
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 141
    invoke-virtual {v0, v2}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 144
    invoke-virtual {v1}, Landroid/net/wifi/SoftApConfiguration;->getBand()I

    move-result v1

    const/4 v2, 0x4

    and-int/2addr v1, v2

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    .line 145
    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda8;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 147
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda9;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 148
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda10;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v3, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda11;-><init>()V

    .line 149
    invoke-interface {v1, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/CharSequence;

    .line 148
    invoke-virtual {v0, v1}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    const/4 v1, 0x3

    goto :goto_1

    :cond_2
    const/4 v1, 0x1

    .line 153
    :goto_1
    iget-boolean v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsWpa3Supported:Z

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda12;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda12;-><init>()V

    .line 154
    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 155
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda13;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda13;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 156
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda14;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda14;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda1;-><init>()V

    .line 157
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 156
    invoke-virtual {v0, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 158
    :cond_3
    iget-boolean v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsDualSapSupported:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mIsOweSapSupported:Z

    if-nez v3, :cond_5

    :cond_4
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda2;-><init>()V

    .line 159
    invoke-interface {v3, v4}, Ljava/util/Set;->removeIf(Ljava/util/function/Predicate;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 160
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda3;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v3}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 161
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda4;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda4;-><init>()V

    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda5;

    invoke-direct {v4}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController$$ExternalSyntheticLambda5;-><init>()V

    .line 162
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/CharSequence;

    .line 161
    invoke-virtual {v0, v3}, Lmiuix/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 165
    :cond_5
    :goto_2
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getSoftApConfiguration()Landroid/net/wifi/SoftApConfiguration;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/SoftApConfiguration;->getSecurityType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_6

    goto :goto_3

    :cond_6
    move v2, v3

    .line 172
    :goto_3
    iget-object v3, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_7

    move v1, v2

    .line 173
    :cond_7
    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 176
    invoke-virtual {v0}, Lcom/android/settingslib/miuisettings/preference/miuix/DropDownPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_8

    .line 177
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityMap:Ljava/util/Map;

    iget v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 180
    :cond_8
    iget p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Lmiuix/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    :cond_9
    :goto_4
    return-void
.end method
