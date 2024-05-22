.class public abstract Lcom/xiaomi/onetrack/util/DeviceUtil;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final f:Ljava/lang/reflect/Method;

.field public static final g:Ljava/lang/reflect/Method;

.field public static final h:Ljava/lang/Object;

.field public static final i:Ljava/lang/reflect/Method;

.field public static volatile k:Ljava/lang/String; = null

.field public static n:Ljava/lang/String; = null

.field public static volatile p:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    const-string v0, "DeviceUtil"

    .line 2
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

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
    new-array v5, v1, [Ljava/lang/Class;

    .line 14
    const-class v6, Ljava/lang/String;

    .line 16
    aput-object v6, v5, v2

    .line 18
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 20
    move-result-object v3

    .line 23
    sput-object v3, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;
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
    const-string v3, "miui.telephony.TelephonyManagerEx"

    .line 49
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 51
    move-result-object v3

    .line 54
    const-string v4, "getDefault"

    .line 55
    new-array v5, v2, [Ljava/lang/Class;

    .line 57
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 59
    move-result-object v4

    .line 62
    new-array v5, v2, [Ljava/lang/Object;

    .line 63
    const/4 v6, 0x0

    .line 65
    invoke-virtual {v4, v6, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    move-result-object v4

    .line 69
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    .line 70
    const-string v4, "getImeiList"

    .line 72
    new-array v5, v2, [Ljava/lang/Class;

    .line 74
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 76
    move-result-object v4

    .line 79
    sput-object v4, Lcom/xiaomi/onetrack/util/DeviceUtil;->g:Ljava/lang/reflect/Method;

    .line 80
    const-string v4, "getSubscriberIdForSlot"

    .line 82
    new-array v5, v1, [Ljava/lang/Class;

    .line 84
    sget-object v6, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 86
    aput-object v6, v5, v2

    .line 88
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 90
    goto :goto_1

    .line 93
    :catchall_1
    move-exception v3

    .line 94
    new-instance v4, Ljava/lang/StringBuilder;

    .line 95
    const-string v5, "TelephonyManagerEx init failed ex: "

    .line 97
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 99
    invoke-virtual {v3}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 102
    move-result-object v3

    .line 105
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 106
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 109
    move-result-object v3

    .line 112
    invoke-static {v0, v3}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 113
    :goto_1
    :try_start_2
    const-string v3, "android.telephony.TelephonyManager"

    .line 116
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 118
    move-result-object v3

    .line 121
    const-string v4, "getImei"

    .line 122
    new-array v1, v1, [Ljava/lang/Class;

    .line 124
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 126
    aput-object v5, v1, v2

    .line 128
    invoke-virtual {v3, v4, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 130
    move-result-object v1

    .line 133
    sput-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 134
    goto :goto_2

    .line 136
    :catchall_2
    move-exception v1

    .line 137
    new-instance v2, Ljava/lang/StringBuilder;

    .line 138
    const-string v3, "sGetImeiForSlot init failed ex: "

    .line 140
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 142
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 145
    move-result-object v1

    .line 148
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 152
    move-result-object v1

    .line 155
    invoke-static {v0, v1}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    :goto_2
    return-void
    .line 159
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    sget-object v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->f:Ljava/lang/reflect/Method;

    .line 3
    if-eqz v1, :cond_0

    .line 5
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {v1, v0, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    move-result-object p0

    .line 14
    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 15
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    move-exception p0

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    .line 21
    const-string v2, "getProp failed ex: "

    .line 23
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 35
    move-result-object p0

    .line 38
    const-string v1, "DeviceUtil"

    .line 39
    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_0
    return-object v0
    .line 44
.end method

.method public static b(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_1

    .line 4
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->g(Landroid/content/Context;)Ljava/util/List;

    .line 6
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    .line 7
    sget-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    goto :goto_0

    :cond_2
    move-object p0, v1

    .line 8
    :goto_0
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    invoke-static {p0}, Lcom/xiaomi/onetrack/d/d;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->n:Ljava/lang/String;

    return-object p0

    :cond_3
    return-object v1
.end method

.method public static b(Ljava/lang/String;)Z
    .locals 2

    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xf

    if-ne v0, v1, :cond_0

    const-string v0, "^0*$"

    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;
    .locals 10

    const-string v0, "getSubscriberId"

    const-string v1, "DeviceUtil"

    const-string v2, "getSubscriptionIds"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x0

    :try_start_0
    new-array v6, v4, [Ljava/lang/Class;

    .line 11
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v6

    new-array v8, v4, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-virtual {v6, p3, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    if-eqz v6, :cond_0

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object v7

    .line 12
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v7

    new-array v8, v4, [Ljava/lang/Object;

    aget v6, v6, v5

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v8, v5

    invoke-virtual {v7, p2, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    aput-object v6, v3, v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v6

    .line 13
    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "get imsi1 above Android Q exception:"

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v1, v6}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    :try_start_1
    new-array v6, v4, [Ljava/lang/Class;

    .line 14
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v5

    invoke-virtual {p1, v2, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p1

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v5

    invoke-virtual {p1, p3, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    filled-new-array {v7}, [Ljava/lang/Class;

    move-result-object p3

    .line 15
    invoke-virtual {p0, v0, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    new-array p3, v4, [Ljava/lang/Object;

    aget p1, p1, v5

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, p3, v5

    invoke-virtual {p0, p2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    aput-object p0, v3, v4
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p0

    .line 16
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "get imsi2 above Android Q exception:"

    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    :goto_1
    return-object v3
.end method

.method public static c(Ljava/lang/String;)Z
    .locals 2

    .line 1
    if-eqz p0, :cond_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x6

    .line 8
    if-lt v0, v1, :cond_0

    .line 9
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 11
    move-result v0

    .line 14
    const/16 v1, 0xf

    .line 15
    if-gt v0, v1, :cond_0

    .line 17
    const-string v0, "^0*$"

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 21
    move-result p0

    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 p0, 0x1

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    return p0
    .line 30
.end method

.method public static f()Z
    .locals 3

    .line 1
    const-string v0, "persist.radio.multisim.config"

    .line 2
    invoke-static {v0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    const-string v1, "dsds"

    .line 8
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    return v1

    .line 17
    :cond_0
    sget-object v0, Landroid/os/Build;->DEVICE:Ljava/lang/String;

    .line 18
    const-string v2, "lcsh92_wet_jb9"

    .line 20
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v2

    .line 25
    if-nez v2, :cond_2

    .line 26
    const-string v2, "lcsh92_wet_tdd"

    .line 28
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v2

    .line 33
    if-nez v2, :cond_2

    .line 34
    const-string v2, "HM2013022"

    .line 36
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 38
    move-result v2

    .line 41
    if-nez v2, :cond_2

    .line 42
    const-string v2, "HM2013023"

    .line 44
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 46
    move-result v2

    .line 49
    if-nez v2, :cond_2

    .line 50
    const-string v2, "armani"

    .line 52
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 54
    move-result v2

    .line 57
    if-nez v2, :cond_2

    .line 58
    const-string v2, "HM2014011"

    .line 60
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 62
    move-result v2

    .line 65
    if-nez v2, :cond_2

    .line 66
    const-string v2, "HM2014012"

    .line 68
    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v0

    .line 73
    if-eqz v0, :cond_1

    .line 74
    goto :goto_0

    .line 76
    :cond_1
    const/4 v0, 0x0

    .line 77
    return v0

    .line 78
    :cond_2
    :goto_0
    return v1
    .line 79
.end method

.method public static g(Landroid/content/Context;)Ljava/util/List;
    .locals 8

    .line 1
    sget-object v0, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 2
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->a()Z

    .line 6
    move-result v2

    .line 9
    if-nez v2, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/q;->h()Z

    .line 13
    move-result v2

    .line 16
    if-nez v2, :cond_1

    .line 17
    const-string v2, "1"

    .line 19
    const-string v3, "ro.miui.restrict_imei"

    .line 21
    invoke-static {v3}, Lcom/xiaomi/onetrack/util/ab;->a(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object v3

    .line 26
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 27
    move-result v2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 30
    if-eqz v2, :cond_1

    .line 31
    move v2, v1

    .line 33
    goto :goto_1

    .line 34
    :catch_0
    move-exception v2

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    .line 36
    const-string v4, "isRestrictIMEI "

    .line 38
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 40
    const-string v4, "PermissionUtil"

    .line 43
    invoke-static {v2, v3, v4}, Lcom/xiaomi/onetrack/CrashAnalysis$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 45
    :cond_1
    :goto_0
    move v2, v0

    .line 48
    :goto_1
    if-eqz v2, :cond_4

    .line 49
    sget-object v2, Lcom/xiaomi/onetrack/f/a;->e:Ljava/lang/String;

    .line 51
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 53
    move-result v3

    .line 56
    if-nez v3, :cond_2

    .line 57
    sget-object v3, Lcom/xiaomi/onetrack/util/u;->c:Ljava/util/Set;

    .line 59
    if-eqz v3, :cond_2

    .line 61
    check-cast v3, Ljava/util/HashSet;

    .line 63
    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    .line 65
    move-result v2

    .line 68
    if-eqz v2, :cond_2

    .line 69
    move v2, v1

    .line 71
    goto :goto_2

    .line 72
    :cond_2
    move v2, v0

    .line 73
    :goto_2
    if-eqz v2, :cond_3

    .line 74
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    .line 76
    move-result v2

    .line 79
    if-eqz v2, :cond_3

    .line 80
    move v2, v1

    .line 82
    goto :goto_3

    .line 83
    :cond_3
    move v2, v0

    .line 84
    goto :goto_3

    .line 85
    :cond_4
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    .line 86
    move-result v2

    .line 89
    :goto_3
    const/4 v3, 0x0

    .line 90
    if-eqz v2, :cond_e

    .line 91
    sget-boolean v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Z

    .line 93
    if-eqz v2, :cond_5

    .line 95
    return-object v3

    .line 97
    :cond_5
    sget-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->g:Ljava/lang/reflect/Method;

    .line 98
    const-string v4, "DeviceUtil"

    .line 100
    if-eqz v2, :cond_8

    .line 102
    :try_start_1
    sget-object v5, Lcom/xiaomi/onetrack/util/DeviceUtil;->h:Ljava/lang/Object;

    .line 104
    new-array v6, v0, [Ljava/lang/Object;

    .line 106
    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    move-result-object v2

    .line 111
    check-cast v2, Ljava/util/List;

    .line 112
    if-eqz v2, :cond_8

    .line 114
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 116
    move-result v5

    .line 119
    if-lez v5, :cond_8

    .line 120
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 122
    move-result-object v5

    .line 125
    :cond_6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    .line 126
    move-result v6

    .line 129
    if-eqz v6, :cond_7

    .line 130
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 132
    move-result-object v6

    .line 135
    check-cast v6, Ljava/lang/String;

    .line 136
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    .line 138
    move-result v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 141
    if-nez v6, :cond_6

    .line 142
    move v5, v1

    .line 144
    goto :goto_4

    .line 145
    :cond_7
    move v5, v0

    .line 146
    :goto_4
    if-nez v5, :cond_8

    .line 147
    goto :goto_5

    .line 149
    :catch_1
    move-exception v2

    .line 150
    new-instance v5, Ljava/lang/StringBuilder;

    .line 151
    const-string v6, "getImeiListFromMiui failed ex: "

    .line 153
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 155
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 158
    move-result-object v2

    .line 161
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 165
    move-result-object v2

    .line 168
    invoke-static {v4, v2}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 169
    :cond_8
    move-object v2, v3

    .line 172
    :goto_5
    if-eqz v2, :cond_a

    .line 173
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    .line 175
    move-result v5

    .line 178
    if-eqz v5, :cond_9

    .line 179
    goto :goto_6

    .line 181
    :cond_9
    move-object v3, v2

    .line 182
    goto :goto_7

    .line 183
    :cond_a
    :goto_6
    sget-object v2, Lcom/xiaomi/onetrack/util/DeviceUtil;->i:Ljava/lang/reflect/Method;

    .line 184
    if-eqz v2, :cond_d

    .line 186
    :try_start_2
    new-instance v5, Ljava/util/ArrayList;

    .line 188
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 190
    const-string v6, "phone"

    .line 193
    invoke-virtual {p0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 195
    move-result-object p0

    .line 198
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 199
    new-array v6, v1, [Ljava/lang/Object;

    .line 201
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 203
    move-result-object v7

    .line 206
    aput-object v7, v6, v0

    .line 207
    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    move-result-object v6

    .line 212
    check-cast v6, Ljava/lang/String;

    .line 213
    invoke-static {v6}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    .line 215
    move-result v7

    .line 218
    if-eqz v7, :cond_b

    .line 219
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    :cond_b
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->f()Z

    .line 224
    move-result v6

    .line 227
    if-eqz v6, :cond_c

    .line 228
    new-array v6, v1, [Ljava/lang/Object;

    .line 230
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 232
    move-result-object v7

    .line 235
    aput-object v7, v6, v0

    .line 236
    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    move-result-object p0

    .line 241
    check-cast p0, Ljava/lang/String;

    .line 242
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/String;)Z

    .line 244
    move-result v2

    .line 247
    if-eqz v2, :cond_c

    .line 248
    invoke-virtual {v5, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 250
    :cond_c
    move-object v3, v5

    .line 253
    goto :goto_7

    .line 254
    :catch_2
    move-exception p0

    .line 255
    new-instance v2, Ljava/lang/StringBuilder;

    .line 256
    const-string v5, "getImeiListAboveLollipop failed ex: "

    .line 258
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 260
    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    .line 263
    move-result-object p0

    .line 266
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 267
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 270
    move-result-object p0

    .line 273
    invoke-static {v4, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 274
    :cond_d
    :goto_7
    sput-boolean v1, Lcom/xiaomi/onetrack/util/DeviceUtil;->p:Z

    .line 277
    :cond_e
    if-eqz v3, :cond_f

    .line 279
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    .line 281
    move-result p0

    .line 284
    if-nez p0, :cond_f

    .line 285
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 287
    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 290
    move-result-object p0

    .line 293
    check-cast p0, Ljava/lang/String;

    .line 294
    sput-object p0, Lcom/xiaomi/onetrack/util/DeviceUtil;->k:Ljava/lang/String;

    .line 296
    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 298
    move-result p0

    .line 301
    const/4 v0, 0x2

    .line 302
    if-lt p0, v0, :cond_f

    .line 303
    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 305
    move-result-object p0

    .line 308
    check-cast p0, Ljava/lang/String;

    .line 309
    :cond_f
    return-object v3
    .line 311
.end method

.method public static h(Landroid/content/Context;)Ljava/util/List;
    .locals 7

    .line 1
    const-string v0, "DeviceUtil"

    .line 2
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/u;->a(Landroid/content/Context;)Z

    .line 4
    move-result v1

    .line 7
    if-eqz v1, :cond_4

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    .line 10
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 12
    :try_start_0
    invoke-static {}, Lcom/xiaomi/onetrack/util/DeviceUtil;->f()Z

    .line 15
    move-result v2
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 18
    const-string v3, "phone"

    .line 19
    if-eqz v2, :cond_2

    .line 21
    :try_start_1
    const-string v2, "android.telephony.TelephonyManager"

    .line 23
    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 25
    move-result-object v2

    .line 28
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 29
    move-result-object v3

    .line 32
    check-cast v3, Landroid/telephony/TelephonyManager;

    .line 33
    const-string/jumbo v4, "telephony_subscription_service"

    .line 35
    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    move-result-object p0

    .line 41
    check-cast p0, Landroid/telephony/SubscriptionManager;

    .line 42
    const-string v4, "android.telephony.SubscriptionManager"

    .line 44
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 46
    move-result-object v4

    .line 49
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 50
    move-result-object v5

    .line 53
    const/4 v6, 0x0

    .line 54
    aget-object v5, v5, v6

    .line 55
    invoke-static {v2, v4, v3, p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->b(Ljava/lang/Class;Ljava/lang/Class;Landroid/telephony/TelephonyManager;Landroid/telephony/SubscriptionManager;)[Ljava/lang/String;

    .line 57
    move-result-object p0

    .line 60
    const/4 v2, 0x1

    .line 61
    aget-object p0, p0, v2

    .line 62
    invoke-static {v5}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 64
    move-result v2
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 67
    const-string v3, ""

    .line 68
    if-eqz v2, :cond_0

    .line 70
    goto :goto_0

    .line 72
    :cond_0
    move-object v5, v3

    .line 73
    :goto_0
    :try_start_2
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 77
    move-result v2

    .line 80
    if-eqz v2, :cond_1

    .line 81
    goto :goto_1

    .line 83
    :cond_1
    move-object p0, v3

    .line 84
    :goto_1
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 85
    return-object v1

    .line 88
    :cond_2
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 89
    move-result-object p0

    .line 92
    check-cast p0, Landroid/telephony/TelephonyManager;

    .line 93
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    .line 95
    move-result-object p0

    .line 98
    invoke-static {p0}, Lcom/xiaomi/onetrack/util/DeviceUtil;->c(Ljava/lang/String;)Z

    .line 99
    move-result v2

    .line 102
    if-eqz v2, :cond_3

    .line 103
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 105
    :cond_3
    return-object v1

    .line 108
    :catchall_0
    move-exception p0

    .line 109
    new-instance v1, Ljava/lang/StringBuilder;

    .line 110
    const-string v2, "getImsiList failed: "

    .line 112
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 114
    invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 117
    move-result-object p0

    .line 120
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 121
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 124
    move-result-object p0

    .line 127
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    goto :goto_2

    .line 131
    :catch_0
    const-string p0, "getImsiList failed with on permission"

    .line 132
    invoke-static {v0, p0}, Lcom/xiaomi/onetrack/util/p;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    :cond_4
    :goto_2
    const/4 p0, 0x0

    .line 137
    return-object p0
    .line 138
.end method
