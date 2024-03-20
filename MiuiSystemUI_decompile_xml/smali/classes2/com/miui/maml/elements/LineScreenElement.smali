.class public Lcom/miui/maml/elements/LineScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Line"


# instance fields
.field private mEndXExp:Lcom/miui/maml/data/Expression;

.field private mEndYExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v0

    .line 8
    const-string/jumbo v1, "x1"

    .line 9
    invoke-interface {p1, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 12
    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 16
    move-result-object v0

    .line 19
    iput-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 20
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 22
    move-result-object p2

    .line 25
    const-string/jumbo v0, "y1"

    .line 26
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object p1

    .line 32
    invoke-static {p2, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 33
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 37
    return-void
    .line 39
.end method

.method private final getEndX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndXExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method

.method private final getEndY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/LineScreenElement;->mEndYExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-wide/16 v0, 0x0

    .line 11
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 13
    move-result p0

    .line 16
    return p0
    .line 17
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 6

    .line 1
    const/4 v1, 0x0

    .line 2
    const/4 v2, 0x0

    .line 3
    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndX()F

    .line 4
    move-result p2

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 8
    move-result v0

    .line 11
    sub-float v3, p2, v0

    .line 12
    invoke-direct {p0}, Lcom/miui/maml/elements/LineScreenElement;->getEndY()F

    .line 14
    move-result p2

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 18
    move-result v0

    .line 21
    sub-float v4, p2, v0

    .line 22
    iget-object v5, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 24
    move-object v0, p1

    .line 26
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 27
    return-void
    .line 30
.end method
