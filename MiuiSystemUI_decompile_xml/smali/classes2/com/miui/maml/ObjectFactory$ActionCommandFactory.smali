.class public abstract Lcom/miui/maml/ObjectFactory$ActionCommandFactory;
.super Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final NAME:Ljava/lang/String; = "ActionCommand"


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-string v0, "ActionCommand"

    .line 2
    invoke-direct {p0, v0}, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;-><init>(Ljava/lang/String;)V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;
    .locals 1

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->doCreate(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/ObjectFactory$ObjectFactoryBase;->mOld:Lcom/miui/maml/ObjectFactory;

    .line 9
    if-nez p0, :cond_1

    .line 11
    const/4 p0, 0x0

    .line 13
    goto :goto_0

    .line 14
    :cond_1
    check-cast p0, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;

    .line 15
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/ObjectFactory$ActionCommandFactory;->create(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;

    .line 17
    move-result-object p0

    .line 20
    :goto_0
    return-object p0
    .line 21
.end method

.method public abstract doCreate(Lcom/miui/maml/elements/ScreenElement;Lorg/w3c/dom/Element;)Lcom/miui/maml/ActionCommand;
.end method
