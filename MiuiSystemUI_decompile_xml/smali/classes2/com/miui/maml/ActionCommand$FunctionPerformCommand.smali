.class Lcom/miui/maml/ActionCommand$FunctionPerformCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "FunctionCommand"


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    sget-object p1, Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;->SCREEN_ELEMENT:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TargetCommand;->mTargetType:Lcom/miui/maml/ActionCommand$TargetCommand$TargetType;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public doPerform()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    instance-of v0, p0, Lcom/miui/maml/elements/FunctionElement;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    check-cast p0, Lcom/miui/maml/elements/FunctionElement;

    .line 12
    invoke-virtual {p0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 14
    :cond_0
    return-void
    .line 17
.end method
