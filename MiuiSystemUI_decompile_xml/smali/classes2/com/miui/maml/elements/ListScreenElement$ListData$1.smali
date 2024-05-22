.class Lcom/miui/maml/elements/ListScreenElement$ListData$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ListScreenElement$ListData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;->this$0:Lcom/miui/maml/elements/ListScreenElement$ListData;

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 4
    new-instance v1, Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 10
    invoke-direct {v1, p1, v2, p0}, Lcom/miui/maml/elements/ListScreenElement$Column;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V

    .line 12
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method
