.class Lcom/miui/maml/elements/ScreenElementArray$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ScreenElementArray;

.field final synthetic val$_root:Lcom/miui/maml/ScreenElementRoot;

.field final synthetic val$count:I

.field final synthetic val$indexVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 2
    iput p2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    .line 4
    iput-object p3, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iput-object p4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    return-void
    .line 13
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 2
    const-string v1, "name"

    .line 4
    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 10
    move-result-object v1

    .line 13
    const-string v2, "Var"

    .line 14
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 16
    move-result v1

    .line 19
    const/4 v2, 0x0

    .line 20
    const/4 v3, 0x0

    .line 21
    :goto_0
    iget v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$count:I

    .line 22
    if-ge v3, v4, :cond_3

    .line 24
    if-eqz v1, :cond_0

    .line 26
    const-string v4, "dontAddToMap"

    .line 28
    const-string/jumbo v5, "true"

    .line 30
    invoke-interface {p1, v4, v5}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    goto :goto_1

    .line 36
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    .line 37
    const-string v5, "["

    .line 39
    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 41
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 44
    const-string v5, "]"

    .line 47
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 52
    move-result-object v4

    .line 55
    const-string v5, "namesSuffix"

    .line 56
    invoke-interface {p1, v5, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    :goto_1
    iget-object v4, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 61
    invoke-static {v4, p1}, Lcom/miui/maml/elements/ScreenElementArray;->access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 63
    move-result-object v4

    .line 66
    if-eqz v4, :cond_2

    .line 67
    if-nez v2, :cond_1

    .line 69
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$_root:Lcom/miui/maml/ScreenElementRoot;

    .line 71
    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->val$indexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 73
    invoke-static {v2, v5}, Lcom/miui/maml/elements/ElementGroup;->createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;

    .line 75
    move-result-object v2

    .line 78
    invoke-virtual {v2, v0}, Lcom/miui/maml/elements/ScreenElement;->setName(Ljava/lang/String;)V

    .line 79
    iget-object v5, p0, Lcom/miui/maml/elements/ScreenElementArray$1;->this$0:Lcom/miui/maml/elements/ScreenElementArray;

    .line 82
    invoke-virtual {v5, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 84
    :cond_1
    invoke-virtual {v2, v4}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 87
    :cond_2
    add-int/lit8 v3, v3, 0x1

    .line 90
    goto :goto_0

    .line 92
    :cond_3
    return-void
    .line 93
.end method
