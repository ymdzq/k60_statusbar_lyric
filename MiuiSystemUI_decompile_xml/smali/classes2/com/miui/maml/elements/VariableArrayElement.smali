.class public Lcom/miui/maml/elements/VariableArrayElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "VarArray"


# instance fields
.field private mArray:Ljava/util/ArrayList;

.field mData:[Ljava/lang/Object;

.field private mItemCount:I

.field private mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

.field mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

.field mVarObserver:Ljava/util/HashSet;

.field private mVars:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 10
    new-instance p2, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 14
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 17
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->DOUBLE:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 19
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 21
    new-instance v0, Ljava/util/HashSet;

    .line 23
    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 25
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 28
    if-eqz p1, :cond_1

    .line 30
    const-string/jumbo v0, "type"

    .line 32
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 35
    move-result-object v0

    .line 38
    const-string/jumbo v1, "string"

    .line 39
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 42
    move-result v0

    .line 45
    if-eqz v0, :cond_0

    .line 46
    sget-object p2, Lcom/miui/maml/elements/VariableArrayElement$Type;->STRING:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 48
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 50
    goto :goto_0

    .line 52
    :cond_0
    iput-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mType:Lcom/miui/maml/elements/VariableArrayElement$Type;

    .line 53
    :goto_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 55
    move-result-object p2

    .line 58
    const-string v0, "Vars"

    .line 59
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 61
    move-result-object v0

    .line 64
    new-instance v1, Lcom/miui/maml/elements/VariableArrayElement$1;

    .line 65
    invoke-direct {v1, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$1;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    .line 67
    const-string v2, "Var"

    .line 70
    invoke-static {v0, v2, v1}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 72
    const-string v0, "Items"

    .line 75
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 77
    move-result-object p1

    .line 80
    new-instance v0, Lcom/miui/maml/elements/VariableArrayElement$2;

    .line 81
    invoke-direct {v0, p0, p2}, Lcom/miui/maml/elements/VariableArrayElement$2;-><init>(Lcom/miui/maml/elements/VariableArrayElement;Lcom/miui/maml/data/Variables;)V

    .line 83
    const-string v1, "Item"

    .line 86
    invoke-static {p1, v1, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 88
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 91
    if-eqz p1, :cond_1

    .line 93
    new-instance p1, Lcom/miui/maml/data/IndexedVariable;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    .line 97
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 99
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 102
    const-string v2, ".count"

    .line 104
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 106
    move-result-object v0

    .line 109
    const/4 v1, 0x1

    .line 110
    invoke-direct {p1, v0, p2, v1}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 111
    iput-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 114
    :cond_1
    return-void
    .line 116
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/VariableArrayElement;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public doTick(J)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p1

    .line 7
    const/4 p2, 0x0

    .line 8
    :goto_0
    if-ge p2, p1, :cond_0

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v0

    .line 16
    check-cast v0, Lcom/miui/maml/elements/VariableArrayElement$Var;

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/elements/VariableArrayElement$Var;->tick()V

    .line 19
    add-int/lit8 p2, p2, 0x1

    .line 22
    goto :goto_0

    .line 24
    :cond_0
    return-void
    .line 25
.end method

.method public getItemSize()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 2
    return p0
    .line 4
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    move v2, v1

    .line 12
    :goto_0
    if-ge v2, v0, :cond_0

    .line 13
    iget-object v3, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVars:Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v3

    .line 20
    check-cast v3, Lcom/miui/maml/elements/VariableArrayElement$Var;

    .line 21
    invoke-virtual {v3}, Lcom/miui/maml/elements/VariableArrayElement$Var;->init()V

    .line 23
    add-int/lit8 v2, v2, 0x1

    .line 26
    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 29
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 31
    move-result v0

    .line 34
    iput v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 35
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCountVar:Lcom/miui/maml/data/IndexedVariable;

    .line 37
    if-eqz v2, :cond_1

    .line 39
    int-to-double v3, v0

    .line 41
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 42
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 45
    if-nez v0, :cond_2

    .line 47
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 49
    new-array v0, v0, [Ljava/lang/Object;

    .line 51
    iput-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 53
    :goto_1
    iget v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mItemCount:I

    .line 55
    if-ge v1, v0, :cond_2

    .line 57
    iget-object v0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 59
    iget-object v2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mArray:Ljava/util/ArrayList;

    .line 61
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 63
    move-result-object v2

    .line 66
    check-cast v2, Lcom/miui/maml/elements/VariableArrayElement$Item;

    .line 67
    iget-object v2, v2, Lcom/miui/maml/elements/VariableArrayElement$Item;->mValue:Ljava/lang/Object;

    .line 69
    aput-object v2, v0, v1

    .line 71
    add-int/lit8 v1, v1, 0x1

    .line 73
    goto :goto_1

    .line 75
    :cond_2
    return-void
    .line 76
.end method

.method public registerVarObserver(Lcom/miui/maml/elements/VariableArrayElement$VarObserver;Z)V
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 7
    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mData:[Ljava/lang/Object;

    .line 12
    invoke-interface {p1, p0}, Lcom/miui/maml/elements/VariableArrayElement$VarObserver;->onDataChange([Ljava/lang/Object;)V

    .line 14
    goto :goto_0

    .line 17
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/VariableArrayElement;->mVarObserver:Ljava/util/HashSet;

    .line 18
    invoke-virtual {p0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 20
    :goto_0
    return-void
    .line 23
.end method
