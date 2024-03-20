.class public Lcom/miui/maml/data/VariableBinder$TypedValue;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final BITMAP:I = 0x7

.field public static final DOUBLE:I = 0x6

.field public static final FLOAT:I = 0x5

.field public static final INT:I = 0x3

.field public static final LONG:I = 0x4

.field public static final NUM_ARR:I = 0x8

.field public static final STRING:I = 0x2

.field public static final STR_ARR:I = 0x9

.field public static final TYPE_BASE:I = 0x3e8


# instance fields
.field public mName:Ljava/lang/String;

.field public mType:I

.field public mTypeStr:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_0

    const-string v0, "name"

    .line 4
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "type"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/miui/maml/data/VariableBinder$TypedValue;->initInner(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_0
    new-instance p0, Ljava/lang/NullPointerException;

    const-string p1, "node is null"

    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private initInner(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mName:Ljava/lang/String;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mTypeStr:Ljava/lang/String;

    .line 4
    invoke-virtual {p0, p2}, Lcom/miui/maml/data/VariableBinder$TypedValue;->parseType(Ljava/lang/String;)I

    .line 6
    move-result p1

    .line 9
    iput p1, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 10
    return-void
    .line 12
.end method


# virtual methods
.method public isArray()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 2
    const/16 v0, 0x8

    .line 4
    if-eq p0, v0, :cond_1

    .line 6
    const/16 v0, 0x9

    .line 8
    if-ne p0, v0, :cond_0

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

.method public isNumber()Z
    .locals 1

    .line 1
    iget p0, p0, Lcom/miui/maml/data/VariableBinder$TypedValue;->mType:I

    .line 2
    const/4 v0, 0x3

    .line 4
    if-lt p0, v0, :cond_0

    .line 5
    const/4 v0, 0x6

    .line 7
    if-gt p0, v0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public parseType(Ljava/lang/String;)I
    .locals 1

    .line 1
    const-string/jumbo p0, "string"

    .line 2
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_0

    .line 9
    const/4 p0, 0x2

    .line 11
    return p0

    .line 12
    :cond_0
    const-string p0, "double"

    .line 13
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    move-result p0

    .line 18
    const/4 v0, 0x6

    .line 19
    if-nez p0, :cond_9

    .line 20
    const-string p0, "number"

    .line 22
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 24
    move-result p0

    .line 27
    if-eqz p0, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    const-string p0, "float"

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 33
    move-result p0

    .line 36
    if-eqz p0, :cond_2

    .line 37
    const/4 p0, 0x5

    .line 39
    return p0

    .line 40
    :cond_2
    const-string p0, "int"

    .line 41
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result p0

    .line 46
    if-nez p0, :cond_8

    .line 47
    const-string p0, "integer"

    .line 49
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result p0

    .line 54
    if-eqz p0, :cond_3

    .line 55
    goto :goto_0

    .line 57
    :cond_3
    const-string p0, "long"

    .line 58
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 60
    move-result p0

    .line 63
    if-eqz p0, :cond_4

    .line 64
    const/4 p0, 0x4

    .line 66
    return p0

    .line 67
    :cond_4
    const-string p0, "bitmap"

    .line 68
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 70
    move-result p0

    .line 73
    if-eqz p0, :cond_5

    .line 74
    const/4 p0, 0x7

    .line 76
    return p0

    .line 77
    :cond_5
    const-string p0, "number[]"

    .line 78
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 80
    move-result p0

    .line 83
    if-eqz p0, :cond_6

    .line 84
    const/16 p0, 0x8

    .line 86
    return p0

    .line 88
    :cond_6
    const-string/jumbo p0, "string[]"

    .line 89
    invoke-virtual {p0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 92
    move-result p0

    .line 95
    if-eqz p0, :cond_7

    .line 96
    const/16 p0, 0x9

    .line 98
    return p0

    .line 100
    :cond_7
    return v0

    .line 101
    :cond_8
    :goto_0
    const/4 p0, 0x3

    .line 102
    return p0

    .line 103
    :cond_9
    :goto_1
    return v0
    .line 104
.end method
