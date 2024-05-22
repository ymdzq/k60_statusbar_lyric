.class Lcom/miui/maml/elements/ScreenElement$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/ScreenElement;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getNodeName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "Animation"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_1

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 14
    invoke-virtual {v1, v0, p1}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 16
    move-result-object p1

    .line 19
    if-eqz p1, :cond_1

    .line 20
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 22
    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 24
    if-nez v1, :cond_0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    .line 28
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 30
    iput-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 33
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement$1;->this$0:Lcom/miui/maml/elements/ScreenElement;

    .line 35
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    return-void
    .line 42
.end method
