.class public Lcom/miui/maml/data/VariableBinderManager;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "VariableBinderManager"

.field public static final TAG_NAME:Ljava/lang/String; = "VariableBinders"


# instance fields
.field private mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mVariableBinders:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method

.method private static createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;
    .locals 2

    .line 1
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    const-string v1, "ContentProviderBinder"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    .line 14
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 16
    goto :goto_0

    .line 19
    :cond_0
    const-string v1, "SensorBinder"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    new-instance v0, Lcom/miui/maml/data/SensorBinder;

    .line 28
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SensorBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    const-string v1, "BroadcastBinder"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    new-instance v0, Lcom/miui/maml/data/BroadcastBinder;

    .line 42
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/BroadcastBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 44
    goto :goto_0

    .line 47
    :cond_2
    const-string v1, "FileBinder"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 53
    if-eqz v1, :cond_3

    .line 54
    new-instance v0, Lcom/miui/maml/data/FileBinder;

    .line 56
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/FileBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 58
    goto :goto_0

    .line 61
    :cond_3
    const-string v1, "SettingsBinder"

    .line 62
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 64
    move-result v0

    .line 67
    if-eqz v0, :cond_4

    .line 68
    new-instance v0, Lcom/miui/maml/data/SettingsBinder;

    .line 70
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/data/SettingsBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_4
    const/4 v0, 0x0

    .line 76
    :goto_0
    if-eqz v0, :cond_5

    .line 77
    invoke-virtual {v0, p2}, Lcom/miui/maml/data/VariableBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 79
    :cond_5
    return-object v0
    .line 82
.end method

.method private load(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinderManager;->loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    return-void

    .line 7
    :cond_0
    const-string p0, "VariableBinderManager"

    .line 8
    const-string p1, "node is null"

    .line 10
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 12
    new-instance p0, Ljava/lang/NullPointerException;

    .line 15
    invoke-direct {p0, p1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    .line 17
    throw p0
    .line 20
.end method

.method private loadBinders(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 2
    move-result-object p1

    .line 5
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 7
    move-result v1

    .line 10
    if-ge v0, v1, :cond_1

    .line 11
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 13
    move-result-object v1

    .line 16
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 17
    move-result v1

    .line 20
    const/4 v2, 0x1

    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 24
    move-result-object v1

    .line 27
    check-cast v1, Lorg/w3c/dom/Element;

    .line 28
    invoke-static {v1, p2, p0}, Lcom/miui/maml/data/VariableBinderManager;->createBinder(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/VariableBinderManager;)Lcom/miui/maml/data/VariableBinder;

    .line 30
    move-result-object v1

    .line 33
    if-eqz v1, :cond_0

    .line 34
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 36
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    return-void
    .line 44
.end method


# virtual methods
.method public final acceptVisitor(Lcom/miui/maml/data/VariableBinderVisitor;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0, p1}, Lcom/miui/maml/data/VariableBinder;->accept(Lcom/miui/maml/data/VariableBinderVisitor;)V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 3
    new-instance v0, Lcom/miui/maml/data/ContentProviderBinder;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-direct {v0, v1}, Lcom/miui/maml/data/ContentProviderBinder;-><init>(Lcom/miui/maml/ScreenElementRoot;)V

    .line 4
    invoke-virtual {v0, p0}, Lcom/miui/maml/data/VariableBinder;->setQueryCompleteListener(Lcom/miui/maml/data/ContentProviderBinder$QueryCompleteListener;)V

    .line 5
    iput-object p1, v0, Lcom/miui/maml/data/ContentProviderBinder;->mUriFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 6
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 7
    new-instance p0, Lcom/miui/maml/data/ContentProviderBinder$Builder;

    invoke-direct {p0, v0}, Lcom/miui/maml/data/ContentProviderBinder$Builder;-><init>(Lcom/miui/maml/data/ContentProviderBinder;)V

    return-object p0
.end method

.method public addContentProviderBinder(Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 1
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public addContentProviderBinder(Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/ContentProviderBinder$Builder;
    .locals 2

    .line 2
    new-instance v0, Lcom/miui/maml/util/TextFormatter;

    iget-object v1, p0, Lcom/miui/maml/data/VariableBinderManager;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object v1

    invoke-direct {v0, v1, p1, p2}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/miui/maml/data/VariableBinderManager;->addContentProviderBinder(Lcom/miui/maml/util/TextFormatter;)Lcom/miui/maml/data/ContentProviderBinder$Builder;

    move-result-object p0

    return-object p0
.end method

.method public findBinder(Ljava/lang/String;)Lcom/miui/maml/data/VariableBinder;
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_1

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getName()Ljava/lang/String;

    .line 20
    move-result-object v1

    .line 23
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 24
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    return-object v0

    .line 30
    :cond_1
    const/4 p0, 0x0

    .line 31
    return-object p0
.end method

.method public finish()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->finish()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public onQueryCompleted(Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object p0

    .line 14
    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v0

    .line 18
    if-eqz v0, :cond_2

    .line 19
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v0

    .line 24
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 25
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->getDependency()Ljava/lang/String;

    .line 27
    move-result-object v1

    .line 30
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v2

    .line 34
    if-nez v2, :cond_1

    .line 35
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->startQuery()V

    .line 43
    goto :goto_0

    .line 46
    :cond_2
    return-void
    .line 47
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->pause()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public resume()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->resume()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method

.method public tick()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/VariableBinderManager;->mVariableBinders:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 4
    move-result-object p0

    .line 7
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 8
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 14
    move-result-object v0

    .line 17
    check-cast v0, Lcom/miui/maml/data/VariableBinder;

    .line 18
    invoke-virtual {v0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method
