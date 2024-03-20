.class public abstract Lcom/xiaomi/onetrack/util/q;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final n:Ljava/lang/Class;

.field public static final o:Ljava/lang/reflect/Method;

.field public static p:Ljava/lang/Boolean; = null

.field public static final r:Ljava/lang/reflect/Method;

.field public static s:Z = false

.field public static t:Ljava/lang/String; = null

.field public static u:Z = false

.field public static v:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "OsUtil"

    .line 2
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    :try_start_0
    const-string v3, "android.os.SystemProperties"

    .line 6
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v3

    .line 11
    const-string v4, "get"

    .line 12
    new-array v5, v2, [Ljava/lang/Class;

    .line 14
    const-class v6, Ljava/lang/String;

    .line 16
    aput-object v6, v5, v1

    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v3

    .line 23
    sput-object v3, Lcom/xiaomi/onetrack/util/q;->r:Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    goto :goto_0

    .line 26
    :catchall_0
    move-exception v3

    .line 27
    new-instance v4, Ljava/lang/StringBuilder;

    .line 28
    const-string v5, "sGetProp init failed ex: "

    .line 30
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 32
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 35
    move-result-object v3

    .line 38
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 39
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 42
    move-result-object v3

    .line 45
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    :goto_0
    :try_start_1
    const-string v3, "miui.os.Build"

    .line 49
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    move-result-object v3

    .line 54
    sput-object v3, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 55
    goto :goto_1

    .line 57
    :catchall_1
    move-exception v3

    .line 58
    new-instance v4, Ljava/lang/StringBuilder;

    .line 59
    const-string v5, "sMiuiBuild init failed ex: "

    .line 61
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 66
    move-result-object v3

    .line 69
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 70
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 73
    move-result-object v3

    .line 76
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_1
    :try_start_2
    const-string v3, "android.provider.MiuiSettings$Secure"

    .line 80
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 82
    move-result-object v3

    .line 85
    const-string v4, "isUserExperienceProgramEnable"

    .line 86
    new-array v5, v2, [Ljava/lang/Class;

    .line 88
    const-class v6, Landroid/content/ContentResolver;

    .line 90
    aput-object v6, v5, v1

    .line 92
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 94
    move-result-object v1

    .line 97
    sput-object v1, Lcom/xiaomi/onetrack/util/q;->o:Ljava/lang/reflect/Method;

    .line 98
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 100
    goto :goto_2

    .line 103
    :catchall_2
    move-exception v1

    .line 104
    new-instance v2, Ljava/lang/StringBuilder;

    .line 105
    const-string v3, "sMiuiUEPMethod init failed ex: "

    .line 107
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 112
    move-result-object v1

    .line 115
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 116
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 119
    move-result-object v1

    .line 122
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :goto_2
    return-void
.end method

.method public static a()Z
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "ro.miui.ui.version.code"

    const/4 v1, 0x0

    .line 3
    :try_start_0
    sget-object v2, Lcom/xiaomi/onetrack/util/q;->r:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 4
    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "getProp failed ex: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "OsUtil"

    invoke-static {v2, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    :cond_1
    :goto_0
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 7
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    sput-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    .line 9
    :goto_1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->p:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public static a(Ljava/lang/String;)Z
    .locals 7

    .line 10
    sget-boolean v0, Lcom/xiaomi/onetrack/OneTrack;->b:Z

    const-string/jumbo v1, "should not access network or location, cta"

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 11
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_0
    const-string v0, "OsUtil"

    const-string v3, "Provisioned: "

    const/4 v4, 0x0

    .line 12
    :try_start_0
    sget-object v5, Lcom/xiaomi/onetrack/f/a;->a:Landroid/content/Context;

    .line 13
    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "device_provisioned"

    .line 14
    invoke-static {v5, v6, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eqz v5, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    if-nez v5, :cond_2

    .line 15
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v5, "isDeviceProvisioned exception"

    .line 16
    invoke-static {v0, v5, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v5, v2

    :cond_2
    :goto_1
    if-nez v5, :cond_3

    const-string/jumbo v0, "should not access network or location, not provisioned"

    .line 17
    invoke-static {p0, v0}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    .line 18
    :cond_3
    invoke-static {}, Lcom/xiaomi/onetrack/c/i;->b()Z

    move-result v0

    if-nez v0, :cond_4

    .line 19
    invoke-static {p0, v1}, Lcom/xiaomi/onetrack/util/p;->c(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_4
    return v4
.end method

.method public static b()Ljava/lang/String;
    .locals 7

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Ljava/util/TimeZone;->getRawOffset()I

    .line 6
    move-result v0

    .line 9
    const v1, 0xea60

    .line 10
    :try_start_0
    div-int/2addr v0, v1

    .line 13
    if-gez v0, :cond_0

    .line 14
    neg-int v0, v0

    .line 16
    const/16 v1, 0x2d

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    const/16 v1, 0x2b

    .line 20
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    .line 22
    const/16 v3, 0x9

    .line 24
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 26
    const-string v3, "GMT"

    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 34
    div-int/lit8 v1, v0, 0x3c

    .line 37
    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 39
    move-result-object v1

    .line 42
    const/4 v3, 0x0

    .line 43
    move v4, v3

    .line 44
    :goto_1
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    .line 45
    move-result v5

    .line 48
    rsub-int/lit8 v5, v5, 0x2

    .line 49
    const/16 v6, 0x30

    .line 51
    if-ge v4, v5, :cond_1

    .line 53
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 55
    add-int/lit8 v4, v4, 0x1

    .line 58
    goto :goto_1

    .line 60
    :cond_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    const/16 v1, 0x3a

    .line 64
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 66
    rem-int/lit8 v0, v0, 0x3c

    .line 69
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    .line 71
    move-result-object v0

    .line 74
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 75
    move-result v1

    .line 78
    rsub-int/lit8 v1, v1, 0x2

    .line 79
    if-ge v3, v1, :cond_2

    .line 81
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 83
    add-int/lit8 v3, v3, 0x1

    .line 86
    goto :goto_2

    .line 88
    :cond_2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 92
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    goto :goto_3

    .line 96
    :catch_0
    const-string v0, ""

    .line 97
    :goto_3
    return-object v0
    .line 99
.end method

.method public static c()Ljava/lang/String;
    .locals 4

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    .line 2
    if-eqz v0, :cond_3

    .line 4
    :try_start_0
    const-string v1, "IS_ALPHA_BUILD"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 8
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    move-result-object v1

    .line 16
    check-cast v1, Ljava/lang/Boolean;

    .line 17
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 19
    move-result v1

    .line 22
    if-eqz v1, :cond_0

    .line 23
    const-string v0, "A"

    .line 25
    return-object v0

    .line 27
    :cond_0
    const-string v1, "IS_STABLE_VERSION"

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    move-result-object v1

    .line 37
    check-cast v1, Ljava/lang/Boolean;

    .line 38
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    .line 40
    move-result v1

    .line 43
    if-eqz v1, :cond_1

    .line 44
    const-string v0, "S"

    .line 46
    return-object v0

    .line 48
    :cond_1
    sget-object v1, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 49
    const-string v3, ".DEV"

    .line 51
    invoke-virtual {v1, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v1

    .line 56
    const-string v3, "IS_DEVELOPMENT_VERSION"

    .line 57
    invoke-virtual {v0, v3}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 59
    move-result-object v0

    .line 62
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v0

    .line 66
    check-cast v0, Ljava/lang/Boolean;

    .line 67
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 69
    move-result v0

    .line 72
    if-eqz v0, :cond_2

    .line 73
    if-nez v1, :cond_2

    .line 75
    const-string v0, "D"

    .line 77
    return-object v0

    .line 79
    :cond_2
    if-eqz v0, :cond_3

    .line 80
    if-eqz v1, :cond_3

    .line 82
    const-string v0, "X"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    return-object v0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    .line 88
    const-string v2, "getRomBuildCode failed: "

    .line 90
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 92
    const-string v2, "OsUtil"

    .line 95
    invoke-static {v0, v1, v2}, Lcom/android/systemui/qs/tiles/MiuiWifiTile$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 97
    :cond_3
    const-string v0, ""

    .line 100
    return-object v0
    .line 102
.end method

.method public static h()Z
    .locals 2

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->u:Z

    .line 8
    if-nez v0, :cond_2

    .line 10
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->n:Ljava/lang/Class;

    .line 12
    if-eqz v0, :cond_0

    .line 14
    :try_start_0
    const-string v1, "IS_INTERNATIONAL_BUILD"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 18
    move-result-object v0

    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 27
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 29
    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    goto :goto_0

    .line 33
    :catch_0
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 34
    move-result-object v0

    .line 37
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 38
    move-result v1

    .line 41
    if-nez v1, :cond_1

    .line 42
    const-string v1, "CN"

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 46
    move-result-object v0

    .line 49
    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 50
    move-result v0

    .line 53
    xor-int/lit8 v0, v0, 0x1

    .line 54
    goto :goto_0

    .line 56
    :cond_1
    const/4 v0, 0x0

    .line 57
    :goto_0
    return v0

    .line 58
    :cond_2
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->s:Z

    .line 59
    return v0
    .line 61
.end method

.method public static i()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    sget-boolean v0, Lcom/xiaomi/onetrack/util/q;->u:Z

    .line 8
    if-nez v0, :cond_0

    .line 10
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    return-object v0

    .line 16
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 19
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    sget-object v0, Lcom/xiaomi/onetrack/util/q;->t:Ljava/lang/String;

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->k()Ljava/lang/String;

    .line 28
    move-result-object v0

    .line 31
    :goto_0
    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 8

    .line 1
    :try_start_0
    const-string v0, "ro.miui.region"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    const-string v0, "ro.product.locale.region"

    .line 14
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 16
    move-result-object v0

    .line 19
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 20
    move-result v1

    .line 23
    if-eqz v1, :cond_1

    .line 24
    const-string v1, "android.os.LocaleList"

    .line 26
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 28
    move-result-object v1

    .line 31
    const-string v2, "getDefault"

    .line 32
    const/4 v3, 0x0

    .line 34
    new-array v4, v3, [Ljava/lang/Class;

    .line 35
    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 37
    move-result-object v1

    .line 40
    new-array v2, v3, [Ljava/lang/Object;

    .line 41
    const/4 v4, 0x0

    .line 43
    invoke-virtual {v1, v4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    move-result-object v1

    .line 47
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    move-result-object v2

    .line 51
    const-string/jumbo v4, "size"

    .line 52
    new-array v5, v3, [Ljava/lang/Class;

    .line 55
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    move-result-object v2

    .line 60
    new-array v4, v3, [Ljava/lang/Object;

    .line 61
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 66
    instance-of v4, v2, Ljava/lang/Integer;

    .line 67
    if-eqz v4, :cond_1

    .line 69
    check-cast v2, Ljava/lang/Integer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 73
    move-result v2

    .line 76
    if-lez v2, :cond_1

    .line 77
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 79
    move-result-object v2

    .line 82
    const-string v4, "get"

    .line 83
    const/4 v5, 0x1

    .line 85
    new-array v6, v5, [Ljava/lang/Class;

    .line 86
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 88
    aput-object v7, v6, v3

    .line 90
    invoke-virtual {v2, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 92
    move-result-object v2

    .line 95
    new-array v4, v5, [Ljava/lang/Object;

    .line 96
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 98
    move-result-object v5

    .line 101
    aput-object v5, v4, v3

    .line 102
    invoke-virtual {v2, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 104
    move-result-object v1

    .line 107
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 108
    move-result-object v2

    .line 111
    const-string v4, "getCountry"

    .line 112
    new-array v5, v3, [Ljava/lang/Class;

    .line 114
    invoke-virtual {v2, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 116
    move-result-object v2

    .line 119
    new-array v3, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v2, v1, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 122
    move-result-object v1

    .line 125
    instance-of v2, v1, Ljava/lang/String;

    .line 126
    if-eqz v2, :cond_1

    .line 128
    move-object v0, v1

    .line 130
    check-cast v0, Ljava/lang/String;

    .line 131
    :cond_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 133
    move-result v1

    .line 136
    if-eqz v1, :cond_2

    .line 137
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 139
    move-result-object v0

    .line 142
    invoke-virtual {v0}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    .line 143
    move-result-object v0

    .line 146
    :cond_2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 147
    move-result v1

    .line 150
    if-nez v1, :cond_3

    .line 151
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 153
    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 156
    return-object v0

    .line 157
    :catchall_0
    move-exception v0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    const-string v2, "getRegion Exception: "

    .line 161
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 173
    move-result-object v0

    .line 176
    const-string v1, "OsUtil"

    .line 177
    invoke-static {v1, v0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_3
    const-string v0, ""

    .line 182
    return-object v0
    .line 184
.end method
