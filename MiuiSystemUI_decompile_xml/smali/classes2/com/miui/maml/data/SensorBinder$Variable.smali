.class Lcom/miui/maml/data/SensorBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIndex:I


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 2
    const-string p2, "index"

    .line 5
    const/4 v0, 0x0

    .line 7
    invoke-static {p1, p2, v0}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 8
    move-result p1

    .line 11
    iput p1, p0, Lcom/miui/maml/data/SensorBinder$Variable;->mIndex:I

    .line 12
    return-void
    .line 14
.end method
