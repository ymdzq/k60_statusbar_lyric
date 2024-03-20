.class Lcom/miui/maml/ActionCommand$EaseTypeCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "EaseTypeCommand"


# instance fields
.field private mEaseFun:Ljava/lang/String;

.field private mEaseParams:Ljava/lang/String;

.field private mEaseTypeExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->ANIMATION_ITEM:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 9
    move-result-object p1

    .line 12
    const-string v0, "easeTypeExp"

    .line 13
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 19
    move-result-object p1

    .line 22
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    .line 23
    const-string p1, "easeFunExp"

    .line 25
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object p1

    .line 30
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    .line 31
    const-string p1, "easeParamsExp"

    .line 33
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object p1

    .line 38
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    .line 39
    return-void
    .line 41
.end method


# virtual methods
.method public doPerform()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Ljava/util/ArrayList;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v1

    .line 18
    if-eqz v1, :cond_1

    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v1

    .line 24
    check-cast v1, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;

    .line 25
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseTypeExp:Lcom/miui/maml/data/Expression;

    .line 27
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 29
    move-result-object v2

    .line 32
    iget-object v3, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseParams:Ljava/lang/String;

    .line 33
    iget-object v4, p0, Lcom/miui/maml/ActionCommand$EaseTypeCommand;->mEaseFun:Ljava/lang/String;

    .line 35
    invoke-virtual {v1, v2, v3, v4}, Lcom/miui/maml/animation/BaseAnimation$AnimationItem;->changeInterpolator(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    goto :goto_0

    .line 40
    :cond_1
    return-void
    .line 41
.end method
