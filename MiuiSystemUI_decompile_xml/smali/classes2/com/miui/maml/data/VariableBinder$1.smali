.class Lcom/miui/maml/data/VariableBinder$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/data/VariableBinder;


# direct methods
.method public constructor <init>(Lcom/miui/maml/data/VariableBinder;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 2
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder$1;->this$0:Lcom/miui/maml/data/VariableBinder;

    .line 10
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void
    .line 17
.end method
