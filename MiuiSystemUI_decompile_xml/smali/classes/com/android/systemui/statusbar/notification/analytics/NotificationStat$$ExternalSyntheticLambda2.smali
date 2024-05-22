.class public final synthetic Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

.field public final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final apply(I)Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;->f$0:Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat$$ExternalSyntheticLambda2;->f$1:Ljava/util/List;

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 9
    move-result-object p0

    .line 12
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    .line 13
    new-instance p1, Ljava/util/HashMap;

    .line 15
    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 17
    iget-object v1, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 20
    iget-object v0, v0, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->mContext:Landroid/content/Context;

    .line 22
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNotificationsBanned(Landroid/content/Context;Ljava/lang/String;)Z

    .line 24
    move-result v2

    .line 27
    const/4 v3, 0x1

    .line 28
    xor-int/2addr v2, v3

    .line 29
    const-string v4, "app_package_name"

    .line 30
    invoke-virtual {p1, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 35
    move-result-object v4

    .line 38
    invoke-virtual {v4, p0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 39
    move-result-object v4

    .line 42
    const-string v5, "app_display_name"

    .line 43
    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-static {v2}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 48
    move-result-object v4

    .line 51
    const-string v5, "if_allow_notification"

    .line 52
    invoke-virtual {p1, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    const-string v4, ""

    .line 57
    const/4 v5, 0x0

    .line 59
    if-eqz v2, :cond_0

    .line 60
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 62
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 64
    invoke-virtual {v6, v0, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOnKeyguard(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 66
    move-result v6

    .line 69
    if-eqz v6, :cond_0

    .line 70
    move v6, v3

    .line 72
    goto :goto_0

    .line 73
    :cond_0
    move v6, v5

    .line 74
    :goto_0
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 75
    move-result-object v6

    .line 78
    const-string v7, "if_allow_keyboard_notification"

    .line 79
    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    if-eqz v2, :cond_1

    .line 84
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 86
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 88
    invoke-virtual {v6, v0, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canFloat(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 90
    move-result v6

    .line 93
    if-eqz v6, :cond_1

    .line 94
    move v6, v3

    .line 96
    goto :goto_1

    .line 97
    :cond_1
    move v6, v5

    .line 98
    :goto_1
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 99
    move-result-object v6

    .line 102
    const-string v7, "if_allow_float_notification"

    .line 103
    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    if-eqz v2, :cond_2

    .line 108
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 110
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 112
    invoke-virtual {v6, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowBadge(Landroid/content/Context;Ljava/lang/String;)Z

    .line 114
    move-result v6

    .line 117
    if-eqz v6, :cond_2

    .line 118
    move v6, v3

    .line 120
    goto :goto_2

    .line 121
    :cond_2
    move v6, v5

    .line 122
    :goto_2
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 123
    move-result-object v6

    .line 126
    const-string v7, "if_display_app_badge"

    .line 127
    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    if-eqz v2, :cond_3

    .line 132
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 134
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 136
    invoke-virtual {v6, v0, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canSound(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 138
    move-result v6

    .line 141
    if-eqz v6, :cond_3

    .line 142
    move v6, v3

    .line 144
    goto :goto_3

    .line 145
    :cond_3
    move v6, v5

    .line 146
    :goto_3
    invoke-static {v6}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 147
    move-result-object v6

    .line 150
    const-string v7, "if_open_voice_switch"

    .line 151
    invoke-virtual {p1, v7, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    if-eqz v2, :cond_4

    .line 156
    sget-boolean v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 158
    sget-object v6, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 160
    invoke-virtual {v6, v0, v1, v4}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canVibrate(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    .line 162
    move-result v4

    .line 165
    if-eqz v4, :cond_4

    .line 166
    move v4, v3

    .line 168
    goto :goto_4

    .line 169
    :cond_4
    move v4, v5

    .line 170
    :goto_4
    invoke-static {v4}, Lcom/android/systemui/statusbar/notification/analytics/NotificationStat;->getBoolString(Z)Ljava/lang/String;

    .line 171
    move-result-object v4

    .line 174
    const-string v6, "if_open_vibration_switch"

    .line 175
    invoke-virtual {p1, v6, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    sget-boolean v4, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->DEBUG:Z

    .line 180
    sget-object v4, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager$Holder;->INSTANCE:Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;

    .line 182
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 184
    const-string v6, "importance"

    .line 187
    filled-new-array {v1, v6}, [Ljava/lang/Object;

    .line 189
    move-result-object v6

    .line 192
    const-string v7, "%s_%s"

    .line 193
    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 195
    move-result-object v6

    .line 198
    const-string v7, "app_notification"

    .line 199
    const/4 v8, 0x4

    .line 201
    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    .line 202
    move-result-object v7

    .line 205
    invoke-interface {v7, v6}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    .line 206
    move-result v8

    .line 209
    if-eqz v8, :cond_5

    .line 210
    invoke-interface {v7, v6, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    .line 212
    move-result v5

    .line 215
    :cond_5
    if-nez v5, :cond_6

    .line 216
    const-string/jumbo v3, "\u7cfb\u7edf\u63a8\u8350"

    .line 218
    goto :goto_5

    .line 221
    :cond_6
    if-ne v5, v3, :cond_7

    .line 222
    const-string/jumbo v3, "\u5168\u90e8\u8bbe\u4e3a\u91cd\u8981"

    .line 224
    goto :goto_5

    .line 227
    :cond_7
    const-string/jumbo v3, "\u5168\u90e8\u8bbe\u4e3a\u4e0d\u91cd\u8981"

    .line 228
    :goto_5
    const-string v5, "app_fold_rule"

    .line 231
    invoke-virtual {p1, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 236
    invoke-static {p0}, Lcom/android/systemui/statusbar/notification/NotificationUtil;->isUidSystem(I)Z

    .line 238
    move-result p0

    .line 241
    if-nez p0, :cond_b

    .line 242
    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsHelper;->isNonBlockable(Landroid/content/Context;Ljava/lang/String;)Z

    .line 244
    move-result p0

    .line 247
    if-eqz p0, :cond_8

    .line 248
    goto :goto_7

    .line 250
    :cond_8
    if-nez v2, :cond_9

    .line 251
    goto :goto_6

    .line 253
    :cond_9
    invoke-virtual {v4, v0, v1}, Lcom/android/systemui/statusbar/notification/NotificationSettingsManager;->canShowOngoing(Landroid/content/Context;Ljava/lang/String;)Z

    .line 254
    move-result p0

    .line 257
    if-eqz p0, :cond_a

    .line 258
    const-string/jumbo p0, "\u662f"

    .line 260
    goto :goto_8

    .line 263
    :cond_a
    :goto_6
    const-string/jumbo p0, "\u5426"

    .line 264
    goto :goto_8

    .line 267
    :cond_b
    :goto_7
    const-string p0, "nothing"

    .line 268
    :goto_8
    const-string v0, "if_open_retained_notification_switch"

    .line 270
    invoke-virtual {p1, v0, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 272
    return-object p1
    .line 275
.end method
