.class public Lcom/miui/maml/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mEle:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public getChild(Ljava/lang/String;)Lcom/miui/maml/util/Utils$GetChildWrapper;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/util/Utils$GetChildWrapper;

    .line 2
    iget-object p0, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 4
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 6
    move-result-object p0

    .line 9
    invoke-direct {v0, p0}, Lcom/miui/maml/util/Utils$GetChildWrapper;-><init>(Lorg/w3c/dom/Element;)V

    .line 10
    return-object v0
    .line 13
.end method

.method public getElement()Lorg/w3c/dom/Element;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/util/Utils$GetChildWrapper;->mEle:Lorg/w3c/dom/Element;

    .line 2
    return-object p0
    .line 4
.end method
