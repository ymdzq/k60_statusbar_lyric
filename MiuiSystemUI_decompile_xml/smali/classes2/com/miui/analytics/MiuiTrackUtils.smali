.class public abstract Lcom/miui/analytics/MiuiTrackUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static addGlobalParams(Lorg/json/JSONObject;Landroid/content/Context;Ljava/lang/String;)V
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "android.util.MiuiMultiWindowUtils"

    .line 2
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "isPadScreen"

    .line 8
    const/4 v2, 0x1

    .line 10
    new-array v3, v2, [Ljava/lang/Class;

    .line 11
    const-class v4, Landroid/content/Context;

    .line 13
    const/4 v5, 0x0

    .line 15
    aput-object v4, v3, v5

    .line 16
    invoke-virtual {v0, v1, v3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v1

    .line 21
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 22
    move-result-object v3

    .line 25
    invoke-virtual {v1, v0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v1

    .line 29
    check-cast v1, Ljava/lang/Boolean;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 32
    move-result v1

    .line 35
    const-string v3, "isFoldInnerScreen"

    .line 36
    new-array v4, v2, [Ljava/lang/Class;

    .line 38
    const-class v6, Landroid/content/Context;

    .line 40
    aput-object v6, v4, v5

    .line 42
    invoke-virtual {v0, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v3

    .line 47
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 48
    move-result-object v4

    .line 51
    invoke-virtual {v3, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    move-result-object v3

    .line 55
    check-cast v3, Ljava/lang/Boolean;

    .line 56
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    .line 58
    move-result v3

    .line 61
    const-string v4, "isFoldOuterScreen"

    .line 62
    new-array v6, v2, [Ljava/lang/Class;

    .line 64
    const-class v7, Landroid/content/Context;

    .line 66
    aput-object v7, v6, v5

    .line 68
    invoke-virtual {v0, v4, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 70
    move-result-object v4

    .line 73
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 74
    move-result-object v5

    .line 77
    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    move-result-object v0

    .line 81
    check-cast v0, Ljava/lang/Boolean;

    .line 82
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 84
    move-result v0

    .line 87
    const-string v4, "model_type"

    .line 88
    if-eqz v1, :cond_0

    .line 90
    const-string v1, "pad"

    .line 92
    goto :goto_0

    .line 94
    :cond_0
    const-string/jumbo v1, "\u624b\u673a"

    .line 95
    :goto_0
    invoke-virtual {p0, v4, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 98
    const-string v1, "screen_orientation"

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 103
    move-result-object p1

    .line 106
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 107
    move-result-object p1

    .line 110
    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    .line 111
    if-ne p1, v2, :cond_1

    .line 113
    const-string/jumbo p1, "\u7ad6\u5c4f"

    .line 115
    goto :goto_1

    .line 118
    :cond_1
    const-string/jumbo p1, "\u6a2a\u5c4f"

    .line 119
    :goto_1
    invoke-virtual {p0, v1, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 122
    const-string p1, "screen_type"

    .line 125
    if-eqz v3, :cond_2

    .line 127
    const-string/jumbo v0, "\u5185\u5c4f"

    .line 129
    goto :goto_2

    .line 132
    :cond_2
    if-eqz v0, :cond_3

    .line 133
    const-string/jumbo v0, "\u5916\u5c4f"

    .line 135
    goto :goto_2

    .line 138
    :cond_3
    const-string v0, "nothing"

    .line 139
    :goto_2
    invoke-virtual {p0, p1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string p1, "data_version"

    .line 144
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string p1, "home_mode"

    .line 149
    invoke-static {}, Lcom/android/wm/shell/miuidesktopmode/MiuiDesktopModeStatus;->isActive()Z

    .line 151
    move-result p2

    .line 154
    if-eqz p2, :cond_4

    .line 155
    const-string/jumbo p2, "\u5de5\u4f5c\u53f0\u6a21\u5f0f"

    .line 157
    goto :goto_3

    .line 160
    :cond_4
    const-string/jumbo p2, "\u666e\u901a\u6a21\u5f0f"

    .line 161
    :goto_3
    invoke-virtual {p0, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 164
    goto :goto_4

    .line 167
    :catch_0
    move-exception p0

    .line 168
    const-string p1, "MiuiTrackUtils"

    .line 169
    const-string p2, "reflect error when get MiuiTrackManagerImpl"

    .line 171
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_4
    return-void
    .line 176
.end method

.method public static getAppDisplayName(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 3
    move-result-object p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    const/4 v1, 0x0

    .line 7
    :try_start_1
    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    .line 8
    move-result-object v0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 11
    goto :goto_0

    .line 12
    :catch_0
    move-object p0, v0

    .line 13
    :catch_1
    :goto_0
    if-eqz v0, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/String;

    .line 20
    goto :goto_1

    .line 22
    :cond_0
    const-string p0, ""

    .line 23
    :goto_1
    return-object p0
    .line 25
.end method

.method public static getPackageName(Landroid/app/ActivityManager$RunningTaskInfo;)Ljava/lang/String;
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Landroid/app/ActivityManager$RunningTaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 13
    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    :goto_0
    return-object p0

    .line 19
    :cond_1
    const-string p0, ""

    .line 20
    return-object p0
    .line 22
.end method
