.class public Lcom/android/settings/wifi/linkturbo/WifiLinkTurboController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WifiLinkTurboController.java"


# instance fields
.field private final LINK_TURBO_ENABLE_PREF:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 23
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    const-string p1, "linkturbo_is_enable"

    .line 19
    iput-object p1, p0, Lcom/android/settings/wifi/linkturbo/WifiLinkTurboController;->LINK_TURBO_ENABLE_PREF:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "link_turbo"

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 28
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/wifi/MiuiWifiAssistFeatureSupport;->isLinkTurbAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method
