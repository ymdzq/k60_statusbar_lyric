.class Lcom/miui/maml/data/BroadcastBinder$Variable;
.super Lcom/miui/maml/data/VariableBinder$Variable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mExtraName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    .line 2
    const-string p2, "extra"

    .line 5
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/data/BroadcastBinder$Variable;->mExtraName:Ljava/lang/String;

    .line 11
    return-void
    .line 13
.end method
