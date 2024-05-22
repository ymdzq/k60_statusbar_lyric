.class public Lcom/miui/maml/util/Utils$GetChildWrapper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
