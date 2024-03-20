.class public abstract Lmiuix/reflect/ReflectionHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final sFieldCache:Ljava/util/Map;

.field public static sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

.field public static sSetAccessibleMethod:Ljava/lang/reflect/Method;

.field public static sSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    const-string v1, "byte"

    .line 7
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 9
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    const-string v1, "short"

    .line 14
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "int"

    .line 21
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "long"

    .line 28
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    const-string v1, "char"

    .line 35
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 37
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 39
    const-string v1, "boolean"

    .line 42
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 44
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 46
    const-string v1, "float"

    .line 49
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 51
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    const-string v1, "double"

    .line 56
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 58
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    const-string v1, "byte[]"

    .line 63
    const-class v2, [B

    .line 65
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    const-string v1, "short[]"

    .line 70
    const-class v2, [S

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    const-string v1, "int[]"

    .line 77
    const-class v2, [I

    .line 79
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    const-string v1, "long[]"

    .line 84
    const-class v2, [J

    .line 86
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    const-string v1, "char[]"

    .line 91
    const-class v2, [C

    .line 93
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    const-string v1, "boolean[]"

    .line 98
    const-class v2, [Z

    .line 100
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    const-string v1, "float[]"

    .line 105
    const-class v2, [F

    .line 107
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    const-string v1, "double[]"

    .line 112
    const-class v2, [D

    .line 114
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    new-instance v0, Ljava/util/HashMap;

    .line 119
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 121
    new-instance v0, Ljava/util/HashMap;

    .line 124
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 126
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 129
    new-instance v0, Ljava/util/HashMap;

    .line 131
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 133
    const/4 v0, 0x0

    .line 136
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 137
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 139
    sput-object v0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 141
    return-void
    .line 143
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 7
    move-result-object v1

    .line 10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "/mSmoothCornerEnabled"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    sget-object v1, Lmiuix/reflect/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 23
    check-cast v1, Ljava/util/HashMap;

    .line 25
    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    move-result-object v2

    .line 30
    check-cast v2, Ljava/lang/reflect/Field;

    .line 31
    if-nez v2, :cond_2

    .line 33
    sget-object v2, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 35
    if-nez v2, :cond_0

    .line 37
    const-class v2, Ljava/lang/Class;

    .line 39
    const-class v3, Ljava/lang/String;

    .line 41
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 43
    move-result-object v3

    .line 46
    const-string v4, "getDeclaredField"

    .line 47
    invoke-virtual {v2, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 49
    move-result-object v2

    .line 52
    sput-object v2, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 53
    :cond_0
    sget-object v2, Lmiuix/reflect/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 55
    const-string v3, "mSmoothCornerEnabled"

    .line 57
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 59
    move-result-object v3

    .line 62
    invoke-virtual {v2, p0, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 63
    move-result-object p0

    .line 66
    move-object v2, p0

    .line 67
    check-cast v2, Ljava/lang/reflect/Field;

    .line 68
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 70
    if-nez p0, :cond_1

    .line 72
    const-class p0, Ljava/lang/reflect/AccessibleObject;

    .line 74
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 76
    filled-new-array {v3}, [Ljava/lang/Class;

    .line 78
    move-result-object v3

    .line 81
    const-string v4, "setAccessible"

    .line 82
    invoke-virtual {p0, v4, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    move-result-object p0

    .line 87
    sput-object p0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 88
    :cond_1
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 90
    sget-object v3, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 92
    filled-new-array {v3}, [Ljava/lang/Object;

    .line 94
    move-result-object v3

    .line 97
    invoke-virtual {p0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    :cond_2
    if-eqz v2, :cond_4

    .line 104
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 106
    if-nez p0, :cond_3

    .line 108
    const-class p0, Ljava/lang/reflect/Field;

    .line 110
    const-class v0, Ljava/lang/Object;

    .line 112
    filled-new-array {v0, v0}, [Ljava/lang/Class;

    .line 114
    move-result-object v0

    .line 117
    const-string v1, "set"

    .line 118
    invoke-virtual {p0, v1, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 120
    move-result-object p0

    .line 123
    sput-object p0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 124
    :cond_3
    sget-object p0, Lmiuix/reflect/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 126
    const/4 v0, 0x0

    .line 128
    filled-new-array {v0, p1}, [Ljava/lang/Object;

    .line 129
    move-result-object p1

    .line 132
    invoke-virtual {p0, v2, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    :cond_4
    return-void
    .line 136
.end method
