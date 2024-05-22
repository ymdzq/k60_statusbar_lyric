.class public Lcom/miui/maml/data/Expression$NumberExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mString:Ljava/lang/String;

.field private mValue:D


# direct methods
.method public constructor <init>(D)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 4
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, "Expression"

    if-eqz v0, :cond_0

    const-string p0, "invalid NumberExpression: null"

    .line 5
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 6
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_1

    const-string v0, "0x"

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_1

    .line 7
    invoke-virtual {p1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v2, 0x10

    invoke-static {v0, v2}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v2

    long-to-double v2, v2

    iput-wide v2, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {p1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 9
    :catch_0
    new-instance p0, Ljava/lang/StringBuilder;

    const-string v0, "invalid NumberExpression:"

    invoke-direct {p0, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 2
    return-wide v0
    .line 4
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 2
    if-nez v0, :cond_0

    .line 4
    iget-wide v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 6
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->doubleToString(D)Ljava/lang/String;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mString:Ljava/lang/String;

    .line 14
    return-object p0
    .line 16
.end method

.method public setValue(D)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/miui/maml/data/Expression$NumberExpression;->mValue:D

    .line 2
    return-void
    .line 4
.end method
