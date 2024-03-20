.class public Lcom/android/settings/ai/DataFactory;
.super Ljava/lang/Object;
.source "DataFactory.java"


# direct methods
.method public static generateDefaultActionItem(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;
    .locals 2

    .line 80
    new-instance p0, Lcom/android/settings/ai/AiSettingsItem;

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-direct {p0, v0, v0, v1}, Lcom/android/settings/ai/AiSettingsItem;-><init>(ZII)V

    .line 82
    invoke-static {p1}, Lcom/android/settings/ai/DataFactory;->getMode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ai/AiSettingsItem;->voiceAssistantMode:I

    return-object p0
.end method

.method public static generateItems(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/ai/AiSettingsItem;",
            ">;"
        }
    .end annotation

    .line 47
    invoke-static {p0, p1}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->getPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;

    move-result-object p0

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "key_single_click_ai_button_settings"

    .line 50
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    const/16 v1, 0x8

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz p1, :cond_3

    .line 51
    new-instance p1, Lcom/android/settings/ai/AiSettingsItem;

    invoke-direct {p1, v3, v2}, Lcom/android/settings/ai/AiSettingsItem;-><init>(II)V

    .line 52
    invoke-virtual {p1, p0}, Lcom/android/settings/ai/AiSettingsItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 53
    iput-boolean v3, p1, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 55
    :cond_0
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance p1, Lcom/android/settings/ai/AiSettingsItem;

    const/4 v2, 0x2

    invoke-direct {p1, v2, v3}, Lcom/android/settings/ai/AiSettingsItem;-><init>(II)V

    .line 57
    invoke-virtual {p1, p0}, Lcom/android/settings/ai/AiSettingsItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 58
    iput-boolean v3, p1, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 60
    :cond_1
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    new-instance p1, Lcom/android/settings/ai/AiSettingsItem;

    const/4 v2, 0x7

    invoke-direct {p1, v1, v2}, Lcom/android/settings/ai/AiSettingsItem;-><init>(II)V

    .line 62
    invoke-virtual {p1, p0}, Lcom/android/settings/ai/AiSettingsItem;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 63
    iput-boolean v3, p1, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 65
    :cond_2
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    :goto_0
    if-ge v2, v1, :cond_5

    add-int/lit8 p1, v2, 0x1

    .line 69
    new-instance v4, Lcom/android/settings/ai/AiSettingsItem;

    invoke-direct {v4, p1, v2}, Lcom/android/settings/ai/AiSettingsItem;-><init>(II)V

    .line 70
    invoke-virtual {v4, p0}, Lcom/android/settings/ai/AiSettingsItem;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 71
    iput-boolean v3, v4, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    .line 73
    :cond_4
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, p1

    goto :goto_0

    :cond_5
    :goto_1
    return-object v0
.end method

.method public static getMode(Ljava/lang/String;)I
    .locals 2

    const-string v0, "key_long_press_down_ai_button_settings"

    .line 100
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x3

    goto :goto_1

    :cond_0
    const-string v0, "key_long_press_up_ai_button_settings"

    .line 102
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p0, 0x4

    goto :goto_1

    :cond_1
    const-string v0, "key_double_click_ai_button_settings"

    .line 104
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x5

    if-eqz v0, :cond_2

    :goto_0
    move p0, v1

    goto :goto_1

    :cond_2
    const-string v0, "key_single_click_ai_button_settings"

    .line 106
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    :cond_3
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static isDeviceProvisioned(Landroid/content/Context;)Z
    .locals 2

    .line 148
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "device_provisioned"

    const/4 v1, 0x0

    .line 149
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public static record(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/ai/AiSettingsItem;)V
    .locals 11

    .line 114
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "key_single_click_ai_button_settings"

    .line 115
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "key_long_press_down_ai_button_settings"

    const/4 v4, 0x2

    const/4 v5, 0x1

    const-string v6, "key_long_press_up_ai_button_settings"

    if-eqz v2, :cond_0

    .line 116
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 117
    :cond_0
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const-string v2, "key_double_click_ai_button_settings"

    .line 119
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x3

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 118
    :cond_2
    :goto_0
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :cond_3
    :goto_1
    const-string v2, "_"

    .line 122
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    iget v2, p2, Lcom/android/settings/ai/AiSettingsItem;->type:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 124
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v7, "AIkey_active_act0"

    invoke-static {v7, v2}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "key"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " v1: "

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "firebase_report"

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/settings/ai/PreferenceHelper;->isNewUser(Landroid/content/Context;J)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, "1"

    goto :goto_2

    :cond_4
    const-string v0, "0"

    :goto_2
    const-string v7, "AIkey_active_isFirst"

    .line 130
    invoke-static {v7, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, " v2: "

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    .line 134
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    invoke-static {p0, v9, v10}, Lcom/android/settings/ai/PreferenceHelper;->shouldRecordItemType(Landroid/content/Context;J)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 137
    invoke-virtual {v6, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    .line 138
    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    .line 140
    :cond_5
    iget p0, p2, Lcom/android/settings/ai/AiSettingsItem;->type:I

    const-string p0, "AIkey_status_Status"

    .line 142
    invoke-static {p0, v0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->recordCountEventAnonymous(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "  v3: "

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    return-void
.end method
