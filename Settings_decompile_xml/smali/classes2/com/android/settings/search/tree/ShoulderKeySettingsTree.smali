.class public Lcom/android/settings/search/tree/ShoulderKeySettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "ShoulderKeySettingsTree.java"


# static fields
.field private static final SHOULDER_KEY_SETTINGS:Ljava/lang/String; = "shoulder_key_settings"

.field private static final SHOULDER_KEY_SHORTCUT_SETTINGS:Ljava/lang/String; = "shoulder_key_shortcut_settings"

.field private static final SHOULDER_KEY_SOUND_SETTINGS:Ljava/lang/String; = "shoulder_key_sound_switch_title"


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 20
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method public initialize()Z
    .locals 4

    const-string/jumbo v0, "resource"

    .line 25
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 26
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string/jumbo v1, "shoulder_key_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_1
    const-string/jumbo v1, "shoulder_key_shortcut_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v3, v2

    goto :goto_0

    :sswitch_2
    const-string/jumbo v1, "shoulder_key_sound_switch_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 28
    :pswitch_0
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_SHOULDER_KEY:Z

    if-nez v0, :cond_3

    return v2

    .line 33
    :pswitch_1
    sget-boolean v0, Lcom/android/settings/utils/SettingsFeatures;->IS_SUPPORT_SHOULDER_KEY_MORE:Z

    if-nez v0, :cond_3

    return v2

    .line 42
    :cond_3
    :goto_1
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    :pswitch_2
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x75f6e9e4 -> :sswitch_2
        -0x21b86743 -> :sswitch_1
        0x3cb39642 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
