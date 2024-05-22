.class public final Landroidx/sqlite/db/SimpleSQLiteQuery;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/sqlite/db/SupportSQLiteQuery;


# instance fields
.field public final bindArgs:[Ljava/lang/Object;

.field public final query:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    .line 5
    iput-object p2, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final bindTo(Landroidx/sqlite/db/SupportSQLiteProgram;)V
    .locals 4

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->bindArgs:[Ljava/lang/Object;

    .line 2
    if-nez p0, :cond_0

    .line 4
    goto/16 :goto_2

    .line 6
    :cond_0
    array-length v0, p0

    .line 8
    const/4 v1, 0x0

    .line 9
    :goto_0
    if-ge v1, v0, :cond_c

    .line 10
    aget-object v2, p0, v1

    .line 12
    add-int/lit8 v1, v1, 0x1

    .line 14
    if-nez v2, :cond_1

    .line 16
    invoke-interface {p1, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindNull(I)V

    .line 18
    goto :goto_0

    .line 21
    :cond_1
    instance-of v3, v2, [B

    .line 22
    if-eqz v3, :cond_2

    .line 24
    check-cast v2, [B

    .line 26
    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindBlob(I[B)V

    .line 28
    goto :goto_0

    .line 31
    :cond_2
    instance-of v3, v2, Ljava/lang/Float;

    .line 32
    if-eqz v3, :cond_3

    .line 34
    check-cast v2, Ljava/lang/Number;

    .line 36
    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    .line 38
    move-result v2

    .line 41
    float-to-double v2, v2

    .line 42
    invoke-interface {p1, v2, v3, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(DI)V

    .line 43
    goto :goto_0

    .line 46
    :cond_3
    instance-of v3, v2, Ljava/lang/Double;

    .line 47
    if-eqz v3, :cond_4

    .line 49
    check-cast v2, Ljava/lang/Number;

    .line 51
    invoke-virtual {v2}, Ljava/lang/Number;->doubleValue()D

    .line 53
    move-result-wide v2

    .line 56
    invoke-interface {p1, v2, v3, v1}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindDouble(DI)V

    .line 57
    goto :goto_0

    .line 60
    :cond_4
    instance-of v3, v2, Ljava/lang/Long;

    .line 61
    if-eqz v3, :cond_5

    .line 63
    check-cast v2, Ljava/lang/Number;

    .line 65
    invoke-virtual {v2}, Ljava/lang/Number;->longValue()J

    .line 67
    move-result-wide v2

    .line 70
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 71
    goto :goto_0

    .line 74
    :cond_5
    instance-of v3, v2, Ljava/lang/Integer;

    .line 75
    if-eqz v3, :cond_6

    .line 77
    check-cast v2, Ljava/lang/Number;

    .line 79
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 81
    move-result v2

    .line 84
    int-to-long v2, v2

    .line 85
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 86
    goto :goto_0

    .line 89
    :cond_6
    instance-of v3, v2, Ljava/lang/Short;

    .line 90
    if-eqz v3, :cond_7

    .line 92
    check-cast v2, Ljava/lang/Number;

    .line 94
    invoke-virtual {v2}, Ljava/lang/Number;->shortValue()S

    .line 96
    move-result v2

    .line 99
    int-to-long v2, v2

    .line 100
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 101
    goto :goto_0

    .line 104
    :cond_7
    instance-of v3, v2, Ljava/lang/Byte;

    .line 105
    if-eqz v3, :cond_8

    .line 107
    check-cast v2, Ljava/lang/Number;

    .line 109
    invoke-virtual {v2}, Ljava/lang/Number;->byteValue()B

    .line 111
    move-result v2

    .line 114
    int-to-long v2, v2

    .line 115
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 116
    goto :goto_0

    .line 119
    :cond_8
    instance-of v3, v2, Ljava/lang/String;

    .line 120
    if-eqz v3, :cond_9

    .line 122
    check-cast v2, Ljava/lang/String;

    .line 124
    invoke-interface {p1, v1, v2}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindString(ILjava/lang/String;)V

    .line 126
    goto :goto_0

    .line 129
    :cond_9
    instance-of v3, v2, Ljava/lang/Boolean;

    .line 130
    if-eqz v3, :cond_b

    .line 132
    check-cast v2, Ljava/lang/Boolean;

    .line 134
    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    .line 136
    move-result v2

    .line 139
    if-eqz v2, :cond_a

    .line 140
    const-wide/16 v2, 0x1

    .line 142
    goto :goto_1

    .line 144
    :cond_a
    const-wide/16 v2, 0x0

    .line 145
    :goto_1
    invoke-interface {p1, v1, v2, v3}, Landroidx/sqlite/db/SupportSQLiteProgram;->bindLong(IJ)V

    .line 147
    goto/16 :goto_0

    .line 150
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 152
    new-instance p1, Ljava/lang/StringBuilder;

    .line 154
    const-string v0, "Cannot bind "

    .line 156
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 161
    const-string v0, " at index "

    .line 164
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 169
    const-string v0, " Supported types: Null, ByteArray, Float, Double, Long, Int, Short, Byte, String"

    .line 172
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 177
    move-result-object p1

    .line 180
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 181
    throw p0

    .line 184
    :cond_c
    :goto_2
    return-void
    .line 185
.end method

.method public final getSql()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/sqlite/db/SimpleSQLiteQuery;->query:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
