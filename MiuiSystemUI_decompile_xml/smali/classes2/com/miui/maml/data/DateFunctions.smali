.class public Lcom/miui/maml/data/DateFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final REPEAT_MONTH:I = 0x2

.field public static final REPEAT_NO:I = 0x0

.field public static final REPEAT_WEEK:I = 0x3

.field public static final REPEAT_YEAR:I = 0x1


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    return-void
    .line 5
.end method

.method private changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;
    .locals 2

    .line 1
    sget-object p0, Ljava/time/chrono/IsoChronology;->INSTANCE:Ljava/time/chrono/IsoChronology;

    .line 2
    int-to-long v0, p2

    .line 4
    invoke-virtual {p0, v0, v1}, Ljava/time/chrono/IsoChronology;->isLeapYear(J)Z

    .line 5
    move-result p0

    .line 8
    const/4 v0, 0x1

    .line 9
    if-nez p0, :cond_0

    .line 10
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 12
    move-result p0

    .line 15
    const/4 v1, 0x2

    .line 16
    if-ne p0, v1, :cond_0

    .line 17
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 19
    move-result p0

    .line 22
    const/16 v1, 0x1d

    .line 23
    if-ne p0, v1, :cond_0

    .line 25
    move p0, v0

    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/4 p0, 0x0

    .line 29
    :goto_0
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    .line 30
    move-result-object v1

    .line 33
    if-eqz p0, :cond_1

    .line 34
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 36
    move-result p0

    .line 39
    sub-int/2addr p0, v0

    .line 40
    goto :goto_1

    .line 41
    :cond_1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 42
    move-result p0

    .line 45
    :goto_1
    invoke-static {p2, v1, p0}, Ljava/time/LocalDate;->of(ILjava/time/Month;I)Ljava/time/LocalDate;

    .line 46
    move-result-object p0

    .line 49
    return-object p0
    .line 50
.end method

.method private diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 4

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 2
    move-result p0

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    .line 6
    move-result p1

    .line 9
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 10
    move-result v0

    .line 13
    sub-int v1, p1, v0

    .line 14
    const-wide/16 v2, 0x1

    .line 16
    invoke-virtual {p2, v2, v3}, Ljava/time/LocalDate;->plusMonths(J)Ljava/time/LocalDate;

    .line 18
    move-result-object p2

    .line 21
    invoke-virtual {p2}, Ljava/time/LocalDate;->lengthOfMonth()I

    .line 22
    move-result p2

    .line 25
    if-lt p0, v0, :cond_1

    .line 26
    if-le p0, p1, :cond_0

    .line 28
    int-to-long p0, v1

    .line 30
    return-wide p0

    .line 31
    :cond_0
    sub-int/2addr p0, v0

    .line 32
    int-to-long p0, p0

    .line 33
    return-wide p0

    .line 34
    :cond_1
    if-le p0, p2, :cond_2

    .line 35
    add-int/2addr v1, p2

    .line 37
    int-to-long p0, v1

    .line 38
    return-wide p0

    .line 39
    :cond_2
    add-int/2addr v1, p0

    .line 40
    int-to-long p0, v1

    .line 41
    return-wide p0
    .line 42
.end method

.method private diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    .line 6
    move-result v1

    .line 9
    if-gt v0, v1, :cond_1

    .line 10
    invoke-virtual {p1}, Ljava/time/LocalDate;->getMonthValue()I

    .line 12
    move-result v0

    .line 15
    invoke-virtual {p2}, Ljava/time/LocalDate;->getMonthValue()I

    .line 16
    move-result v1

    .line 19
    if-ne v0, v1, :cond_0

    .line 20
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 22
    move-result v0

    .line 25
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 26
    move-result v1

    .line 29
    if-lt v0, v1, :cond_0

    .line 30
    goto :goto_0

    .line 32
    :cond_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    .line 33
    move-result v0

    .line 36
    add-int/lit8 v0, v0, 0x1

    .line 37
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    .line 39
    move-result-object p0

    .line 42
    sget-object p1, Ljava/time/temporal/ChronoUnit;->DAYS:Ljava/time/temporal/ChronoUnit;

    .line 43
    invoke-virtual {p1, p2, p0}, Ljava/time/temporal/ChronoUnit;->between(Ljava/time/temporal/Temporal;Ljava/time/temporal/Temporal;)J

    .line 45
    move-result-wide p0

    .line 48
    return-wide p0

    .line 49
    :cond_1
    :goto_0
    invoke-virtual {p2}, Ljava/time/LocalDate;->getYear()I

    .line 50
    move-result v0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/miui/maml/data/DateFunctions;->changeYear(Ljava/time/LocalDate;I)Ljava/time/LocalDate;

    .line 54
    move-result-object p0

    .line 57
    invoke-virtual {p2}, Ljava/time/LocalDate;->isLeapYear()Z

    .line 58
    move-result p1

    .line 61
    if-nez p1, :cond_2

    .line 62
    invoke-virtual {p0}, Ljava/time/LocalDate;->getMonth()Ljava/time/Month;

    .line 64
    move-result-object p1

    .line 67
    sget-object v0, Ljava/time/Month;->FEBRUARY:Ljava/time/Month;

    .line 68
    if-ne p1, v0, :cond_2

    .line 70
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfMonth()I

    .line 72
    move-result p1

    .line 75
    const/16 v0, 0x1d

    .line 76
    if-ne p1, v0, :cond_2

    .line 78
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 80
    move-result p0

    .line 83
    add-int/lit8 p0, p0, -0x1

    .line 84
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 86
    move-result p1

    .line 89
    sub-int/2addr p0, p1

    .line 90
    int-to-long p0, p0

    .line 91
    return-wide p0

    .line 92
    :cond_2
    invoke-virtual {p0}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 93
    move-result p0

    .line 96
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfYear()I

    .line 97
    move-result p1

    .line 100
    sub-int/2addr p0, p1

    .line 101
    int-to-long p0, p0

    .line 102
    return-wide p0
    .line 103
.end method

.method public static load()V
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/data/DateFunctions;

    .line 2
    const/4 v1, 0x3

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/data/DateFunctions;-><init>(I)V

    .line 5
    const-string v1, "diffDate"

    .line 8
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public diffDate(JJI)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p1

    invoke-virtual {p0, p3, p4}, Lcom/miui/maml/data/DateFunctions;->long2LocalDate(J)Ljava/time/LocalDate;

    move-result-object p2

    invoke-virtual {p0, p1, p2, p5}, Lcom/miui/maml/data/DateFunctions;->diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J

    move-result-wide p0

    return-wide p0
.end method

.method public diffDate(Ljava/time/LocalDate;Ljava/time/LocalDate;I)J
    .locals 1

    const/4 v0, 0x1

    if-ne v0, p3, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateYear(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p0

    return-wide p0

    :cond_0
    const/4 v0, 0x2

    if-ne v0, p3, :cond_1

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->diffDateMonth(Ljava/time/LocalDate;Ljava/time/LocalDate;)J

    move-result-wide p0

    return-wide p0

    :cond_1
    const/4 p0, 0x3

    if-ne p0, p3, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p0

    invoke-virtual {p0}, Ljava/time/DayOfWeek;->getValue()I

    move-result p0

    .line 5
    invoke-virtual {p2}, Ljava/time/LocalDate;->getDayOfWeek()Ljava/time/DayOfWeek;

    move-result-object p1

    invoke-virtual {p1}, Ljava/time/DayOfWeek;->getValue()I

    move-result p1

    if-lt p0, p1, :cond_2

    sub-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    :cond_2
    add-int/lit8 p0, p0, 0x7

    sub-int/2addr p0, p1

    int-to-long p0, p0

    return-wide p0

    .line 6
    :cond_3
    invoke-virtual {p1}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide p0

    invoke-virtual {p2}, Ljava/time/LocalDate;->toEpochDay()J

    move-result-wide p2

    sub-long/2addr p0, p2

    return-wide p0
.end method

.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 8

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object p2, p1, p2

    .line 3
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 5
    move-result-wide v0

    .line 8
    double-to-long v3, v0

    .line 9
    const/4 p2, 0x1

    .line 10
    aget-object p2, p1, p2

    .line 11
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 13
    move-result-wide v0

    .line 16
    double-to-long v5, v0

    .line 17
    const/4 p2, 0x2

    .line 18
    aget-object p1, p1, p2

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 21
    move-result-wide p1

    .line 24
    double-to-int v7, p1

    .line 25
    move-object v2, p0

    .line 26
    invoke-virtual/range {v2 .. v7}, Lcom/miui/maml/data/DateFunctions;->diffDate(JJI)J

    .line 27
    move-result-wide p0

    .line 30
    long-to-double p0, p0

    .line 31
    return-wide p0
    .line 32
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/DateFunctions;->evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D

    .line 2
    move-result-wide p0

    .line 5
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0
    .line 10
.end method

.method public localDate2Long(Ljava/time/LocalDate;)J
    .locals 0

    .line 1
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p1, p0}, Ljava/time/LocalDate;->atStartOfDay(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/time/Instant;->toEpochMilli()J

    .line 14
    move-result-wide p0

    .line 17
    return-wide p0
    .line 18
.end method

.method public long2LocalDate(J)Ljava/time/LocalDate;
    .locals 0

    .line 1
    invoke-static {p1, p2}, Ljava/time/Instant;->ofEpochMilli(J)Ljava/time/Instant;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {}, Ljava/time/ZoneId;->systemDefault()Ljava/time/ZoneId;

    .line 6
    move-result-object p1

    .line 9
    invoke-virtual {p0, p1}, Ljava/time/Instant;->atZone(Ljava/time/ZoneId;)Ljava/time/ZonedDateTime;

    .line 10
    move-result-object p0

    .line 13
    invoke-virtual {p0}, Ljava/time/ZonedDateTime;->toLocalDate()Ljava/time/LocalDate;

    .line 14
    move-result-object p0

    .line 17
    return-object p0
    .line 18
.end method
