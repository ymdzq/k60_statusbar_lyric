.class Lcom/miui/maml/util/TextFormatter$StringVarPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 3
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    .line 6
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 8
    const/4 v1, 0x0

    .line 10
    invoke-direct {v0, p2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 11
    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    return-void
    .line 16
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    if-nez p0, :cond_0

    .line 8
    const-string p0, ""

    .line 10
    :cond_0
    return-object p0
    .line 12
.end method
