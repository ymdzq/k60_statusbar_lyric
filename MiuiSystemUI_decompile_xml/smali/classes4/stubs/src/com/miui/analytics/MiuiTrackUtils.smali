.class public abstract Lstubs/src/com/miui/analytics/MiuiTrackUtils;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method public static isCN()Z
    .locals 9

    .line 1
    const-string v0, ""

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    :try_start_0
    const-string v3, "ro.miui.region"

    .line 6
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 8
    move-result-object v3

    .line 11
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v4

    .line 15
    if-eqz v4, :cond_0

    .line 16
    const-string v3, "ro.product.locale.region"

    .line 18
    invoke-static {v3, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 20
    move-result-object v3

    .line 23
    :cond_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 24
    move-result v4

    .line 27
    if-eqz v4, :cond_1

    .line 28
    const-string v4, "android.os.LocaleList"

    .line 30
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 32
    move-result-object v4

    .line 35
    const-string v5, "getDefault"

    .line 36
    new-array v6, v2, [Ljava/lang/Class;

    .line 38
    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    move-result-object v4

    .line 43
    new-array v5, v2, [Ljava/lang/Object;

    .line 44
    const/4 v6, 0x0

    .line 46
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    move-result-object v4

    .line 50
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 51
    move-result-object v5

    .line 54
    const-string v6, "size"

    .line 55
    new-array v7, v2, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v5

    .line 62
    new-array v6, v2, [Ljava/lang/Object;

    .line 63
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    move-result-object v5

    .line 68
    instance-of v6, v5, Ljava/lang/Integer;

    .line 69
    if-eqz v6, :cond_1

    .line 71
    check-cast v5, Ljava/lang/Integer;

    .line 73
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 75
    move-result v5

    .line 78
    if-lez v5, :cond_1

    .line 79
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 81
    move-result-object v5

    .line 84
    const-string v6, "get"

    .line 85
    new-array v7, v1, [Ljava/lang/Class;

    .line 87
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 89
    aput-object v8, v7, v2

    .line 91
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 93
    move-result-object v5

    .line 96
    new-array v6, v1, [Ljava/lang/Object;

    .line 97
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 99
    move-result-object v7

    .line 102
    aput-object v7, v6, v2

    .line 103
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    move-result-object v4

    .line 108
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 109
    move-result-object v5

    .line 112
    const-string v6, "getCountry"

    .line 113
    new-array v7, v2, [Ljava/lang/Class;

    .line 115
    invoke-virtual {v5, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 117
    move-result-object v5

    .line 120
    new-array v6, v2, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    move-result-object v4

    .line 126
    instance-of v5, v4, Ljava/lang/String;

    .line 127
    if-eqz v5, :cond_1

    .line 129
    move-object v3, v4

    .line 131
    check-cast v3, Ljava/lang/String;

    .line 132
    :cond_1
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 134
    move-result v4

    .line 137
    if-eqz v4, :cond_2

    .line 138
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 140
    move-result-object v3

    .line 143
    invoke-virtual {v3}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 144
    move-result-object v3

    .line 147
    :cond_2
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 148
    move-result v4

    .line 151
    if-nez v4, :cond_3

    .line 152
    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 154
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    goto :goto_0

    .line 158
    :catch_0
    move-exception v3

    .line 159
    const-string v4, "MiuiTrackUtils"

    .line 160
    const-string v5, "getRegion Exception: "

    .line 162
    invoke-static {v4, v5, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 164
    :cond_3
    :goto_0
    const-string v3, "CN"

    .line 167
    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 169
    move-result v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    return v1

    .line 175
    :cond_4
    return v2
    .line 176
.end method

.method public static isCanOneTrack()Z
    .locals 3

    .line 1
    const-string v0, "persist.sys.muiltdisplay_type"

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 5
    move-result v0

    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_0

    .line 10
    const-string v0, "ro.build.characteristics"

    .line 12
    const-string v2, ""

    .line 14
    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    const-string v2, "tablet"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    if-nez v0, :cond_0

    .line 26
    return v1

    .line 28
    :cond_0
    invoke-static {}, Lstubs/src/com/miui/analytics/MiuiTrackUtils;->isCN()Z

    .line 29
    move-result v0

    .line 32
    return v0
    .line 33
.end method
