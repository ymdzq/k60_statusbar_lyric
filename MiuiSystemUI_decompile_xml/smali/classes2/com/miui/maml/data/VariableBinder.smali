.class public abstract Lcom/miui/maml/data/VariableBinder;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mDependency:Ljava/lang/String;

.field protected mFinished:Z

.field protected mName:Ljava/lang/String;

.field protected mPaused:Z

.field protected mQueryAtStart:Z

.field private mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field protected mTrigger:Lcom/miui/maml/CommandTrigger;

.field protected mVariables:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    .line 8
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 10
    iput-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 13
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 15
    if-eqz p1, :cond_0

    .line 17
    const-string p2, "name"

    .line 19
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object p2

    .line 24
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 25
    const-string p2, "dependency"

    .line 27
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p2

    .line 32
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    .line 33
    const-string p2, "queryAtStart"

    .line 35
    invoke-interface {p1, p2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    move-result-object p2

    .line 40
    const-string v1, "false"

    .line 41
    invoke-virtual {v1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 43
    move-result p2

    .line 46
    xor-int/2addr p2, v0

    .line 47
    iput-boolean p2, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 48
    iget-object p2, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 50
    invoke-static {p1, p2}, Lcom/miui/maml/CommandTrigger;->fromParentElement(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)Lcom/miui/maml/CommandTrigger;

    .line 52
    move-result-object p1

    .line 55
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 56
    :cond_0
    return-void
    .line 58
.end method


# virtual methods
.method public final accept(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .locals 0

    .line 1
    invoke-virtual {p1, p0}, Lcom/miui/maml/data/VariableBinderVisitor;->visit(Lcom/miui/maml/data/VariableBinder;)V

    .line 2
    return-void
    .line 5
.end method

.method public addVariable(Lcom/miui/maml/data/VariableBinder$Variable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mVariables:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->finish()V

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 10
    return-void
    .line 12
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getDependency()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mDependency:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public init()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mFinished:Z

    .line 3
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 5
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 7
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->init()V

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 18
    move-result v0

    .line 21
    if-eqz v0, :cond_1

    .line 22
    iget-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryAtStart:Z

    .line 24
    if-eqz v0, :cond_1

    .line 26
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    .line 28
    :cond_1
    return-void
    .line 31
.end method

.method public loadVariables(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/data/VariableBinder$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/data/VariableBinder$1;-><init>(Lcom/miui/maml/data/VariableBinder;)V

    .line 4
    const-string p0, "Variable"

    .line 7
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 9
    return-void
    .line 12
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public final onUpdateComplete()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->perform()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 13
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 15
    move-result v0

    .line 18
    if-nez v0, :cond_1

    .line 19
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 21
    iget-object v1, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 23
    invoke-interface {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;->onQueryCompleted(Ljava/lang/String;)V

    .line 25
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinder;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 30
    return-void
    .line 33
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->pause()V

    .line 6
    :cond_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 10
    return-void
    .line 12
.end method

.method public refresh()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mTrigger:Lcom/miui/maml/CommandTrigger;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTrigger;->resume()V

    .line 6
    :cond_0
    const/4 v0, 0x0

    .line 9
    iput-boolean v0, p0, Lcom/miui/maml/data/VariableBinder;->mPaused:Z

    .line 10
    return-void
    .line 12
.end method

.method public setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/data/VariableBinder;->mQueryCompletedListener:Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;

    .line 2
    return-void
    .line 4
.end method

.method public startQuery()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public tick()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
