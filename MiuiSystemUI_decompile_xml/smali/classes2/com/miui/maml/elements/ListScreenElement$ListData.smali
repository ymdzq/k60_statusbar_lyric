.class public Lcom/miui/maml/elements/ListScreenElement$ListData;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mColumns:Ljava/util/ArrayList;

.field public mList:Lcom/miui/maml/elements/ListScreenElement;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 14
    if-eqz p1, :cond_0

    .line 16
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$ListData;->load(Lorg/w3c/dom/Element;)V

    .line 18
    :cond_0
    return-void
    .line 21
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ListScreenElement$ListData$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/ListScreenElement$ListData$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$ListData;)V

    .line 4
    const-string p0, "Column"

    .line 7
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 9
    return-void
    .line 12
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$Column;->finish()V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    return-void
    .line 26
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListData;->mColumns:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/elements/ListScreenElement$Column;

    .line 18
    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {v0}, Lcom/miui/maml/elements/ListScreenElement$Column;->init()V

    .line 22
    goto :goto_0

    .line 25
    :cond_1
    return-void
    .line 26
.end method
