.class public final Lcom/google/gson/internal/Excluder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/google/gson/TypeAdapterFactory;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final DEFAULT:Lcom/google/gson/internal/Excluder;


# instance fields
.field public final deserializationStrategies:Ljava/util/List;

.field public final serializationStrategies:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/gson/internal/Excluder;

    .line 2
    invoke-direct {v0}, Lcom/google/gson/internal/Excluder;-><init>()V

    .line 4
    sput-object v0, Lcom/google/gson/internal/Excluder;->DEFAULT:Lcom/google/gson/internal/Excluder;

    .line 7
    return-void
    .line 9
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 5
    move-result-object v0

    .line 8
    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 9
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    .line 11
    move-result-object v0

    .line 14
    iput-object v0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 15
    return-void
    .line 17
.end method

.method public static isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z
    .locals 3

    .line 1
    const-class v0, Ljava/lang/Enum;

    .line 2
    invoke-virtual {v0, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-nez v0, :cond_2

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I

    .line 11
    move-result v0

    .line 14
    and-int/lit8 v0, v0, 0x8

    .line 15
    const/4 v2, 0x1

    .line 17
    if-eqz v0, :cond_0

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move v0, v1

    .line 22
    :goto_0
    if-nez v0, :cond_2

    .line 23
    invoke-virtual {p0}, Ljava/lang/Class;->isAnonymousClass()Z

    .line 25
    move-result v0

    .line 28
    if-nez v0, :cond_1

    .line 29
    invoke-virtual {p0}, Ljava/lang/Class;->isLocalClass()Z

    .line 31
    move-result p0

    .line 34
    if-eqz p0, :cond_2

    .line 35
    :cond_1
    move v1, v2

    .line 37
    :cond_2
    return v1
    .line 38
.end method


# virtual methods
.method public final clone()Ljava/lang/Object;
    .locals 1

    .line 1
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    check-cast p0, Lcom/google/gson/internal/Excluder;
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    return-object p0

    .line 8
    :catch_0
    move-exception p0

    .line 9
    new-instance v0, Ljava/lang/AssertionError;

    .line 10
    invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 12
    throw v0
    .line 15
.end method

.method public final create(Lcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)Lcom/google/gson/TypeAdapter;
    .locals 9

    .line 1
    iget-object v0, p2, Lcom/google/gson/reflect/TypeToken;->rawType:Ljava/lang/Class;

    .line 2
    invoke-static {v0}, Lcom/google/gson/internal/Excluder;->isAnonymousOrNonStaticLocal(Ljava/lang/Class;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x1

    .line 9
    if-nez v0, :cond_0

    .line 10
    invoke-virtual {p0, v2}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    .line 12
    move v6, v1

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v6, v2

    .line 17
    :goto_0
    if-nez v0, :cond_1

    .line 18
    invoke-virtual {p0, v1}, Lcom/google/gson/internal/Excluder;->excludeClassInStrategy(Z)V

    .line 20
    move v5, v1

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    move v5, v2

    .line 25
    :goto_1
    if-nez v6, :cond_2

    .line 26
    if-nez v5, :cond_2

    .line 28
    const/4 p0, 0x0

    .line 30
    return-object p0

    .line 31
    :cond_2
    new-instance v0, Lcom/google/gson/internal/Excluder$1;

    .line 32
    move-object v3, v0

    .line 34
    move-object v4, p0

    .line 35
    move-object v7, p1

    .line 36
    move-object v8, p2

    .line 37
    invoke-direct/range {v3 .. v8}, Lcom/google/gson/internal/Excluder$1;-><init>(Lcom/google/gson/internal/Excluder;ZZLcom/google/gson/Gson;Lcom/google/gson/reflect/TypeToken;)V

    .line 38
    return-object v0
    .line 41
.end method

.method public final excludeClassInStrategy(Z)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->serializationStrategies:Ljava/util/List;

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    iget-object p0, p0, Lcom/google/gson/internal/Excluder;->deserializationStrategies:Ljava/util/List;

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 9
    move-result-object p0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 13
    move-result p1

    .line 16
    if-nez p1, :cond_1

    .line 17
    return-void

    .line 19
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p0}, Landroidx/activity/ComponentActivity$2$$ExternalSyntheticOutline0;->m(Ljava/lang/Object;)V

    .line 24
    const/4 p0, 0x0

    .line 27
    throw p0
    .line 28
.end method
