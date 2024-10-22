.class public Lcom/miui/maml/util/SystemProperties;
.super Ljava/lang/Object;
.source "SystemProperties.java"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# static fields
.field public static final PROP_NAME_MAX:I = 0x1f

.field public static final PROP_VALUE_MAX:I = 0x5b

.field private static classSystemProperties:Ljava/lang/Class; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private static isSupportGet:Z = false

.field private static isSupportGetBoolean:Z = false

.field private static isSupportGetInt:Z = false

.field private static isSupportGetLong:Z = false

.field private static isSupportSet:Z = false


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 10
    const-class v0, Ljava/lang/String;

    :try_start_0
    const-string v1, "android.os.SystemProperties"

    .line 41
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 v1, 0x0

    .line 43
    sput-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    .line 46
    :goto_0
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    if-eqz v1, :cond_5

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_1
    const-string v5, "get"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    aput-object v0, v6, v3

    .line 48
    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_1

    :cond_0
    move v1, v4

    :goto_1
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 50
    :catch_1
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    .line 54
    :goto_2
    :try_start_2
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getInt"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_1

    move v1, v3

    goto :goto_3

    :cond_1
    move v1, v4

    :goto_3
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_4

    .line 56
    :catch_2
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    .line 60
    :goto_4
    :try_start_3
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getLong"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_5

    :cond_2
    move v1, v4

    :goto_5
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_6

    .line 62
    :catch_3
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    .line 66
    :goto_6
    :try_start_4
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string v5, "getBoolean"

    new-array v6, v2, [Ljava/lang/Class;

    aput-object v0, v6, v4

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    if-eqz v1, :cond_3

    move v1, v3

    goto :goto_7

    :cond_3
    move v1, v4

    :goto_7
    sput-boolean v1, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_8

    .line 68
    :catch_4
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    .line 72
    :goto_8
    :try_start_5
    sget-object v1, Lcom/miui/maml/util/SystemProperties;->classSystemProperties:Ljava/lang/Class;

    const-string/jumbo v5, "set"

    new-array v2, v2, [Ljava/lang/Class;

    aput-object v0, v2, v4

    aput-object v0, v2, v3

    invoke-virtual {v1, v5, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    if-eqz v0, :cond_4

    goto :goto_9

    :cond_4
    move v3, v4

    :goto_9
    sput-boolean v3, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_5

    goto :goto_a

    .line 74
    :catch_5
    sput-boolean v4, Lcom/miui/maml/util/SystemProperties;->isSupportSet:Z

    :cond_5
    :goto_a
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    .line 24
    invoke-static {p0, v0}, Lcom/miui/maml/util/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 20
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGet:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static getBoolean(Ljava/lang/String;Z)Z
    .locals 1

    .line 36
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetBoolean:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    :cond_0
    return p1
.end method

.method public static getInt(Ljava/lang/String;I)I
    .locals 1

    .line 28
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetInt:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result p1

    :cond_0
    return p1
.end method

.method public static getLong(Ljava/lang/String;J)J
    .locals 1

    .line 32
    sget-boolean v0, Lcom/miui/maml/util/SystemProperties;->isSupportGetLong:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/os/SystemProperties;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method
