.class public Lcom/miui/maml/data/FormatFunctions;
.super Lcom/miui/maml/data/Expression$FunctionImpl;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private final mFun:Lcom/miui/maml/data/FormatFunctions$Fun;


# direct methods
.method private constructor <init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V
    .locals 0

    .line 1
    invoke-direct {p0, p2}, Lcom/miui/maml/data/Expression$FunctionImpl;-><init>(I)V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 5
    return-void
    .line 7
.end method

.method public static load()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 2
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_DATE:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 4
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 7
    const-string v1, "formatDate"

    .line 10
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 12
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 15
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_FLOAT:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 17
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 19
    const-string v1, "formatFloat"

    .line 22
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 24
    new-instance v0, Lcom/miui/maml/data/FormatFunctions;

    .line 27
    sget-object v1, Lcom/miui/maml/data/FormatFunctions$Fun;->FORMAT_INT:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 29
    invoke-direct {v0, v1, v2}, Lcom/miui/maml/data/FormatFunctions;-><init>(Lcom/miui/maml/data/FormatFunctions$Fun;I)V

    .line 31
    const-string v1, "formatInt"

    .line 34
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression$FunctionExpression;->registerFunction(Ljava/lang/String;Lcom/miui/maml/data/Expression$FunctionImpl;)V

    .line 36
    return-void
    .line 39
.end method


# virtual methods
.method public evaluate([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)D
    .locals 0

    .line 1
    const-wide/16 p0, 0x0

    .line 2
    return-wide p0
    .line 4
.end method

.method public evaluateStr([Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Variables;)Ljava/lang/String;
    .locals 4

    .line 1
    const/4 p2, 0x0

    .line 2
    aget-object v0, p1, p2

    .line 3
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 5
    move-result-object v0

    .line 8
    const/4 v1, 0x0

    .line 9
    if-nez v0, :cond_0

    .line 10
    return-object v1

    .line 12
    :cond_0
    sget-object v2, Lcom/miui/maml/data/FormatFunctions$1;->$SwitchMap$com$miui$maml$data$FormatFunctions$Fun:[I

    .line 13
    iget-object p0, p0, Lcom/miui/maml/data/FormatFunctions;->mFun:Lcom/miui/maml/data/FormatFunctions$Fun;

    .line 15
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 17
    move-result p0

    .line 20
    aget p0, v2, p0

    .line 21
    const/4 v2, 0x1

    .line 23
    if-eq p0, v2, :cond_3

    .line 24
    const/4 v3, 0x2

    .line 26
    if-eq p0, v3, :cond_2

    .line 27
    const/4 v3, 0x3

    .line 29
    if-eq p0, v3, :cond_1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    :try_start_0
    new-array p0, v2, [Ljava/lang/Object;

    .line 33
    aget-object p1, p1, v2

    .line 35
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 37
    move-result-wide v2

    .line 40
    double-to-int p1, v2

    .line 41
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 42
    move-result-object p1

    .line 45
    aput-object p1, p0, p2

    .line 46
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    return-object p0

    .line 52
    :cond_2
    new-array p0, v2, [Ljava/lang/Object;

    .line 53
    aget-object p1, p1, v2

    .line 55
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 57
    move-result-wide v2

    .line 60
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 61
    move-result-object p1

    .line 64
    aput-object p1, p0, p2

    .line 65
    invoke-static {v0, p0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    return-object p0

    .line 71
    :catch_0
    :goto_0
    return-object v1

    .line 72
    :cond_3
    aget-object p0, p1, v2

    .line 73
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 75
    move-result-wide p0

    .line 78
    double-to-long p0, p0

    .line 79
    invoke-static {v0, p0, p1}, Lcom/miui/maml/data/DateTimeVariableUpdater;->formatDate(Ljava/lang/CharSequence;J)Ljava/lang/String;

    .line 80
    move-result-object p0

    .line 83
    return-object p0
    .line 84
.end method

.method public reset()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
