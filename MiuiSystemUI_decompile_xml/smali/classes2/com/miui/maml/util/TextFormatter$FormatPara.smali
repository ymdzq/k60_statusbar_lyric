.class abstract Lcom/miui/maml/util/TextFormatter$FormatPara;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/miui/maml/util/TextFormatter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>()V

    return-void
.end method

.method public static build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "@"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-instance p1, Lcom/miui/maml/util/TextFormatter$StringVarPara;

    .line 14
    const/4 v1, 0x1

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-direct {p1, p0, v0}, Lcom/miui/maml/util/TextFormatter$StringVarPara;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 21
    return-object p1

    .line 24
    :cond_0
    invoke-static {p0, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 25
    move-result-object p0

    .line 28
    if-nez p0, :cond_1

    .line 29
    const-string p0, "invalid parameter expression:"

    .line 31
    invoke-virtual {p0, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object p0

    .line 36
    const-string p1, "TextFormatter"

    .line 37
    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 p0, 0x0

    .line 42
    return-object p0

    .line 43
    :cond_1
    new-instance p1, Lcom/miui/maml/util/TextFormatter$ExpressioPara;

    .line 44
    invoke-direct {p1, p0}, Lcom/miui/maml/util/TextFormatter$ExpressioPara;-><init>(Lcom/miui/maml/data/Expression;)V

    .line 46
    return-object p1
    .line 49
.end method

.method public static buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;
    .locals 7

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    const/4 v1, 0x0

    .line 7
    move v2, v1

    .line 8
    move v3, v2

    .line 9
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 10
    move-result v4

    .line 13
    const/4 v5, 0x0

    .line 14
    if-ge v1, v4, :cond_4

    .line 15
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    .line 17
    move-result v4

    .line 20
    if-nez v3, :cond_1

    .line 21
    const/16 v6, 0x2c

    .line 23
    if-ne v4, v6, :cond_1

    .line 25
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    invoke-static {p0, v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 31
    move-result-object v2

    .line 34
    if-nez v2, :cond_0

    .line 35
    return-object v5

    .line 37
    :cond_0
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    add-int/lit8 v2, v1, 0x1

    .line 41
    :cond_1
    const/16 v5, 0x28

    .line 43
    if-ne v4, v5, :cond_2

    .line 45
    add-int/lit8 v3, v3, 0x1

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    const/16 v5, 0x29

    .line 50
    if-ne v4, v5, :cond_3

    .line 52
    add-int/lit8 v3, v3, -0x1

    .line 54
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 56
    goto :goto_0

    .line 58
    :cond_4
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    invoke-static {p0, p1}, Lcom/miui/maml/util/TextFormatter$FormatPara;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 63
    move-result-object p0

    .line 66
    if-nez p0, :cond_5

    .line 67
    return-object v5

    .line 69
    :cond_5
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 70
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 73
    move-result p0

    .line 76
    new-array p0, p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 77
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 79
    move-result-object p0

    .line 82
    check-cast p0, [Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 83
    return-object p0
    .line 85
.end method


# virtual methods
.method public abstract evaluate()Ljava/lang/Object;
.end method
