.class public Lcom/miui/maml/util/ColorParser;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final DEFAULT_COLOR:I = -0x1000000

.field private static final LOG_TAG:Ljava/lang/String; = "ColorParser"


# instance fields
.field private mColor:I

.field private mColorExpression:Ljava/lang/String;

.field private mCurColorString:Ljava/lang/String;

.field private mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

.field private mRGBExpression:[Lcom/miui/maml/data/Expression;

.field private mType:Lcom/miui/maml/util/ColorParser$ExpressionType;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/high16 v0, -0x1000000

    .line 5
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 9
    move-result-object p2

    .line 12
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 13
    const-string v1, "#"

    .line 15
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 17
    move-result p2

    .line 20
    if-eqz p2, :cond_0

    .line 21
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->CONST:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 23
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 25
    :try_start_0
    iget-object p1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 27
    invoke-static {p1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 29
    move-result p1

    .line 32
    iput p1, p0, Lcom/miui/maml/util/ColorParser;->mColor:I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 33
    goto :goto_0

    .line 35
    :catch_0
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 36
    goto :goto_0

    .line 38
    :cond_0
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 39
    const-string v0, "@"

    .line 41
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 43
    move-result p2

    .line 46
    const/4 v0, 0x1

    .line 47
    if-eqz p2, :cond_1

    .line 48
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->VARIABLE:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 50
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 52
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    .line 54
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 56
    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    const/4 v1, 0x0

    .line 62
    invoke-direct {p2, v0, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 63
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    .line 66
    goto :goto_0

    .line 68
    :cond_1
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 69
    const-string v1, "argb("

    .line 71
    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 73
    move-result p2

    .line 76
    if-eqz p2, :cond_3

    .line 77
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 79
    const-string v1, ")"

    .line 81
    invoke-virtual {p2, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 83
    move-result p2

    .line 86
    if-eqz p2, :cond_3

    .line 87
    sget-object p2, Lcom/miui/maml/util/ColorParser$ExpressionType;->ARGB:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 89
    iput-object p2, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 91
    iget-object p2, p0, Lcom/miui/maml/util/ColorParser;->mColorExpression:Ljava/lang/String;

    .line 93
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 95
    move-result v1

    .line 98
    sub-int/2addr v1, v0

    .line 99
    const/4 v0, 0x5

    .line 100
    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 101
    move-result-object p2

    .line 104
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 105
    move-result-object p1

    .line 108
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 109
    if-eqz p1, :cond_4

    .line 111
    array-length p0, p1

    .line 113
    const/4 p1, 0x4

    .line 114
    if-ne p0, p1, :cond_2

    .line 115
    goto :goto_0

    .line 117
    :cond_2
    const-string p0, "ColorParser"

    .line 118
    const-string p1, "bad expression format"

    .line 120
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 125
    const-string p1, "bad expression format."

    .line 127
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 129
    throw p0

    .line 132
    :cond_3
    sget-object p1, Lcom/miui/maml/util/ColorParser$ExpressionType;->INVALID:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 133
    iput-object p1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 135
    :cond_4
    :goto_0
    return-void
    .line 137
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)Lcom/miui/maml/util/ColorParser;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .locals 2

    .line 2
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    const-string v1, "color"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;
    .locals 1

    .line 3
    new-instance v0, Lcom/miui/maml/util/ColorParser;

    invoke-static {p1, p2, p3}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public getColor()I
    .locals 7

    .line 1
    sget-object v0, Lcom/miui/maml/util/ColorParser$1;->$SwitchMap$com$miui$maml$util$ColorParser$ExpressionType:[I

    .line 2
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mType:Lcom/miui/maml/util/ColorParser$ExpressionType;

    .line 4
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 6
    move-result v1

    .line 9
    aget v0, v0, v1

    .line 10
    const/4 v1, 0x1

    .line 12
    if-eq v0, v1, :cond_3

    .line 13
    const/high16 v2, -0x1000000

    .line 15
    const/4 v3, 0x2

    .line 17
    if-eq v0, v3, :cond_1

    .line 18
    const/4 v4, 0x3

    .line 20
    if-eq v0, v4, :cond_0

    .line 21
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 23
    goto :goto_0

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 26
    const/4 v2, 0x0

    .line 28
    aget-object v0, v0, v2

    .line 29
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 31
    move-result-wide v5

    .line 34
    double-to-int v0, v5

    .line 35
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 36
    aget-object v1, v2, v1

    .line 38
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 40
    move-result-wide v1

    .line 43
    double-to-int v1, v1

    .line 44
    iget-object v2, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 45
    aget-object v2, v2, v3

    .line 47
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 49
    move-result-wide v2

    .line 52
    double-to-int v2, v2

    .line 53
    iget-object v3, p0, Lcom/miui/maml/util/ColorParser;->mRGBExpression:[Lcom/miui/maml/data/Expression;

    .line 54
    aget-object v3, v3, v4

    .line 56
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 58
    move-result-wide v3

    .line 61
    double-to-int v3, v3

    .line 62
    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    .line 63
    move-result v0

    .line 66
    iput v0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 67
    goto :goto_0

    .line 69
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/util/ColorParser;->mIndexedColorVar:Lcom/miui/maml/data/IndexedVariable;

    .line 70
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 72
    move-result-object v0

    .line 75
    iget-object v1, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    .line 76
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 78
    move-result v1

    .line 81
    if-nez v1, :cond_3

    .line 82
    invoke-static {v0}, Lcom/miui/maml/util/Utils;->isEmpty(Ljava/lang/String;)Z

    .line 84
    move-result v1

    .line 87
    if-nez v1, :cond_2

    .line 88
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    .line 90
    move-result v2

    .line 93
    :cond_2
    iput v2, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 94
    iput-object v0, p0, Lcom/miui/maml/util/ColorParser;->mCurColorString:Ljava/lang/String;

    .line 96
    :cond_3
    :goto_0
    iget p0, p0, Lcom/miui/maml/util/ColorParser;->mColor:I

    .line 98
    return p0
    .line 100
.end method
