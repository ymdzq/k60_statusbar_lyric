.class public final Lcom/android/settingslib/mobile/MobileMappings$Config;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public alwaysShowCdmaRssi:Z

.field public alwaysShowDataRatIcon:Z

.field public alwaysShowNetworkTypeIcon:Z

.field public hideLtePlus:Z

.field public hspaDataDistinguishable:Z

.field public show4gFor3g:Z

.field public show4gForLte:Z

.field public show4glteForLte:Z

.field public showAtLeast3G:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    .line 6
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    .line 8
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    .line 10
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    .line 12
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    .line 14
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    .line 16
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    .line 18
    iput-boolean v0, p0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    .line 20
    return-void
    .line 22
.end method

.method public static readConfig(Landroid/content/Context;)Lcom/android/settingslib/mobile/MobileMappings$Config;
    .locals 3

    .line 1
    new-instance v0, Lcom/android/settingslib/mobile/MobileMappings$Config;

    .line 2
    invoke-direct {v0}, Lcom/android/settingslib/mobile/MobileMappings$Config;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 7
    move-result-object v1

    .line 10
    const v2, 0x7f050055    # @bool/config_showMin3G 'false'

    .line 11
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 14
    move-result v2

    .line 17
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->showAtLeast3G:Z

    .line 18
    const v2, 0x111002b    # @android:bool/config_alwaysUseCdmaRssi

    .line 20
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 23
    move-result v2

    .line 26
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowCdmaRssi:Z

    .line 27
    const v2, 0x7f050035    # @bool/config_hspa_data_distinguishable 'true'

    .line 29
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 32
    move-result v2

    .line 35
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hspaDataDistinguishable:Z

    .line 36
    const-string v2, "carrier_config"

    .line 38
    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    move-result-object v2

    .line 43
    check-cast v2, Landroid/telephony/CarrierConfigManager;

    .line 44
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 46
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    .line 49
    move-result p0

    .line 52
    invoke-virtual {v2, p0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    .line 53
    move-result-object p0

    .line 56
    if-eqz p0, :cond_0

    .line 57
    const-string v2, "always_show_data_rat_icon_bool"

    .line 59
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 61
    move-result v2

    .line 64
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowDataRatIcon:Z

    .line 65
    const-string/jumbo v2, "show_4g_for_lte_data_icon_bool"

    .line 67
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 70
    move-result v2

    .line 73
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gForLte:Z

    .line 74
    const-string/jumbo v2, "show_4glte_for_lte_data_icon_bool"

    .line 76
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 79
    move-result v2

    .line 82
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4glteForLte:Z

    .line 83
    const-string/jumbo v2, "show_4g_for_3g_data_icon_bool"

    .line 85
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 88
    move-result v2

    .line 91
    iput-boolean v2, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->show4gFor3g:Z

    .line 92
    const-string v2, "hide_lte_plus_data_icon_bool"

    .line 94
    invoke-virtual {p0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    .line 96
    move-result p0

    .line 99
    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    .line 100
    :cond_0
    const p0, 0x7f050012    # @bool/config_alwaysShowTypeIcon 'false'

    .line 102
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 105
    move-result p0

    .line 108
    iput-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    .line 109
    const p0, 0x7f05005b    # @bool/config_showRsrpSignalLevelforLTE 'false'

    .line 111
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 114
    const p0, 0x7f050034    # @bool/config_hideNoInternetState 'false'

    .line 117
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 120
    const p0, 0x7f05001b    # @bool/config_display_volte 'false'

    .line 123
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 126
    const p0, 0x7f05001c    # @bool/config_display_vowifi 'false'

    .line 129
    invoke-virtual {v1, p0}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 132
    iget-boolean p0, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->alwaysShowNetworkTypeIcon:Z

    .line 135
    const/4 v1, 0x0

    .line 137
    if-eqz p0, :cond_1

    .line 138
    iput-boolean v1, v0, Lcom/android/settingslib/mobile/MobileMappings$Config;->hideLtePlus:Z

    .line 140
    :cond_1
    const-string p0, "persist.sysui.rat_icon_enhancement"

    .line 142
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 144
    const-string p0, "persist.sysui.dds_rat_icon_enhancement"

    .line 147
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 149
    const-string p0, "persist.sysui.enable_vowifi_icon"

    .line 152
    invoke-static {p0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 154
    return-object v0
    .line 157
.end method
