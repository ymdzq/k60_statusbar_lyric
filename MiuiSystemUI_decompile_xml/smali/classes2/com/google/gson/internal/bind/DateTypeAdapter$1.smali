.class public final Lcom/google/gson/internal/bind/DateTypeAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 0

    .line 1
    iget-object p0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    const-class p1, Ljava/util/Date;

    .line 4
    if-ne p0, p1, :cond_0

    .line 6
    new-instance p0, Lcom/google/gson/internal/bind/DateTypeAdapter;

    .line 8
    invoke-direct {p0}, Lcom/google/gson/internal/bind/DateTypeAdapter;-><init>()V

    .line 10
    goto :goto_0

    .line 13
    :cond_0
    const/4 p0, 0x0

    .line 14
    :goto_0
    return-object p0
    .line 15
.end method
