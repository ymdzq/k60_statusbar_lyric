.class Lcom/miui/maml/elements/FunctionElement$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/FunctionElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

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
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    .line 2
    invoke-static {p1, v0}, Lcom/miui/maml/ActionCommand;->create(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/ActionCommand;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement$1;->this$0:Lcom/miui/maml/elements/FunctionElement;

    .line 10
    invoke-static {p0}, Lcom/miui/maml/elements/FunctionElement;->access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;

    .line 12
    move-result-object p0

    .line 15
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 16
    :cond_0
    return-void
    .line 19
.end method
