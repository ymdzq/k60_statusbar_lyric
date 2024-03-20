.class public Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;
.super Lcom/android/settings/ai/PreferenceHelper;
.source "PreferenceHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ai/PreferenceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AiSettingsPreferenceHelper"
.end annotation


# direct methods
.method private static deSerialize(Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;
    .locals 2

    .line 79
    new-instance v0, Lcom/android/settings/ai/AiSettingsItem;

    invoke-direct {v0}, Lcom/android/settings/ai/AiSettingsItem;-><init>()V

    .line 81
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string/jumbo p0, "selected"

    .line 82
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    iput-boolean p0, v0, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    const-string/jumbo p0, "name"

    .line 83
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, v0, Lcom/android/settings/ai/AiSettingsItem;->name:Ljava/lang/String;

    const-string/jumbo p0, "type"

    .line 84
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    const-string p0, "index"

    .line 85
    invoke-virtual {v1, p0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p0

    iput p0, v0, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 87
    invoke-virtual {p0}, Lorg/json/JSONException;->printStackTrace()V

    :goto_0
    return-object v0
.end method

.method public static getPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;
    .locals 2

    const-string v0, "key_long_press_down_ai_button_settings"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "key_long_press_up_ai_button_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    goto :goto_1

    :cond_1
    :goto_0
    const-string v0, "key_long_press_ai_button_settings"

    :goto_1
    const-string v1, ""

    .line 69
    invoke-static {p0, v0, v1}, Lcom/android/settings/ai/PreferenceHelper;->-$$Nest$smgetString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 70
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 71
    invoke-static {v0}, Lcom/android/settings/ai/PreferenceHelper$AiSettingsPreferenceHelper;->deSerialize(Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;

    move-result-object p0

    goto :goto_2

    :cond_2
    invoke-static {p0, p1}, Lcom/android/settings/ai/DataFactory;->generateDefaultActionItem(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/ai/AiSettingsItem;

    move-result-object p0

    .line 72
    :goto_2
    iget v0, p0, Lcom/android/settings/ai/AiSettingsItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    .line 73
    invoke-static {p1}, Lcom/android/settings/ai/DataFactory;->getMode(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/ai/AiSettingsItem;->voiceAssistantMode:I

    :cond_3
    return-object p0
.end method

.method public static setPressAiButtonSettings(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/ai/AiSettingsItem;)V
    .locals 3

    const-string v0, "key_long_press_down_ai_button_settings"

    .line 49
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "key_long_press_up_ai_button_settings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const-string p1, "key_long_press_ai_button_settings"

    .line 52
    :cond_1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :try_start_0
    const-string/jumbo v1, "selected"

    .line 54
    iget-boolean v2, p2, Lcom/android/settings/ai/AiSettingsItem;->selected:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    const-string/jumbo v1, "type"

    .line 55
    iget v2, p2, Lcom/android/settings/ai/AiSettingsItem;->type:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "index"

    .line 56
    iget p2, p2, Lcom/android/settings/ai/AiSettingsItem;->mIndex:I

    invoke-virtual {v0, v1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 58
    invoke-virtual {p2}, Lorg/json/JSONException;->printStackTrace()V

    .line 60
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p1, p2}, Lcom/android/settings/ai/PreferenceHelper;->-$$Nest$smputString(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    return-void
.end method
