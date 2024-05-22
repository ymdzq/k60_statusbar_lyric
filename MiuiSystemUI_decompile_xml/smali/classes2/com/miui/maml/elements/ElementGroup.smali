.class public Lcom/miui/maml/elements/ElementGroup;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;

.field private mHovered:Z

.field private mIndexVar:Lcom/miui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

.field private mTouched:Z


# direct methods
.method private constructor <init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V
    .locals 1

    const/4 v0, 0x0

    .line 5
    invoke-direct {p0, v0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 7
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 8
    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 3
    sget-object p2, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    iput-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 4
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    return-void
.end method

.method public static createArrayGroup(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)Lcom/miui/maml/elements/ElementGroup;
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ElementGroup;

    .line 2
    invoke-direct {v0, p0, p1}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lcom/miui/maml/ScreenElementRoot;Lcom/miui/maml/data/IndexedVariable;)V

    .line 4
    return-object v0
    .line 7
.end method

.method public static isArrayGroup(Lcom/miui/maml/elements/ScreenElement;)Z
    .locals 1

    .line 1
    instance-of v0, p0, Lcom/miui/maml/elements/ElementGroup;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p0, Lcom/miui/maml/elements/ElementGroup;

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->isArray()Z

    .line 8
    move-result p0

    .line 11
    if-eqz p0, :cond_0

    .line 12
    const/4 p0, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 p0, 0x0

    .line 16
    :goto_0
    return p0
    .line 17
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string v0, "clip"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 11
    move-result v0

    .line 14
    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 15
    const-string v0, "layered"

    .line 17
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 23
    move-result v0

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 27
    const-string v0, "linear"

    .line 29
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 31
    move-result-object v0

    .line 34
    const-string v1, "h"

    .line 35
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 37
    move-result v1

    .line 40
    if-eqz v1, :cond_1

    .line 41
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 43
    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    const-string/jumbo v1, "v"

    .line 48
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 51
    move-result v0

    .line 54
    if-eqz v0, :cond_2

    .line 55
    sget-object v0, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 57
    iput-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 59
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    .line 61
    move-result-object p1

    .line 64
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    .line 65
    move-result v0

    .line 68
    const/4 v1, 0x0

    .line 69
    :goto_1
    if-ge v1, v0, :cond_4

    .line 70
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 72
    move-result-object v2

    .line 75
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    .line 76
    move-result v2

    .line 79
    const/4 v3, 0x1

    .line 80
    if-ne v2, v3, :cond_3

    .line 81
    invoke-interface {p1, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    .line 83
    move-result-object v2

    .line 86
    check-cast v2, Lorg/w3c/dom/Element;

    .line 87
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;

    .line 89
    move-result-object v2

    .line 92
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ElementGroup;->addElement(Lcom/miui/maml/elements/ScreenElement;)V

    .line 93
    :cond_3
    add-int/lit8 v1, v1, 0x1

    .line 96
    goto :goto_1

    .line 98
    :cond_4
    return-void
    .line 99
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public addElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 0

    .line 1
    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1, p0}, Lcom/miui/maml/elements/ScreenElement;->setParent(Lcom/miui/maml/elements/ElementGroup;)V

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public doRender(Landroid/graphics/Canvas;)V
    .locals 12

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    move-result v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {p0, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 11
    move-result v10

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 15
    move-result v11

    .line 18
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 19
    if-eqz v3, :cond_0

    .line 21
    cmpl-float v3, v0, v2

    .line 23
    if-lez v3, :cond_0

    .line 25
    cmpl-float v3, v1, v2

    .line 27
    if-lez v3, :cond_0

    .line 29
    add-float v6, v10, v0

    .line 31
    add-float v7, v11, v1

    .line 33
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 35
    move-result v8

    .line 38
    const/16 v9, 0x1f

    .line 39
    move-object v3, p1

    .line 41
    move v4, v10

    .line 42
    move v5, v11

    .line 43
    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    .line 44
    move-result v3

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 49
    move-result v3

    .line 52
    :goto_0
    invoke-virtual {p1, v10, v11}, Landroid/graphics/Canvas;->translate(FF)V

    .line 53
    cmpl-float v4, v0, v2

    .line 56
    if-lez v4, :cond_1

    .line 58
    cmpl-float v4, v1, v2

    .line 60
    if-lez v4, :cond_1

    .line 62
    iget-boolean v4, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 64
    if-eqz v4, :cond_1

    .line 66
    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 68
    :cond_1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    .line 71
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 74
    return-void
    .line 77
.end method

.method public doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    :goto_0
    if-ge v1, v0, :cond_1

    .line 9
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 11
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 13
    move-result-object v2

    .line 16
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 17
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 19
    if-eqz v3, :cond_0

    .line 21
    int-to-double v4, v1

    .line 23
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 24
    :cond_0
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 27
    add-int/lit8 v1, v1, 0x1

    .line 30
    goto :goto_0

    .line 32
    :cond_1
    return-void
    .line 33
.end method

.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;->doTickChildren(J)V

    .line 5
    return-void
    .line 8
.end method

.method public doTickChildren(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result v0

    .line 7
    const/4 v1, 0x0

    .line 8
    const/4 v2, 0x0

    .line 9
    move v3, v2

    .line 10
    move v2, v1

    .line 11
    :goto_0
    const/4 v4, 0x2

    .line 12
    const/4 v5, 0x1

    .line 13
    if-ge v3, v0, :cond_5

    .line 14
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v6

    .line 21
    check-cast v6, Lcom/miui/maml/elements/ScreenElement;

    .line 22
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 24
    if-eqz v7, :cond_0

    .line 26
    int-to-double v8, v3

    .line 28
    invoke-virtual {v7, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 29
    :cond_0
    invoke-virtual {v6, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->tick(J)V

    .line 32
    iget-object v7, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 35
    sget-object v8, Lcom/miui/maml/elements/ElementGroup$LinearDirection;->None:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 37
    if-eq v7, v8, :cond_4

    .line 39
    instance-of v7, v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 41
    if-eqz v7, :cond_4

    .line 43
    invoke-virtual {v6}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 45
    move-result v7

    .line 48
    if-eqz v7, :cond_4

    .line 49
    check-cast v6, Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 51
    sget-object v7, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    .line 53
    iget-object v8, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 55
    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    .line 57
    move-result v8

    .line 60
    aget v7, v7, v8

    .line 61
    if-eq v7, v5, :cond_2

    .line 63
    if-eq v7, v4, :cond_1

    .line 65
    goto :goto_2

    .line 67
    :cond_1
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    .line 68
    move-result v4

    .line 71
    add-float/2addr v4, v1

    .line 72
    float-to-double v7, v4

    .line 73
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 74
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 77
    move-result v1

    .line 80
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    .line 81
    move-result v5

    .line 84
    add-float/2addr v5, v1

    .line 85
    add-float/2addr v5, v4

    .line 86
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 87
    move-result v1

    .line 90
    cmpg-float v4, v2, v1

    .line 91
    if-gez v4, :cond_3

    .line 93
    goto :goto_1

    .line 95
    :cond_2
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    .line 96
    move-result v4

    .line 99
    add-float/2addr v4, v1

    .line 100
    float-to-double v7, v4

    .line 101
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/elements/AnimatedScreenElement;->setX(D)V

    .line 102
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 105
    move-result v1

    .line 108
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    .line 109
    move-result v5

    .line 112
    add-float/2addr v5, v1

    .line 113
    add-float/2addr v5, v4

    .line 114
    invoke-virtual {v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 115
    move-result v1

    .line 118
    cmpg-float v4, v2, v1

    .line 119
    if-gez v4, :cond_3

    .line 121
    :goto_1
    move v2, v1

    .line 123
    :cond_3
    move v1, v5

    .line 124
    :cond_4
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 125
    goto :goto_0

    .line 127
    :cond_5
    sget-object p1, Lcom/miui/maml/elements/ElementGroup$1;->$SwitchMap$com$miui$maml$elements$ElementGroup$LinearDirection:[I

    .line 128
    iget-object p2, p0, Lcom/miui/maml/elements/ElementGroup;->mLinearDirection:Lcom/miui/maml/elements/ElementGroup$LinearDirection;

    .line 130
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    .line 132
    move-result p2

    .line 135
    aget p1, p1, p2

    .line 136
    if-eq p1, v5, :cond_7

    .line 138
    if-eq p1, v4, :cond_6

    .line 140
    goto :goto_3

    .line 142
    :cond_6
    float-to-double p1, v1

    .line 143
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 144
    float-to-double v0, v2

    .line 147
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setWidth(D)V

    .line 148
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 151
    move-result-wide p1

    .line 154
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 155
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 158
    move-result-wide p1

    .line 161
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 162
    goto :goto_3

    .line 165
    :cond_7
    float-to-double p1, v1

    .line 166
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->setWidth(D)V

    .line 167
    float-to-double v0, v2

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setHeight(D)V

    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 174
    move-result-wide p1

    .line 177
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualWidth(D)V

    .line 178
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 181
    move-result-wide p1

    .line 184
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->setActualHeight(D)V

    .line 185
    :goto_3
    return-void
    .line 188
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 2
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    return-object v0

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_2

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 24
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 26
    move-result-object v2

    .line 29
    if-eqz v2, :cond_1

    .line 30
    return-object v2

    .line 32
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_2
    const/4 p0, 0x0

    .line 36
    return-object p0
    .line 37
.end method

.method public finish()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 22
    goto :goto_1

    .line 25
    :catch_0
    move-exception v2

    .line 26
    const-string v3, "MAML_ElementGroup"

    .line 27
    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    .line 29
    move-result-object v4

    .line 32
    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 36
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 39
    goto :goto_0

    .line 41
    :cond_0
    return-void
    .line 42
.end method

.method public getChild(I)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 1
    if-ltz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    if-lt p1, v0, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object p0

    .line 18
    check-cast p0, Lcom/miui/maml/elements/ScreenElement;

    .line 19
    return-object p0

    .line 21
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 22
    return-object p0
    .line 23
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public getParentLeft()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    .line 12
    move-result p0

    .line 15
    :goto_0
    add-float/2addr v0, p0

    .line 16
    return v0
    .line 17
.end method

.method public getParentTop()F
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 2
    move-result v0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 6
    if-nez p0, :cond_0

    .line 8
    const/4 p0, 0x0

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    .line 12
    move-result p0

    .line 15
    :goto_0
    add-float/2addr v0, p0

    .line 16
    return v0
    .line 17
.end method

.method public getSize()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public init()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    int-to-double v3, v1

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 28
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public isArray()Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    const/4 p0, 0x0

    .line 8
    :goto_0
    return p0
    .line 9
.end method

.method public isLayered()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/ElementGroup;->mLayered:Z

    .line 2
    return p0
    .line 4
.end method

.method public onCreateChild(Lorg/w3c/dom/Element;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mFactory:Lcom/miui/maml/elements/ScreenElementFactory;

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 8
    invoke-virtual {v0, p1, p0}, Lcom/miui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 7

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 18
    move-result v0

    .line 21
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 22
    if-eqz v2, :cond_2

    .line 24
    if-nez v0, :cond_2

    .line 26
    iget-boolean v0, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    .line 28
    if-nez v0, :cond_1

    .line 30
    return v1

    .line 32
    :cond_1
    const/16 v0, 0xa

    .line 33
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 35
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 38
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result v0

    .line 43
    const/4 v2, 0x1

    .line 44
    sub-int/2addr v0, v2

    .line 45
    :goto_0
    if-ltz v0, :cond_5

    .line 46
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 48
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 50
    move-result-object v3

    .line 53
    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 54
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 56
    if-eqz v4, :cond_3

    .line 58
    int-to-double v5, v0

    .line 60
    invoke-virtual {v4, v5, v6}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 61
    :cond_3
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 64
    move-result v3

    .line 67
    if-eqz v3, :cond_4

    .line 68
    move v1, v2

    .line 70
    goto :goto_1

    .line 71
    :cond_4
    add-int/lit8 v0, v0, -0x1

    .line 72
    goto :goto_0

    .line 74
    :cond_5
    :goto_1
    if-eqz v1, :cond_6

    .line 75
    goto :goto_2

    .line 77
    :cond_6
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 78
    move-result v2

    .line 81
    :goto_2
    iput-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mHovered:Z

    .line 82
    return v2
    .line 84
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 9

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    return v1

    .line 9
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    .line 10
    move-result v0

    .line 13
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 14
    move-result v2

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 18
    move-result v3

    .line 21
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 22
    move-result v2

    .line 25
    iget-boolean v3, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 26
    if-eqz v3, :cond_2

    .line 28
    if-nez v2, :cond_2

    .line 30
    iget-boolean v2, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    .line 32
    if-nez v2, :cond_1

    .line 34
    return v1

    .line 36
    :cond_1
    const/4 v2, 0x3

    .line 37
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setAction(I)V

    .line 38
    :cond_2
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v2

    .line 46
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 47
    invoke-virtual {v3}, Lcom/miui/maml/ScreenElementRoot;->version()I

    .line 49
    move-result v3

    .line 52
    const/4 v4, 0x2

    .line 53
    const/4 v5, 0x1

    .line 54
    if-lt v3, v4, :cond_3

    .line 55
    move v3, v5

    .line 57
    goto :goto_0

    .line 58
    :cond_3
    move v3, v1

    .line 59
    :goto_0
    if-eqz v3, :cond_6

    .line 60
    sub-int/2addr v2, v5

    .line 62
    :goto_1
    if-ltz v2, :cond_9

    .line 63
    iget-object v3, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 65
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 67
    move-result-object v3

    .line 70
    check-cast v3, Lcom/miui/maml/elements/ScreenElement;

    .line 71
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 73
    if-eqz v4, :cond_4

    .line 75
    int-to-double v6, v2

    .line 77
    invoke-virtual {v4, v6, v7}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 78
    :cond_4
    invoke-virtual {v3, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 81
    move-result v3

    .line 84
    if-eqz v3, :cond_5

    .line 85
    goto :goto_3

    .line 87
    :cond_5
    add-int/lit8 v2, v2, -0x1

    .line 88
    goto :goto_1

    .line 90
    :cond_6
    move v3, v1

    .line 91
    :goto_2
    if-ge v3, v2, :cond_9

    .line 92
    iget-object v4, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 94
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 96
    move-result-object v4

    .line 99
    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    .line 100
    iget-object v6, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 102
    if-eqz v6, :cond_7

    .line 104
    int-to-double v7, v3

    .line 106
    invoke-virtual {v6, v7, v8}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 107
    :cond_7
    invoke-virtual {v4, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 110
    move-result v4

    .line 113
    if-eqz v4, :cond_8

    .line 114
    :goto_3
    move v1, v5

    .line 116
    goto :goto_4

    .line 117
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 118
    goto :goto_2

    .line 120
    :cond_9
    :goto_4
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 121
    if-eqz v1, :cond_a

    .line 124
    goto :goto_5

    .line 126
    :cond_a
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 127
    move-result v5

    .line 130
    :goto_5
    iput-boolean v5, p0, Lcom/miui/maml/elements/ElementGroup;->mTouched:Z

    .line 131
    return v5
    .line 133
.end method

.method public onVisibilityChange(Z)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result p1

    .line 10
    const/4 v0, 0x0

    .line 11
    :goto_0
    if-ge v0, p1, :cond_0

    .line 12
    iget-object v1, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v1

    .line 19
    check-cast v1, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v1}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 22
    add-int/lit8 v0, v0, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public pause()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->pause()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public pauseAnim(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public playAnim(JJJZZ)V
    .locals 13

    .line 1
    move-object v0, p0

    .line 2
    invoke-super/range {p0 .. p8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 3
    iget-object v1, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 8
    move-result v1

    .line 11
    const/4 v2, 0x0

    .line 12
    :goto_0
    if-ge v2, v1, :cond_1

    .line 13
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 15
    if-eqz v3, :cond_0

    .line 17
    int-to-double v4, v2

    .line 19
    invoke-virtual {v3, v4, v5}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 20
    :cond_0
    iget-object v3, v0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v3

    .line 28
    move-object v4, v3

    .line 29
    check-cast v4, Lcom/miui/maml/elements/ScreenElement;

    .line 30
    move-wide v5, p1

    .line 32
    move-wide/from16 v7, p3

    .line 33
    move-wide/from16 v9, p5

    .line 35
    move/from16 v11, p7

    .line 37
    move/from16 v12, p8

    .line 39
    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 41
    add-int/lit8 v2, v2, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public removeAllElements()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 7
    return-void
    .line 10
.end method

.method public removeElement(Lcom/miui/maml/elements/ScreenElement;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 7
    return-void
    .line 10
.end method

.method public reset(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public resume()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->resume()V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public resumeAnim(J)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mIndexVar:Lcom/miui/maml/data/IndexedVariable;

    .line 14
    if-eqz v2, :cond_0

    .line 16
    int-to-double v3, v1

    .line 18
    invoke-virtual {v2, v3, v4}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 19
    :cond_0
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 28
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 30
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public setClip(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/ElementGroup;->mClip:Z

    .line 2
    return-void
    .line 4
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1}, Lcom/miui/maml/elements/ScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_0

    .line 12
    iget-object v2, p0, Lcom/miui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 16
    move-result-object v2

    .line 19
    check-cast v2, Lcom/miui/maml/elements/ScreenElement;

    .line 20
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 22
    add-int/lit8 v1, v1, 0x1

    .line 25
    goto :goto_0

    .line 27
    :cond_0
    return-void
    .line 28
.end method
