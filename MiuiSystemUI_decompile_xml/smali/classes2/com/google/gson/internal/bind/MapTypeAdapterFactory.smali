.class public final Lcom/google/gson/internal/bind/MapTypeAdapterFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final complexMapKeySerialization:Z

.field public final constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;


# direct methods
.method public constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->complexMapKeySerialization:Z

    .line 8
    return-void
    .line 10
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 11

    .line 1
    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 2
    const-class v1, Ljava/util/Map;

    .line 4
    iget-object v2, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 6
    invoke-virtual {v1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 8
    move-result v1

    .line 11
    if-nez v1, :cond_0

    .line 12
    const/4 p0, 0x0

    .line 14
    return-object p0

    .line 15
    :cond_0
    const-class v1, Ljava/util/Properties;

    .line 16
    if-ne v0, v1, :cond_1

    .line 18
    const-class v0, Ljava/lang/String;

    .line 20
    filled-new-array {v0, v0}, [Ljava/lang/reflect/Type;

    .line 22
    move-result-object v0

    .line 25
    goto :goto_0

    .line 26
    :cond_1
    const-class v1, Ljava/util/Map;

    .line 27
    invoke-static {v0, v2, v1}, Lcom/google/gson/internal/$Gson$Types;->getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 29
    move-result-object v0

    .line 32
    instance-of v1, v0, Ljava/lang/reflect/ParameterizedType;

    .line 33
    if-eqz v1, :cond_2

    .line 35
    check-cast v0, Ljava/lang/reflect/ParameterizedType;

    .line 37
    invoke-interface {v0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 39
    move-result-object v0

    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-class v0, Ljava/lang/Object;

    .line 44
    filled-new-array {v0, v0}, [Ljava/lang/reflect/Type;

    .line 46
    move-result-object v0

    .line 49
    :goto_0
    const/4 v1, 0x0

    .line 50
    aget-object v2, v0, v1

    .line 51
    sget-object v3, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 53
    if-eq v2, v3, :cond_4

    .line 55
    const-class v3, Ljava/lang/Boolean;

    .line 57
    if-ne v2, v3, :cond_3

    .line 59
    goto :goto_1

    .line 61
    :cond_3
    new-instance v3, Lcom/google/gson/reflect/TypeToken;

    .line 62
    invoke-direct {v3, v2}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 64
    invoke-virtual {p1, v3}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 67
    move-result-object v2

    .line 70
    goto :goto_2

    .line 71
    :cond_4
    :goto_1
    sget-object v2, Lcom/google/gson/internal/bind/TypeAdapters;->BOOLEAN_AS_STRING:Lcom/google/gson/internal/bind/TypeAdapters$1;

    .line 72
    :goto_2
    move-object v7, v2

    .line 74
    const/4 v2, 0x1

    .line 75
    aget-object v3, v0, v2

    .line 76
    new-instance v4, Lcom/google/gson/reflect/TypeToken;

    .line 78
    invoke-direct {v4, v3}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 80
    invoke-virtual {p1, v4}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 83
    move-result-object v9

    .line 86
    iget-object v3, p0, Lcom/google/gson/internal/bind/MapTypeAdapterFactory;->constructorConstructor:Lcom/google/gson/internal/ConstructorConstructor;

    .line 87
    invoke-virtual {v3, p2}, Lcom/google/gson/internal/ConstructorConstructor;->get(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/internal/ObjectConstructor;

    .line 89
    move-result-object v10

    .line 92
    new-instance p2, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;

    .line 93
    aget-object v6, v0, v1

    .line 95
    aget-object v8, v0, v2

    .line 97
    move-object v3, p2

    .line 99
    move-object v4, p0

    .line 100
    move-object v5, p1

    .line 101
    invoke-direct/range {v3 .. v10}, Lcom/google/gson/internal/bind/MapTypeAdapterFactory$Adapter;-><init>(Lcom/google/gson/internal/bind/MapTypeAdapterFactory;Lcom/google/gson/Gson;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;Lcom/google/gson/TypeAdapter;Lcom/google/gson/internal/ObjectConstructor;)V

    .line 102
    return-object p2
    .line 105
.end method
