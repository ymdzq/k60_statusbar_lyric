.class public Lcom/miui/maml/elements/ListScreenElement$Column;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mList:Lcom/miui/maml/elements/ListScreenElement;

.field public mName:Ljava/lang/String;

.field public mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

.field public mRoot:Lcom/miui/maml/ScreenElementRoot;

.field public mTarget:Ljava/lang/String;

.field public mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/elements/ListScreenElement;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 5
    iput-object p3, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mList:Lcom/miui/maml/elements/ListScreenElement;

    .line 7
    if-eqz p1, :cond_0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ListScreenElement$Column;->load(Lorg/w3c/dom/Element;)V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    const-string v0, "name"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mName:Ljava/lang/String;

    .line 8
    const-string/jumbo v0, "target"

    .line 10
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 13
    move-result-object p1

    .line 16
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 17
    new-instance p1, Lcom/miui/maml/elements/ListScreenElement$Column$1;

    .line 19
    invoke-direct {p1, p0}, Lcom/miui/maml/elements/ListScreenElement$Column$1;-><init>(Lcom/miui/maml/elements/ListScreenElement$Column;)V

    .line 21
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 24
    return-void
    .line 26
.end method


# virtual methods
.method public finish()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 6
    const/4 v1, 0x0

    .line 8
    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public init()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 6
    iget-object v1, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 8
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 10
    move-result-object v0

    .line 13
    instance-of v1, v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 14
    if-eqz v1, :cond_0

    .line 16
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 20
    goto :goto_0

    .line 22
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 23
    const-string v1, "can\'t find VarArray:"

    .line 25
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTarget:Ljava/lang/String;

    .line 30
    const-string v1, "ListScreenElement"

    .line 32
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    return-void

    .line 37
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mTargetElement:Lcom/miui/maml/elements/VariableArrayElement;

    .line 38
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$Column;->mObserver:Lcom/miui/maml/elements/VariableArrayElement$VarObserver;

    .line 40
    const/4 v1, 0x1

    .line 42
    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/elements/VariableArrayElement;->registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V

    .line 43
    return-void
    .line 46
.end method
