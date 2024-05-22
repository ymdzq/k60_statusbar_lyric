.class public final Landroidx/room/util/TableInfo$Column;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final affinity:I

.field public final defaultValue:Ljava/lang/String;

.field public final mCreatedFrom:I

.field public final name:Ljava/lang/String;

.field public final notNull:Z

.field public final primaryKeyPosition:I

.field public final type:Ljava/lang/String;


# direct methods
.method public constructor <init>(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 7
    iput-boolean p6, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 9
    iput p1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 11
    const/4 p1, 0x5

    .line 13
    if-nez p4, :cond_0

    .line 14
    goto :goto_2

    .line 16
    :cond_0
    sget-object p3, Ljava/util/Locale;->US:Ljava/util/Locale;

    .line 17
    invoke-virtual {p4, p3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 19
    move-result-object p3

    .line 22
    const-string p4, "INT"

    .line 23
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 25
    move-result p4

    .line 28
    if-eqz p4, :cond_1

    .line 29
    const/4 p1, 0x3

    .line 31
    goto :goto_2

    .line 32
    :cond_1
    const-string p4, "CHAR"

    .line 33
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 35
    move-result p4

    .line 38
    if-nez p4, :cond_6

    .line 39
    const-string p4, "CLOB"

    .line 41
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 43
    move-result p4

    .line 46
    if-nez p4, :cond_6

    .line 47
    const-string p4, "TEXT"

    .line 49
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 51
    move-result p4

    .line 54
    if-eqz p4, :cond_2

    .line 55
    goto :goto_1

    .line 57
    :cond_2
    const-string p4, "BLOB"

    .line 58
    invoke-virtual {p3, p4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 60
    move-result p4

    .line 63
    if-eqz p4, :cond_3

    .line 64
    goto :goto_2

    .line 66
    :cond_3
    const-string p1, "REAL"

    .line 67
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 69
    move-result p1

    .line 72
    if-nez p1, :cond_5

    .line 73
    const-string p1, "FLOA"

    .line 75
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 77
    move-result p1

    .line 80
    if-nez p1, :cond_5

    .line 81
    const-string p1, "DOUB"

    .line 83
    invoke-virtual {p3, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    .line 85
    move-result p1

    .line 88
    if-eqz p1, :cond_4

    .line 89
    goto :goto_0

    .line 91
    :cond_4
    const/4 p1, 0x1

    .line 92
    goto :goto_2

    .line 93
    :cond_5
    :goto_0
    const/4 p1, 0x4

    .line 94
    goto :goto_2

    .line 95
    :cond_6
    :goto_1
    const/4 p1, 0x2

    .line 96
    :goto_2
    iput p1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 97
    iput-object p5, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 99
    iput p2, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    .line 101
    return-void
    .line 103
.end method

.method public static defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 6

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x1

    .line 10
    if-eqz v1, :cond_1

    .line 11
    return v2

    .line 13
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 14
    move-result v1

    .line 17
    if-nez v1, :cond_2

    .line 18
    goto :goto_2

    .line 20
    :cond_2
    move v1, v0

    .line 21
    move v3, v1

    .line 22
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 23
    move-result v4

    .line 26
    if-ge v1, v4, :cond_6

    .line 27
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    .line 29
    move-result v4

    .line 32
    const/16 v5, 0x28

    .line 33
    if-nez v1, :cond_3

    .line 35
    if-eq v4, v5, :cond_3

    .line 37
    goto :goto_2

    .line 39
    :cond_3
    if-ne v4, v5, :cond_4

    .line 40
    add-int/lit8 v3, v3, 0x1

    .line 42
    goto :goto_1

    .line 44
    :cond_4
    const/16 v5, 0x29

    .line 45
    if-ne v4, v5, :cond_5

    .line 47
    add-int/lit8 v3, v3, -0x1

    .line 49
    if-nez v3, :cond_5

    .line 51
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 53
    move-result v4

    .line 56
    sub-int/2addr v4, v2

    .line 57
    if-eq v1, v4, :cond_5

    .line 58
    goto :goto_2

    .line 60
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 61
    goto :goto_0

    .line 63
    :cond_6
    if-nez v3, :cond_7

    .line 64
    move v1, v2

    .line 66
    goto :goto_3

    .line 67
    :cond_7
    :goto_2
    move v1, v0

    .line 68
    :goto_3
    if-eqz v1, :cond_8

    .line 69
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    .line 71
    move-result v0

    .line 74
    sub-int/2addr v0, v2

    .line 75
    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 76
    move-result-object p0

    .line 79
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 84
    move-result p0

    .line 87
    return p0

    .line 88
    :cond_8
    return v0
    .line 89
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 8

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Landroidx/room/util/TableInfo$Column;

    .line 6
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    return v2

    .line 11
    :cond_1
    check-cast p1, Landroidx/room/util/TableInfo$Column;

    .line 12
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 14
    iget v3, p1, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 16
    if-eq v1, v3, :cond_2

    .line 18
    return v2

    .line 20
    :cond_2
    iget-object v1, p1, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 21
    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 23
    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result v1

    .line 28
    if-nez v1, :cond_3

    .line 29
    return v2

    .line 31
    :cond_3
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 32
    iget-boolean v3, p1, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 34
    if-eq v1, v3, :cond_4

    .line 36
    return v2

    .line 38
    :cond_4
    const/4 v1, 0x2

    .line 39
    iget-object v3, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 40
    iget v4, p0, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    .line 42
    iget v5, p1, Landroidx/room/util/TableInfo$Column;->mCreatedFrom:I

    .line 44
    iget-object v6, p1, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 46
    if-ne v4, v0, :cond_5

    .line 48
    if-ne v5, v1, :cond_5

    .line 50
    if-eqz v3, :cond_5

    .line 52
    invoke-static {v3, v6}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 54
    move-result v7

    .line 57
    if-nez v7, :cond_5

    .line 58
    return v2

    .line 60
    :cond_5
    if-ne v4, v1, :cond_6

    .line 61
    if-ne v5, v0, :cond_6

    .line 63
    if-eqz v6, :cond_6

    .line 65
    invoke-static {v6, v3}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 67
    move-result v1

    .line 70
    if-nez v1, :cond_6

    .line 71
    return v2

    .line 73
    :cond_6
    if-eqz v4, :cond_8

    .line 74
    if-ne v4, v5, :cond_8

    .line 76
    if-eqz v3, :cond_7

    .line 78
    invoke-static {v3, v6}, Landroidx/room/util/TableInfo$Column;->defaultValueEquals(Ljava/lang/String;Ljava/lang/String;)Z

    .line 80
    move-result v1

    .line 83
    if-nez v1, :cond_8

    .line 84
    goto :goto_0

    .line 86
    :cond_7
    if-eqz v6, :cond_8

    .line 87
    :goto_0
    return v2

    .line 89
    :cond_8
    iget p0, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 90
    iget p1, p1, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 92
    if-ne p0, p1, :cond_9

    .line 94
    goto :goto_1

    .line 96
    :cond_9
    move v0, v2

    .line 97
    :goto_1
    return v0
    .line 98
.end method

.method public final hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 2
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 4
    move-result v0

    .line 7
    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 10
    add-int/2addr v0, v1

    .line 12
    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 15
    if-eqz v1, :cond_0

    .line 17
    const/16 v1, 0x4cf

    .line 19
    goto :goto_0

    .line 21
    :cond_0
    const/16 v1, 0x4d5

    .line 22
    :goto_0
    add-int/2addr v0, v1

    .line 24
    mul-int/lit8 v0, v0, 0x1f

    .line 25
    iget p0, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 27
    add-int/2addr v0, p0

    .line 29
    return v0
    .line 30
.end method

.method public final toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "Column{name=\'"

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->name:Ljava/lang/String;

    .line 9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    const-string v1, "\', type=\'"

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget-object v1, p0, Landroidx/room/util/TableInfo$Column;->type:Ljava/lang/String;

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    const-string v1, "\', affinity=\'"

    .line 24
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->affinity:I

    .line 29
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "\', notNull="

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    iget-boolean v1, p0, Landroidx/room/util/TableInfo$Column;->notNull:Z

    .line 39
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 41
    const-string v1, ", primaryKeyPosition="

    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    iget v1, p0, Landroidx/room/util/TableInfo$Column;->primaryKeyPosition:I

    .line 49
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 51
    const-string v1, ", defaultValue=\'"

    .line 54
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 56
    iget-object p0, p0, Landroidx/room/util/TableInfo$Column;->defaultValue:Ljava/lang/String;

    .line 59
    const-string v1, "\'}"

    .line 61
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 63
    move-result-object p0

    .line 66
    return-object p0
    .line 67
.end method
