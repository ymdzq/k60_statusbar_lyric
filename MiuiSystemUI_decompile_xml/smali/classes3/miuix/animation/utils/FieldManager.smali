.class public Lmiuix/animation/utils/FieldManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field static final GET:Ljava/lang/String; = "get"

.field static final SET:Ljava/lang/String; = "set"


# instance fields
.field mFieldMap:Ljava/util/Map;

.field mMethodMap:Ljava/util/Map;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/ArrayMap;

    .line 5
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 7
    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 10
    new-instance v0, Landroid/util/ArrayMap;

    .line 12
    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 14
    iput-object v0, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 17
    return-void
    .line 19
.end method

.method public static getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;
    .locals 1

    .line 13
    invoke-interface {p3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lmiuix/animation/utils/FieldManager$FieldInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$FieldInfo;-><init>()V

    .line 15
    invoke-static {p0, p1, p2}, Lmiuix/animation/utils/FieldManager;->getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 16
    invoke-interface {p3, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getFieldByType(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/reflect/Field;
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 3
    move-result-object v1

    .line 6
    invoke-virtual {v1, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 7
    move-result-object v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 10
    const/4 v2, 0x1

    .line 11
    :try_start_1
    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_1
    .catch Ljava/lang/NoSuchFieldException; {:try_start_1 .. :try_end_1} :catch_1

    .line 12
    goto :goto_0

    .line 15
    :catch_0
    move-object v1, v0

    .line 16
    :catch_1
    :try_start_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    .line 21
    move-result-object v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldException; {:try_start_2 .. :try_end_2} :catch_2

    .line 24
    :catch_2
    :goto_0
    if-eqz v1, :cond_0

    .line 25
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    .line 27
    move-result-object p0

    .line 30
    if-eq p0, p2, :cond_0

    .line 31
    goto :goto_1

    .line 33
    :cond_0
    move-object v0, v1

    .line 34
    :goto_1
    return-object v0
    .line 35
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    .locals 2

    const/4 v0, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x1

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 7
    :catch_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0, p1, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-object v0
.end method

.method public static varargs getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;
    .locals 1

    .line 1
    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lmiuix/animation/utils/FieldManager$MethodInfo;

    invoke-direct {v0}, Lmiuix/animation/utils/FieldManager$MethodInfo;-><init>()V

    .line 3
    invoke-static {p0, p1, p3}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p0

    iput-object p0, v0, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 4
    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public static getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {p1}, Landroidx/constraintlayout/core/ArrayLinkedVariables$$ExternalSyntheticOutline0;->m(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    .line 7
    move-result v0

    .line 10
    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    .line 11
    move-result v0

    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 15
    const/4 v0, 0x1

    .line 18
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 26
    move-result-object p0

    .line 29
    return-object p0
    .line 30
.end method

.method public static getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    return-object p0

    .line 6
    :catch_0
    const/4 p0, 0x0

    .line 7
    return-object p0
    .line 8
.end method

.method public static varargs invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance p2, Ljava/lang/StringBuilder;

    .line 10
    const-string v0, "ValueProperty.invokeMethod failed, "

    .line 12
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    .line 17
    move-result-object p1

    .line 20
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 24
    move-result-object p1

    .line 27
    const-string p2, "miuix_anim"

    .line 28
    invoke-static {p2, p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 33
    return-object p0
    .line 34
.end method

.method public static retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2

    .line 1
    instance-of v0, p0, Ljava/lang/Number;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    return-object p0

    .line 7
    :cond_0
    check-cast p0, Ljava/lang/Number;

    .line 8
    const-class v0, Ljava/lang/Float;

    .line 10
    if-eq p1, v0, :cond_4

    .line 12
    sget-object v0, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 14
    if-ne p1, v0, :cond_1

    .line 16
    goto :goto_1

    .line 18
    :cond_1
    const-class v0, Ljava/lang/Integer;

    .line 19
    if-eq p1, v0, :cond_3

    .line 21
    sget-object v0, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 23
    if-ne p1, v0, :cond_2

    .line 25
    goto :goto_0

    .line 27
    :cond_2
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 28
    new-instance v0, Ljava/lang/StringBuilder;

    .line 30
    const-string v1, "getPropertyValue, clz must be float or int instead of "

    .line 32
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 37
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    move-result-object p1

    .line 43
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 44
    throw p0

    .line 47
    :cond_3
    :goto_0
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 48
    move-result p0

    .line 51
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 52
    move-result-object p0

    .line 55
    return-object p0

    .line 56
    :cond_4
    :goto_1
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 57
    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    .line 61
    move-result-object p0

    .line 64
    return-object p0
    .line 65
.end method

.method public static setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p1, p0, p2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    :catch_0
    return-void
    .line 5
.end method


# virtual methods
.method public declared-synchronized getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    const-string v1, "get"

    .line 3
    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v3, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    new-array v4, v2, [Ljava/lang/Class;

    invoke-static {p1, v1, v3, v4}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    move-result-object v1

    .line 4
    :cond_1
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    if-eqz v1, :cond_2

    new-array p2, v2, [Ljava/lang/Object;

    .line 5
    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 6
    invoke-static {p1, p3}, Lmiuix/animation/utils/FieldManager;->retToClz(Ljava/lang/Object;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    .line 7
    :cond_2
    :try_start_1
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    if-nez v1, :cond_3

    .line 8
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    move-result-object v1

    .line 9
    :cond_3
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    if-eqz p2, :cond_4

    .line 10
    invoke-static {p1, p2}, Lmiuix/animation/utils/FieldManager;->getValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    return-object p1

    .line 11
    :cond_4
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1

    .line 12
    :cond_5
    :goto_0
    monitor-exit p0

    return-object v0
.end method

.method public declared-synchronized setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 4

    .line 1
    monitor-enter p0

    .line 2
    const/4 v0, 0x0

    .line 3
    if-eqz p1, :cond_5

    .line 4
    if-eqz p2, :cond_5

    .line 6
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 15
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    move-result-object v1

    .line 20
    check-cast v1, Lmiuix/animation/utils/FieldManager$MethodInfo;

    .line 21
    if-nez v1, :cond_1

    .line 23
    const-string v1, "set"

    .line 25
    invoke-static {p2, v1}, Lmiuix/animation/utils/FieldManager;->getMethodName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    iget-object v2, p0, Lmiuix/animation/utils/FieldManager;->mMethodMap:Ljava/util/Map;

    .line 31
    filled-new-array {p3}, [Ljava/lang/Class;

    .line 33
    move-result-object v3

    .line 36
    invoke-static {p1, v1, v2, v3}, Lmiuix/animation/utils/FieldManager;->getMethod(Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;[Ljava/lang/Class;)Lmiuix/animation/utils/FieldManager$MethodInfo;

    .line 37
    move-result-object v1

    .line 40
    :cond_1
    iget-object v1, v1, Lmiuix/animation/utils/FieldManager$MethodInfo;->method:Ljava/lang/reflect/Method;

    .line 41
    const/4 v2, 0x1

    .line 43
    if-eqz v1, :cond_2

    .line 44
    filled-new-array {p4}, [Ljava/lang/Object;

    .line 46
    move-result-object p2

    .line 49
    invoke-static {p1, v1, p2}, Lmiuix/animation/utils/FieldManager;->invokeMethod(Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    monitor-exit p0

    .line 53
    return v2

    .line 54
    :cond_2
    :try_start_1
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 55
    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    move-result-object v1

    .line 60
    check-cast v1, Lmiuix/animation/utils/FieldManager$FieldInfo;

    .line 61
    if-nez v1, :cond_3

    .line 63
    iget-object v1, p0, Lmiuix/animation/utils/FieldManager;->mFieldMap:Ljava/util/Map;

    .line 65
    invoke-static {p1, p2, p3, v1}, Lmiuix/animation/utils/FieldManager;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;Ljava/util/Map;)Lmiuix/animation/utils/FieldManager$FieldInfo;

    .line 67
    move-result-object v1

    .line 70
    :cond_3
    iget-object p2, v1, Lmiuix/animation/utils/FieldManager$FieldInfo;->field:Ljava/lang/reflect/Field;

    .line 71
    if-eqz p2, :cond_4

    .line 73
    invoke-static {p1, p2, p4}, Lmiuix/animation/utils/FieldManager;->setValueByField(Ljava/lang/Object;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 75
    monitor-exit p0

    .line 78
    return v2

    .line 79
    :cond_4
    monitor-exit p0

    .line 80
    return v0

    .line 81
    :catchall_0
    move-exception p1

    .line 82
    monitor-exit p0

    .line 83
    throw p1

    .line 84
    :cond_5
    :goto_0
    monitor-exit p0

    .line 85
    return v0
    .line 86
.end method
