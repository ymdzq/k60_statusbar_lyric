.class Lcom/miui/maml/ActionCommand$ActionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "ActionCommand"


# instance fields
.field private mAction:Ljava/lang/String;

.field private mActionExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "action"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 13
    move-result p1

    .line 16
    if-eqz p1, :cond_0

    .line 17
    const/4 p1, 0x0

    .line 19
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object p1

    .line 25
    const-string v0, "actionExp"

    .line 26
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 28
    move-result-object p2

    .line 31
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 32
    move-result-object p1

    .line 35
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    .line 36
    :cond_0
    return-void
    .line 38
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;

    .line 6
    if-nez v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mAction:Ljava/lang/String;

    .line 11
    if-eqz v1, :cond_1

    .line 13
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 15
    goto :goto_0

    .line 18
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$ActionPerformCommand;->mActionExp:Lcom/miui/maml/data/Expression;

    .line 19
    if-eqz p0, :cond_2

    .line 21
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 23
    move-result-object p0

    .line 26
    if-eqz p0, :cond_2

    .line 27
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 29
    :cond_2
    :goto_0
    return-void
.end method
