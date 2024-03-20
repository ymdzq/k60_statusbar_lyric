.class public abstract Lcom/miui/clock/utils/ReflectUtils;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final PRIMITIVE_CLASSES:[Ljava/lang/Class;

.field public static final SIGNATURE_OF_PRIMTIVE_CLASSES:[Ljava/lang/String;

.field public static final sFieldCache:Ljava/util/Map;

.field public static final sMethodCache:Ljava/util/Map;


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/clock/utils/ReflectUtils;->sMethodCache:Ljava/util/Map;

    .line 7
    new-instance v0, Ljava/util/HashMap;

    .line 9
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 11
    sput-object v0, Lcom/miui/clock/utils/ReflectUtils;->sFieldCache:Ljava/util/Map;

    .line 14
    sget-object v1, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 16
    sget-object v2, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 18
    sget-object v3, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    .line 20
    sget-object v4, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    .line 22
    sget-object v5, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 24
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 26
    sget-object v7, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 28
    sget-object v8, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 30
    sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 32
    filled-new-array/range {v1 .. v9}, [Ljava/lang/Class;

    .line 34
    move-result-object v0

    .line 37
    sput-object v0, Lcom/miui/clock/utils/ReflectUtils;->PRIMITIVE_CLASSES:[Ljava/lang/Class;

    .line 38
    const-string v1, "Z"

    .line 40
    const-string v2, "B"

    .line 42
    const-string v3, "C"

    .line 44
    const-string v4, "S"

    .line 46
    const-string v5, "I"

    .line 48
    const-string v6, "J"

    .line 50
    const-string v7, "F"

    .line 52
    const-string v8, "D"

    .line 54
    const-string v9, "V"

    .line 56
    filled-new-array/range {v1 .. v9}, [Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    sput-object v0, Lcom/miui/clock/utils/ReflectUtils;->SIGNATURE_OF_PRIMTIVE_CLASSES:[Ljava/lang/String;

    .line 62
    return-void
    .line 64
.end method

.method public static varargs getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    .line 1
    :try_start_0
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
    const-string v1, "/"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 25
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 28
    move-result-object p2
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 31
    sget-object v0, Lcom/miui/clock/utils/ReflectUtils;->sMethodCache:Ljava/util/Map;

    .line 32
    :try_start_1
    move-object v1, v0

    .line 34
    check-cast v1, Ljava/util/HashMap;

    .line 35
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    move-result-object v1

    .line 40
    check-cast v1, Ljava/lang/reflect/Method;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 41
    if-nez v1, :cond_0

    .line 43
    :try_start_2
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 45
    move-result-object p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 48
    :goto_0
    move-object v1, p0

    .line 49
    goto :goto_1

    .line 50
    :catch_0
    :try_start_3
    invoke-virtual {p0, p1, p3}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 51
    move-result-object p0

    .line 54
    goto :goto_0

    .line 55
    :goto_1
    check-cast v0, Ljava/util/HashMap;

    .line 56
    invoke-virtual {v0, p2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 58
    :cond_0
    return-object v1

    .line 61
    :catch_1
    move-exception p0

    .line 62
    const-string p1, "ReflectUtils"

    .line 63
    const-string p2, "getMethod"

    .line 65
    invoke-static {p1, p2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 67
    const/4 p0, 0x0

    .line 70
    return-object p0
    .line 71
.end method

.method public static varargs getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "("

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    array-length v1, p1

    .line 9
    const/4 v2, 0x0

    .line 10
    :goto_0
    if-ge v2, v1, :cond_0

    .line 11
    aget-object v3, p1, v2

    .line 13
    invoke-static {v3}, Lcom/miui/clock/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    add-int/lit8 v2, v2, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    const/16 p1, 0x29

    .line 25
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 27
    invoke-static {p0}, Lcom/miui/clock/utils/ReflectUtils;->getSignature(Ljava/lang/Class;)Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 37
    move-result-object p0

    .line 40
    return-object p0
    .line 41
.end method

.method public static getSignature(Ljava/lang/Class;)Ljava/lang/String;
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    sget-object v2, Lcom/miui/clock/utils/ReflectUtils;->PRIMITIVE_CLASSES:[Ljava/lang/Class;

    .line 4
    array-length v3, v2

    .line 6
    sget-object v4, Lcom/miui/clock/utils/ReflectUtils;->SIGNATURE_OF_PRIMTIVE_CLASSES:[Ljava/lang/String;

    .line 7
    if-ge v1, v3, :cond_1

    .line 9
    aget-object v2, v2, v1

    .line 11
    if-ne p0, v2, :cond_0

    .line 13
    aget-object p0, v4, v1

    .line 15
    return-object p0

    .line 17
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 18
    goto :goto_0

    .line 20
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 21
    move-result-object p0

    .line 24
    :goto_1
    array-length v1, v2

    .line 25
    if-ge v0, v1, :cond_3

    .line 26
    aget-object v1, v2, v0

    .line 28
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 30
    move-result-object v1

    .line 33
    invoke-virtual {v1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 34
    move-result v1

    .line 37
    if-eqz v1, :cond_2

    .line 38
    aget-object p0, v4, v0

    .line 40
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 42
    goto :goto_1

    .line 44
    :cond_3
    const-string v0, "."

    .line 45
    const-string v1, "/"

    .line 47
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 49
    move-result-object p0

    .line 52
    const-string v0, "["

    .line 53
    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 55
    move-result v0

    .line 58
    if-eqz v0, :cond_4

    .line 59
    goto :goto_2

    .line 61
    :cond_4
    const-string v0, "L"

    .line 62
    const-string v1, ";"

    .line 64
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/LogJson$JsonWriter$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 66
    move-result-object p0

    .line 69
    :goto_2
    return-object p0
    .line 70
.end method

.method public static varargs invokeObject(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-static {p3, p4}, Lcom/miui/clock/utils/ReflectUtils;->getMethodSignature(Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    invoke-static {p0, p2, p3, p4}, Lcom/miui/clock/utils/ReflectUtils;->getMethod(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 6
    move-result-object p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    invoke-virtual {p0, p1, p5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-object p0

    .line 16
    :catch_0
    move-exception p0

    .line 17
    const-string p1, "ReflectUtils"

    .line 18
    const-string p2, "invokeObject"

    .line 20
    invoke-static {p1, p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 22
    :cond_0
    const/4 p0, 0x0

    .line 25
    return-object p0
    .line 26
.end method
