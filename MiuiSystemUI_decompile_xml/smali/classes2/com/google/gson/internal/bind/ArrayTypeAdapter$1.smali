.class public final Lcom/google/gson/internal/bind/ArrayTypeAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1

    .line 1
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->type:Ljava/lang/reflect/Type;

    .line 2
    instance-of p2, p0, Ljava/lang/reflect/GenericArrayType;

    .line 4
    if-nez p2, :cond_1

    .line 6
    instance-of v0, p0, Ljava/lang/Class;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    move-object v0, p0

    .line 12
    check-cast v0, Ljava/lang/Class;

    .line 13
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 21
    return-object p0

    .line 22
    :cond_1
    if-eqz p2, :cond_2

    .line 23
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 25
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 27
    move-result-object p0

    .line 30
    goto :goto_0

    .line 31
    :cond_2
    check-cast p0, Ljava/lang/Class;

    .line 32
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 34
    move-result-object p0

    .line 37
    :goto_0
    new-instance p2, Lcom/google/gson/reflect/TypeToken;

    .line 38
    invoke-direct {p2, p0}, Lcom/google/gson/reflect/TypeToken;-><init>(Ljava/lang/reflect/Type;)V

    .line 40
    invoke-virtual {p1, p2}, Lcom/google/gson/Gson;->getAdapter(Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;

    .line 43
    move-result-object p2

    .line 46
    new-instance v0, Lcom/google/gson/internal/bind/ArrayTypeAdapter;

    .line 47
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 49
    move-result-object p0

    .line 52
    invoke-direct {v0, p1, p2, p0}, Lcom/google/gson/internal/bind/ArrayTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/TypeAdapter;Ljava/lang/Class;)V

    .line 53
    return-object v0
    .line 56
.end method
