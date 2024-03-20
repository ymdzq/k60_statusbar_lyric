.class Lcom/miui/maml/elements/ListScreenElement$ListItemElement;
.super Lcom/miui/maml/elements/ElementGroup;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Item"


# instance fields
.field private mDataIndex:I

.field private mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

.field protected mNode:Lorg/w3c/dom/Element;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    const/4 p2, -0x1

    .line 5
    iput p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mNode:Lorg/w3c/dom/Element;

    .line 8
    const-string p1, "divider"

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 12
    move-result-object p1

    .line 15
    instance-of p2, p1, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 16
    if-eqz p2, :cond_0

    .line 18
    move-object p2, p1

    .line 20
    check-cast p2, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 21
    iput-object p2, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 23
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->removeElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 25
    iget-object p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 28
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 30
    :cond_0
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 35
    return-void
    .line 37
.end method


# virtual methods
.method public getDataIndex()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 2
    return p0
    .line 4
.end method

.method public setDataIndex(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDataIndex:I

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/ListScreenElement$ListItemElement;->mDivider:Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 4
    if-eqz p0, :cond_1

    .line 6
    if-gtz p1, :cond_0

    .line 8
    const/4 p1, 0x0

    .line 10
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 11
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x1

    .line 15
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 16
    :cond_1
    :goto_0
    return-void
    .line 19
.end method
