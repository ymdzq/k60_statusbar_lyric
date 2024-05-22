.class Lcom/miui/maml/data/Expression$StringExpression;
.super Lcom/miui/maml/data/Expression;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mValue:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/data/Expression;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public evaluate()D
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    :try_start_0
    iget-object p0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 10
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 12
    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-wide v0

    .line 16
    :catch_0
    :cond_0
    const-wide/16 v0, 0x0

    .line 17
    return-wide v0
    .line 19
.end method

.method public evaluateStr()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/Expression$StringExpression;->mValue:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
