.class public final Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;


# instance fields
.field public final synthetic val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcom/google/gson/ToNumberPolicy;->DOUBLE:Lcom/google/gson/ToNumberPolicy;

    .line 2
    iput-object v0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 1

    .line 1
    iget-object p2, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    const-class v0, Ljava/lang/Object;

    .line 4
    if-ne p2, v0, :cond_0

    .line 6
    new-instance p2, Lcom/google/gson/internal/bind/ObjectTypeAdapter;

    .line 8
    iget-object p0, p0, Lcom/google/gson/internal/bind/ObjectTypeAdapter$1;->val$toNumberStrategy:Lcom/google/gson/ToNumberStrategy;

    .line 10
    invoke-direct {p2, p1, p0}, Lcom/google/gson/internal/bind/ObjectTypeAdapter;-><init>(Lcom/google/gson/Gson;Lcom/google/gson/ToNumberStrategy;)V

    .line 12
    return-object p2

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    return-object p0
    .line 17
.end method
