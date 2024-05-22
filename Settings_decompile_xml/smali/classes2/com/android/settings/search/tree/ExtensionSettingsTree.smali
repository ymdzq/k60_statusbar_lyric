.class public Lcom/android/settings/search/tree/ExtensionSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "ExtensionSettingsTree.java"


# static fields
.field private static final BACK_UP_SERVICE:Ljava/lang/String; = "ex_func_cloud_service"

.field private static final BUG_REPORT_SETTINGS:Ljava/lang/String; = "bug_report_settings"

.field private static final CARD_HOLDER_HEADER_TITLE:Ljava/lang/String; = "card_holder_header_title"

.field private static final DEVICE_ACTIVATION_INFO:Ljava/lang/String; = "device_activation_info"

.field private static final ENTERPRISE_MODE:Ljava/lang/String; = "enterprise_mode"

.field private static final EX_VOICE_ASSIST:Ljava/lang/String; = "ex_voice_assist"

.field private static final GAME_BOOSTER_TITLE:Ljava/lang/String; = "game_booster_title"

.field private static final KID_SPACE_SETTINGS:Ljava/lang/String; = "kid_space_settings"

.field private static final MI_CLOUD_SERVICE:Ljava/lang/String; = "micloud_service_title"

.field private static final PRIVACY_SETTINGS_NEW:Ljava/lang/String; = "privacy_settings_new"

.field private static final RESOURCE_FEEDBACK_SETTINGS:Ljava/lang/String; = "feedback_settings"

.field private static final SAFE_INSTALL_MODE_SETTINGS:Ljava/lang/String; = "safe_install_mode_settings"

.field private static final UCAR_SCREEN_PROJECTION_TITLE:Ljava/lang/String; = "ucar_screen_projection_title"

.field private static final VIP_SERVICE_SETTINGS:Ljava/lang/String; = "vip_service_settings"

.field private static final XIAOMI_MONEY_SERVICE:Ljava/lang/String; = "xiaomi_money_service"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 36
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 5

    const-string/jumbo v0, "resource"

    .line 46
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 47
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const-string v2, "device_activation_info"

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v4, 0xd

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v1, "xiaomi_money_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v4, 0xc

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v1, "micloud_service_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v4, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v1, "card_holder_header_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v4, 0xa

    goto/16 :goto_0

    :sswitch_4
    const-string/jumbo v1, "privacy_settings_new"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v4, 0x9

    goto/16 :goto_0

    :sswitch_5
    const-string v1, "game_booster_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v4, 0x8

    goto/16 :goto_0

    :sswitch_6
    const-string v1, "ex_func_cloud_service"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v4, 0x7

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "ucar_screen_projection_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v4, 0x6

    goto :goto_0

    :sswitch_8
    const-string v1, "feedback_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    const/4 v4, 0x5

    goto :goto_0

    :sswitch_9
    const-string v1, "bug_report_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v4, 0x4

    goto :goto_0

    :sswitch_a
    const-string v1, "enterprise_mode"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto :goto_0

    :cond_a
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_b
    const-string/jumbo v1, "vip_service_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_c
    const-string v1, "ex_voice_assist"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v4, 0x1

    goto :goto_0

    :sswitch_d
    const-string v1, "kid_space_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    move v4, v3

    :goto_0
    packed-switch v4, :pswitch_data_0

    goto/16 :goto_1

    .line 89
    :pswitch_0
    new-instance v0, Lcom/android/settings/device/controller/MiuiActivationInfoController;

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/device/controller/MiuiActivationInfoController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/android/settings/device/controller/MiuiActivationInfoController;->isAvailableInternal()Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 99
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCoinInternal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 104
    :pswitch_2
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveMiCloudInternal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 59
    :pswitch_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportCardHolderInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 84
    :pswitch_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isDeviceManaged(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    :cond_e
    return v3

    .line 109
    :pswitch_5
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isShowGameTurboInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 94
    :pswitch_6
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isBackupNeededInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 74
    :pswitch_7
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->isSupportUcarSettingsInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 114
    :pswitch_8
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFeedbackNeededInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 54
    :pswitch_9
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isFeedbackNeededInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 64
    :pswitch_a
    invoke-static {}, Lcom/android/settings/MiuiUtils;->isExcludeEnterpriseModeInternal()Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 49
    :pswitch_b
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isVipServiceNeededInternal(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_f

    return v3

    .line 79
    :pswitch_c
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiUtils;->excludeXiaoAiInternal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 69
    :pswitch_d
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isNeedRemoveKidSpaceInternal(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_f

    return v3

    .line 119
    :cond_f
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :sswitch_data_0
    .sparse-switch
        -0x415c922b -> :sswitch_d
        -0x3cdfe5de -> :sswitch_c
        -0x2c38e5b1 -> :sswitch_b
        -0x1dab4c3f -> :sswitch_a
        -0x1b0a60fd -> :sswitch_9
        0x12f2279d -> :sswitch_8
        0x2449c6db -> :sswitch_7
        0x29edb37c -> :sswitch_6
        0x496fbb5c -> :sswitch_5
        0x57410edb -> :sswitch_4
        0x5dd49e2a -> :sswitch_3
        0x6a9554a8 -> :sswitch_2
        0x714f31b2 -> :sswitch_1
        0x7d55e24e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()Z
    .locals 0

    .line 41
    sget-boolean p0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    return p0
.end method
