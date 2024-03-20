.class public Lcom/miui/maml/data/FileBinder;
.super Lcom/miui/maml/data/VariableBinder;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final DBG:Z = false

.field private static final LOG_TAG:Ljava/lang/String; = "FileBinder"

.field public static final TAG_NAME:Ljava/lang/String; = "FileBinder"


# instance fields
.field private mCountVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mDirFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mFiles:[Ljava/lang/String;

.field private mFilters:[Ljava/lang/String;

.field private mVariables:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/data/VariableBinder;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 10
    invoke-direct {p0, p1}, Lcom/miui/maml/data/FileBinder;->load(Lorg/w3c/dom/Element;)V

    .line 12
    return-void
    .line 15
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-string p0, "FileBinder"

    .line 4
    const-string p1, "FileBinder node is null"

    .line 6
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    return-void

    .line 11
    :cond_0
    const-string v0, "filter"

    .line 12
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 18
    move-result-object v0

    .line 21
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    const/4 v0, 0x0

    .line 28
    goto :goto_0

    .line 29
    :cond_1
    const-string v1, ","

    .line 30
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 32
    move-result-object v0

    .line 35
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 36
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    .line 38
    move-result-object v0

    .line 41
    const-string v1, "dirExp"

    .line 42
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    move-result-object v1

    .line 47
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 48
    move-result-object v0

    .line 51
    new-instance v1, Lcom/miui/maml/util/TextFormatter;

    .line 52
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    .line 54
    move-result-object v2

    .line 57
    const-string v3, "dir"

    .line 58
    invoke-interface {p1, v3}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 60
    move-result-object v3

    .line 63
    invoke-direct {v1, v2, v3, v0}, Lcom/miui/maml/util/TextFormatter;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;Lcom/miui/maml/data/Expression;)V

    .line 64
    iput-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 67
    iget-object v0, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 69
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 71
    move-result v0

    .line 74
    if-nez v0, :cond_2

    .line 75
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 77
    new-instance v1, Ljava/lang/StringBuilder;

    .line 79
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 81
    iget-object v2, p0, Lcom/miui/maml/data/VariableBinder;->mName:Ljava/lang/String;

    .line 84
    const-string v3, ".count"

    .line 86
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 88
    move-result-object v1

    .line 91
    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getContext()Lcom/miui/maml/ScreenContext;

    .line 92
    move-result-object v2

    .line 95
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 96
    const/4 v3, 0x1

    .line 98
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 99
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 102
    :cond_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/VariableBinder;->loadVariables(Lorg/w3c/dom/Element;)V

    .line 104
    return-void
    .line 107
.end method

.method private updateVariables()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    array-length v0, v0

    .line 8
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v1

    .line 14
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    move-result v2

    .line 18
    if-eqz v2, :cond_3

    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    move-result-object v2

    .line 24
    check-cast v2, Lcom/miui/maml/data/FileBinder$Variable;

    .line 25
    iget-object v3, v2, Lcom/miui/maml/data/FileBinder$Variable;->mIndex:Lcom/miui/maml/data/Expression;

    .line 27
    if-nez v3, :cond_1

    .line 29
    goto :goto_1

    .line 31
    :cond_1
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 32
    move-result-wide v3

    .line 35
    double-to-int v3, v3

    .line 36
    if-nez v0, :cond_2

    .line 37
    const/4 v3, 0x0

    .line 39
    goto :goto_2

    .line 40
    :cond_2
    iget-object v4, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 41
    rem-int/2addr v3, v0

    .line 43
    aget-object v3, v4, v3

    .line 44
    :goto_2
    invoke-virtual {v2, v3}, Lcom/miui/maml/data/VariableBinder$Variable;->set(Ljava/lang/Object;)V

    .line 46
    goto :goto_1

    .line 49
    :cond_3
    return-void
    .line 50
.end method


# virtual methods
.method public addVariable(Lcom/miui/maml/data/FileBinder$Variable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/data/FileBinder;->mVariables:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    return-void
    .line 7
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/data/FileBinder;->refresh()V

    .line 5
    return-void
    .line 8
.end method

.method public onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;
    .locals 1

    .line 2
    new-instance v0, Lcom/miui/maml/data/FileBinder$Variable;

    invoke-virtual {p0}, Lcom/miui/maml/data/VariableBinder;->getVariables()Lcom/miui/maml/data/Variables;

    move-result-object p0

    invoke-direct {v0, p1, p0}, Lcom/miui/maml/data/FileBinder$Variable;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;)V

    return-object v0
.end method

.method public bridge synthetic onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/VariableBinder$Variable;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/miui/maml/data/FileBinder;->onLoadVariable(Lorg/w3c/dom/Element;)Lcom/miui/maml/data/FileBinder$Variable;

    move-result-object p0

    return-object p0
.end method

.method public refresh()V
    .locals 4

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->refresh()V

    .line 2
    new-instance v0, Ljava/io/File;

    .line 5
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mDirFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 9
    move-result-object v1

    .line 12
    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mFilters:[Ljava/lang/String;

    .line 16
    if-nez v1, :cond_0

    .line 18
    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    new-instance v2, Lcom/miui/maml/util/FilenameExtFilter;

    .line 25
    invoke-direct {v2, v1}, Lcom/miui/maml/util/FilenameExtFilter;-><init>([Ljava/lang/String;)V

    .line 27
    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    .line 30
    move-result-object v0

    .line 33
    :goto_0
    iput-object v0, p0, Lcom/miui/maml/data/FileBinder;->mFiles:[Ljava/lang/String;

    .line 34
    if-nez v0, :cond_1

    .line 36
    const/4 v0, 0x0

    .line 38
    goto :goto_1

    .line 39
    :cond_1
    array-length v0, v0

    .line 40
    :goto_1
    iget-object v1, p0, Lcom/miui/maml/data/FileBinder;->mCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 41
    if-eqz v1, :cond_2

    .line 43
    int-to-double v2, v0

    .line 45
    invoke-virtual {v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 46
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "file count: "

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    const-string v1, "FileBinder"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    .line 68
    return-void
    .line 71
.end method

.method public tick()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/data/VariableBinder;->tick()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/data/FileBinder;->updateVariables()V

    .line 5
    return-void
    .line 8
.end method
