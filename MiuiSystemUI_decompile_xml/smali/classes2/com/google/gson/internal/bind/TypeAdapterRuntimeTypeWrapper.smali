.class public final Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;
.super Lcom/google/gson/TypeAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final context:Lcom/google/gson/Gson;

.field public final delegate:Lcom/google/gson/TypeAdapter;

.field public final type:Ljava/lang/reflect/Type;


# direct methods
.method public constructor <init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/reflect/Type;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/Gson;

    .line 5
    iput-object p2, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    .line 7
    iput-object p3, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/gson/TypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->type:Ljava/lang/reflect/Type;

    .line 2
    if-eqz p2, :cond_1

    .line 4
    instance-of v1, v0, Ljava/lang/Class;

    .line 6
    if-nez v1, :cond_0

    .line 8
    instance-of v1, v0, Ljava/lang/reflect/TypeVariable;

    .line 10
    if-eqz v1, :cond_1

    .line 12
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 14
    move-result-object v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move-object v1, v0

    .line 19
    :goto_0
    iget-object v2, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->delegate:Lcom/google/gson/TypeAdapter;

    .line 20
    if-eq v1, v0, :cond_7

    .line 22
    new-instance v0, Lcom/google/gson/reflect/TypeToken;

    .line 24
    invoke-direct {v0, v1}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 26
    iget-object p0, p0, Lcom/google/gson/internal/bind/TypeAdapterRuntimeTypeWrapper;->context:Lcom/google/gson/Gson;

    .line 29
    invoke-virtual {p0, v0}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 31
    move-result-object p0

    .line 34
    instance-of v0, p0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 35
    if-nez v0, :cond_2

    .line 37
    goto :goto_3

    .line 39
    :cond_2
    move-object v0, v2

    .line 40
    :goto_1
    instance-of v1, v0, Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter;

    .line 41
    if-eqz v1, :cond_5

    .line 43
    move-object v1, v0

    .line 45
    check-cast v1, Lcom/google/gson/internal/bind/SerializationDelegatingTypeAdapter;

    .line 46
    check-cast v1, Lcom/google/gson/Gson$FutureTypeAdapter;

    .line 48
    iget-object v1, v1, Lcom/google/gson/Gson$FutureTypeAdapter;->delegate:Lcom/google/gson/TypeAdapter;

    .line 50
    if-eqz v1, :cond_4

    .line 52
    if-ne v1, v0, :cond_3

    .line 54
    goto :goto_2

    .line 56
    :cond_3
    move-object v0, v1

    .line 57
    goto :goto_1

    .line 58
    :cond_4
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 59
    const-string p1, "Delegate has not been set yet"

    .line 61
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 63
    throw p0

    .line 66
    :cond_5
    :goto_2
    instance-of v0, v0, Lcom/google/gson/internal/bind/ReflectiveTypeAdapterFactory$Adapter;

    .line 67
    if-nez v0, :cond_6

    .line 69
    goto :goto_4

    .line 71
    :cond_6
    :goto_3
    move-object v2, p0

    .line 72
    :cond_7
    :goto_4
    invoke-virtual {v2, p1, p2}, Lcom/google/gson/TypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V

    .line 73
    return-void
    .line 76
.end method
