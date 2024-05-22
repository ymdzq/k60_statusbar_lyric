.class Lcom/miui/maml/ScreenElementRoot$2;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/elements/ScreenElementVisitor;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public visit(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 2

    .line 1
    instance-of v0, p1, Lcom/miui/maml/elements/FramerateController;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    move-object v1, p1

    .line 12
    check-cast v1, Lcom/miui/maml/elements/FramerateController;

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/RendererController;->addFramerateController(Lcom/miui/maml/elements/FramerateController;)V

    .line 15
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/elements/ElementGroupRC;

    .line 18
    if-nez v0, :cond_1

    .line 20
    instance-of v0, p1, Lcom/miui/maml/ScreenElementRoot;

    .line 22
    if-eqz v0, :cond_2

    .line 24
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/ScreenElementRoot$2;->this$0:Lcom/miui/maml/ScreenElementRoot;

    .line 26
    invoke-static {p0}, Lcom/miui/maml/ScreenElementRoot;->access$100(Lcom/miui/maml/ScreenElementRoot;)Ljava/util/ArrayList;

    .line 28
    move-result-object p0

    .line 31
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 32
    move-result-object p1

    .line 35
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 36
    :cond_2
    return-void
    .line 39
.end method
