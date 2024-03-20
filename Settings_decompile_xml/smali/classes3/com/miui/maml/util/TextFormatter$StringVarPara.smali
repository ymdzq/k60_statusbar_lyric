.class Lcom/miui/maml/util/TextFormatter$StringVarPara;
.super Lcom/miui/maml/util/TextFormatter$FormatPara;
.source "TextFormatter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/util/TextFormatter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "StringVarPara"
.end annotation


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;

.field private mVariable:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V
    .locals 2

    const/4 v0, 0x0

    .line 209
    invoke-direct {p0, v0}, Lcom/miui/maml/util/TextFormatter$FormatPara;-><init>(Lcom/miui/maml/util/TextFormatter$1;)V

    .line 210
    iput-object p2, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVariable:Ljava/lang/String;

    .line 211
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    const/4 v1, 0x0

    invoke-direct {v0, p2, p1, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    iput-object v0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method


# virtual methods
.method public evaluate()Ljava/lang/Object;
    .locals 0

    .line 216
    iget-object p0, p0, Lcom/miui/maml/util/TextFormatter$StringVarPara;->mVar:Lcom/miui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_0

    const-string p0, ""

    :cond_0
    return-object p0
.end method
