.class public Lcom/miui/maml/elements/ScreenElementArray;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DEF_INDEX_VAR_NAME:Ljava/lang/String; = "__i"

.field public static final TAG_NAME:Ljava/lang/String; = "Array"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const-string v0, "count"

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-static {p1, v0, v1}, Lcom/miui/maml/util/Utils;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 8
    move-result v0

    .line 11
    const-string v1, "indexName"

    .line 12
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v1

    .line 17
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v2

    .line 21
    if-eqz v2, :cond_0

    .line 22
    const-string v1, "__i"

    .line 24
    :cond_0
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 28
    move-result-object v3

    .line 31
    const/4 v4, 0x1

    .line 32
    invoke-direct {v2, v1, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 33
    new-instance v1, Lcom/miui/maml/elements/ScreenElementArray$1;

    .line 36
    invoke-direct {v1, p0, v0, p2, v2}, Lcom/miui/maml/elements/ScreenElementArray$1;-><init>(Lcom/miui/maml/elements/ScreenElementArray;ILcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    .line 38
    const/4 p0, 0x0

    .line 41
    invoke-static {p1, p0, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 42
    return-void
    .line 45
.end method

.method public static synthetic access$001(Lcom/miui/maml/elements/ScreenElementArray;Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method


# virtual methods
.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method
