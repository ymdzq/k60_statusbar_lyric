.class public abstract Lcom/android/settings/overlay/FeatureFactory;
.super Ljava/lang/Object;
.source "FeatureFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FeatureFactory"

.field protected static sAppContext:Landroid/content/Context;

.field protected static sFactory:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/overlay/FeatureFactory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getAppContext()Landroid/content/Context;
    .locals 1

    .line 132
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    return-object v0
.end method

.method public static getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;
    .locals 2

    .line 99
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 100
    sget-object p0, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/overlay/FeatureFactory;

    return-object p0

    .line 102
    :cond_0
    sget-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    if-nez v0, :cond_1

    .line 103
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    sput-object v0, Lcom/android/settings/overlay/FeatureFactory;->sAppContext:Landroid/content/Context;

    .line 107
    :cond_1
    sget v0, Lcom/android/settings/R$string;->config_featureFactory:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 113
    :try_start_0
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object p0

    .line 114
    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/overlay/FeatureFactory;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/settings/overlay/FeatureFactory;->sFactory:Ljava/lang/ref/WeakReference;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/overlay/FeatureFactory;

    return-object p0

    :catch_0
    move-exception p0

    .line 116
    new-instance v0, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;

    invoke-direct {v0, p0}, Lcom/android/settings/overlay/FeatureFactory$FactoryNotFoundException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 109
    :cond_2
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string v0, "No feature factory configured"

    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public abstract getAccessibilityMetricsFeatureProvider()Lcom/android/settings/accessibility/AccessibilityMetricsFeatureProvider;
.end method

.method public abstract getAccessibilitySearchFeatureProvider()Lcom/android/settings/accessibility/AccessibilitySearchFeatureProvider;
.end method

.method public abstract getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;
.end method

.method public abstract getAdvancedVpnFeatureProvider()Lcom/android/settings/vpn2/AdvancedVpnFeatureProvider;
.end method

.method public abstract getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;
.end method

.method public abstract getAssistGestureFeatureProvider()Lcom/android/settings/gestures/AssistGestureFeatureProvider;
.end method

.method public abstract getAwareFeatureProvider()Lcom/android/settings/aware/AwareFeatureProvider;
.end method

.method public abstract getBatterySettingsFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatterySettingsFeatureProvider;
.end method

.method public abstract getBatteryStatusFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryStatusFeatureProvider;
.end method

.method public abstract getBiometricsRepositoryProvider()Lcom/android/settings/biometrics2/factory/BiometricsRepositoryProvider;
.end method

.method public abstract getBluetoothFeatureProvider()Lcom/android/settings/bluetooth/BluetoothFeatureProvider;
.end method

.method public abstract getContextualCardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/homepage/contextualcards/ContextualCardFeatureProvider;
.end method

.method public abstract getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;
.end method

.method public abstract getDockUpdaterFeatureProvider()Lcom/android/settings/overlay/DockUpdaterFeatureProvider;
.end method

.method public abstract getEnterprisePrivacyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/enterprise/EnterprisePrivacyFeatureProvider;
.end method

.method public abstract getFaceFeatureProvider()Lcom/android/settings/biometrics/face/FaceFeatureProvider;
.end method

.method public abstract getHardwareInfoFeatureProvider()Lcom/android/settings/deviceinfo/hardwareinfo/HardwareInfoFeatureProvider;
.end method

.method public abstract getLocaleFeatureProvider()Lcom/android/settings/localepicker/LocaleFeatureProvider;
.end method

.method public abstract getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
.end method

.method public abstract getPanelFeatureProvider()Lcom/android/settings/panel/PanelFeatureProvider;
.end method

.method public abstract getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;
.end method

.method public abstract getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;
.end method

.method public abstract getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;
.end method

.method public abstract getSecuritySettingsFeatureProvider()Lcom/android/settings/security/SecuritySettingsFeatureProvider;
.end method

.method public abstract getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;
.end method

.method public abstract getSuggestionFeatureProvider()Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;
.end method

.method public abstract getSupportFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SupportFeatureProvider;
.end method

.method public abstract getSurveyFeatureProvider(Landroid/content/Context;)Lcom/android/settings/overlay/SurveyFeatureProvider;
.end method

.method public abstract getUserFeatureProvider(Landroid/content/Context;)Lcom/android/settings/users/UserFeatureProvider;
.end method

.method public abstract getWifiFeatureProvider()Lcom/android/settings/wifi/factory/WifiFeatureProvider;
.end method

.method public abstract getWifiTrackerLibProvider()Lcom/android/settings/wifi/WifiTrackerLibProvider;
.end method
