.class public final Lcom/airbnb/lottie/model/KeyPath;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final COMPOSITION:Lcom/airbnb/lottie/model/KeyPath;


# instance fields
.field public final keys:Ljava/util/List;

.field public resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcom/airbnb/lottie/model/KeyPath;

    .line 2
    const-string v1, "COMPOSITION"

    .line 4
    filled-new-array {v1}, [Ljava/lang/String;

    .line 6
    move-result-object v1

    .line 9
    invoke-direct {v0, v1}, Lcom/airbnb/lottie/model/KeyPath;-><init>([Ljava/lang/String;)V

    .line 10
    sput-object v0, Lcom/airbnb/lottie/model/KeyPath;->COMPOSITION:Lcom/airbnb/lottie/model/KeyPath;

    .line 13
    return-void
    .line 15
.end method

.method public constructor <init>(Lcom/airbnb/lottie/model/KeyPath;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 5
    iget-object p1, p1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    iput-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    return-void
.end method

.method public varargs constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    const/4 v1, 0x0

    .line 6
    if-eqz p1, :cond_5

    .line 7
    const-class v2, Lcom/airbnb/lottie/model/KeyPath;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    goto :goto_1

    .line 17
    :cond_1
    check-cast p1, Lcom/airbnb/lottie/model/KeyPath;

    .line 18
    iget-object v2, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 20
    iget-object v3, p1, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 22
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    .line 24
    move-result v2

    .line 27
    if-nez v2, :cond_2

    .line 28
    return v1

    .line 30
    :cond_2
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 31
    if-eqz p0, :cond_3

    .line 33
    iget-object p1, p1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 35
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v0

    .line 40
    goto :goto_0

    .line 41
    :cond_3
    iget-object p0, p1, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 42
    if-nez p0, :cond_4

    .line 44
    goto :goto_0

    .line 46
    :cond_4
    move v0, v1

    .line 47
    :goto_0
    return v0

    .line 48
    :cond_5
    :goto_1
    return v1
    .line 49
.end method

.method public final fullyResolvesTo(ILjava/lang/String;)Z
    .locals 6

    .line 1
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-lt p1, v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 12
    move-result v0

    .line 15
    const/4 v2, 0x1

    .line 16
    sub-int/2addr v0, v2

    .line 17
    if-ne p1, v0, :cond_1

    .line 18
    move v0, v2

    .line 20
    goto :goto_0

    .line 21
    :cond_1
    move v0, v1

    .line 22
    :goto_0
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 23
    move-result-object v3

    .line 26
    check-cast v3, Ljava/lang/String;

    .line 27
    const-string v4, "**"

    .line 29
    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 31
    move-result v5

    .line 34
    if-nez v5, :cond_6

    .line 35
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result p2

    .line 40
    if-nez p2, :cond_3

    .line 41
    const-string p2, "*"

    .line 43
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p2

    .line 48
    if-eqz p2, :cond_2

    .line 49
    goto :goto_1

    .line 51
    :cond_2
    move p2, v1

    .line 52
    goto :goto_2

    .line 53
    :cond_3
    :goto_1
    move p2, v2

    .line 54
    :goto_2
    if-nez v0, :cond_4

    .line 55
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 57
    move-result v0

    .line 60
    add-int/lit8 v0, v0, -0x2

    .line 61
    if-ne p1, v0, :cond_5

    .line 63
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 65
    move-result p1

    .line 68
    add-int/lit8 p1, p1, -0x1

    .line 69
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 71
    move-result-object p0

    .line 74
    check-cast p0, Ljava/lang/String;

    .line 75
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    move-result p0

    .line 80
    if-eqz p0, :cond_5

    .line 81
    :cond_4
    if-eqz p2, :cond_5

    .line 83
    move v1, v2

    .line 85
    :cond_5
    return v1

    .line 86
    :cond_6
    if-nez v0, :cond_7

    .line 87
    add-int/lit8 v3, p1, 0x1

    .line 89
    invoke-interface {p0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 91
    move-result-object v3

    .line 94
    check-cast v3, Ljava/lang/String;

    .line 95
    invoke-virtual {v3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    move-result v3

    .line 100
    if-eqz v3, :cond_7

    .line 101
    move v3, v2

    .line 103
    goto :goto_3

    .line 104
    :cond_7
    move v3, v1

    .line 105
    :goto_3
    if-eqz v3, :cond_a

    .line 106
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 108
    move-result p2

    .line 111
    add-int/lit8 p2, p2, -0x2

    .line 112
    if-eq p1, p2, :cond_8

    .line 114
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 116
    move-result p2

    .line 119
    add-int/lit8 p2, p2, -0x3

    .line 120
    if-ne p1, p2, :cond_9

    .line 122
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 124
    move-result p1

    .line 127
    add-int/lit8 p1, p1, -0x1

    .line 128
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 130
    move-result-object p0

    .line 133
    check-cast p0, Ljava/lang/String;

    .line 134
    invoke-virtual {p0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 136
    move-result p0

    .line 139
    if-eqz p0, :cond_9

    .line 140
    :cond_8
    move v1, v2

    .line 142
    :cond_9
    return v1

    .line 143
    :cond_a
    if-eqz v0, :cond_b

    .line 144
    return v2

    .line 146
    :cond_b
    add-int/2addr p1, v2

    .line 147
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 148
    move-result v0

    .line 151
    sub-int/2addr v0, v2

    .line 152
    if-ge p1, v0, :cond_c

    .line 153
    return v1

    .line 155
    :cond_c
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    move-result-object p0

    .line 159
    check-cast p0, Ljava/lang/String;

    .line 160
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 162
    move-result p0

    .line 165
    return p0
    .line 166
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/util/List;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 10
    if-eqz p0, :cond_0

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 14
    move-result p0

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    :goto_0
    add-int/2addr v0, p0

    .line 20
    return v0
    .line 21
.end method

.method public final incrementDepthBy(ILjava/lang/String;)I
    .locals 3

    .line 1
    const-string v0, "__container"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 12
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Ljava/lang/String;

    .line 18
    const-string v2, "**"

    .line 20
    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 22
    move-result v0

    .line 25
    const/4 v2, 0x1

    .line 26
    if-nez v0, :cond_1

    .line 27
    return v2

    .line 29
    :cond_1
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 30
    move-result v0

    .line 33
    sub-int/2addr v0, v2

    .line 34
    if-ne p1, v0, :cond_2

    .line 35
    return v1

    .line 37
    :cond_2
    add-int/2addr p1, v2

    .line 38
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object p0

    .line 42
    check-cast p0, Ljava/lang/String;

    .line 43
    invoke-virtual {p0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    move-result p0

    .line 48
    if-eqz p0, :cond_3

    .line 49
    const/4 p0, 0x2

    .line 51
    return p0

    .line 52
    :cond_3
    return v1
    .line 53
.end method

.method public final matches(ILjava/lang/String;)Z
    .locals 3

    .line 1
    const-string v0, "__container"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    if-eqz v0, :cond_0

    .line 9
    return v1

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result v0

    .line 17
    const/4 v2, 0x0

    .line 18
    if-lt p1, v0, :cond_1

    .line 19
    return v2

    .line 21
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v0

    .line 25
    check-cast v0, Ljava/lang/String;

    .line 26
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 28
    move-result p2

    .line 31
    if-nez p2, :cond_3

    .line 32
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 34
    move-result-object p2

    .line 37
    check-cast p2, Ljava/lang/String;

    .line 38
    const-string v0, "**"

    .line 40
    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p2

    .line 45
    if-nez p2, :cond_3

    .line 46
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p0

    .line 51
    check-cast p0, Ljava/lang/String;

    .line 52
    const-string p1, "*"

    .line 54
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 56
    move-result p0

    .line 59
    if-eqz p0, :cond_2

    .line 60
    goto :goto_0

    .line 62
    :cond_2
    return v2

    .line 63
    :cond_3
    :goto_0
    return v1
    .line 64
.end method

.method public final propagateToChildren(ILjava/lang/String;)Z
    .locals 1

    .line 1
    const-string v0, "__container"

    .line 2
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result p2

    .line 7
    const/4 v0, 0x1

    .line 8
    if-eqz p2, :cond_0

    .line 9
    return v0

    .line 11
    :cond_0
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 12
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 14
    move-result p2

    .line 17
    sub-int/2addr p2, v0

    .line 18
    if-lt p1, p2, :cond_2

    .line 19
    invoke-interface {p0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 21
    move-result-object p0

    .line 24
    check-cast p0, Ljava/lang/String;

    .line 25
    const-string p1, "**"

    .line 27
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 29
    move-result p0

    .line 32
    if-eqz p0, :cond_1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    const/4 v0, 0x0

    .line 36
    :cond_2
    :goto_0
    return v0
    .line 37
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "KeyPath{keys="

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Lcom/airbnb/lottie/model/KeyPath;->keys:Ljava/util/List;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, ",resolved="

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object p0, p0, Lcom/airbnb/lottie/model/KeyPath;->resolvedElement:Lcom/airbnb/lottie/model/KeyPathElement;

    .line 19
    if-eqz p0, :cond_0

    .line 21
    const/4 p0, 0x1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/4 p0, 0x0

    .line 25
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 26
    const/16 p0, 0x7d

    .line 29
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 31
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 34
    move-result-object p0

    .line 37
    return-object p0
    .line 38
.end method
