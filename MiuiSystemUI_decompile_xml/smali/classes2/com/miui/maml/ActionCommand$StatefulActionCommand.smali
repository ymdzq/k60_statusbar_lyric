.class abstract Lcom/miui/maml/ActionCommand$StatefulActionCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field private mVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 7
    move-result-object v0

    .line 10
    const/4 v1, 0x1

    .line 11
    invoke-direct {p1, p2, v0, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    return-void
    .line 17
.end method


# virtual methods
.method public final updateState(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$StatefulActionCommand;->mVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    int-to-double v1, p1

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->requestUpdate()V

    .line 15
    return-void
    .line 18
.end method
