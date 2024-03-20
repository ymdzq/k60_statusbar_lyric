.class Lcom/miui/maml/animation/BaseAnimation$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/util/Utils$XmlTraverseListener;


# instance fields
.field final synthetic this$0:Lcom/miui/maml/animation/BaseAnimation;


# direct methods
.method public constructor <init>(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public onChild(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/animation/BaseAnimation$1;->this$0:Lcom/miui/maml/animation/BaseAnimation;

    .line 2
    iget-object v0, p0, Lcom/miui/maml/animation/BaseAnimation;->mItems:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {p0, p0, p1}, Lcom/miui/maml/animation/BaseAnimation;->onCreateItem(Lcom/miui/maml/animation/BaseAnimation;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    return-void
    .line 13
.end method
