.class public Lcom/android/settings/wifi/OneTrackService;
.super Landroid/app/IntentService;
.source "OneTrackService.java"


# instance fields
.field private mBoostState:Z

.field private mDualBandState:Z

.field private mKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mModeState:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, "OneTrackService"

    .line 54
    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method private initKeyList()V
    .locals 4

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v1, "wifi_switch_state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v1, "wifi_assistant_choice_state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v1, "wifi_assistant_mode_state"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "user_network_priority_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wifi/OneTrackService;->mModeState:Z

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v3, "wifi_assistant_mode_balanced"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v3, "wifi_assistant_mode_fast"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string/jumbo v3, "wifi_assistant_autoturnon_state"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v3, "dual_band_speed_boost_state"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v3, "slave_wifi_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_2

    move v0, v1

    goto :goto_1

    :cond_2
    move v0, v2

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wifi/OneTrackService;->mDualBandState:Z

    if-eqz v0, :cond_3

    .line 93
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v3, "dual_band_speed_boost_autoturnoff_state"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v3, "mobile_data_speed_boost_state"

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "mobile_data_always_on"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v1, :cond_4

    move v2, v1

    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/wifi/OneTrackService;->mBoostState:Z

    if-eqz v2, :cond_5

    .line 99
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v1, "mobile_data_speed_boost_recommend"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v1, "mobile_data_speed_boost_custom"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    iget-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v1, "mobile_data_speed_boost_auxiliary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    iget-object p0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    const-string v0, "mobile_data_speed_boost_full"

    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_5
    return-void
.end method

.method private reportState(Ljava/lang/String;)V
    .locals 9

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 109
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    sparse-switch v1, :sswitch_data_0

    :goto_0
    move v1, v5

    goto/16 :goto_1

    :sswitch_0
    const-string/jumbo v1, "wifi_switch_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    const/16 v1, 0xc

    goto/16 :goto_1

    :sswitch_1
    const-string/jumbo v1, "wifi_assistant_mode_fast"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/16 v1, 0xb

    goto/16 :goto_1

    :sswitch_2
    const-string v1, "mobile_data_speed_boost_custom"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    const/16 v1, 0xa

    goto/16 :goto_1

    :sswitch_3
    const-string v1, "dual_band_speed_boost_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_0

    :cond_3
    const/16 v1, 0x9

    goto/16 :goto_1

    :sswitch_4
    const-string/jumbo v1, "wifi_assistant_autoturnon_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    const/16 v1, 0x8

    goto/16 :goto_1

    :sswitch_5
    const-string v1, "mobile_data_speed_boost_recommend"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_0

    :cond_5
    const/4 v1, 0x7

    goto :goto_1

    :sswitch_6
    const-string v1, "mobile_data_speed_boost_auxiliary"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_0

    :cond_6
    const/4 v1, 0x6

    goto :goto_1

    :sswitch_7
    const-string v1, "dual_band_speed_boost_autoturnoff_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v1, 0x5

    goto :goto_1

    :sswitch_8
    const-string/jumbo v1, "wifi_assistant_mode_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_0

    :cond_8
    const/4 v1, 0x4

    goto :goto_1

    :sswitch_9
    const-string/jumbo v1, "wifi_assistant_choice_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_0

    :cond_9
    const/4 v1, 0x3

    goto :goto_1

    :sswitch_a
    const-string v1, "mobile_data_speed_boost_full"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto/16 :goto_0

    :cond_a
    move v1, v2

    goto :goto_1

    :sswitch_b
    const-string/jumbo v1, "wifi_assistant_mode_balanced"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    goto/16 :goto_0

    :cond_b
    move v1, v3

    goto :goto_1

    :sswitch_c
    const-string v1, "mobile_data_speed_boost_state"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    goto/16 :goto_0

    :cond_c
    move v1, v4

    :goto_1
    const-string v6, "link_turbo_mode"

    const-string v7, "link_turbo_option"

    const-string/jumbo v8, "user_network_priority_mode"

    packed-switch v1, :pswitch_data_0

    goto/16 :goto_3

    .line 111
    :pswitch_0
    iget-object p0, p0, Lcom/android/settings/wifi/OneTrackService;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz p0, :cond_d

    invoke-virtual {p0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result p0

    if-eqz p0, :cond_d

    goto :goto_2

    :cond_d
    move v3, v4

    :goto_2
    move v4, v3

    goto/16 :goto_3

    .line 126
    :pswitch_1
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v2, :cond_d

    goto :goto_2

    .line 149
    :pswitch_2
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_2

    .line 135
    :pswitch_3
    iget-boolean v4, p0, Lcom/android/settings/wifi/OneTrackService;->mDualBandState:Z

    goto/16 :goto_3

    .line 131
    :pswitch_4
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wifi_wakeup_enabled"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_2

    .line 145
    :pswitch_5
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v7, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_2

    .line 153
    :pswitch_6
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_d

    goto :goto_2

    .line 138
    :pswitch_7
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wifi_slave_auto_disable"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_2

    .line 118
    :pswitch_8
    iget-boolean v4, p0, Lcom/android/settings/wifi/OneTrackService;->mModeState:Z

    goto :goto_3

    .line 114
    :pswitch_9
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string/jumbo v1, "wifi_assistant"

    invoke-static {p0, v1, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto :goto_2

    .line 157
    :pswitch_a
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v6, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto/16 :goto_2

    .line 121
    :pswitch_b
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-static {p0, v8, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-ne p0, v3, :cond_d

    goto/16 :goto_2

    .line 142
    :pswitch_c
    iget-boolean v4, p0, Lcom/android/settings/wifi/OneTrackService;->mBoostState:Z

    .line 163
    :goto_3
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    invoke-virtual {v0, p1, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    invoke-static {p1, v0}, Lcom/android/settingslib/util/OneTrackInterfaceUtils;->track(Ljava/lang/String;Ljava/util/Map;)V

    return-void

    :sswitch_data_0
    .sparse-switch
        -0x6811541b -> :sswitch_c
        -0x627286a7 -> :sswitch_b
        -0x5e37ff45 -> :sswitch_a
        -0x4ea9df62 -> :sswitch_9
        0x69181e0 -> :sswitch_8
        0xcab6d1a -> :sswitch_7
        0x10cb6e1a -> :sswitch_6
        0x1eae2e10 -> :sswitch_5
        0x42059f88 -> :sswitch_4
        0x433a7896 -> :sswitch_3
        0x4aaf8e9d -> :sswitch_2
        0x52c4b52d -> :sswitch_1
        0x564f4cb0 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static setDailyRepeat(Landroid/content/Context;)V
    .locals 8

    const-string v0, "alarm"

    .line 66
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/AlarmManager;

    .line 67
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/wifi/OneTrackService;

    invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v2, 0x4000000

    const/4 v3, 0x0

    .line 68
    invoke-static {p0, v3, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v7

    .line 70
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p0

    const/16 v0, 0xb

    const/16 v2, 0x8

    .line 71
    invoke-virtual {p0, v0, v2}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xc

    .line 72
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/16 v0, 0xd

    .line 73
    invoke-virtual {p0, v0, v3}, Ljava/util/Calendar;->set(II)V

    const/4 v2, 0x0

    .line 74
    invoke-virtual {p0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    const-wide/32 v5, 0x5265c00

    invoke-virtual/range {v1 .. v7}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 2

    .line 59
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 60
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    .line 61
    invoke-virtual {p0}, Landroid/app/IntentService;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 62
    invoke-direct {p0}, Lcom/android/settings/wifi/OneTrackService;->initKeyList()V

    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 176
    invoke-super {p0}, Landroid/app/IntentService;->onDestroy()V

    const/4 v0, 0x0

    .line 177
    iput-object v0, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 1

    .line 169
    iget-object p1, p0, Lcom/android/settings/wifi/OneTrackService;->mKeys:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 170
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/OneTrackService;->reportState(Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method
