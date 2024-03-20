.class public final Lcom/google/gson/internal/LinkedTreeMap;
.super Ljava/util/AbstractMap;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final NATURAL_ORDER:Lcom/google/gson/internal/LinkedTreeMap$1;


# instance fields
.field private final allowNullValues:Z

.field private final comparator:Ljava/util/Comparator;

.field private entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

.field final header:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field private keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

.field modCount:I

.field root:Lcom/google/gson/internal/LinkedTreeMap$Node;

.field size:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lcom/google/gson/internal/LinkedTreeMap;

    .line 2
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$1;

    .line 4
    invoke-direct {v0}, Lcom/google/gson/internal/LinkedTreeMap$1;-><init>()V

    .line 6
    sput-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Lcom/google/gson/internal/LinkedTreeMap$1;

    .line 9
    return-void
    .line 11
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    .line 8
    invoke-direct {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;-><init>(Z)V

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Lcom/google/gson/internal/LinkedTreeMap$1;

    .line 2
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 4
    iput v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 5
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 6
    iput-boolean p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->allowNullValues:Z

    .line 7
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    invoke-direct {v0, p1}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(Z)V

    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/io/InvalidObjectException;

    .line 2
    const-string p1, "Deserialization is unsupported"

    .line 4
    invoke-direct {p0, p1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    .line 6
    throw p0
    .line 9
.end method

.method private writeReplace()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    invoke-direct {v0, p0}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 4
    return-object v0
    .line 7
.end method


# virtual methods
.method public final clear()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 3
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 6
    iget v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 8
    add-int/lit8 v0, v0, 0x1

    .line 10
    iput v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 12
    iget-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 14
    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 16
    iput-object p0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 18
    return-void
    .line 20
.end method

.method public final containsKey(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 5
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 8
    goto :goto_0

    .line 9
    :catch_0
    :cond_0
    const/4 p0, 0x0

    .line 10
    :goto_0
    if-eqz p0, :cond_1

    .line 11
    const/4 v0, 0x1

    .line 13
    :cond_1
    return v0
    .line 14
.end method

.method public final entrySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$EntrySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 9
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->entrySet:Lcom/google/gson/internal/LinkedTreeMap$EntrySet;

    .line 12
    :goto_0
    return-object v0
    .line 14
.end method

.method public final find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->comparator:Ljava/util/Comparator;

    .line 2
    iget-object v1, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 4
    sget-object v2, Lcom/google/gson/internal/LinkedTreeMap;->NATURAL_ORDER:Lcom/google/gson/internal/LinkedTreeMap$1;

    .line 6
    const/4 v3, 0x0

    .line 8
    if-eqz v1, :cond_5

    .line 9
    if-ne v0, v2, :cond_0

    .line 11
    move-object v4, p1

    .line 13
    check-cast v4, Ljava/lang/Comparable;

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    move-object v4, v3

    .line 17
    :goto_0
    if-eqz v4, :cond_1

    .line 18
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 20
    invoke-interface {v4, v5}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    .line 22
    move-result v5

    .line 25
    goto :goto_1

    .line 26
    :cond_1
    iget-object v5, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->key:Ljava/lang/Object;

    .line 27
    invoke-interface {v0, p1, v5}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    .line 29
    move-result v5

    .line 32
    :goto_1
    if-nez v5, :cond_2

    .line 33
    return-object v1

    .line 35
    :cond_2
    if-gez v5, :cond_3

    .line 36
    iget-object v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 38
    goto :goto_2

    .line 40
    :cond_3
    iget-object v6, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 41
    :goto_2
    if-nez v6, :cond_4

    .line 43
    goto :goto_3

    .line 45
    :cond_4
    move-object v1, v6

    .line 46
    goto :goto_0

    .line 47
    :cond_5
    const/4 v5, 0x0

    .line 48
    :goto_3
    if-nez p2, :cond_6

    .line 49
    return-object v3

    .line 51
    :cond_6
    iget-object v10, p0, Lcom/google/gson/internal/LinkedTreeMap;->header:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 52
    const/4 p2, 0x1

    .line 54
    if-nez v1, :cond_9

    .line 55
    if-ne v0, v2, :cond_8

    .line 57
    instance-of v0, p1, Ljava/lang/Comparable;

    .line 59
    if-eqz v0, :cond_7

    .line 61
    goto :goto_4

    .line 63
    :cond_7
    new-instance p0, Ljava/lang/ClassCastException;

    .line 64
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 66
    move-result-object p1

    .line 69
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 70
    move-result-object p1

    .line 73
    const-string p2, " is not Comparable"

    .line 74
    invoke-virtual {p1, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 76
    move-result-object p1

    .line 79
    invoke-direct {p0, p1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    .line 80
    throw p0

    .line 83
    :cond_8
    :goto_4
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 84
    iget-boolean v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->allowNullValues:Z

    .line 86
    iget-object v11, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 88
    move-object v6, v0

    .line 90
    move-object v8, v1

    .line 91
    move-object v9, p1

    .line 92
    invoke-direct/range {v6 .. v11}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(ZLcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 93
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 96
    goto :goto_6

    .line 98
    :cond_9
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 99
    iget-boolean v7, p0, Lcom/google/gson/internal/LinkedTreeMap;->allowNullValues:Z

    .line 101
    iget-object v11, v10, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 103
    move-object v6, v0

    .line 105
    move-object v8, v1

    .line 106
    move-object v9, p1

    .line 107
    invoke-direct/range {v6 .. v11}, Lcom/google/gson/internal/LinkedTreeMap$Node;-><init>(ZLcom/google/gson/internal/LinkedTreeMap$Node;Ljava/lang/Object;Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 108
    if-gez v5, :cond_a

    .line 111
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 113
    goto :goto_5

    .line 115
    :cond_a
    iput-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 116
    :goto_5
    invoke-virtual {p0, v1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 118
    :goto_6
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 121
    add-int/2addr p1, p2

    .line 123
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 124
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 126
    add-int/2addr p1, p2

    .line 128
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 129
    return-object v0
    .line 131
.end method

.method public final findByEntry(Ljava/util/Map$Entry;)Lcom/google/gson/internal/LinkedTreeMap$Node;
    .locals 4

    .line 1
    invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 10
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 13
    goto :goto_0

    .line 14
    :catch_0
    :cond_0
    move-object p0, v2

    .line 15
    :goto_0
    if-eqz p0, :cond_3

    .line 16
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 18
    invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 20
    move-result-object p1

    .line 23
    const/4 v3, 0x1

    .line 24
    if-eq v0, p1, :cond_2

    .line 25
    if-eqz v0, :cond_1

    .line 27
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p1

    .line 32
    if-eqz p1, :cond_1

    .line 33
    goto :goto_1

    .line 35
    :cond_1
    move p1, v1

    .line 36
    goto :goto_2

    .line 37
    :cond_2
    :goto_1
    move p1, v3

    .line 38
    :goto_2
    if-eqz p1, :cond_3

    .line 39
    move v1, v3

    .line 41
    :cond_3
    if-eqz v1, :cond_4

    .line 42
    move-object v2, p0

    .line 44
    :cond_4
    return-object v2
    .line 45
.end method

.method public final get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p0, v0

    .line 11
    :goto_0
    if-eqz p0, :cond_1

    .line 12
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 14
    :cond_1
    return-object v0
    .line 16
.end method

.method public final keySet()Ljava/util/Set;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 7
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LinkedTreeMap$KeySet;-><init>(Lcom/google/gson/internal/LinkedTreeMap;)V

    .line 9
    iput-object v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->keySet:Lcom/google/gson/internal/LinkedTreeMap$KeySet;

    .line 12
    :goto_0
    return-object v0
    .line 14
.end method

.method public final put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    if-eqz p1, :cond_2

    .line 2
    if-nez p2, :cond_1

    .line 4
    iget-boolean v0, p0, Lcom/google/gson/internal/LinkedTreeMap;->allowNullValues:Z

    .line 6
    if-eqz v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    .line 11
    const-string/jumbo p1, "value == null"

    .line 13
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 16
    throw p0

    .line 19
    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 21
    move-result-object p0

    .line 24
    iget-object p1, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 25
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 27
    return-object p1

    .line 29
    :cond_2
    new-instance p0, Ljava/lang/NullPointerException;

    .line 30
    const-string p1, "key == null"

    .line 32
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 34
    throw p0
    .line 37
.end method

.method public final rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 7

    .line 1
    :goto_0
    if-eqz p1, :cond_e

    .line 2
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 4
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    iget v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 11
    goto :goto_1

    .line 13
    :cond_0
    move v3, v2

    .line 14
    :goto_1
    if-eqz v1, :cond_1

    .line 15
    iget v4, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 17
    goto :goto_2

    .line 19
    :cond_1
    move v4, v2

    .line 20
    :goto_2
    sub-int v5, v3, v4

    .line 21
    const/4 v6, -0x2

    .line 23
    if-ne v5, v6, :cond_6

    .line 24
    iget-object v0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 26
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 28
    if-eqz v3, :cond_2

    .line 30
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 32
    goto :goto_3

    .line 34
    :cond_2
    move v3, v2

    .line 35
    :goto_3
    if-eqz v0, :cond_3

    .line 36
    iget v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 38
    :cond_3
    sub-int/2addr v2, v3

    .line 40
    const/4 v0, -0x1

    .line 41
    if-eq v2, v0, :cond_5

    .line 42
    if-nez v2, :cond_4

    .line 44
    if-nez p2, :cond_4

    .line 46
    goto :goto_4

    .line 48
    :cond_4
    invoke-virtual {p0, v1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 49
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 52
    goto :goto_5

    .line 55
    :cond_5
    :goto_4
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 56
    :goto_5
    if-eqz p2, :cond_d

    .line 59
    goto :goto_9

    .line 61
    :cond_6
    const/4 v1, 0x2

    .line 62
    const/4 v6, 0x1

    .line 63
    if-ne v5, v1, :cond_b

    .line 64
    iget-object v1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 66
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 68
    if-eqz v3, :cond_7

    .line 70
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 72
    goto :goto_6

    .line 74
    :cond_7
    move v3, v2

    .line 75
    :goto_6
    if-eqz v1, :cond_8

    .line 76
    iget v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 78
    :cond_8
    sub-int/2addr v2, v3

    .line 80
    if-eq v2, v6, :cond_a

    .line 81
    if-nez v2, :cond_9

    .line 83
    if-nez p2, :cond_9

    .line 85
    goto :goto_7

    .line 87
    :cond_9
    invoke-virtual {p0, v0}, Lcom/google/gson/internal/LinkedTreeMap;->rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 88
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 91
    goto :goto_8

    .line 94
    :cond_a
    :goto_7
    invoke-virtual {p0, p1}, Lcom/google/gson/internal/LinkedTreeMap;->rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 95
    :goto_8
    if-eqz p2, :cond_d

    .line 98
    goto :goto_9

    .line 100
    :cond_b
    if-nez v5, :cond_c

    .line 101
    add-int/lit8 v3, v3, 0x1

    .line 103
    iput v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 105
    if-eqz p2, :cond_d

    .line 107
    goto :goto_9

    .line 109
    :cond_c
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 110
    move-result v0

    .line 113
    add-int/2addr v0, v6

    .line 114
    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 115
    if-nez p2, :cond_d

    .line 117
    goto :goto_9

    .line 119
    :cond_d
    iget-object p1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 120
    goto :goto_0

    .line 122
    :cond_e
    :goto_9
    return-void
    .line 123
.end method

.method public final remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    const/4 v1, 0x0

    .line 5
    :try_start_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->find(Ljava/lang/Object;Z)Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    move-result-object p1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 9
    goto :goto_0

    .line 10
    :catch_0
    :cond_0
    move-object p1, v0

    .line 11
    :goto_0
    if-eqz p1, :cond_1

    .line 12
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 15
    :cond_1
    if-eqz p1, :cond_2

    .line 18
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->value:Ljava/lang/Object;

    .line 20
    :cond_2
    return-object v0
    .line 22
.end method

.method public final removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V
    .locals 6

    .line 1
    if-eqz p2, :cond_0

    .line 2
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 4
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 8
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->next:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 10
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->prev:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 12
    :cond_0
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 14
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 16
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 18
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    if-eqz p2, :cond_6

    .line 22
    if-eqz v0, :cond_6

    .line 24
    iget v1, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 26
    iget v4, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 28
    if-le v1, v4, :cond_1

    .line 30
    iget-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 32
    :goto_0
    move-object v5, v0

    .line 34
    move-object v0, p2

    .line 35
    move-object p2, v5

    .line 36
    if-eqz p2, :cond_3

    .line 37
    iget-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 39
    goto :goto_0

    .line 41
    :cond_1
    iget-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 42
    :goto_1
    move-object v5, v0

    .line 44
    move-object v0, p2

    .line 45
    move-object p2, v5

    .line 46
    if-eqz v0, :cond_2

    .line 47
    iget-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    move-object v0, p2

    .line 52
    :cond_3
    invoke-virtual {p0, v0, v2}, Lcom/google/gson/internal/LinkedTreeMap;->removeInternal(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 53
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 56
    if-eqz p2, :cond_4

    .line 58
    iget v1, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 60
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 62
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 64
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 66
    goto :goto_2

    .line 68
    :cond_4
    move v1, v2

    .line 69
    :goto_2
    iget-object p2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 70
    if-eqz p2, :cond_5

    .line 72
    iget v2, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 74
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 76
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 78
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 80
    :cond_5
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 82
    move-result p2

    .line 85
    add-int/lit8 p2, p2, 0x1

    .line 86
    iput p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 88
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 90
    return-void

    .line 93
    :cond_6
    if-eqz p2, :cond_7

    .line 94
    invoke-virtual {p0, p1, p2}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 96
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 99
    goto :goto_3

    .line 101
    :cond_7
    if-eqz v0, :cond_8

    .line 102
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 104
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 107
    goto :goto_3

    .line 109
    :cond_8
    invoke-virtual {p0, p1, v3}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 110
    :goto_3
    invoke-virtual {p0, v1, v2}, Lcom/google/gson/internal/LinkedTreeMap;->rebalance(Lcom/google/gson/internal/LinkedTreeMap$Node;Z)V

    .line 113
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 116
    add-int/lit8 p1, p1, -0x1

    .line 118
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 120
    iget p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 122
    add-int/lit8 p1, p1, 0x1

    .line 124
    iput p1, p0, Lcom/google/gson/internal/LinkedTreeMap;->modCount:I

    .line 126
    return-void
    .line 128
.end method

.method public final replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 2

    .line 1
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 5
    if-eqz p2, :cond_0

    .line 7
    iput-object v0, p2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 9
    :cond_0
    if-eqz v0, :cond_2

    .line 11
    iget-object p0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 13
    if-ne p0, p1, :cond_1

    .line 15
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    iput-object p2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 20
    goto :goto_0

    .line 22
    :cond_2
    iput-object p2, p0, Lcom/google/gson/internal/LinkedTreeMap;->root:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 23
    :goto_0
    return-void
    .line 25
.end method

.method public final rotateLeft(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 2
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 4
    iget-object v2, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    iget-object v3, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 8
    iput-object v2, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 10
    if-eqz v2, :cond_0

    .line 12
    iput-object p1, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 14
    :cond_0
    invoke-virtual {p0, p1, v1}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 16
    iput-object p1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 19
    iput-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 21
    const/4 p0, 0x0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    iget v0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    move v0, p0

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    iget v2, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    move v2, p0

    .line 35
    :goto_1
    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result v0

    .line 39
    add-int/lit8 v0, v0, 0x1

    .line 40
    iput v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 42
    if-eqz v3, :cond_3

    .line 44
    iget p0, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 46
    :cond_3
    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result p0

    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    iput p0, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 54
    return-void
    .line 56
.end method

.method public final rotateRight(Lcom/google/gson/internal/LinkedTreeMap$Node;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 2
    iget-object v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 4
    iget-object v2, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 6
    iget-object v3, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 8
    iput-object v3, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->left:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 10
    if-eqz v3, :cond_0

    .line 12
    iput-object p1, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 14
    :cond_0
    invoke-virtual {p0, p1, v0}, Lcom/google/gson/internal/LinkedTreeMap;->replaceInParent(Lcom/google/gson/internal/LinkedTreeMap$Node;Lcom/google/gson/internal/LinkedTreeMap$Node;)V

    .line 16
    iput-object p1, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->right:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 19
    iput-object v0, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->parent:Lcom/google/gson/internal/LinkedTreeMap$Node;

    .line 21
    const/4 p0, 0x0

    .line 23
    if-eqz v1, :cond_1

    .line 24
    iget v1, v1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    move v1, p0

    .line 29
    :goto_0
    if-eqz v3, :cond_2

    .line 30
    iget v3, v3, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 32
    goto :goto_1

    .line 34
    :cond_2
    move v3, p0

    .line 35
    :goto_1
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 36
    move-result v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 40
    iput v1, p1, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 42
    if-eqz v2, :cond_3

    .line 44
    iget p0, v2, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 46
    :cond_3
    invoke-static {v1, p0}, Ljava/lang/Math;->max(II)I

    .line 48
    move-result p0

    .line 51
    add-int/lit8 p0, p0, 0x1

    .line 52
    iput p0, v0, Lcom/google/gson/internal/LinkedTreeMap$Node;->height:I

    .line 54
    return-void
    .line 56
.end method

.method public final size()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/google/gson/internal/LinkedTreeMap;->size:I

    .line 2
    return p0
    .line 4
.end method
