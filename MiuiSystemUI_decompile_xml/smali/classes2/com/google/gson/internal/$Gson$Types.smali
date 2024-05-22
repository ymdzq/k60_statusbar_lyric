.class public abstract Lcom/google/gson/internal/$Gson$Types;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v0, v0, [Ljava/lang/reflect/Type;

    .line 3
    sput-object v0, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 5
    return-void
    .line 7
.end method

.method public static canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    .line 14
    invoke-virtual {p0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 16
    move-result-object p0

    .line 19
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->canonicalize(Ljava/lang/reflect/Type;)Ljava/lang/reflect/Type;

    .line 20
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 24
    move-object p0, v0

    .line 27
    :cond_0
    return-object p0

    .line 28
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 29
    if-eqz v0, :cond_2

    .line 31
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 33
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    .line 35
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 37
    move-result-object v1

    .line 40
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 41
    move-result-object v2

    .line 44
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 45
    move-result-object p0

    .line 48
    invoke-direct {v0, v1, v2, p0}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 49
    return-object v0

    .line 52
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 53
    if-eqz v0, :cond_3

    .line 55
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 57
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    .line 59
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 61
    move-result-object p0

    .line 64
    invoke-direct {v0, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 65
    return-object v0

    .line 68
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 69
    if-eqz v0, :cond_4

    .line 71
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 73
    new-instance v0, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    .line 75
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 77
    move-result-object v1

    .line 80
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 81
    move-result-object p0

    .line 84
    invoke-direct {v0, v1, p0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 85
    return-object v0

    .line 88
    :cond_4
    return-object p0
    .line 89
.end method

.method public static checkArgument(Z)V
    .locals 0

    .line 1
    if-eqz p0, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 5
    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 7
    throw p0
    .line 10
.end method

.method public static checkNotPrimitive(Ljava/lang/reflect/Type;)V
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    check-cast p0, Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z

    .line 8
    move-result p0

    .line 11
    if-nez p0, :cond_0

    .line 12
    goto :goto_0

    .line 14
    :cond_0
    const/4 p0, 0x0

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 17
    :goto_1
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->checkArgument(Z)V

    .line 18
    return-void
    .line 21
.end method

.method public static equal(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    .line 1
    if-eq p0, p1, :cond_1

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
    .line 16
.end method

.method public static equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p0, Ljava/lang/Class;

    .line 6
    if-eqz v1, :cond_1

    .line 8
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result p0

    .line 13
    return p0

    .line 14
    :cond_1
    instance-of v1, p0, Ljava/lang/reflect/ParameterizedType;

    .line 15
    const/4 v2, 0x0

    .line 17
    if-eqz v1, :cond_4

    .line 18
    instance-of v1, p1, Ljava/lang/reflect/ParameterizedType;

    .line 20
    if-nez v1, :cond_2

    .line 22
    return v2

    .line 24
    :cond_2
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 25
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 27
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 29
    move-result-object v1

    .line 32
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 33
    move-result-object v3

    .line 36
    invoke-static {v1, v3}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 43
    move-result-object v1

    .line 46
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 47
    move-result-object v3

    .line 50
    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 51
    move-result v1

    .line 54
    if-eqz v1, :cond_3

    .line 55
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 57
    move-result-object p0

    .line 60
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 61
    move-result-object p1

    .line 64
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 65
    move-result p0

    .line 68
    if-eqz p0, :cond_3

    .line 69
    goto :goto_0

    .line 71
    :cond_3
    move v0, v2

    .line 72
    :goto_0
    return v0

    .line 73
    :cond_4
    instance-of v1, p0, Ljava/lang/reflect/GenericArrayType;

    .line 74
    if-eqz v1, :cond_6

    .line 76
    instance-of v0, p1, Ljava/lang/reflect/GenericArrayType;

    .line 78
    if-nez v0, :cond_5

    .line 80
    return v2

    .line 82
    :cond_5
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 83
    check-cast p1, Ljava/lang/reflect/GenericArrayType;

    .line 85
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 87
    move-result-object p0

    .line 90
    invoke-interface {p1}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 91
    move-result-object p1

    .line 94
    invoke-static {p0, p1}, Lcom/google/gson/internal/$Gson$Types;->equals(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;)Z

    .line 95
    move-result p0

    .line 98
    return p0

    .line 99
    :cond_6
    instance-of v1, p0, Ljava/lang/reflect/WildcardType;

    .line 100
    if-eqz v1, :cond_9

    .line 102
    instance-of v1, p1, Ljava/lang/reflect/WildcardType;

    .line 104
    if-nez v1, :cond_7

    .line 106
    return v2

    .line 108
    :cond_7
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 109
    check-cast p1, Ljava/lang/reflect/WildcardType;

    .line 111
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 113
    move-result-object v1

    .line 116
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 117
    move-result-object v3

    .line 120
    invoke-static {v1, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 121
    move-result v1

    .line 124
    if-eqz v1, :cond_8

    .line 125
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 127
    move-result-object p0

    .line 130
    invoke-interface {p1}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 131
    move-result-object p1

    .line 134
    invoke-static {p0, p1}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 135
    move-result p0

    .line 138
    if-eqz p0, :cond_8

    .line 139
    goto :goto_1

    .line 141
    :cond_8
    move v0, v2

    .line 142
    :goto_1
    return v0

    .line 143
    :cond_9
    instance-of v1, p0, Ljava/lang/reflect/TypeVariable;

    .line 144
    if-eqz v1, :cond_c

    .line 146
    instance-of v1, p1, Ljava/lang/reflect/TypeVariable;

    .line 148
    if-nez v1, :cond_a

    .line 150
    return v2

    .line 152
    :cond_a
    check-cast p0, Ljava/lang/reflect/TypeVariable;

    .line 153
    check-cast p1, Ljava/lang/reflect/TypeVariable;

    .line 155
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 157
    move-result-object v1

    .line 160
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 161
    move-result-object v3

    .line 164
    if-ne v1, v3, :cond_b

    .line 165
    invoke-interface {p0}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 167
    move-result-object p0

    .line 170
    invoke-interface {p1}, Ljava/lang/reflect/TypeVariable;->getName()Ljava/lang/String;

    .line 171
    move-result-object p1

    .line 174
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 175
    move-result p0

    .line 178
    if-eqz p0, :cond_b

    .line 179
    goto :goto_2

    .line 181
    :cond_b
    move v0, v2

    .line 182
    :goto_2
    return v0

    .line 183
    :cond_c
    return v2
    .line 184
.end method

.method public static getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 3

    .line 1
    if-ne p2, p1, :cond_0

    .line 2
    return-object p0

    .line 4
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Class;->isInterface()Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_3

    .line 9
    invoke-virtual {p1}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;

    .line 11
    move-result-object p0

    .line 14
    array-length v0, p0

    .line 15
    const/4 v1, 0x0

    .line 16
    :goto_0
    if-ge v1, v0, :cond_3

    .line 17
    aget-object v2, p0, v1

    .line 19
    if-ne v2, p2, :cond_1

    .line 21
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 23
    move-result-object p0

    .line 26
    aget-object p0, p0, v1

    .line 27
    return-object p0

    .line 29
    :cond_1
    invoke-virtual {p2, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 30
    move-result v2

    .line 33
    if-eqz v2, :cond_2

    .line 34
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericInterfaces()[Ljava/lang/reflect/Type;

    .line 36
    move-result-object p1

    .line 39
    aget-object p1, p1, v1

    .line 40
    aget-object p0, p0, v1

    .line 42
    invoke-static {p1, p0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 44
    move-result-object p0

    .line 47
    return-object p0

    .line 48
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->isInterface()Z

    .line 52
    move-result p0

    .line 55
    if-nez p0, :cond_6

    .line 56
    :goto_1
    const-class p0, Ljava/lang/Object;

    .line 58
    if-eq p1, p0, :cond_6

    .line 60
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    .line 62
    move-result-object p0

    .line 65
    if-ne p0, p2, :cond_4

    .line 66
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 68
    move-result-object p0

    .line 71
    return-object p0

    .line 72
    :cond_4
    invoke-virtual {p2, p0}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 73
    move-result v0

    .line 76
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {p1}, Ljava/lang/Class;->getGenericSuperclass()Ljava/lang/reflect/Type;

    .line 79
    move-result-object p1

    .line 82
    invoke-static {p1, p0, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 83
    move-result-object p0

    .line 86
    return-object p0

    .line 87
    :cond_5
    move-object p1, p0

    .line 88
    goto :goto_1

    .line 89
    :cond_6
    return-object p2
    .line 90
.end method

.method public static getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;
    .locals 4

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Class;

    .line 6
    return-object p0

    .line 8
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/ParameterizedType;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    check-cast p0, Ljava/lang/reflect/ParameterizedType;

    .line 13
    invoke-interface {p0}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 15
    move-result-object p0

    .line 18
    instance-of v0, p0, Ljava/lang/Class;

    .line 19
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->checkArgument(Z)V

    .line 21
    check-cast p0, Ljava/lang/Class;

    .line 24
    return-object p0

    .line 26
    :cond_1
    instance-of v0, p0, Ljava/lang/reflect/GenericArrayType;

    .line 27
    const/4 v1, 0x0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    check-cast p0, Ljava/lang/reflect/GenericArrayType;

    .line 32
    invoke-interface {p0}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 34
    move-result-object p0

    .line 37
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 38
    move-result-object p0

    .line 41
    invoke-static {p0, v1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 46
    move-result-object p0

    .line 49
    return-object p0

    .line 50
    :cond_2
    instance-of v0, p0, Ljava/lang/reflect/TypeVariable;

    .line 51
    if-eqz v0, :cond_3

    .line 53
    const-class p0, Ljava/lang/Object;

    .line 55
    return-object p0

    .line 57
    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 58
    if-eqz v0, :cond_4

    .line 60
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 62
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 64
    move-result-object p0

    .line 67
    aget-object p0, p0, v1

    .line 68
    invoke-static {p0}, Lcom/google/gson/internal/$Gson$Types;->getRawType(Ljava/lang/reflect/Type;)Ljava/lang/Class;

    .line 70
    move-result-object p0

    .line 73
    return-object p0

    .line 74
    :cond_4
    if-nez p0, :cond_5

    .line 75
    const-string v0, "null"

    .line 77
    goto :goto_0

    .line 79
    :cond_5
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 80
    move-result-object v0

    .line 83
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 84
    move-result-object v0

    .line 87
    :goto_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    .line 90
    const-string v3, "Expected a Class, ParameterizedType, or GenericArrayType, but <"

    .line 92
    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 94
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 97
    const-string p0, "> is of type "

    .line 100
    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 108
    move-result-object p0

    .line 111
    invoke-direct {v1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 112
    throw v1
    .line 115
.end method

.method public static getSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/reflect/WildcardType;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 6
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 8
    move-result-object p0

    .line 11
    const/4 v0, 0x0

    .line 12
    aget-object p0, p0, v0

    .line 13
    :cond_0
    invoke-virtual {p2, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    .line 15
    move-result v0

    .line 18
    invoke-static {v0}, Lcom/google/gson/internal/$Gson$Types;->checkArgument(Z)V

    .line 19
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 22
    move-result-object p2

    .line 25
    new-instance v0, Ljava/util/HashMap;

    .line 26
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 28
    invoke-static {p0, p1, p2, v0}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 31
    move-result-object p0

    .line 34
    return-object p0
    .line 35
.end method

.method public static resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    move-object v1, v0

    .line 3
    :cond_0
    instance-of v2, p2, Ljava/lang/reflect/TypeVariable;

    .line 4
    const/4 v3, 0x0

    .line 6
    if-eqz v2, :cond_9

    .line 7
    move-object v2, p2

    .line 9
    check-cast v2, Ljava/lang/reflect/TypeVariable;

    .line 10
    move-object v4, p3

    .line 12
    check-cast v4, Ljava/util/HashMap;

    .line 13
    invoke-virtual {v4, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    move-result-object v5

    .line 18
    check-cast v5, Ljava/lang/reflect/Type;

    .line 19
    if-eqz v5, :cond_2

    .line 21
    sget-object p0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 23
    if-ne v5, p0, :cond_1

    .line 25
    goto :goto_0

    .line 27
    :cond_1
    move-object p2, v5

    .line 28
    :goto_0
    return-object p2

    .line 29
    :cond_2
    sget-object p2, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    .line 30
    invoke-virtual {v4, v2, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    if-nez v1, :cond_3

    .line 35
    move-object v1, v2

    .line 37
    :cond_3
    invoke-interface {v2}, Ljava/lang/reflect/TypeVariable;->getGenericDeclaration()Ljava/lang/reflect/GenericDeclaration;

    .line 38
    move-result-object p2

    .line 41
    instance-of v4, p2, Ljava/lang/Class;

    .line 42
    if-eqz v4, :cond_4

    .line 44
    check-cast p2, Ljava/lang/Class;

    .line 46
    goto :goto_1

    .line 48
    :cond_4
    move-object p2, v0

    .line 49
    :goto_1
    if-nez p2, :cond_5

    .line 50
    goto :goto_3

    .line 52
    :cond_5
    invoke-static {p0, p1, p2}, Lcom/google/gson/internal/$Gson$Types;->getGenericSupertype(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/reflect/Type;

    .line 53
    move-result-object v4

    .line 56
    instance-of v5, v4, Ljava/lang/reflect/ParameterizedType;

    .line 57
    if-eqz v5, :cond_8

    .line 59
    invoke-virtual {p2}, Ljava/lang/Class;->getTypeParameters()[Ljava/lang/reflect/TypeVariable;

    .line 61
    move-result-object p2

    .line 64
    array-length v5, p2

    .line 65
    :goto_2
    if-ge v3, v5, :cond_7

    .line 66
    aget-object v6, p2, v3

    .line 68
    invoke-virtual {v2, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 70
    move-result v6

    .line 73
    if-eqz v6, :cond_6

    .line 74
    check-cast v4, Ljava/lang/reflect/ParameterizedType;

    .line 76
    invoke-interface {v4}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 78
    move-result-object p2

    .line 81
    aget-object p2, p2, v3

    .line 82
    goto :goto_4

    .line 84
    :cond_6
    add-int/lit8 v3, v3, 0x1

    .line 85
    goto :goto_2

    .line 87
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    .line 88
    invoke-direct {p0}, Ljava/util/NoSuchElementException;-><init>()V

    .line 90
    throw p0

    .line 93
    :cond_8
    :goto_3
    move-object p2, v2

    .line 94
    :goto_4
    if-ne p2, v2, :cond_0

    .line 95
    goto/16 :goto_9

    .line 97
    :cond_9
    instance-of v0, p2, Ljava/lang/Class;

    .line 99
    if-eqz v0, :cond_b

    .line 101
    move-object v0, p2

    .line 103
    check-cast v0, Ljava/lang/Class;

    .line 104
    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    .line 106
    move-result v2

    .line 109
    if-eqz v2, :cond_b

    .line 110
    invoke-virtual {v0}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    .line 112
    move-result-object p2

    .line 115
    invoke-static {p0, p1, p2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 116
    move-result-object p0

    .line 119
    invoke-static {p2, p0}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 120
    move-result p1

    .line 123
    if-eqz p1, :cond_a

    .line 124
    move-object p2, v0

    .line 126
    goto/16 :goto_9

    .line 127
    :cond_a
    new-instance p1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    .line 129
    invoke-direct {p1, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 131
    goto :goto_5

    .line 134
    :cond_b
    instance-of v0, p2, Ljava/lang/reflect/GenericArrayType;

    .line 135
    if-eqz v0, :cond_d

    .line 137
    check-cast p2, Ljava/lang/reflect/GenericArrayType;

    .line 139
    invoke-interface {p2}, Ljava/lang/reflect/GenericArrayType;->getGenericComponentType()Ljava/lang/reflect/Type;

    .line 141
    move-result-object v0

    .line 144
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 145
    move-result-object p0

    .line 148
    invoke-static {v0, p0}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 149
    move-result p1

    .line 152
    if-eqz p1, :cond_c

    .line 153
    goto/16 :goto_9

    .line 155
    :cond_c
    new-instance p1, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;

    .line 157
    invoke-direct {p1, p0}, Lcom/google/gson/internal/$Gson$Types$GenericArrayTypeImpl;-><init>(Ljava/lang/reflect/Type;)V

    .line 159
    :goto_5
    move-object p2, p1

    .line 162
    goto/16 :goto_9

    .line 163
    :cond_d
    instance-of v0, p2, Ljava/lang/reflect/ParameterizedType;

    .line 165
    const/4 v2, 0x1

    .line 167
    if-eqz v0, :cond_11

    .line 168
    check-cast p2, Ljava/lang/reflect/ParameterizedType;

    .line 170
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getOwnerType()Ljava/lang/reflect/Type;

    .line 172
    move-result-object v0

    .line 175
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 176
    move-result-object v4

    .line 179
    invoke-static {v4, v0}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 180
    move-result v0

    .line 183
    xor-int/2addr v0, v2

    .line 184
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    .line 185
    move-result-object v5

    .line 188
    array-length v6, v5

    .line 189
    :goto_6
    if-ge v3, v6, :cond_10

    .line 190
    aget-object v7, v5, v3

    .line 192
    invoke-static {p0, p1, v7, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 194
    move-result-object v7

    .line 197
    aget-object v8, v5, v3

    .line 198
    invoke-static {v7, v8}, Lcom/google/gson/internal/$Gson$Types;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 200
    move-result v8

    .line 203
    if-nez v8, :cond_f

    .line 204
    if-nez v0, :cond_e

    .line 206
    invoke-virtual {v5}, [Ljava/lang/reflect/Type;->clone()Ljava/lang/Object;

    .line 208
    move-result-object v0

    .line 211
    move-object v5, v0

    .line 212
    check-cast v5, [Ljava/lang/reflect/Type;

    .line 213
    move v0, v2

    .line 215
    :cond_e
    aput-object v7, v5, v3

    .line 216
    :cond_f
    add-int/lit8 v3, v3, 0x1

    .line 218
    goto :goto_6

    .line 220
    :cond_10
    if-eqz v0, :cond_15

    .line 221
    invoke-interface {p2}, Ljava/lang/reflect/ParameterizedType;->getRawType()Ljava/lang/reflect/Type;

    .line 223
    move-result-object p0

    .line 226
    new-instance p1, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;

    .line 227
    invoke-direct {p1, v4, p0, v5}, Lcom/google/gson/internal/$Gson$Types$ParameterizedTypeImpl;-><init>(Ljava/lang/reflect/Type;Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 229
    goto :goto_5

    .line 232
    :cond_11
    instance-of v0, p2, Ljava/lang/reflect/WildcardType;

    .line 233
    if-eqz v0, :cond_15

    .line 235
    check-cast p2, Ljava/lang/reflect/WildcardType;

    .line 237
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 239
    move-result-object v0

    .line 242
    invoke-interface {p2}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 243
    move-result-object v4

    .line 246
    array-length v5, v0

    .line 247
    if-ne v5, v2, :cond_13

    .line 248
    aget-object v2, v0, v3

    .line 250
    invoke-static {p0, p1, v2, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 252
    move-result-object p0

    .line 255
    aget-object p1, v0, v3

    .line 256
    if-eq p0, p1, :cond_15

    .line 258
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    .line 260
    if-eqz p1, :cond_12

    .line 262
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 264
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getLowerBounds()[Ljava/lang/reflect/Type;

    .line 266
    move-result-object p0

    .line 269
    goto :goto_7

    .line 270
    :cond_12
    filled-new-array {p0}, [Ljava/lang/reflect/Type;

    .line 271
    move-result-object p0

    .line 274
    :goto_7
    new-instance p2, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    .line 275
    const-class p1, Ljava/lang/Object;

    .line 277
    filled-new-array {p1}, [Ljava/lang/reflect/Type;

    .line 279
    move-result-object p1

    .line 282
    invoke-direct {p2, p1, p0}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 283
    goto :goto_9

    .line 286
    :cond_13
    array-length v0, v4

    .line 287
    if-ne v0, v2, :cond_15

    .line 288
    aget-object v0, v4, v3

    .line 290
    invoke-static {p0, p1, v0, p3}, Lcom/google/gson/internal/$Gson$Types;->resolve(Ljava/lang/reflect/Type;Ljava/lang/Class;Ljava/lang/reflect/Type;Ljava/util/Map;)Ljava/lang/reflect/Type;

    .line 292
    move-result-object p0

    .line 295
    aget-object p1, v4, v3

    .line 296
    if-eq p0, p1, :cond_15

    .line 298
    instance-of p1, p0, Ljava/lang/reflect/WildcardType;

    .line 300
    if-eqz p1, :cond_14

    .line 302
    check-cast p0, Ljava/lang/reflect/WildcardType;

    .line 304
    invoke-interface {p0}, Ljava/lang/reflect/WildcardType;->getUpperBounds()[Ljava/lang/reflect/Type;

    .line 306
    move-result-object p0

    .line 309
    goto :goto_8

    .line 310
    :cond_14
    filled-new-array {p0}, [Ljava/lang/reflect/Type;

    .line 311
    move-result-object p0

    .line 314
    :goto_8
    new-instance p2, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;

    .line 315
    sget-object p1, Lcom/google/gson/internal/$Gson$Types;->EMPTY_TYPE_ARRAY:[Ljava/lang/reflect/Type;

    .line 317
    invoke-direct {p2, p0, p1}, Lcom/google/gson/internal/$Gson$Types$WildcardTypeImpl;-><init>([Ljava/lang/reflect/Type;[Ljava/lang/reflect/Type;)V

    .line 319
    :cond_15
    :goto_9
    if-eqz v1, :cond_16

    .line 322
    check-cast p3, Ljava/util/HashMap;

    .line 324
    invoke-virtual {p3, v1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    :cond_16
    return-object p2
    .line 329
.end method

.method public static typeToString(Ljava/lang/reflect/Type;)Ljava/lang/String;
    .locals 1

    .line 1
    instance-of v0, p0, Ljava/lang/Class;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Ljava/lang/Class;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 8
    move-result-object p0

    .line 11
    goto :goto_0

    .line 12
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 13
    move-result-object p0

    .line 16
    :goto_0
    return-object p0
    .line 17
.end method
