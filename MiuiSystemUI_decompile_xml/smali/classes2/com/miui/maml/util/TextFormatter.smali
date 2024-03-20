.class public Lcom/miui/maml/util/TextFormatter;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "TextFormatter"


# instance fields
.field private mFormat:Ljava/lang/String;

.field private mFormatExpression:Lcom/miui/maml/data/Expression;

.field private mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

.field private mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

.field private mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

.field private mParasValue:[Ljava/lang/Object;

.field private mText:Ljava/lang/String;

.field private mTextExpression:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 1
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V
    .locals 7

    const-string v3, ""

    const-string v4, ""

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    .line 17
    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    const-string v0, ""

    .line 2
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    const-string v0, "@"

    .line 5
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_0

    .line 6
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 7
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 8
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    invoke-direct {p2, v3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    :cond_0
    iput-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 10
    invoke-virtual {p3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 11
    iget-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-virtual {p2, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 12
    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 13
    new-instance p2, Lcom/miui/maml/data/IndexedVariable;

    iget-object p3, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    invoke-direct {p2, p3, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    :cond_1
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 15
    invoke-static {p1, p4}, Lcom/miui/maml/util/TextFormatter$FormatPara;->buildArray(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/util/TextFormatter$FormatPara;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    if-eqz p1, :cond_2

    .line 16
    array-length p1, p1

    new-array p1, p1, [Ljava/lang/Object;

    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 19
    iput-object p5, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    .line 20
    iput-object p6, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    return-void
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;
    .locals 8

    const-string v0, "paras"

    .line 1
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "params"

    .line 3
    invoke-static {p1, v0, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    move-object v5, v0

    .line 4
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    const-string/jumbo v1, "text"

    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "format"

    .line 5
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v1, "textExp"

    .line 6
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    const-string v1, "formatExp"

    .line 7
    invoke-static {p1, v1, p2}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v7

    move-object v1, v0

    move-object v2, p0

    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v0
.end method

.method public static fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/util/TextFormatter;
    .locals 8

    .line 8
    new-instance v7, Lcom/miui/maml/util/TextFormatter;

    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, p3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, p4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 9
    invoke-interface {p1, p5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p0, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v5

    .line 10
    invoke-interface {p1, p6}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 11
    invoke-static {p0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    move-result-object v6

    move-object v0, v7

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/miui/maml/data/Expression;Lcom/miui/maml/data/Expression;)V

    return-object v7
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mFormatExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedFormatVar:Lcom/miui/maml/data/IndexedVariable;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 15
    move-result-object p0

    .line 18
    return-object p0

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 20
    return-object p0
    .line 22
.end method

.method public getText()Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mTextExpression:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    return-object p0

    .line 10
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v1

    .line 18
    if-nez v1, :cond_2

    .line 19
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 21
    if-eqz v1, :cond_1

    .line 23
    const/4 v1, 0x0

    .line 25
    :goto_0
    iget-object v2, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 26
    array-length v3, v2

    .line 28
    if-ge v1, v3, :cond_1

    .line 29
    iget-object v3, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 31
    aget-object v2, v2, v1

    .line 33
    invoke-virtual {v2}, Lcom/miui/maml/util/TextFormatter$FormatPara;->evaluate()Ljava/lang/Object;

    .line 35
    move-result-object v2

    .line 38
    aput-object v2, v3, v1

    .line 39
    add-int/lit8 v1, v1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 44
    if-eqz v1, :cond_2

    .line 46
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 48
    move-result-object p0
    :try_end_0
    .catch Ljava/util/IllegalFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 51
    return-object p0

    .line 52
    :catch_0
    const-string p0, "Format error: "

    .line 53
    invoke-static {p0, v0}, Landroidx/constraintlayout/motion/widget/KeyAttributes$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 55
    move-result-object p0

    .line 58
    return-object p0

    .line 59
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mIndexedTextVar:Lcom/miui/maml/data/IndexedVariable;

    .line 60
    if-eqz v0, :cond_3

    .line 62
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 64
    move-result-object p0

    .line 67
    return-object p0

    .line 68
    :cond_3
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 69
    return-object p0
    .line 71
.end method

.method public hasFormat()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 2
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result p0

    .line 7
    xor-int/lit8 p0, p0, 0x1

    .line 8
    return p0
    .line 10
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter;->mParas:[Lcom/miui/maml/util/TextFormatter$FormatPara;

    .line 5
    array-length v0, p1

    .line 7
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 8
    if-nez v1, :cond_0

    .line 10
    new-array v1, v0, [Ljava/lang/Object;

    .line 12
    iput-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 14
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 16
    array-length v2, v1

    .line 18
    if-ge v2, v0, :cond_1

    .line 19
    array-length v0, v1

    .line 21
    :cond_1
    invoke-static {p1, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 22
    move-result-object p1

    .line 25
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mParasValue:[Ljava/lang/Object;

    .line 26
    :cond_2
    return-void
    .line 28
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mText:Ljava/lang/String;

    .line 2
    const-string p1, ""

    .line 4
    iput-object p1, p0, Lcom/miui/maml/util/TextFormatter;->mFormat:Ljava/lang/String;

    .line 6
    return-void
    .line 8
.end method
