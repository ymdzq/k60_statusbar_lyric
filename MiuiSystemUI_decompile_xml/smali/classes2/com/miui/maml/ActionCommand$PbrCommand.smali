.class Lcom/miui/maml/ActionCommand$PbrCommand;
.super Lcom/miui/maml/ActionCommand$TargetCommand;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "PbrCommand"


# instance fields
.field private mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

.field private mCustElementName:Ljava/lang/String;

.field private mIsParamsValid:Z

.field private mParams:[Lcom/miui/maml/data/Expression;

.field private mUniformAutoRefresh:Z

.field private mUniformName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/ActionCommand$TargetCommand;-><init>(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)V

    .line 2
    const-string p1, "params"

    .line 5
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object p1

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand;->getVariables()Lcom/miui/maml/data/Variables;

    .line 11
    move-result-object v0

    .line 14
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 19
    invoke-virtual {p0, v0}, Lcom/miui/maml/ActionCommand;->isExpressionsValid([Lcom/miui/maml/data/Expression;)Z

    .line 21
    move-result v0

    .line 24
    iput-boolean v0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mIsParamsValid:Z

    .line 25
    if-nez v0, :cond_0

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    const-string v1, "Wrong params: "

    .line 31
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 39
    move-result-object p1

    .line 42
    const-string v0, "PbrCommand"

    .line 43
    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 45
    :cond_0
    const-string/jumbo p1, "uniformName"

    .line 48
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 51
    move-result-object p1

    .line 54
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    .line 55
    const-string p1, "custElementName"

    .line 57
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    move-result-object p1

    .line 62
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    .line 63
    const-string/jumbo p1, "uniformRefresh"

    .line 65
    invoke-interface {p2, p1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 68
    move-result-object p1

    .line 71
    invoke-static {p1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 72
    move-result p1

    .line 75
    iput-boolean p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    .line 76
    invoke-direct {p0, p2}, Lcom/miui/maml/ActionCommand$PbrCommand;->parseCommand(Lorg/w3c/dom/Element;)V

    .line 78
    return-void
    .line 81
.end method

.method private parseCommand(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    const-string v0, "command"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const-string/jumbo v0, "updateUniform"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 14
    move-result p1

    .line 17
    if-nez p1, :cond_0

    .line 18
    goto :goto_0

    .line 20
    :cond_0
    sget-object p1, Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;->UPDATE_UNIFORM:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 21
    iput-object p1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 23
    :goto_0
    return-void
    .line 25
.end method


# virtual methods
.method public doPerform()V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/ActionCommand$TargetCommand;->getTarget()Ljava/lang/Object;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_2

    .line 6
    instance-of v1, v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 8
    if-nez v1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 13
    sget-object v1, Lcom/miui/maml/ActionCommand$1;->$SwitchMap$com$miui$maml$ActionCommand$PbrCommand$CommandType:[I

    .line 15
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCommand:Lcom/miui/maml/ActionCommand$PbrCommand$CommandType;

    .line 17
    invoke-virtual {v2}, Ljava/lang/Enum;->ordinal()I

    .line 19
    move-result v2

    .line 22
    aget v1, v1, v2

    .line 23
    const/4 v2, 0x1

    .line 25
    if-eq v1, v2, :cond_1

    .line 26
    goto :goto_0

    .line 28
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mCustElementName:Ljava/lang/String;

    .line 29
    iget-object v2, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformName:Ljava/lang/String;

    .line 31
    iget-boolean v3, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mUniformAutoRefresh:Z

    .line 33
    iget-object p0, p0, Lcom/miui/maml/ActionCommand$PbrCommand;->mParams:[Lcom/miui/maml/data/Expression;

    .line 35
    invoke-virtual {v0, v1, v2, v3, p0}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;->updateUniform(Ljava/lang/String;Ljava/lang/String;Z[Lcom/miui/maml/data/Expression;)V

    .line 37
    :cond_2
    :goto_0
    return-void
    .line 40
.end method
