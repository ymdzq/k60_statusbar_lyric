.class public Lcom/android/settings/search/tree/BluetoothSettingsTree;
.super Lcom/android/settingslib/search/SettingsTree;
.source "BluetoothSettingsTree.java"


# static fields
.field public static final ADD_THIRD_APP_NAME:Ljava/lang/String; = "add_text_app_name"

.field public static final BT_ALWAYS_SHOW_ICON:Ljava/lang/String; = "bt_always_show_icon"

.field public static final BT_AUTO_DISABLE_LE_BA:Ljava/lang/String; = "auto_disable_broadcast_audio"

.field public static final BT_BROADCAST_AUDIO:Ljava/lang/String; = "bluetooth_broadcast_audio"

.field public static final BT_CONNECT_HELP:Ljava/lang/String; = "connect_help"

.field public static final BT_HALF_CLOSE_SWITCH:Ljava/lang/String; = "bt_half_close_switch_title"

.field public static final BT_INBAND_RINGING:Ljava/lang/String; = "bluetooth_inband_ringing"

.field public static final BT_LE_BA_SECURITY:Ljava/lang/String; = "ba_security_settings"

.field public static final BT_NOTIFICATION_ID:Ljava/lang/String; = "bt_show_notification_title"

.field public static final BT_SHARE_BROADCAST:Ljava/lang/String; = "bluetooth_share_broadcast"

.field public static final BT_VERSION:Ljava/lang/String; = "bluetooth_version"

.field private static final ENABLE_HALF_CLOSE:I = 0x1

.field public static final FAST_CONNECT_DEVICE_ID:Ljava/lang/String; = "bluetooth_fastConnect_key_device_id"

.field private static final GLOBAL_HALFCLOSE_OFF:I = 0x0

.field private static final GLOBAL_HALFCLOSE_ON:I = 0x1


# direct methods
.method protected constructor <init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 35
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/search/SettingsTree;-><init>(Landroid/content/Context;Lorg/json/JSONObject;Lcom/android/settingslib/search/SettingsTree;Z)V

    return-void
.end method


# virtual methods
.method protected getStatus()I
    .locals 9

    const-string/jumbo v0, "resource"

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, -0x1

    sparse-switch v1, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v1, "bt_half_close_switch_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x3

    goto :goto_0

    :sswitch_1
    const-string v1, "bluetooth_inband_ringing"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_0

    :sswitch_2
    const-string v1, "bt_always_show_icon"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v4, v2

    goto :goto_0

    :sswitch_3
    const-string v1, "bluetooth_broadcast_audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    move v4, v3

    :goto_0
    const-string v0, "_global"

    const-string v1, ""

    const-string/jumbo v5, "ro.product.mod_device"

    const/16 v6, 0xd

    const-string/jumbo v7, "ro.miui.ui.version.code"

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_2

    .line 91
    :pswitch_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    if-nez v2, :cond_4

    return v3

    .line 94
    :cond_4
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 95
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 96
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-le v2, v6, :cond_5

    if-eqz v0, :cond_c

    :cond_5
    return v3

    :catch_0
    move-exception p0

    .line 101
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    .line 107
    :pswitch_1
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    return v3

    :cond_6
    const-string/jumbo v0, "persist.bluetooth.disableinbandringingbuttonui"

    .line 110
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 112
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-le v1, v6, :cond_7

    if-eqz v0, :cond_c

    :cond_7
    return v3

    :catch_1
    move-exception p0

    .line 117
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    .line 66
    :pswitch_2
    :try_start_2
    iget-object v4, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    if-nez v4, :cond_8

    return v3

    .line 69
    :cond_8
    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v8, "enable_always_show_switch"

    invoke-static {v4, v8, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 71
    invoke-static {v7, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v7

    if-le v7, v6, :cond_a

    if-eq v4, v2, :cond_9

    goto :goto_1

    .line 75
    :cond_9
    invoke-static {v5, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 76
    invoke-virtual {v1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 78
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "bluetooth_halfclose_global_enable"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-nez v0, :cond_c

    :cond_a
    :goto_1
    return v3

    :catch_2
    move-exception p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    .line 123
    :pswitch_3
    :try_start_3
    iget-object v0, p0, Lcom/android/settingslib/search/SettingsTree;->mContext:Landroid/content/Context;

    if-nez v0, :cond_b

    return v3

    .line 127
    :cond_b
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "enable_broadcast_advancedSettings_switch"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    if-nez v0, :cond_c

    return v3

    .line 140
    :cond_c
    :goto_2
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->getStatus()I

    move-result p0

    return p0

    :catch_3
    move-exception p0

    .line 133
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    return v3

    :sswitch_data_0
    .sparse-switch
        0x2ddd8f47 -> :sswitch_3
        0x366e3a98 -> :sswitch_2
        0x52d31efe -> :sswitch_1
        0x5f46fb13 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public initialize()Z
    .locals 4

    const-string/jumbo v0, "resource"

    .line 40
    invoke-virtual {p0, v0}, Lcom/android/settingslib/search/SettingsTree;->getColumnValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v1, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v1, "add_text_app_name"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_1
    const-string v1, "connect_help"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_2
    const-string v1, "ba_security_settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_3
    const-string v1, "auto_disable_broadcast_audio"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_4
    const-string v1, "bt_show_notification_title"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_5
    const-string v1, "bluetooth_version"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto :goto_0

    :cond_5
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_6
    const-string v1, "bluetooth_share_broadcast"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto :goto_0

    :cond_6
    move v3, v2

    goto :goto_0

    :sswitch_7
    const-string v1, "bluetooth_fastConnect_key_device_id"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 57
    invoke-super {p0}, Lcom/android/settingslib/search/SettingsTree;->initialize()Z

    move-result p0

    return p0

    :pswitch_0
    return v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x7809761e -> :sswitch_7
        -0x4a69db30 -> :sswitch_6
        -0x407f07b9 -> :sswitch_5
        0x36893599 -> :sswitch_4
        0x4d1cc0f1 -> :sswitch_3
        0x682da242 -> :sswitch_2
        0x72101176 -> :sswitch_1
        0x7c49719d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
