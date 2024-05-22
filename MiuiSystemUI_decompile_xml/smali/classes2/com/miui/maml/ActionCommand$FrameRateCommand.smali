.class Lcom/miui/maml/ActionCommand$FrameRateCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final TAG_NAME:Ljava/lang/String; = "FrameRateCommand"


# instance fields
.field private mRate:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    invoke-virtual {p1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string v0, "rate"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p2

    .line 14
    invoke-static {p1, p2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 6
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$FrameRateCommand;->mRate:Lcom/miui/maml/data/Expression;

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 12
    move-result-wide v1

    .line 15
    double-to-float p0, v1

    .line 16
    invoke-virtual {v0, p0}, Lcom/miui/maml/ScreenElementRoot;->requestFrameRateByCommand(F)V

    .line 17
    :cond_0
    return-void
    .line 20
.end method
