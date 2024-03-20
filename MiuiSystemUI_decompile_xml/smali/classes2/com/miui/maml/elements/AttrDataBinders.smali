.class public Lcom/miui/maml/elements/AttrDataBinders;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final ATTR_BITMAP:Ljava/lang/String; = "bitmap"

.field private static final ATTR_NAME:Ljava/lang/String; = "name"

.field private static final ATTR_PARAMS:Ljava/lang/String; = "params"

.field private static final ATTR_PARAS:Ljava/lang/String; = "paras"

.field private static final ATTR_SRC:Ljava/lang/String; = "src"

.field private static final ATTR_SRCID:Ljava/lang/String; = "srcid"

.field private static final ATTR_TEXT:Ljava/lang/String; = "text"

.field private static final LOG_TAG:Ljava/lang/String; = "AttrDataBinders"

.field public static final TAG:Ljava/lang/String; = "AttrDataBinders"


# instance fields
.field private mBinders:Ljava/util/ArrayList;

.field protected mVars:Lcom/miui/maml/data/ContextVariables;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/ContextVariables;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/AttrDataBinders;->mVars:Lcom/miui/maml/data/ContextVariables;

    .line 12
    new-instance p2, Lcom/miui/maml/elements/AttrDataBinders$1;

    .line 14
    invoke-direct {p2, p0}, Lcom/miui/maml/elements/AttrDataBinders$1;-><init>(Lcom/miui/maml/elements/AttrDataBinders;)V

    .line 16
    const-string p0, "AttrDataBinder"

    .line 19
    invoke-static {p1, p0, p2}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 21
    return-void
    .line 24
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/AttrDataBinders;)Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method


# virtual methods
.method public bind(Lcom/miui/maml/elements/ElementGroup;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AttrDataBinders;->mBinders:Ljava/util/ArrayList;

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
    check-cast v0, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;

    .line 18
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/AttrDataBinders$AttrDataBinder;->bind(Lcom/miui/maml/elements/ElementGroup;)Z

    .line 20
    goto :goto_0

    .line 23
    :cond_0
    return-void
    .line 24
.end method
