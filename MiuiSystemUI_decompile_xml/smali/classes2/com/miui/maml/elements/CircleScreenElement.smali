.class public Lcom/miui/maml/elements/CircleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field private static final PROPERTY_NAME_R:Ljava/lang/String; = "r"

.field public static final R:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TAG_NAME:Ljava/lang/String; = "Circle"


# instance fields
.field private mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/miui/maml/elements/CircleScreenElement$1;

    .line 2
    const-string v1, "r"

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/CircleScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/miui/maml/elements/CircleScreenElement;->R:Lcom/miui/maml/folme/AnimatedProperty;

    .line 9
    sget-object v2, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 11
    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 16
    const/16 v2, 0x3e9

    .line 18
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 20
    move-result-object v2

    .line 23
    invoke-virtual {v1, v2, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 27
    invoke-virtual {v1, v0, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 8

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 5
    move-result-object v0

    .line 8
    const-string v1, "r"

    .line 9
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    move-result-object p1

    .line 14
    invoke-static {v0, p1}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v4

    .line 18
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 19
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 21
    sget-object p1, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 23
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 25
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 27
    new-instance v0, Ljava/lang/StringBuilder;

    .line 29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 31
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 34
    const-string v2, ".r"

    .line 36
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 38
    move-result-object v2

    .line 41
    invoke-virtual {p2}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 42
    move-result-object v3

    .line 45
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 46
    move-result v5

    .line 49
    const-wide/16 v6, 0x0

    .line 50
    move-object v1, p1

    .line 52
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 53
    iput-object p1, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 56
    return-void
    .line 58
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/CircleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method private final getRadius()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 8
    move-result p0

    .line 11
    return p0
    .line 12
.end method


# virtual methods
.method public initProperties()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/CircleScreenElement;->mRadiusProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 7
    return-void
    .line 10
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/miui/maml/elements/CircleScreenElement;->getRadius()F

    .line 2
    move-result v0

    .line 5
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 6
    const/high16 v2, 0x40000000    # 2.0f

    .line 8
    if-ne p2, v1, :cond_0

    .line 10
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 12
    div-float/2addr p2, v2

    .line 14
    add-float/2addr v0, p2

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    sget-object v1, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 17
    if-ne p2, v1, :cond_1

    .line 19
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 21
    div-float/2addr p2, v2

    .line 23
    sub-float/2addr v0, p2

    .line 24
    :cond_1
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 25
    const/4 p2, 0x0

    .line 27
    invoke-virtual {p1, p2, p2, v0, p0}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 28
    return-void
    .line 31
.end method
