.class Lcom/miui/maml/ActionCommand$TickListenerCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "TickListenerCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

.field private mFunNameExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object p1

    .line 8
    const-string v0, "function"

    .line 9
    invoke-interface {p2, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {p1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object p1

    .line 18
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    .line 19
    const-string p1, "command"

    .line 21
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 23
    move-result-object p1

    .line 26
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 27
    const-string/jumbo p2, "set"

    .line 30
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 33
    move-result p2

    .line 36
    if-nez p2, :cond_1

    .line 37
    const-string/jumbo p2, "unset"

    .line 39
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 42
    move-result p1

    .line 45
    if-nez p1, :cond_0

    .line 46
    goto :goto_0

    .line 48
    :cond_0
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->UNSET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 49
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    sget-object p1, Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;->SET:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 54
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 56
    :goto_0
    return-void
    .line 58
.end method


# virtual methods
.method public doPerform()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_3

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 13
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$TickListenerCommand$CommandType:[I

    .line 15
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mCommand:Lcom/miui/maml/ActionCommand$TickListenerCommand$CommandType;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 23
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_2

    .line 26
    const/4 p0, 0x2

    .line 28
    if-eq v1, p0, :cond_1

    .line 29
    goto :goto_0

    .line 31
    :cond_1
    invoke-virtual {v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->unsetOnTickListener()V

    .line 32
    goto :goto_0

    .line 35
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$TickListenerCommand;->mFunNameExp:Lcom/miui/maml/data/Expression;

    .line 36
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 38
    move-result-object v1

    .line 41
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    move-result-object p0

    .line 45
    invoke-virtual {p0, v1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 46
    move-result-object p0

    .line 49
    if-eqz p0, :cond_3

    .line 50
    instance-of v1, p0, Lcom/miui/maml/elements/FunctionElement;

    .line 52
    if-eqz v1, :cond_3

    .line 54
    check-cast p0, Lcom/miui/maml/elements/FunctionElement;

    .line 56
    invoke-virtual {v0, p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V

    .line 58
    :cond_3
    :goto_0
    return-void
    .line 61
.end method
