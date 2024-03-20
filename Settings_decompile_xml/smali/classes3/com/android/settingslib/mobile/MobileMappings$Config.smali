.class public Lcom/android/settingslib/mobile/MobileMappings$Config;
.super Ljava/lang/Object;
.source "MobileMappings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/mobile/MobileMappings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Config"
.end annotation


# instance fields
.field public alwaysShowCdmaRssi:Z

.field public alwaysShowDataRatIcon:Z

.field public alwaysShowNetworkTypeIcon:Z

.field public enableDdsRatIconEnhancement:Z

.field public enableRatIconEnhancement:Z

.field public hideLtePlus:Z

.field public hideNoInternetState:Z

.field public hspaDataDistinguishable:Z

.field public show4gFor3g:Z

.field public show4gForLte:Z

.field public show4glteForLte:Z

.field public showAtLeast3G:Z

.field public showRsrpSignalLevelforLTE:Z

.field public showVolteIcon:Z

.field public showVowifiIcon:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 213
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    .line 214
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    .line 215
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    .line 216
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    .line 217
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    .line 218
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    .line 220
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    .line 222
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showRsrpSignalLevelforLTE:Z

    .line 223
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideNoInternetState:Z

    .line 224
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVolteIcon:Z

    .line 225
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    .line 226
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->enableRatIconEnhancement:Z

    .line 227
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVowifiIcon:Z

    .line 228
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->enableDdsRatIconEnhancement:Z

    return-void
.end method

.method public static readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 3

    .line 234
    new-instance v0, Lcom/android/settingslib/mobile/MobileMappings$Config;

    invoke-direct {v0}, Lcom/android/settingslib/mobile/MobileMappings$Config;-><init>()V

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 237
    sget v2, Lcom/android/settingslib/R$bool;->config_showMin3G:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    const v2, 0x111002b    # @android:bool/config_alwaysUseCdmaRssi

    .line 239
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    .line 240
    sget v2, Lcom/android/settingslib/R$bool;->config_hspa_data_distinguishable:I

    .line 241
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hspaDataDistinguishable:Z

    const-string v2, "carrier_config"

    .line 244
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 246
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 247
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result p0

    .line 248
    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p0

    if-eqz p0, :cond_0

    const-string v2, "always_show_data_rat_icon_bool"

    .line 250
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    const-string/jumbo v2, "show_4g_for_lte_data_icon_bool"

    .line 252
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    const-string/jumbo v2, "show_4glte_for_lte_data_icon_bool"

    .line 254
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    const-string/jumbo v2, "show_4g_for_3g_data_icon_bool"

    .line 256
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    const-string v2, "hide_lte_plus_data_icon_bool"

    .line 258
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    .line 262
    :cond_0
    sget p0, Lcom/android/settingslib/R$bool;->config_alwaysShowTypeIcon:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    .line 263
    sget p0, Lcom/android/settingslib/R$bool;->config_showRsrpSignalLevelforLTE:I

    .line 264
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showRsrpSignalLevelforLTE:Z

    .line 265
    sget p0, Lcom/android/settingslib/R$bool;->config_hideNoInternetState:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideNoInternetState:Z

    .line 266
    sget p0, Lcom/android/settingslib/R$bool;->config_display_volte:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVolteIcon:Z

    .line 267
    sget p0, Lcom/android/settingslib/R$bool;->config_display_vowifi:I

    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVowifiIcon:Z

    .line 268
    iget-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    const/4 v1, 0x0

    if-eqz p0, :cond_1

    .line 269
    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    :cond_1
    const-string p0, "persist.sysui.rat_icon_enhancement"

    .line 273
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->enableRatIconEnhancement:Z

    const-string p0, "persist.sysui.dds_rat_icon_enhancement"

    .line 275
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->enableDdsRatIconEnhancement:Z

    .line 276
    iget-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVowifiIcon:Z

    const-string v2, "persist.sysui.enable_vowifi_icon"

    .line 277
    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    or-int/2addr p0, v1

    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showVowifiIcon:Z

    return-object v0
.end method
