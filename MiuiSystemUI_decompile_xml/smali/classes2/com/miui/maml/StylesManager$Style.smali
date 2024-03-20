.class public Lcom/miui/maml/StylesManager$Style;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG:Ljava/lang/String; = "Style"


# instance fields
.field private base:Lcom/miui/maml/StylesManager$Style;

.field private mAttrs:Ljava/util/HashMap;

.field public name:Ljava/lang/String;

.field final synthetic this$0:Lcom/miui/maml/StylesManager;


# direct methods
.method public constructor <init>(Lcom/miui/maml/StylesManager;Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    iput-object p1, p0, Lcom/miui/maml/StylesManager$Style;->this$0:Lcom/miui/maml/StylesManager;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    new-instance v0, Ljava/util/HashMap;

    .line 7
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 9
    iput-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 12
    invoke-interface {p2}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    .line 14
    move-result-object p2

    .line 17
    const/4 v0, 0x0

    .line 18
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    .line 19
    move-result v1

    .line 22
    if-ge v0, v1, :cond_2

    .line 23
    invoke-interface {p2, v0}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    .line 25
    move-result-object v1

    .line 28
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    .line 33
    move-result-object v1

    .line 36
    const-string v3, "name"

    .line 37
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 39
    move-result v3

    .line 42
    if-eqz v3, :cond_0

    .line 43
    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->name:Ljava/lang/String;

    .line 45
    goto :goto_1

    .line 47
    :cond_0
    const-string v3, "base"

    .line 48
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 50
    move-result v3

    .line 53
    if-eqz v3, :cond_1

    .line 54
    invoke-static {p1}, Lcom/miui/maml/StylesManager;->access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;

    .line 56
    move-result-object v2

    .line 59
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    move-result-object v1

    .line 63
    check-cast v1, Lcom/miui/maml/StylesManager$Style;

    .line 64
    iput-object v1, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    .line 66
    goto :goto_1

    .line 68
    :cond_1
    iget-object v3, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 69
    invoke-virtual {v3, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 74
    goto :goto_0

    .line 76
    :cond_2
    return-void
    .line 77
.end method


# virtual methods
.method public getAttr(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/StylesManager$Style;->mAttrs:Ljava/util/HashMap;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object v0

    .line 7
    check-cast v0, Ljava/lang/String;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    return-object v0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/StylesManager$Style;->base:Lcom/miui/maml/StylesManager$Style;

    .line 13
    if-eqz p0, :cond_1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/StylesManager$Style;->getAttr(Ljava/lang/String;)Ljava/lang/String;

    .line 17
    move-result-object p0

    .line 20
    return-object p0

    .line 21
    :cond_1
    const/4 p0, 0x0

    .line 22
    return-object p0
    .line 23
.end method
