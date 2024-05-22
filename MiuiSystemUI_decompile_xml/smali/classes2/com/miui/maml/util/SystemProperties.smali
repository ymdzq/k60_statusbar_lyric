.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static classSystemProperties:Ljava/lang/Class; = null

.field private static isSupportGet:Z = false

.field private static isSupportGetBoolean:Z = false

.field private static isSupportGetInt:Z = false

.field private static isSupportGetLong:Z = false

.field private static isSupportSet:Z = false


# direct methods
.method public static constructor <clinit>()V
    .locals 8

    .line 1
    const-class v0, Ljava/lang/String;

    .line 2
    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 4
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 6
    move-result-object v1

    .line 9
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    goto :goto_0

    .line 12
    :catch_0
    const/4 v1, 0x0

    .line 13
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 14
    :goto_0
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 16
    if-eqz v1, :cond_5

    .line 18
    const/4 v2, 0x2

    .line 20
    const/4 v3, 0x1

    .line 21
    const/4 v4, 0x0

    .line 22
    :try_start_1
    const-string v5, "get"

    .line 23
    new-array v6, v2, [Ljava/lang/Class;

    .line 25
    aput-object v0, v6, v4

    .line 27
    aput-object v0, v6, v3

    .line 29
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 31
    move-result-object v1

    .line 34
    if-eqz v1, :cond_0

    .line 35
    move v1, v3

    .line 37
    goto :goto_1

    .line 38
    :cond_0
    move v1, v4

    .line 39
    :goto_1
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 40
    goto :goto_2

    .line 42
    :catch_1
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    .line 43
    :goto_2
    :try_start_2
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 45
    const-string v5, "getInt"

    .line 47
    new-array v6, v2, [Ljava/lang/Class;

    .line 49
    aput-object v0, v6, v4

    .line 51
    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 53
    aput-object v7, v6, v3

    .line 55
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    move-result-object v1

    .line 60
    if-eqz v1, :cond_1

    .line 61
    move v1, v3

    .line 63
    goto :goto_3

    .line 64
    :cond_1
    move v1, v4

    .line 65
    :goto_3
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 66
    goto :goto_4

    .line 68
    :catch_2
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 69
    :goto_4
    :try_start_3
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 71
    const-string v5, "getLong"

    .line 73
    new-array v6, v2, [Ljava/lang/Class;

    .line 75
    aput-object v0, v6, v4

    .line 77
    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 79
    aput-object v7, v6, v3

    .line 81
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    move-result-object v1

    .line 86
    if-eqz v1, :cond_2

    .line 87
    move v1, v3

    .line 89
    goto :goto_5

    .line 90
    :cond_2
    move v1, v4

    .line 91
    :goto_5
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 92
    goto :goto_6

    .line 94
    :catch_3
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 95
    :goto_6
    :try_start_4
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 97
    const-string v5, "getBoolean"

    .line 99
    new-array v6, v2, [Ljava/lang/Class;

    .line 101
    aput-object v0, v6, v4

    .line 103
    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 105
    aput-object v7, v6, v3

    .line 107
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    move-result-object v1

    .line 112
    if-eqz v1, :cond_3

    .line 113
    move v1, v3

    .line 115
    goto :goto_7

    .line 116
    :cond_3
    move v1, v4

    .line 117
    :goto_7
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    .line 118
    goto :goto_8

    .line 120
    :catch_4
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 121
    :goto_8
    :try_start_5
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 123
    const-string/jumbo v5, "set"

    .line 125
    new-array v2, v2, [Ljava/lang/Class;

    .line 128
    aput-object v0, v2, v4

    .line 130
    aput-object v0, v2, v3

    .line 132
    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 134
    move-result-object v0

    .line 137
    if-eqz v0, :cond_4

    .line 138
    goto :goto_9

    .line 140
    :cond_4
    move v3, v4

    .line 141
    :goto_9
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    .line 142
    goto :goto_a

    .line 144
    :catch_5
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z

    .line 145
    :cond_5
    :goto_a
    return-void
    .line 147
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    return-void
    .line 5
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 2
    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    .line 6
    move-result p1

    .line 9
    :cond_0
    return p1
    .line 10
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    .line 6
    move-result p1

    .line 9
    :cond_0
    return p1
    .line 10
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 1
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    .line 6
    move-result-wide p1

    .line 9
    :cond_0
    return-wide p1
    .line 10
.end method
