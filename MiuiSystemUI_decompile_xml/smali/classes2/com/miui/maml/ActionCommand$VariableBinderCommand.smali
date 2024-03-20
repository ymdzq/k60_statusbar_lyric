.class Lcom/miui/maml/ActionCommand$VariableBinderCommand;
.super Lcom/miui/maml/ActionCommand;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "BinderCommand"


# instance fields
.field private mBinder:Lcom/miui/maml/data/VariableBinder;

.field private mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

.field private mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/ActionCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Invalid:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 5
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 7
    const-string p1, "name"

    .line 9
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    .line 15
    const-string p1, "command"

    .line 17
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    const-string p2, "refresh"

    .line 23
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_0

    .line 29
    sget-object p1, Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;->Refresh:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 31
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 33
    :cond_0
    return-void
    .line 35
.end method


# virtual methods
.method public doPerform()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$VariableBinderCommand$Command:[I

    .line 6
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mCommand:Lcom/miui/maml/ActionCommand$VariableBinderCommand$Command;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    .line 10
    move-result v1

    .line 13
    aget v0, v0, v1

    .line 14
    const/4 v1, 0x1

    .line 16
    if-eq v0, v1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    .line 20
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 22
    :cond_1
    :goto_0
    return-void
    .line 25
.end method

.method public init()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mName:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;

    .line 8
    move-result-object v0

    .line 11
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$VariableBinderCommand;->mBinder:Lcom/miui/maml/data/VariableBinder;

    .line 12
    return-void
    .line 14
.end method
