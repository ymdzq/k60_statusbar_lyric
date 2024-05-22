.class public Lcom/miui/analytics/MiuiAppPairsTrackImpl;
.super Lcom/miui/analytics/MiuiAppPairsTrackStub;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiAppPairsTrackImpl"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiAppPairsTrackStub;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method private addAppInfo(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    const-string p0, "app_package_name"

    .line 2
    invoke-virtual {p1, p0, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 4
    const-string p0, "app_display_name"

    .line 7
    invoke-static {p2, p3}, Lcom/miui/analytics/MiuiTrackUtils;->getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 12
    invoke-virtual {p1, p0, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 13
    return-void
    .line 16
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Landroid/content/Context;ZLandroid/app/ActivityManager$RunningTaskInfo;Landroid/app/ActivityManager$RunningTaskInfo;F)V
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "action: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiAppPairsTrackImpl"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    new-instance v0, Lorg/json/JSONObject;

    .line 21
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 23
    if-eqz p4, :cond_1

    .line 26
    :try_start_0
    invoke-static {p4}, Lcom/miui/analytics/MiuiTrackUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 28
    move-result-object p4

    .line 31
    if-eqz p5, :cond_0

    .line 32
    new-instance v2, Lorg/json/JSONObject;

    .line 34
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 36
    new-instance v3, Lorg/json/JSONObject;

    .line 39
    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 41
    invoke-static {p5}, Lcom/miui/analytics/MiuiTrackUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 44
    move-result-object p5

    .line 47
    invoke-direct {p0, v2, p2, p4}, Lcom/miui/analytics/MiuiAppPairsTrackImpl;->addAppInfo(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-direct {p0, v3, p2, p5}, Lcom/miui/analytics/MiuiAppPairsTrackImpl;->addAppInfo(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 51
    goto :goto_0

    .line 54
    :cond_0
    invoke-direct {p0, v0, p2, p4}, Lcom/miui/analytics/MiuiAppPairsTrackImpl;->addAppInfo(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    :cond_1
    const/4 v2, 0x0

    .line 58
    move-object v3, v2

    .line 59
    :goto_0
    const-string p0, "22053100"

    .line 60
    invoke-static {v0, p2, p0}, Lcom/miui/analytics/MiuiTrackUtils;->addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 65
    move-result p0

    .line 68
    const p2, -0x65bd9aa1

    .line 69
    const/4 p4, 0x2

    .line 72
    const/4 p5, 0x1

    .line 73
    if-eq p0, p2, :cond_4

    .line 74
    const p2, 0x3e8e6262

    .line 76
    if-eq p0, p2, :cond_3

    .line 79
    const p2, 0x74c4bf10

    .line 81
    if-eq p0, p2, :cond_2

    .line 84
    goto :goto_1

    .line 86
    :cond_2
    const-string p0, "action_exit_apppairs"

    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 89
    move-result p0

    .line 92
    if-eqz p0, :cond_5

    .line 93
    move p0, p5

    .line 95
    goto :goto_2

    .line 96
    :cond_3
    const-string p0, "action_exit_split"

    .line 97
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    move-result p0

    .line 102
    if-eqz p0, :cond_5

    .line 103
    move p0, p4

    .line 105
    goto :goto_2

    .line 106
    :cond_4
    const-string p0, "action_three_gesture"

    .line 107
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    if-eqz p0, :cond_5

    .line 113
    const/4 p0, 0x0

    .line 115
    goto :goto_2

    .line 116
    :cond_5
    :goto_1
    const/4 p0, -0x1

    .line 117
    :goto_2
    const-string p1, "EVENT_NAME"

    .line 118
    const-string/jumbo p2, "tip"

    .line 120
    if-eqz p0, :cond_8

    .line 123
    const-string/jumbo p3, "use_duration"

    .line 125
    if-eq p0, p5, :cond_7

    .line 128
    if-eq p0, p4, :cond_6

    .line 130
    goto :goto_3

    .line 132
    :cond_6
    :try_start_1
    const-string p0, "621.6.0.1.22489"

    .line 133
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string p0, "quit"

    .line 138
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    float-to-double p0, p6

    .line 143
    invoke-virtual {v0, p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 144
    goto :goto_3

    .line 147
    :cond_7
    new-instance p0, Lorg/json/JSONArray;

    .line 148
    invoke-direct {p0}, Lorg/json/JSONArray;-><init>()V

    .line 150
    invoke-virtual {p0, v2}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 153
    invoke-virtual {p0, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 156
    const-string p4, "621.6.1.1.22490"

    .line 159
    invoke-virtual {v0, p2, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 161
    const-string p2, "quit_app_pairs"

    .line 164
    invoke-virtual {v0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 166
    const-string p1, "app_pairs_combination"

    .line 169
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 171
    float-to-double p0, p6

    .line 174
    invoke-virtual {v0, p3, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 175
    goto :goto_3

    .line 178
    :cond_8
    const-string p0, "621.6.0.1.22487"

    .line 179
    invoke-virtual {v0, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 181
    const-string p0, "enter"

    .line 184
    invoke-virtual {v0, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 186
    const-string p0, "multi_window_enter_way"

    .line 189
    if-eqz p3, :cond_9

    .line 191
    :try_start_2
    const-string/jumbo p1, "\u4e09\u6307\u53f3\u6ed1"

    .line 193
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 196
    goto :goto_3

    .line 199
    :cond_9
    const-string/jumbo p1, "\u4e09\u6307\u5de6\u6ed1"

    .line 200
    invoke-virtual {v0, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 203
    goto :goto_3

    .line 206
    :catch_0
    move-exception p0

    .line 207
    const-string p1, "reflect error when get MiuiTrackManager."

    .line 208
    invoke-static {v1, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 210
    :goto_3
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 213
    move-result-object p0

    .line 216
    const-string p1, "android"

    .line 217
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 219
    move-result-object p2

    .line 222
    const-string p3, "31000000538"

    .line 223
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/analytics/MiuiTrackManagerStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    return-void
    .line 228
.end method
