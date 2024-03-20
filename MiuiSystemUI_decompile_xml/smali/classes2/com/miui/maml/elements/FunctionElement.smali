.class public Lcom/miui/maml/elements/FunctionElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Function"


# instance fields
.field private enable:Z

.field private mCommands:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 10
    const/4 p2, 0x1

    .line 12
    iput-boolean p2, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 13
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/FunctionElement;->load(Lorg/w3c/dom/Element;)V

    .line 15
    return-void
    .line 18
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/FunctionElement;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    new-instance v0, Lcom/miui/maml/elements/FunctionElement$1;

    .line 5
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/FunctionElement$1;-><init>(Lcom/miui/maml/elements/FunctionElement;)V

    .line 7
    const/4 p0, 0x0

    .line 10
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 11
    return-void
    .line 14
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->finish()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->init()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->pause()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public perform()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 8
    move-result-object v0

    .line 11
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 12
    move-result v1

    .line 15
    if-eqz v1, :cond_0

    .line 16
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    check-cast v1, Lcom/miui/maml/ActionCommand;

    .line 22
    invoke-virtual {v1}, Lcom/miui/maml/ActionCommand;->perform()V
    :try_end_0
    .catch Ljava/lang/StackOverflowError; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 27
    :catch_0
    const/4 v0, 0x0

    .line 28
    iput-boolean v0, p0, Lcom/miui/maml/elements/FunctionElement;->enable:Z

    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    .line 31
    const-string v1, "Function "

    .line 33
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 35
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    const-string p0, " was disabled"

    .line 43
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 48
    move-result-object p0

    .line 51
    const-string v0, "Function"

    .line 52
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
    .line 57
.end method

.method public resume()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/FunctionElement;->mCommands:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 7
    move-result-object p0

    .line 10
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 17
    move-result-object v0

    .line 20
    check-cast v0, Lcom/miui/maml/ActionCommand;

    .line 21
    invoke-virtual {v0}, Lcom/miui/maml/ActionCommand;->resume()V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method
