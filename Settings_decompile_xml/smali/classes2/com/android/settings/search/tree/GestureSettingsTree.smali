.class public Lcom/android/settings/search/tree/GestureSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "GestureSettingsTree.java"


# static fields
.field public static final GESTURE_KNOCK_V_SETTINGS_FRAGMENT:Ljava/lang/String; = "com.android.settings.knock.KnockGestureVSelectFragment"

.field public static final GESTURE_SHORTCUT_SETTINGS_SELECT_FRAGMENT:Ljava/lang/String; = "com.android.settings.GestureShortcutSettingsSelectFragment"

.field public static final GESTURE_SHORTCUT_SETTINGS_TITLE:Ljava/lang/String; = "gesture_settings_title"

.field public static final KNOCK_GESTURE_V_TITLE:Ljava/lang/String; = "knock_slide_v"

.field private static final REGIONAL_SCREEN_SHOT:Ljava/lang/String; = "regional_screen_shot"

.field private static final SHORTCUT_AI_SETTINGS:Ljava/lang/String; = "ai_button_title"

.field private static final SHORTCUT_AI_SETTINGS_GLOBAL:Ljava/lang/String; = "ai_button_title_global"

.field private static final TAG:Ljava/lang/String; = "GestureSettingsTree"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFingerprintHelper:Lcom/android/settings/FingerprintHelper;


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 46
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    .line 47
    iput-object p1, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    .line 48
    new-instance p2, Lcom/android/settings/FingerprintHelper;

    invoke-direct {p2, p1}, Lcom/android/settings/FingerprintHelper;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    .line 49
    invoke-static {p1}, Lcom/android/settings/MiuiShortcut$Key;->setGestureMap(Landroid/content/Context;)V

    return-void
.end method

.method private addSettingsSonItem(Ljava/lang/String;)V
    .locals 14

    const-string v0, "com.android.settings.GestureShortcutSettingsSelectFragment"

    const-string v1, "knock_slide_v"

    .line 120
    sget-object v2, Lcom/android/settings/MiuiShortcut$Key;->sGestureMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    const-string v4, "intent"

    const-string v5, ":settings:show_fragment"

    const-string v6, ":settings:show_fragment_title"

    const-string/jumbo v7, "resource"

    const-string v8, "GestureSettingsTree"

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 121
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v9, v10}, Lcom/android/settings/MiuiShortcut$Key;->getResoureceNameForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 123
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 125
    :try_start_0
    new-instance v11, Lorg/json/JSONObject;

    invoke-direct {v11}, Lorg/json/JSONObject;-><init>()V

    .line 126
    invoke-virtual {v11, v7, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v10, "fragment"

    .line 127
    invoke-virtual {v11, v10, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/search/tree/GestureSettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v10

    .line 131
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    iget-object v13, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v12, v13}, Lcom/android/settings/MiuiShortcut$Key;->getResoureceNameForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v12

    .line 130
    invoke-virtual {v10, v6, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 132
    invoke-virtual {v10, v5, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 134
    new-instance v12, Lcom/android/settingslib/search/TinyIntent;

    invoke-direct {v12, v10}, Lcom/android/settingslib/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v12}, Lcom/android/settingslib/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v10

    invoke-virtual {v11, v4, v10}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    iget-object v10, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    const/4 v12, 0x0

    invoke-static {v10, v11, p0, v12}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)Lcom/android/settingslib/search/SettingsTree;

    move-result-object v10

    invoke-virtual {p0, v10}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string v10, "add son fail"

    .line 137
    invoke-static {v8, v10}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const-string v0, "gesture_settings_title"

    .line 142
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 145
    :try_start_1
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 146
    invoke-virtual {p1, v7, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/search/tree/GestureSettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    .line 149
    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getResoureceNameForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 148
    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "com.android.settings.knock.KnockGestureVSelectFragment"

    .line 150
    invoke-virtual {v0, v5, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    new-instance v1, Lcom/android/settingslib/search/TinyIntent;

    invoke-direct {v1, v0}, Lcom/android/settingslib/search/TinyIntent;-><init>(Landroid/content/Intent;)V

    invoke-virtual {v1}, Lcom/android/settingslib/search/TinyIntent;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    iget-object v0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, p0, v1}, Lcom/android/settingslib/search/SettingsTree;->newInstance(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)Lcom/android/settingslib/search/SettingsTree;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->addSon(Lcom/android/settingslib/search/IndexTree;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    const-string p0, "add son fail for knock_slide_v"

    .line 155
    invoke-static {v8, p0}, Lmiuix/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 5

    .line 162
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string/jumbo v1, "resource"

    .line 164
    invoke-virtual {p0, v1}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_1

    const-string v2, ":settings:show_fragment_title"

    .line 167
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 168
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    .line 169
    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 171
    :cond_0
    iget-object p0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    .line 172
    invoke-static {v3, p0}, Lcom/android/settings/MiuiShortcut$Key;->getResourceForKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 171
    invoke-virtual {v0, v2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getTitle(Z)Ljava/lang/String;
    .locals 1

    if-eqz p1, :cond_0

    const-string/jumbo p1, "resource"

    .line 55
    invoke-virtual {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const-string/jumbo v0, "three_gesture_long_press"

    .line 56
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/settings/R$string;->three_gesture_long_press:I

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p1, 0x1

    .line 60
    invoke-super {p0, p1}, Lcom/android/settingslib/search/SettingsTree;->getTitle(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public initialize()Z
    .locals 4

    const-string/jumbo v0, "resource"

    .line 65
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/settings/MiuiShortcut$System;->isSupportNewVersionKeySettings(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    return v2

    .line 69
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/search/tree/GestureSettingsTree;->addSettingsSonItem(Ljava/lang/String;)V

    .line 71
    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$Key;->getKeyForResourceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 72
    sget-object v1, Lcom/android/settings/MiuiShortcut$Key;->mHidenPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v2

    .line 75
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "ai_button_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "back_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "turn_on_torch"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "fingerprint_double_tap"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "knock_gesture_v"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "gesture_settings_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "ai_button_title_global"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto :goto_0

    :cond_8
    move v3, v2

    goto :goto_0

    :sswitch_7
    const-string/jumbo v1, "regional_screen_shot"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_0

    :cond_9
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 97
    :pswitch_0
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_a

    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_a
    return v2

    .line 87
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->hasBackTapSensorFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    .line 109
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/os/Build;->hasCameraFlash(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    .line 82
    :pswitch_3
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_FINGERPRINT_TAP:Z

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mFingerprintHelper:Lcom/android/settings/FingerprintHelper;

    invoke-virtual {v0}, Lcom/android/settings/FingerprintHelper;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_b
    return v2

    .line 77
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/search/tree/GestureSettingsTree;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/MiuiShortcut$System;->hasKnockFeature(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_d

    :pswitch_5
    return v2

    .line 92
    :pswitch_6
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v0, :cond_c

    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->shouldShowAiButton()Z

    move-result v0

    if-nez v0, :cond_d

    :cond_c
    return v2

    .line 102
    :pswitch_7
    invoke-static {}, Lcom/android/settings/MiuiShortcut$System;->supportPartialScreenShot()Z

    move-result v0

    if-nez v0, :cond_d

    return v2

    .line 116
    :cond_d
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    nop

    :sswitch_data_0
    .sparse-switch
        -0x12265b33 -> :sswitch_7
        0x131f04c0 -> :sswitch_6
        0x140910f2 -> :sswitch_5
        0x16c0bd55 -> :sswitch_4
        0x43e7d070 -> :sswitch_3
        0x509e0f1e -> :sswitch_2
        0x7e70284b -> :sswitch_1
        0x7fcb5dc2 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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
