.class public abstract Lcom/mi/mibridge/MiBridge;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final a:Ljava/lang/reflect/Method;

.field public static final c:Ljava/lang/reflect/Method;

.field public static final d:Ljava/lang/reflect/Method;

.field public static final i:Ljava/lang/reflect/Constructor;

.field public static final j:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    const-string v0, "checkPermission"

    .line 2
    const-string v1, "MiBridge"

    .line 4
    const-class v2, Ljava/lang/String;

    .line 6
    const/4 v3, 0x0

    .line 8
    :try_start_0
    new-instance v4, Ldalvik/system/PathClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    const-string v5, "/system/framework/MiuiBooster.jar"

    .line 11
    :try_start_1
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    .line 13
    move-result-object v6

    .line 16
    invoke-direct {v4, v5, v6}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 17
    const-string v5, "com.miui.performance.MiuiBooster"

    .line 20
    :try_start_2
    invoke-virtual {v4, v5}, Ldalvik/system/PathClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    .line 22
    move-result-object v4

    .line 25
    new-array v5, v3, [Ljava/lang/Class;

    .line 26
    invoke-virtual {v4, v5}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 28
    move-result-object v5

    .line 31
    sput-object v5, Lcom/mi/mibridge/MiBridge;->i:Ljava/lang/reflect/Constructor;

    .line 32
    const/4 v5, 0x2

    .line 34
    new-array v6, v5, [Ljava/lang/Class;

    .line 35
    aput-object v2, v6, v3

    .line 37
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 39
    const/4 v8, 0x1

    .line 41
    aput-object v7, v6, v8

    .line 42
    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 44
    move-result-object v6

    .line 47
    sput-object v6, Lcom/mi/mibridge/MiBridge;->a:Ljava/lang/reflect/Method;

    .line 48
    const/4 v6, 0x4

    .line 50
    new-array v6, v6, [Ljava/lang/Class;

    .line 51
    const-class v9, Landroid/content/Context;

    .line 53
    aput-object v9, v6, v3

    .line 55
    aput-object v2, v6, v8

    .line 57
    aput-object v7, v6, v5

    .line 59
    const/4 v5, 0x3

    .line 61
    aput-object v2, v6, v5

    .line 62
    invoke-virtual {v4, v0, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 64
    filled-new-array {v7, v7, v7}, [Ljava/lang/Class;

    .line 67
    move-result-object v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 70
    const-string v2, "requestCpuHighFreq"

    .line 71
    :try_start_3
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    move-result-object v0

    .line 76
    sput-object v0, Lcom/mi/mibridge/MiBridge;->c:Ljava/lang/reflect/Method;

    .line 77
    filled-new-array {v7}, [Ljava/lang/Class;

    .line 79
    move-result-object v0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    .line 82
    const-string v2, "cancelCpuHighFreq"

    .line 83
    :try_start_4
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 85
    move-result-object v0

    .line 88
    sput-object v0, Lcom/mi/mibridge/MiBridge;->d:Ljava/lang/reflect/Method;

    .line 89
    filled-new-array {v7, v7, v7}, [Ljava/lang/Class;

    .line 91
    move-result-object v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 94
    const-string v2, "requestThreadPriority"

    .line 95
    :try_start_5
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    filled-new-array {v7, v7}, [Ljava/lang/Class;

    .line 100
    move-result-object v0
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    .line 103
    const-string v2, "cancelThreadPriority"

    .line 104
    :try_start_6
    invoke-virtual {v4, v2, v0}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 106
    goto :goto_0

    .line 109
    :catch_0
    move-exception v0

    .line 110
    const-string v2, "MiBridge() : Load Class Exception: "

    .line 111
    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 113
    :goto_0
    :try_start_7
    sget-object v0, Lcom/mi/mibridge/MiBridge;->i:Ljava/lang/reflect/Constructor;

    .line 116
    if-eqz v0, :cond_0

    .line 118
    new-array v2, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v0

    .line 125
    sput-object v0, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/Object;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_1

    .line 126
    goto :goto_1

    .line 128
    :catch_1
    move-exception v0

    .line 129
    const-string v2, "MiBridge() : newInstance Exception:"

    .line 130
    invoke-static {v2, v0, v1}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 132
    :cond_0
    :goto_1
    return-void
    .line 135
.end method

.method public static cancelCpuHighFreq(I)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/mi/mibridge/MiBridge;->d:Ljava/lang/reflect/Method;

    .line 2
    sget-object v1, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/Object;

    .line 4
    const/4 v2, 0x1

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p0, v2, v3

    .line 14
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    move-result-object p0

    .line 19
    check-cast p0, Ljava/lang/Integer;

    .line 20
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 22
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception p0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string v1, "cancel cpu high failed, e:"

    .line 30
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    const-string v1, "MiBridge"

    .line 35
    invoke-static {p0, v0, v1}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 37
    const/4 p0, -0x1

    .line 40
    :goto_0
    return p0
    .line 41
.end method

.method public static checkPermission(I)Z
    .locals 5

    .line 1
    const-string v0, "com.android.systemui"

    .line 2
    const/4 v1, 0x0

    .line 4
    :try_start_0
    sget-object v2, Lcom/mi/mibridge/MiBridge;->a:Ljava/lang/reflect/Method;

    .line 5
    sget-object v3, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/Object;

    .line 7
    const/4 v4, 0x2

    .line 9
    new-array v4, v4, [Ljava/lang/Object;

    .line 10
    aput-object v0, v4, v1

    .line 12
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 14
    move-result-object p0

    .line 17
    const/4 v0, 0x1

    .line 18
    aput-object p0, v4, v0

    .line 19
    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/Boolean;

    .line 25
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 27
    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    new-instance v0, Ljava/lang/StringBuilder;

    .line 33
    const-string v2, "check permission failed , e:"

    .line 35
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 37
    const-string v2, "MiBridge"

    .line 40
    invoke-static {p0, v0, v2}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 42
    :goto_0
    return v1
    .line 45
.end method

.method public static requestCpuHighFreq(II)I
    .locals 4

    .line 1
    :try_start_0
    sget-object v0, Lcom/mi/mibridge/MiBridge;->c:Ljava/lang/reflect/Method;

    .line 2
    sget-object v1, Lcom/mi/mibridge/MiBridge;->j:Ljava/lang/Object;

    .line 4
    const/4 v2, 0x3

    .line 6
    new-array v2, v2, [Ljava/lang/Object;

    .line 7
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    move-result-object p0

    .line 12
    const/4 v3, 0x0

    .line 13
    aput-object p0, v2, v3

    .line 14
    const/4 p0, 0x1

    .line 16
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 17
    move-result-object v3

    .line 20
    aput-object v3, v2, p0

    .line 21
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 23
    move-result-object p0

    .line 26
    const/4 p1, 0x2

    .line 27
    aput-object p0, v2, p1

    .line 28
    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/Integer;

    .line 34
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 36
    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    goto :goto_0

    .line 40
    :catch_0
    move-exception p0

    .line 41
    new-instance p1, Ljava/lang/StringBuilder;

    .line 42
    const-string v0, "request cpu high failed , e:"

    .line 44
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 46
    const-string v0, "MiBridge"

    .line 49
    invoke-static {p0, p1, v0}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 51
    const/4 p0, -0x1

    .line 54
    :goto_0
    return p0
    .line 55
.end method
