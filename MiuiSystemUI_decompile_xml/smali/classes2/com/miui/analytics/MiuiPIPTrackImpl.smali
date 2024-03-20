.class public Lcom/miui/analytics/MiuiPIPTrackImpl;
.super Lcom/miui/analytics/MiuiPIPTrackStub;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final TAG:Ljava/lang/String; = "MiuiPIPTrackImpl"


# instance fields
.field private mEnterPipPkgName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/analytics/MiuiPIPTrackStub;-><init>()V

    .line 2
    return-void
    .line 5
.end method


# virtual methods
.method public trackEvent(Ljava/lang/String;Landroid/content/Context;Landroid/app/ActivityManager$RunningTaskInfo;Ljava/lang/CharSequence;)V
    .locals 4

    .line 1
    const-string v0, ", "

    .line 2
    const-string v1, "action: "

    .line 4
    new-instance v2, Lorg/json/JSONObject;

    .line 6
    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 8
    const-string v3, "MiuiPIPTrackImpl"

    .line 11
    if-eqz p3, :cond_0

    .line 13
    :try_start_0
    invoke-static {p3}, Lcom/miui/analytics/MiuiTrackUtils;->getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;

    .line 15
    move-result-object p3

    .line 18
    iput-object p3, p0, Lcom/miui/analytics/MiuiPIPTrackImpl;->mEnterPipPkgName:Ljava/lang/String;

    .line 19
    goto :goto_0

    .line 21
    :catch_0
    move-exception p0

    .line 22
    goto/16 :goto_3

    .line 23
    :cond_0
    :goto_0
    new-instance p3, Ljava/lang/StringBuilder;

    .line 25
    invoke-direct {p3, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 30
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    iget-object v1, p0, Lcom/miui/analytics/MiuiPIPTrackImpl;->mEnterPipPkgName:Ljava/lang/String;

    .line 36
    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 44
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    move-result-object p3

    .line 50
    invoke-static {v3, p3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const-string p3, "app_package_name"

    .line 54
    iget-object p0, p0, Lcom/miui/analytics/MiuiPIPTrackImpl;->mEnterPipPkgName:Ljava/lang/String;

    .line 56
    invoke-virtual {v2, p3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 58
    const-string p0, "23033100"

    .line 61
    invoke-static {v2, p2, p0}, Lcom/miui/analytics/MiuiTrackUtils;->addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V

    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    .line 66
    move-result p0

    .line 69
    const p2, -0x6fe96a28

    .line 70
    const/4 p3, 0x1

    .line 73
    if-eq p0, p2, :cond_2

    .line 74
    const p2, 0x28c968e7

    .line 76
    if-eq p0, p2, :cond_1

    .line 79
    goto :goto_1

    .line 81
    :cond_1
    const-string p0, "action_enter_pip"

    .line 82
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p0

    .line 87
    if-eqz p0, :cond_3

    .line 88
    const/4 p0, 0x0

    .line 90
    goto :goto_2

    .line 91
    :cond_2
    const-string p0, "action_click_function"

    .line 92
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 94
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    if-eqz p0, :cond_3

    .line 98
    move p0, p3

    .line 100
    goto :goto_2

    .line 101
    :cond_3
    :goto_1
    const/4 p0, -0x1

    .line 102
    :goto_2
    const-string p1, "EVENT_NAME"

    .line 103
    const-string/jumbo p2, "tip"

    .line 105
    if-eqz p0, :cond_5

    .line 108
    if-eq p0, p3, :cond_4

    .line 110
    goto :goto_4

    .line 112
    :cond_4
    :try_start_1
    const-string p0, "621.8.0.1.27899"

    .line 113
    invoke-virtual {v2, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string p0, "pip_function_click"

    .line 118
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    const-string p0, "function_name"

    .line 123
    invoke-interface {p4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 125
    move-result-object p1

    .line 128
    invoke-virtual {v2, p0, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 129
    goto :goto_4

    .line 132
    :cond_5
    const-string p0, "621.8.0.1.27898"

    .line 133
    invoke-virtual {v2, p2, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 135
    const-string p0, "enter_pip"

    .line 138
    invoke-virtual {v2, p1, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 140
    goto :goto_4

    .line 143
    :goto_3
    const-string p1, "reflect error when get MiuiTrackManager."

    .line 144
    invoke-static {v3, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    :goto_4
    invoke-static {}, Lcom/miui/analytics/MiuiTrackManagerStub;->getInstance()Lcom/miui/analytics/MiuiTrackManagerStub;

    .line 149
    move-result-object p0

    .line 152
    const-string p1, "android"

    .line 153
    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 155
    move-result-object p2

    .line 158
    const-string p3, "31000000538"

    .line 159
    invoke-virtual {p0, p3, p1, p2}, Lcom/miui/analytics/MiuiTrackManagerStub;->trackEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 161
    return-void
    .line 164
.end method
