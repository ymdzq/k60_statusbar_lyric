.class public Lcom/android/settings/search/tree/NotificationStatusBarSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "NotificationStatusBarSettingsTree.java"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 3

    const-string/jumbo v0, "resource"

    .line 31
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "title_smart_device_control"

    .line 32
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 33
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v2

    :cond_1
    const-string/jumbo v1, "title_quick_control_all_devices"

    .line 37
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 38
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v1, :cond_2

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    :cond_2
    return v2

    :cond_3
    const-string v1, "custom_carrier_title"

    .line 42
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 43
    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_MX_TELCEL:Z

    if-nez v1, :cond_4

    sget-boolean v1, Lcom/android/settings/utils/StatusBarUtils;->IS_LM_CR:Z

    if-eqz v1, :cond_5

    :cond_4
    return v2

    :cond_5
    const-string v1, "lockscreen_trivial_controls_setting_toggle"

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 48
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_6
    return v2

    :cond_7
    const-string/jumbo v1, "notch_style_mod_title"

    .line 52
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    iget-object v1, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/utils/Utils;->supportNotchStyleMode(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_8

    return v2

    :cond_8
    const-string/jumbo v1, "notch_force_black_title"

    .line 55
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    invoke-static {}, Lcom/android/settings/utils/Utils;->supportNotchForceBlack()Z

    move-result v1

    if-nez v1, :cond_9

    return v2

    :cond_9
    const-string v1, "cutout_type_title"

    .line 58
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    invoke-static {}, Lcom/android/settings/utils/Utils;->supportOverlayRoundedCorner()Z

    move-result v1

    if-nez v1, :cond_a

    return v2

    :cond_a
    const-string v1, "cutout_mode_title"

    .line 61
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/android/settings/utils/Utils;->supportCutoutMode()Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    :cond_b
    const-string/jumbo v1, "title_wordless_mode"

    .line 64
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 65
    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->isUserOwner()Z

    move-result v0

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/settings/utils/StatusBarUtils;->noControlCenter()Z

    move-result v0

    if-nez v0, :cond_c

    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/StatusBarUtils;->useControlCenter(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    return v2

    .line 69
    :cond_d
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0
.end method
