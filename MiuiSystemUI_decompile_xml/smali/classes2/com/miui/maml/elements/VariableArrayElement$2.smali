.class Lcom/miui/maml/elements/VariableArrayElement$2;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/VariableArrayElement;

.field final synthetic val$vars:Lcom/miui/maml/data/Variables;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->val$vars:Lcom/miui/maml/data/Variables;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    invoke-static {v0}, Lcom/miui/maml/elements/VariableArrayElement;->access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;

    .line 4
    move-result-object v0

    .line 7
    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 8
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->this$0:Lcom/miui/maml/elements/VariableArrayElement;

    .line 10
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement$2;->val$vars:Lcom/miui/maml/data/Variables;

    .line 12
    invoke-direct {v1, v2, p0, p1}, Lcom/miui/maml/elements/VariableArrayElement$Item;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;)V

    .line 14
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 17
    return-void
    .line 20
.end method
