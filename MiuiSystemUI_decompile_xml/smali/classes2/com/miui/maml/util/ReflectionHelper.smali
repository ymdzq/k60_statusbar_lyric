.class public Lcom/miui/maml/util/ReflectionHelper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static PRIMITIVE_TYPE:Ljava/util/HashMap;

.field private static sConstructorCache:Ljava/util/Map;

.field private static sFieldCache:Ljava/util/Map;

.field private static sForNameMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

.field private static sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

.field private static sGetMethod:Ljava/lang/reflect/Method;

.field private static sInvokeMethod:Ljava/lang/reflect/Method;

.field private static sMethodCache:Ljava/util/Map;

.field private static sNewInstanceMethod:Ljava/lang/reflect/Method;

.field private static sSetAccessibleMethod:Ljava/lang/reflect/Method;

.field private static sSetMethod:Ljava/lang/reflect/Method;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 7
    const-string v1, "byte"

    .line 9
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 11
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 16
    const-string/jumbo v1, "short"

    .line 18
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 26
    const-string v1, "int"

    .line 28
    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 30
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 35
    const-string v1, "long"

    .line 37
    sget-object v2, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 39
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 44
    const-string v1, "char"

    .line 46
    sget-object v2, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 48
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 53
    const-string v1, "boolean"

    .line 55
    sget-object v2, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 57
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 62
    const-string v1, "float"

    .line 64
    sget-object v2, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 66
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 71
    const-string v1, "double"

    .line 73
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 75
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 80
    const-string v1, "byte[]"

    .line 82
    const-class v2, [B

    .line 84
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 89
    const-string/jumbo v1, "short[]"

    .line 91
    const-class v2, [S

    .line 94
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 99
    const-string v1, "int[]"

    .line 101
    const-class v2, [I

    .line 103
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 108
    const-string v1, "long[]"

    .line 110
    const-class v2, [J

    .line 112
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 117
    const-string v1, "char[]"

    .line 119
    const-class v2, [C

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 123
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 126
    const-string v1, "boolean[]"

    .line 128
    const-class v2, [Z

    .line 130
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 135
    const-string v1, "float[]"

    .line 137
    const-class v2, [F

    .line 139
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 144
    const-string v1, "double[]"

    .line 146
    const-class v2, [D

    .line 148
    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    new-instance v0, Ljava/util/HashMap;

    .line 153
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 155
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 158
    new-instance v0, Ljava/util/HashMap;

    .line 160
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 162
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 165
    new-instance v0, Ljava/util/HashMap;

    .line 167
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 169
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 172
    const/4 v0, 0x0

    .line 174
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 175
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 177
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 179
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 181
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 183
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 185
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 187
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 189
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 191
    return-void
    .line 193
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static forNameInternal(Ljava/lang/String;)Ljava/lang/Class;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/Class;

    .line 6
    const-class v1, Ljava/lang/String;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "forName"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sForNameMethod:Ljava/lang/reflect/Method;

    .line 22
    const/4 v1, 0x0

    .line 24
    filled-new-array {p0}, [Ljava/lang/Object;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, v1, p0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    move-result-object p0

    .line 32
    check-cast p0, Ljava/lang/Class;

    .line 33
    return-object p0
    .line 35
.end method

.method private static varargs generateConstructorCacheKey(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, "/"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-static {p1}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

.method private static generateFieldCacheKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, "/"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method private static generateMethodCacheKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-virtual {p0}, Ljava/lang/Class;->toString()Ljava/lang/String;

    .line 7
    move-result-object p0

    .line 10
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string p0, "/"

    .line 14
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    .line 25
    move-result-object p0

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 32
    move-result-object p0

    .line 35
    return-object p0
    .line 36
.end method

.method public static getClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    invoke-static {p0}, Lcom/miui/maml/util/ReflectionHelper;->forNameInternal(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public static varargs getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->generateConstructorCacheKey(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/miui/maml/util/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Constructor;

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->getDeclaredConstructorInternal(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 16
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lcom/miui/maml/util/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 21
    sget-object p0, Lcom/miui/maml/util/ReflectionHelper;->sConstructorCache:Ljava/util/Map;

    .line 24
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-object v1
    .line 29
.end method

.method public static varargs getConstructorInstance(Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->getConstructor(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0, p2}, Lcom/miui/maml/util/ReflectionHelper;->newInstanceInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method private static varargs getDeclaredConstructorInternal(Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/Class;

    .line 6
    const-class v1, [Ljava/lang/Class;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "getDeclaredConstructor"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredConstructorMethod:Ljava/lang/reflect/Method;

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/reflect/Constructor;

    .line 32
    return-object p0
    .line 34
.end method

.method private static getDeclaredFieldInternal(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/Class;

    .line 6
    const-class v1, Ljava/lang/String;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "getDeclaredField"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredFieldMethod:Ljava/lang/reflect/Method;

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/reflect/Field;

    .line 32
    return-object p0
    .line 34
.end method

.method private static varargs getDeclaredMethodInternal(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/Class;

    .line 6
    const-class v1, Ljava/lang/String;

    .line 8
    const-class v2, [Ljava/lang/Class;

    .line 10
    filled-new-array {v1, v2}, [Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    const-string v2, "getDeclaredMethod"

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 22
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetDeclaredMethodMethod:Ljava/lang/reflect/Method;

    .line 24
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    move-result-object p0

    .line 33
    check-cast p0, Ljava/lang/reflect/Method;

    .line 34
    return-object p0
    .line 36
.end method

.method public static getEnumConstant(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 9
    move-result v0

    .line 12
    if-eqz v0, :cond_0

    .line 13
    goto :goto_0

    .line 15
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0, p1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    .line 20
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    return-object p0

    .line 24
    :catch_0
    :cond_1
    :goto_0
    return-object v1
    .line 25
.end method

.method public static getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 2

    .line 1
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->generateFieldCacheKey(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/miui/maml/util/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Field;

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->getDeclaredFieldInternal(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 16
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lcom/miui/maml/util/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 21
    sget-object p0, Lcom/miui/maml/util/ReflectionHelper;->sFieldCache:Ljava/util/Map;

    .line 24
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-object v1
    .line 29
.end method

.method public static getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/miui/maml/util/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->getInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method private static getInternal(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/Field;

    .line 6
    const-class v1, Ljava/lang/Object;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "get"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sGetMethod:Ljava/lang/reflect/Method;

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/ReflectionHelper;->generateMethodCacheKey(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    sget-object v1, Lcom/miui/maml/util/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 6
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/reflect/Method;

    .line 12
    if-nez v1, :cond_0

    .line 14
    invoke-static {p0, p1, p2}, Lcom/miui/maml/util/ReflectionHelper;->getDeclaredMethodInternal(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v1

    .line 19
    const/4 p0, 0x1

    .line 20
    invoke-static {v1, p0}, Lcom/miui/maml/util/ReflectionHelper;->setAccessibleInternal(Ljava/lang/Object;Z)V

    .line 21
    sget-object p0, Lcom/miui/maml/util/ReflectionHelper;->sMethodCache:Ljava/util/Map;

    .line 24
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    :cond_0
    return-object v1
    .line 29
.end method

.method public static varargs invoke(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p2, p3}, Lcom/miui/maml/util/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    filled-new-array {p1, p4}, [Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method private static varargs invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/Method;

    .line 6
    const-class v1, Ljava/lang/Object;

    .line 8
    const-class v2, [Ljava/lang/Object;

    .line 10
    filled-new-array {v1, v2}, [Ljava/lang/Class;

    .line 12
    move-result-object v1

    .line 15
    const-string v2, "invoke"

    .line 16
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 18
    move-result-object v0

    .line 21
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 22
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sInvokeMethod:Ljava/lang/reflect/Method;

    .line 24
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

.method public static varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-static {p0, p2, p3}, Lcom/miui/maml/util/ReflectionHelper;->getMethod(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    filled-new-array {p1, p4}, [Ljava/lang/Object;

    .line 8
    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/miui/maml/util/ReflectionHelper;->invokeInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    return-object p0

    .line 16
    :cond_0
    const/4 p0, 0x0

    .line 17
    return-object p0
    .line 18
.end method

.method private static varargs newInstanceInternal(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/Constructor;

    .line 6
    const-class v1, [Ljava/lang/Object;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "newInstance"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 16
    move-result-object v0

    .line 19
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 20
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sNewInstanceMethod:Ljava/lang/reflect/Method;

    .line 22
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 24
    move-result-object p1

    .line 27
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    move-result-object p0

    .line 31
    return-object p0
    .line 32
.end method

.method private static setAccessibleInternal(Ljava/lang/Object;Z)V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/AccessibleObject;

    .line 6
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 8
    filled-new-array {v1}, [Ljava/lang/Class;

    .line 10
    move-result-object v1

    .line 13
    const-string/jumbo v2, "setAccessible"

    .line 14
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 21
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetAccessibleMethod:Ljava/lang/reflect/Method;

    .line 23
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 25
    move-result-object p1

    .line 28
    filled-new-array {p1}, [Ljava/lang/Object;

    .line 29
    move-result-object p1

    .line 32
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    return-void
    .line 36
.end method

.method public static setFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/miui/maml/util/ReflectionHelper;->getField(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-static {p0, p1, p3}, Lcom/miui/maml/util/ReflectionHelper;->setInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method private static setInternal(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const-class v0, Ljava/lang/reflect/Field;

    .line 6
    const-string/jumbo v1, "set"

    .line 8
    const-class v2, Ljava/lang/Object;

    .line 11
    filled-new-array {v2, v2}, [Ljava/lang/Class;

    .line 13
    move-result-object v2

    .line 16
    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 17
    move-result-object v0

    .line 20
    sput-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 21
    :cond_0
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->sSetMethod:Ljava/lang/reflect/Method;

    .line 23
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 25
    move-result-object p1

    .line 28
    invoke-virtual {v0, p0, p1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
    .line 32
.end method

.method public static strTypeToClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p0}, Lcom/miui/maml/util/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method private static strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1

    .line 1
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    sget-object v0, Lcom/miui/maml/util/ReflectionHelper;->PRIMITIVE_TYPE:Ljava/util/HashMap;

    .line 10
    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Class;

    .line 16
    return-object p0

    .line 18
    :cond_0
    const-string v0, "."

    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 24
    if-eqz v0, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    const-string v0, "java.lang."

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    :goto_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method

.method public static strTypesToClass([Ljava/lang/String;)[Ljava/lang/Class;
    .locals 3

    .line 1
    if-nez p0, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    new-array v0, v0, [Ljava/lang/Class;

    .line 7
    const/4 v1, 0x0

    .line 9
    :goto_0
    array-length v2, p0

    .line 10
    if-ge v1, v2, :cond_1

    .line 11
    aget-object v2, p0, v1

    .line 13
    invoke-static {v2}, Lcom/miui/maml/util/ReflectionHelper;->strTypeToClassThrows(Ljava/lang/String;)Ljava/lang/Class;

    .line 15
    move-result-object v2

    .line 18
    aput-object v2, v0, v1

    .line 19
    add-int/lit8 v1, v1, 0x1

    .line 21
    goto :goto_0

    .line 23
    :cond_1
    return-object v0
    .line 24
.end method
