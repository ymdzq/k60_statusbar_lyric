.class public Lcom/android/settings/development/CellularNetworkFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "CellularNetworkFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method private buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 42
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 43
    new-instance v0, Lcom/android/settings/development/FiveGNrcaConfigController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/FiveGNrcaConfigController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 44
    new-instance v0, Lcom/android/settings/development/FiveGViceSAPreferenceController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/FiveGViceSAPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 45
    new-instance v0, Lcom/android/settings/development/PreferredNetworkTypeController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/PreferredNetworkTypeController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    new-instance v0, Lcom/android/settings/development/CrbtSwitchPreferenceController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/CrbtSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    new-instance v0, Lcom/android/settings/development/DsdaSwitchPreferenceController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/DsdaSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v0, Lcom/android/settings/development/FiveGVonrConfigController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/FiveGVonrConfigController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    new-instance v0, Lcom/android/settings/development/WiFiCallSwitchViewController;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/development/WiFiCallSwitchViewController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public static isChildControlDisplayed(Landroid/content/Context;)Z
    .locals 1

    .line 97
    invoke-static {p0}, Lcom/android/settings/development/FiveGNrcaConfigController;->isSearchable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/development/FiveGViceSAPreferenceController;->isViceSaDevelopmentAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 98
    invoke-static {p0}, Lcom/android/settings/development/FiveGVonrConfigController;->isSearchable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcom/android/settings/development/CrbtSwitchPreferenceController;->shouldDisplayCrbtButton()Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    invoke-static {}, Lcom/android/settings/development/PreferredNetworkTypeController;->isShowPreferredNetworkTypeInDevelopmentAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 100
    invoke-static {}, Lcom/android/settings/development/DsdaSwitchPreferenceController;->isDSDADevelopmentAvailable()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {p0}, Lcom/android/settings/development/WiFiCallSwitchViewController;->isWfcAvailable(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSearchable(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 4

    .line 54
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v0, "enable_crbt_pref_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_1
    const-string v0, "dsda_switch_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_2
    const-string/jumbo v0, "wificall_switch_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_3
    const-string v0, "enable_preferred_network_type_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_4
    const-string v0, "fiveg_nrca_switch_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_5
    const-string v0, "fiveg_vonr_switch_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto :goto_0

    :cond_5
    move v3, v1

    goto :goto_0

    :sswitch_6
    const-string v0, "fiveg_sa_vice_switch_title"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v2

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 71
    :pswitch_0
    invoke-static {}, Lcom/android/settings/development/CrbtSwitchPreferenceController;->shouldDisplayCrbtButton()Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 81
    :pswitch_1
    invoke-static {}, Lcom/android/settings/development/DsdaSwitchPreferenceController;->isDSDADevelopmentAvailable()Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 86
    :pswitch_2
    invoke-static {p1}, Lcom/android/settings/development/WiFiCallSwitchViewController;->isWfcAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 76
    :pswitch_3
    invoke-static {}, Lcom/android/settings/development/PreferredNetworkTypeController;->isShowPreferredNetworkTypeInDevelopmentAvailable()Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 56
    :pswitch_4
    invoke-static {p1}, Lcom/android/settings/development/FiveGNrcaConfigController;->isSearchable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 66
    :pswitch_5
    invoke-static {p1}, Lcom/android/settings/development/FiveGVonrConfigController;->isSearchable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    .line 61
    :pswitch_6
    invoke-static {}, Lcom/android/settings/development/FiveGViceSAPreferenceController;->isViceSaDevelopmentAvailable()Z

    move-result p0

    if-nez p0, :cond_7

    return v2

    :cond_7
    :goto_1
    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        -0x72b42270 -> :sswitch_6
        -0x5197017b -> :sswitch_5
        -0xe584c40 -> :sswitch_4
        0x21050d7e -> :sswitch_3
        0x2b75fb59 -> :sswitch_2
        0x66cab9a0 -> :sswitch_1
        0x70ba787e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 38
    invoke-virtual {p0}, Lcom/android/settingslib/core/lifecycle/ObservablePreferenceFragment;->getSettingsLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/development/CellularNetworkFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "CellularNetworkFragment"

    return-object p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 28
    sget p0, Lcom/android/settings/R$xml;->cellular_network_setting:I

    return p0
.end method
