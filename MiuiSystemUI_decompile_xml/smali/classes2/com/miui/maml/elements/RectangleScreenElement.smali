.class public Lcom/miui/maml/elements/RectangleScreenElement;
.super Lcom/miui/maml/elements/GeometryScreenElement;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "RectangleScreenElement"

.field private static final PROPERTY_NAME_CORNER_RADIUS_X:Ljava/lang/String; = "cornerRadiusX"

.field private static final PROPERTY_NAME_CORNER_RADIUS_Y:Ljava/lang/String; = "cornerRadiusY"

.field public static final TAG_NAME:Ljava/lang/String; = "Rectangle"


# instance fields
.field private mCornerRadiusX:F

.field private mCornerRadiusY:F

.field private mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    .line 1
    new-instance v0, Lcom/miui/maml/elements/RectangleScreenElement$1;

    .line 2
    const-string v1, "cornerRadiusX"

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/RectangleScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_X:Lcom/miui/maml/folme/AnimatedProperty;

    .line 9
    new-instance v2, Lcom/miui/maml/elements/RectangleScreenElement$2;

    .line 11
    const-string v3, "cornerRadiusY"

    .line 13
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/RectangleScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v2, Lcom/miui/maml/elements/RectangleScreenElement;->CORNER_RADIUS_Y:Lcom/miui/maml/folme/AnimatedProperty;

    .line 18
    sget-object v4, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 20
    invoke-virtual {v4, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 25
    const/16 v4, 0x3ec

    .line 27
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 29
    move-result-object v4

    .line 32
    invoke-virtual {v1, v4, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    const/16 v4, 0x3ee

    .line 38
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v4

    .line 43
    invoke-virtual {v1, v0, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    const/16 v1, 0x3ed

    .line 54
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    move-result-object v1

    .line 59
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 63
    const/16 v1, 0x3ef

    .line 65
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 67
    move-result-object v1

    .line 70
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    return-void
    .line 74
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/RectangleScreenElement;->resolveCornerRadius(Lorg/w3c/dom/Element;)V

    .line 5
    return-void
    .line 8
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/RectangleScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method private resolveCornerRadius(Lorg/w3c/dom/Element;)V
    .locals 14

    .line 1
    const-string v0, "cornerRadiusExp"

    .line 2
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object v0

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 8
    move-result-object v1

    .line 11
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->buildMultiple(Lcom/miui/maml/data/Variables;Ljava/lang/String;)[Lcom/miui/maml/data/Expression;

    .line 12
    move-result-object v0

    .line 15
    const/4 v1, 0x0

    .line 16
    const/4 v2, 0x1

    .line 17
    if-nez v0, :cond_2

    .line 18
    const-string v3, "cornerRadius"

    .line 20
    invoke-virtual {p0, p1, v3}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object p1

    .line 25
    const-string v3, ","

    .line 26
    invoke-virtual {p1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    move-result-object p1

    .line 31
    :try_start_0
    array-length v3, p1

    .line 32
    if-ge v3, v2, :cond_0

    .line 33
    return-void

    .line 35
    :cond_0
    array-length v3, p1

    .line 36
    if-ne v3, v2, :cond_1

    .line 37
    aget-object p1, p1, v1

    .line 39
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 41
    move-result p1

    .line 44
    float-to-double v3, p1

    .line 45
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 46
    move-result p1

    .line 49
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 50
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 52
    goto :goto_0

    .line 54
    :cond_1
    aget-object v3, p1, v1

    .line 55
    invoke-static {v3}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 57
    move-result v3

    .line 60
    float-to-double v3, v3

    .line 61
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 62
    move-result v3

    .line 65
    iput v3, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 66
    aget-object p1, p1, v2

    .line 68
    invoke-static {p1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 70
    move-result p1

    .line 73
    float-to-double v3, p1

    .line 74
    invoke-virtual {p0, v3, v4}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_0

    .line 81
    :catch_0
    const-string p1, "RectangleScreenElement"

    .line 82
    const-string v3, "illegal number format of cornerRadius."

    .line 84
    invoke-static {p1, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    :cond_2
    :goto_0
    if-eqz v0, :cond_3

    .line 89
    array-length p1, v0

    .line 91
    if-lez p1, :cond_3

    .line 92
    aget-object p1, v0, v1

    .line 94
    goto :goto_1

    .line 96
    :cond_3
    const/4 p1, 0x0

    .line 97
    :goto_1
    move-object v6, p1

    .line 98
    if-eqz v0, :cond_4

    .line 99
    array-length p1, v0

    .line 101
    if-le p1, v2, :cond_4

    .line 102
    aget-object p1, v0, v2

    .line 104
    move-object v10, p1

    .line 106
    goto :goto_2

    .line 107
    :cond_4
    move-object v10, v6

    .line 108
    :goto_2
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 109
    new-instance v0, Ljava/lang/StringBuilder;

    .line 111
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 113
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 116
    const-string v2, ".cornerRadiusX"

    .line 118
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v4

    .line 123
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 124
    move-result-object v5

    .line 127
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 128
    move-result v7

    .line 131
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 132
    float-to-double v0, v0

    .line 134
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 135
    move-result-wide v8

    .line 138
    move-object v3, p1

    .line 139
    invoke-direct/range {v3 .. v9}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 140
    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 143
    new-instance p1, Lcom/miui/maml/folme/PropertyWrapper;

    .line 145
    new-instance v0, Ljava/lang/StringBuilder;

    .line 147
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 149
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 152
    const-string v2, ".cornerRadiusY"

    .line 154
    invoke-static {v0, v1, v2}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 156
    move-result-object v8

    .line 159
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 160
    move-result-object v9

    .line 163
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 164
    move-result v11

    .line 167
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 168
    float-to-double v0, v0

    .line 170
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 171
    move-result-wide v12

    .line 174
    move-object v7, p1

    .line 175
    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 176
    iput-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 179
    return-void
    .line 181
.end method


# virtual methods
.method public doTick(J)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 2
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 5
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 7
    move-result-wide p1

    .line 10
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 11
    move-result p1

    .line 14
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 15
    iget-object p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 17
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 19
    move-result-wide p1

    .line 22
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 23
    move-result p1

    .line 26
    iput p1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 27
    return-void
    .line 29
.end method

.method public initProperties()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/GeometryScreenElement;->initProperties()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 7
    iget-object p0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mRYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 10
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 12
    return-void
    .line 15
.end method

.method public onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 11

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
    move-result v3

    .line 14
    invoke-virtual {p0, v2, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 15
    move-result v4

    .line 18
    cmpl-float v5, v0, v2

    .line 19
    if-lez v5, :cond_0

    .line 21
    goto :goto_0

    .line 23
    :cond_0
    move v0, v2

    .line 24
    :goto_0
    add-float/2addr v0, v3

    .line 25
    cmpl-float v5, v1, v2

    .line 26
    if-lez v5, :cond_1

    .line 28
    goto :goto_1

    .line 30
    :cond_1
    move v1, v2

    .line 31
    :goto_1
    add-float/2addr v1, v4

    .line 32
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_OUTER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 33
    const/high16 v6, 0x40000000    # 2.0f

    .line 35
    if-ne p2, v5, :cond_2

    .line 37
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 39
    div-float v5, p2, v6

    .line 41
    sub-float/2addr v3, v5

    .line 43
    div-float v5, p2, v6

    .line 44
    sub-float/2addr v4, v5

    .line 46
    div-float v5, p2, v6

    .line 47
    add-float/2addr v0, v5

    .line 49
    div-float/2addr p2, v6

    .line 50
    add-float/2addr v1, p2

    .line 51
    goto :goto_2

    .line 52
    :cond_2
    sget-object v5, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->STROKE_INNER:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 53
    if-ne p2, v5, :cond_3

    .line 55
    iget p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 57
    div-float v5, p2, v6

    .line 59
    add-float/2addr v3, v5

    .line 61
    div-float v5, p2, v6

    .line 62
    add-float/2addr v4, v5

    .line 64
    div-float v5, p2, v6

    .line 65
    sub-float/2addr v0, v5

    .line 67
    div-float/2addr p2, v6

    .line 68
    sub-float/2addr v1, p2

    .line 69
    :cond_3
    :goto_2
    move v8, v0

    .line 70
    move v9, v1

    .line 71
    move v6, v3

    .line 72
    move v7, v4

    .line 73
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 74
    cmpg-float p2, p2, v2

    .line 76
    if-lez p2, :cond_5

    .line 78
    iget p2, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 80
    cmpg-float p2, p2, v2

    .line 82
    if-gtz p2, :cond_4

    .line 84
    goto :goto_3

    .line 86
    :cond_4
    new-instance p2, Landroid/graphics/RectF;

    .line 87
    invoke-direct {p2, v6, v7, v8, v9}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 89
    iget v0, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusX:F

    .line 92
    iget v1, p0, Lcom/miui/maml/elements/RectangleScreenElement;->mCornerRadiusY:F

    .line 94
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 96
    invoke-virtual {p1, p2, v0, v1, p0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 98
    goto :goto_4

    .line 101
    :cond_5
    :goto_3
    iget-object v10, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 102
    move-object v5, p1

    .line 104
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    :goto_4
    return-void
    .line 108
.end method
