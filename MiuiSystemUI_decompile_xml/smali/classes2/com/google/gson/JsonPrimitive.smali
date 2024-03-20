.class public final Lcom/google/gson/JsonPrimitive;
.super Lcom/google/gson/JsonElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Boolean;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Number;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 4
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/google/gson/JsonElement;-><init>()V

    .line 6
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    return-void
.end method

.method public static isIntegral(Lcom/google/gson/JsonPrimitive;)Z
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/lang/Number;

    .line 4
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_1

    .line 7
    check-cast p0, Ljava/lang/Number;

    .line 9
    instance-of v0, p0, Ljava/math/BigInteger;

    .line 11
    if-nez v0, :cond_0

    .line 13
    instance-of v0, p0, Ljava/lang/Long;

    .line 15
    if-nez v0, :cond_0

    .line 17
    instance-of v0, p0, Ljava/lang/Integer;

    .line 19
    if-nez v0, :cond_0

    .line 21
    instance-of v0, p0, Ljava/lang/Short;

    .line 23
    if-nez v0, :cond_0

    .line 25
    instance-of p0, p0, Ljava/lang/Byte;

    .line 27
    if-eqz p0, :cond_1

    .line 29
    :cond_0
    const/4 v1, 0x1

    .line 31
    :cond_1
    return v1
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 5

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
    if-eqz p1, :cond_9

    .line 7
    const-class v2, Lcom/google/gson/JsonPrimitive;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    move-result-object v3

    .line 14
    if-eq v2, v3, :cond_1

    .line 15
    goto :goto_3

    .line 17
    :cond_1
    check-cast p1, Lcom/google/gson/JsonPrimitive;

    .line 18
    iget-object v2, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 20
    iget-object v3, p1, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 22
    if-nez v2, :cond_3

    .line 24
    if-nez v3, :cond_2

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    move v0, v1

    .line 29
    :goto_0
    return v0

    .line 30
    :cond_3
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 31
    move-result v4

    .line 34
    if-eqz v4, :cond_5

    .line 35
    invoke-static {p1}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 37
    move-result v4

    .line 40
    if-eqz v4, :cond_5

    .line 41
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 43
    move-result-object p0

    .line 46
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 47
    move-result-wide v2

    .line 50
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 51
    move-result-object p0

    .line 54
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 55
    move-result-wide p0

    .line 58
    cmp-long p0, v2, p0

    .line 59
    if-nez p0, :cond_4

    .line 61
    goto :goto_1

    .line 63
    :cond_4
    move v0, v1

    .line 64
    :goto_1
    return v0

    .line 65
    :cond_5
    instance-of v4, v2, Ljava/lang/Number;

    .line 66
    if-eqz v4, :cond_8

    .line 68
    instance-of v4, v3, Ljava/lang/Number;

    .line 70
    if-eqz v4, :cond_8

    .line 72
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 74
    move-result-object p0

    .line 77
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 78
    move-result-wide v2

    .line 81
    invoke-virtual {p1}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 82
    move-result-object p0

    .line 85
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 86
    move-result-wide p0

    .line 89
    cmpl-double v4, v2, p0

    .line 90
    if-eqz v4, :cond_7

    .line 92
    invoke-static {v2, v3}, Ljava/lang/Double;->isNaN(D)Z

    .line 94
    move-result v2

    .line 97
    if-eqz v2, :cond_6

    .line 98
    invoke-static {p0, p1}, Ljava/lang/Double;->isNaN(D)Z

    .line 100
    move-result p0

    .line 103
    if-eqz p0, :cond_6

    .line 104
    goto :goto_2

    .line 106
    :cond_6
    move v0, v1

    .line 107
    :cond_7
    :goto_2
    return v0

    .line 108
    :cond_8
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 109
    move-result p0

    .line 112
    return p0

    .line 113
    :cond_9
    :goto_3
    return v1
    .line 114
.end method

.method public final getAsNumber()Ljava/lang/Number;
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 2
    instance-of v0, p0, Ljava/lang/Number;

    .line 4
    if-eqz v0, :cond_0

    .line 6
    check-cast p0, Ljava/lang/Number;

    .line 8
    return-object p0

    .line 10
    :cond_0
    instance-of v0, p0, Ljava/lang/String;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    new-instance v0, Lcom/google/gson/internal/LazilyParsedNumber;

    .line 15
    check-cast p0, Ljava/lang/String;

    .line 17
    invoke-direct {v0, p0}, Lcom/google/gson/internal/LazilyParsedNumber;-><init>(Ljava/lang/String;)V

    .line 19
    return-object v0

    .line 22
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 23
    const-string v0, "Primitive is neither a number nor a string"

    .line 25
    invoke-direct {p0, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 27
    throw p0
    .line 30
.end method

.method public final getAsString()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 2
    instance-of v1, v0, Ljava/lang/String;

    .line 4
    if-eqz v1, :cond_0

    .line 6
    check-cast v0, Ljava/lang/String;

    .line 8
    return-object v0

    .line 10
    :cond_0
    instance-of v1, v0, Ljava/lang/Number;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 15
    move-result-object p0

    .line 18
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 19
    move-result-object p0

    .line 22
    return-object p0

    .line 23
    :cond_1
    instance-of p0, v0, Ljava/lang/Boolean;

    .line 24
    if-eqz p0, :cond_2

    .line 26
    check-cast v0, Ljava/lang/Boolean;

    .line 28
    invoke-virtual {v0}, Ljava/lang/Boolean;->toString()Ljava/lang/String;

    .line 30
    move-result-object p0

    .line 33
    return-object p0

    .line 34
    :cond_2
    new-instance p0, Ljava/lang/AssertionError;

    .line 35
    new-instance v1, Ljava/lang/StringBuilder;

    .line 37
    const-string v2, "Unexpected value type: "

    .line 39
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 44
    move-result-object v0

    .line 47
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 48
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 51
    move-result-object v0

    .line 54
    invoke-direct {p0, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    .line 55
    throw p0
    .line 58
.end method

.method public final hashCode()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/gson/JsonPrimitive;->value:Ljava/lang/Object;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/16 p0, 0x1f

    .line 6
    return p0

    .line 8
    :cond_0
    invoke-static {p0}, Lcom/google/gson/JsonPrimitive;->isIntegral(Lcom/google/gson/JsonPrimitive;)Z

    .line 9
    move-result v1

    .line 12
    const/16 v2, 0x20

    .line 13
    if-eqz v1, :cond_1

    .line 15
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 17
    move-result-object p0

    .line 20
    invoke-virtual {p0}, Ljava/lang/Number;->longValue()J

    .line 21
    move-result-wide v0

    .line 24
    :goto_0
    ushr-long v2, v0, v2

    .line 25
    xor-long/2addr v0, v2

    .line 27
    long-to-int p0, v0

    .line 28
    return p0

    .line 29
    :cond_1
    instance-of v1, v0, Ljava/lang/Number;

    .line 30
    if-eqz v1, :cond_2

    .line 32
    invoke-virtual {p0}, Lcom/google/gson/JsonPrimitive;->getAsNumber()Ljava/lang/Number;

    .line 34
    move-result-object p0

    .line 37
    invoke-virtual {p0}, Ljava/lang/Number;->doubleValue()D

    .line 38
    move-result-wide v0

    .line 41
    invoke-static {v0, v1}, Ljava/lang/Double;->doubleToLongBits(D)J

    .line 42
    move-result-wide v0

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    .line 47
    move-result p0

    .line 50
    return p0
    .line 51
.end method
