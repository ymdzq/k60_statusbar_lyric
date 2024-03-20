.class public final Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;
.super Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final getName:Ljava/lang/reflect/Method;

.field public final getRecordComponents:Ljava/lang/reflect/Method;

.field public final getType:Ljava/lang/reflect/Method;

.field public final isRecord:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordHelper;-><init>()V

    .line 2
    const-class v0, Ljava/lang/Class;

    .line 5
    const/4 v1, 0x0

    .line 7
    new-array v2, v1, [Ljava/lang/Class;

    .line 8
    const-string v3, "isRecord"

    .line 10
    invoke-virtual {v0, v3, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 12
    move-result-object v0

    .line 15
    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->isRecord:Ljava/lang/reflect/Method;

    .line 16
    const-class v0, Ljava/lang/Class;

    .line 18
    const-string v2, "getRecordComponents"

    .line 20
    new-array v3, v1, [Ljava/lang/Class;

    .line 22
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 24
    move-result-object v0

    .line 27
    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    .line 28
    invoke-virtual {v0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    .line 30
    move-result-object v0

    .line 33
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 34
    move-result-object v0

    .line 37
    const-string v2, "getName"

    .line 38
    new-array v3, v1, [Ljava/lang/Class;

    .line 40
    invoke-virtual {v0, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 42
    move-result-object v2

    .line 45
    iput-object v2, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getName:Ljava/lang/reflect/Method;

    .line 46
    const-string v2, "getType"

    .line 48
    new-array v1, v1, [Ljava/lang/Class;

    .line 50
    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 52
    move-result-object v0

    .line 55
    iput-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getType:Ljava/lang/reflect/Method;

    .line 56
    return-void
    .line 58
.end method


# virtual methods
.method public final getAccessor(Ljava/lang/Class;Ljava/lang/reflect/Field;)Ljava/lang/reflect/Method;
    .locals 0

    .line 1
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    const/4 p2, 0x0

    .line 6
    new-array p2, p2, [Ljava/lang/Class;

    .line 7
    invoke-virtual {p1, p0, p2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 9
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 12
    return-object p0

    .line 13
    :catch_0
    move-exception p0

    .line 14
    new-instance p1, Ljava/lang/RuntimeException;

    .line 15
    const-string p2, "Unexpected ReflectiveOperationException occurred (Gson 2.10). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior."

    .line 17
    invoke-direct {p1, p2, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    throw p1
    .line 22
.end method

.method public final getCanonicalRecordConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object v0

    .line 10
    check-cast v0, [Ljava/lang/Object;

    .line 11
    array-length v2, v0

    .line 13
    new-array v2, v2, [Ljava/lang/Class;

    .line 14
    move v3, v1

    .line 16
    :goto_0
    array-length v4, v0

    .line 17
    if-ge v3, v4, :cond_0

    .line 18
    iget-object v4, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getType:Ljava/lang/reflect/Method;

    .line 20
    aget-object v5, v0, v3

    .line 22
    new-array v6, v1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v4

    .line 29
    check-cast v4, Ljava/lang/Class;

    .line 30
    aput-object v4, v2, v3

    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p1, v2}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 37
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    return-object p0

    .line 41
    :catch_0
    move-exception p0

    .line 42
    new-instance p1, Ljava/lang/RuntimeException;

    .line 43
    const-string v0, "Unexpected ReflectiveOperationException occurred (Gson 2.10). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior."

    .line 45
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 47
    throw p1
    .line 50
.end method

.method public final getRecordComponentNames(Ljava/lang/Class;)[Ljava/lang/String;
    .locals 6

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getRecordComponents:Ljava/lang/reflect/Method;

    .line 2
    const/4 v1, 0x0

    .line 4
    new-array v2, v1, [Ljava/lang/Object;

    .line 5
    invoke-virtual {v0, p1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p1

    .line 10
    check-cast p1, [Ljava/lang/Object;

    .line 11
    array-length v0, p1

    .line 13
    new-array v0, v0, [Ljava/lang/String;

    .line 14
    move v2, v1

    .line 16
    :goto_0
    array-length v3, p1

    .line 17
    if-ge v2, v3, :cond_0

    .line 18
    iget-object v3, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->getName:Ljava/lang/reflect/Method;

    .line 20
    aget-object v4, p1, v2

    .line 22
    new-array v5, v1, [Ljava/lang/Object;

    .line 24
    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    move-result-object v3

    .line 29
    check-cast v3, Ljava/lang/String;

    .line 30
    aput-object v3, v0, v2
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    add-int/lit8 v2, v2, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_0
    return-object v0

    .line 37
    :catch_0
    move-exception p0

    .line 38
    new-instance p1, Ljava/lang/RuntimeException;

    .line 39
    const-string v0, "Unexpected ReflectiveOperationException occurred (Gson 2.10). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior."

    .line 41
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 43
    throw p1
    .line 46
.end method

.method public final isRecord(Ljava/lang/Class;)Z
    .locals 1

    .line 1
    :try_start_0
    iget-object p0, p0, Lcom/google/gson/internal/reflect/ReflectionHelper$RecordSupportedHelper;->isRecord:Ljava/lang/reflect/Method;

    .line 2
    const/4 v0, 0x0

    .line 4
    new-array v0, v0, [Ljava/lang/Object;

    .line 5
    invoke-virtual {p0, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    move-result-object p0

    .line 10
    check-cast p0, Ljava/lang/Boolean;

    .line 11
    invoke-virtual {p0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 13
    move-result p0
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 16
    return p0

    .line 17
    :catch_0
    move-exception p0

    .line 18
    new-instance p1, Ljava/lang/RuntimeException;

    .line 19
    const-string v0, "Unexpected ReflectiveOperationException occurred (Gson 2.10). To support Java records, reflection is utilized to read out information about records. All these invocations happens after it is established that records exist in the JVM. This exception is unexpected behavior."

    .line 21
    invoke-direct {p1, v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 23
    throw p1
    .line 26
.end method
