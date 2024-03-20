.class public Lcom/miui/maml/StylesManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mStyles:Ljava/util/HashMap;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    .line 5
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 10
    new-instance v0, Lcom/miui/maml/StylesManager$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/miui/maml/StylesManager$1;-><init>(Lcom/miui/maml/StylesManager;)V

    .line 14
    const-string p0, "Style"

    .line 17
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 19
    return-void
    .line 22
.end method

.method public static synthetic access$000(Lcom/miui/maml/StylesManager;)Ljava/util/HashMap;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/StylesManager;->mStyles:Ljava/util/HashMap;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    move-result-object p0

    .line 7
    check-cast p0, Lcom/miui/maml/StylesManager$Style;

    .line 8
    return-object p0
    .line 10
.end method
