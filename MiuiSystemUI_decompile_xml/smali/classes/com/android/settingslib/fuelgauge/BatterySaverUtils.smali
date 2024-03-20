.class public abstract Lcom/android/settingslib/fuelgauge/BatterySaverUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 1

    .line 1
    new-instance v0, Landroid/content/Intent;

    .line 2
    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 4
    const/high16 p1, 0x10000000

    .line 7
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 9
    const-string p1, "com.android.systemui"

    .line 12
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 14
    invoke-virtual {v0, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 17
    invoke-virtual {p0, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 20
    return-void
    .line 23
.end method

.method public static declared-synchronized setPowerSaveMode(ILandroid/content/Context;ZZ)V
    .locals 8

    .line 1
    const-class v0, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;

    .line 2
    monitor-enter v0

    .line 4
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 5
    move-result-object v1

    .line 8
    new-instance v2, Landroid/os/Bundle;

    .line 9
    const/4 v3, 0x1

    .line 11
    invoke-direct {v2, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 12
    const-string v4, "extra_confirm_only"

    .line 15
    const/4 v5, 0x0

    .line 17
    invoke-virtual {v2, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 18
    if-eqz p2, :cond_1

    .line 21
    if-eqz p3, :cond_1

    .line 23
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 25
    move-result-object v4

    .line 28
    const-string v6, "low_power_warning_acknowledged"

    .line 29
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 31
    move-result v4

    .line 34
    if-eqz v4, :cond_0

    .line 35
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 37
    move-result-object v4

    .line 40
    const-string v6, "extra_low_power_warning_acknowledged"

    .line 41
    invoke-static {v4, v6, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_0

    .line 47
    move v4, v5

    .line 49
    goto :goto_0

    .line 50
    :cond_0
    const-string v4, "PNW.startSaverConfirmation"

    .line 51
    invoke-static {p1, v4, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    move v4, v3

    .line 56
    :goto_0
    if-eqz v4, :cond_1

    .line 57
    monitor-exit v0

    .line 59
    return-void

    .line 60
    :cond_1
    if-eqz p2, :cond_2

    .line 61
    if-nez p3, :cond_2

    .line 63
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 65
    move-result-object p3

    .line 68
    const-string v4, "low_power_warning_acknowledged"

    .line 69
    const/4 v6, -0x2

    .line 71
    invoke-static {p3, v4, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 75
    move-result-object p3

    .line 78
    const-string v4, "extra_low_power_warning_acknowledged"

    .line 79
    invoke-static {p3, v4, v3, v6}, Landroid/provider/Settings$Secure;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 81
    :cond_2
    const-class p3, Landroid/os/PowerManager;

    .line 84
    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 86
    move-result-object p3

    .line 89
    check-cast p3, Landroid/os/PowerManager;

    .line 90
    invoke-virtual {p3, p2}, Landroid/os/PowerManager;->setPowerSaveModeEnabled(Z)Z

    .line 92
    move-result p3

    .line 95
    if-eqz p3, :cond_4

    .line 96
    if-eqz p2, :cond_3

    .line 98
    const-string p3, "low_power_manual_activation_count"

    .line 100
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 102
    move-result p3

    .line 105
    add-int/2addr p3, v3

    .line 106
    const-string v3, "low_power_manual_activation_count"

    .line 107
    invoke-static {v1, v3, p3}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 109
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 112
    move-result-object v3

    .line 115
    const-string v4, "low_power_mode_suggestion_params"

    .line 116
    invoke-static {v3, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    .line 118
    move-result-object v3

    .line 121
    new-instance v4, Landroid/util/KeyValueListParser;

    .line 122
    const/16 v6, 0x2c

    .line 124
    invoke-direct {v4, v6}, Landroid/util/KeyValueListParser;-><init>(C)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 126
    :try_start_2
    invoke-virtual {v4, v3}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 129
    goto :goto_1

    .line 132
    :catch_0
    :try_start_3
    new-instance v6, Ljava/lang/StringBuilder;

    .line 133
    const-string v7, "Bad constants: "

    .line 135
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 137
    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 143
    move-result-object v3

    .line 146
    const-string v6, "BatterySaverUtils"

    .line 147
    invoke-static {v6, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    :goto_1
    const-string/jumbo v3, "start_nth"

    .line 152
    const/4 v6, 0x4

    .line 155
    invoke-virtual {v4, v3, v6}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 156
    move-result v3

    .line 159
    const-string v6, "end_nth"

    .line 160
    const/16 v7, 0x8

    .line 162
    invoke-virtual {v4, v6, v7}, Landroid/util/KeyValueListParser;->getInt(Ljava/lang/String;I)I

    .line 164
    move-result v4

    .line 167
    if-lt p3, v3, :cond_3

    .line 168
    if-gt p3, v4, :cond_3

    .line 170
    const-string p3, "low_power_trigger_level"

    .line 172
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 174
    move-result p3

    .line 177
    if-nez p3, :cond_3

    .line 178
    const-string/jumbo p3, "suppress_auto_battery_saver_suggestion"

    .line 180
    invoke-static {v1, p3, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    .line 183
    move-result p3

    .line 186
    if-nez p3, :cond_3

    .line 187
    const-string p3, "PNW.autoSaverSuggestion"

    .line 189
    invoke-static {p1, p3, v2}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 191
    :cond_3
    new-instance p3, Landroid/os/Bundle;

    .line 194
    const/4 v1, 0x2

    .line 196
    invoke-direct {p3, v1}, Landroid/os/Bundle;-><init>(I)V

    .line 197
    const-string v1, "extra_power_save_mode_manual_enabled_reason"

    .line 200
    invoke-virtual {p3, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string p0, "extra_power_save_mode_manual_enabled"

    .line 205
    invoke-virtual {p3, p0, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 207
    const-string p0, "com.android.settingslib.fuelgauge.ACTION_SAVER_STATE_MANUAL_UPDATE"

    .line 210
    invoke-static {p1, p0, p3}, Lcom/android/settingslib/fuelgauge/BatterySaverUtils;->sendSystemUiBroadcast(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 212
    monitor-exit v0

    .line 215
    return-void

    .line 216
    :cond_4
    monitor-exit v0

    .line 217
    return-void

    .line 218
    :catchall_0
    move-exception p0

    .line 219
    monitor-exit v0

    .line 220
    throw p0
    .line 221
.end method
