.class public abstract Lcom/miui/maml/elements/GeometryScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field private static final LOG_TAG:Ljava/lang/String; = "GeometryScreenElement"

.field private static final PROPERTY_NAME_FILL_COLOR:Ljava/lang/String; = "fillColor"

.field private static final PROPERTY_NAME_STROKE_COLOR:Ljava/lang/String; = "strokeColor"

.field private static final PROPERTY_NAME_STROKE_WEIGHT:Ljava/lang/String; = "strokeWeight"

.field public static final STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;


# instance fields
.field private mFillColor:I

.field protected mFillColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field protected mPaint:Landroid/graphics/Paint;

.field private final mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

.field private mStrokeColor:I

.field protected mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

.field private mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

.field private mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mWeight:F

.field protected mXfermodeNumExp:Lcom/miui/maml/data/Expression;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/miui/maml/elements/GeometryScreenElement$1;

    .line 2
    const-string v1, "fillColor"

    .line 4
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/GeometryScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Lcom/miui/maml/elements/GeometryScreenElement;->FILL_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 9
    new-instance v2, Lcom/miui/maml/elements/GeometryScreenElement$2;

    .line 11
    const-string/jumbo v3, "strokeColor"

    .line 13
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/GeometryScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 16
    sput-object v2, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 19
    new-instance v4, Lcom/miui/maml/elements/GeometryScreenElement$3;

    .line 21
    const-string/jumbo v5, "strokeWeight"

    .line 23
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/GeometryScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 26
    sput-object v4, Lcom/miui/maml/elements/GeometryScreenElement;->STROKE_WEIGHT:Lcom/miui/maml/folme/AnimatedProperty;

    .line 29
    sget-object v6, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 31
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 36
    const/16 v6, 0x3ec

    .line 38
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 40
    move-result-object v6

    .line 43
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 44
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 47
    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 52
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 57
    const/16 v1, 0x3ed

    .line 59
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 61
    move-result-object v1

    .line 64
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 68
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 73
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 78
    const/16 v1, 0x3f4

    .line 80
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 82
    move-result-object v1

    .line 85
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 89
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
    .line 94
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 22

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 6
    new-instance v2, Landroid/graphics/Paint;

    .line 9
    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    .line 11
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 14
    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 16
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 18
    move-result v2

    .line 21
    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 22
    const-string/jumbo v2, "strokeColor"

    .line 24
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 27
    move-result-object v2

    .line 30
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 31
    move-result-object v3

    .line 34
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 35
    move-result v4

    .line 38
    if-nez v4, :cond_0

    .line 39
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 41
    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 43
    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 46
    :cond_0
    const-string v2, "fillColor"

    .line 48
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v2

    .line 53
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 54
    move-result v4

    .line 57
    if-nez v4, :cond_1

    .line 58
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 60
    invoke-direct {v4, v3, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 62
    iput-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 65
    :cond_1
    const-string/jumbo v2, "weight"

    .line 67
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 70
    move-result-object v2

    .line 73
    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 74
    move-result-object v7

    .line 77
    const-string v2, "cap"

    .line 78
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 80
    move-result-object v2

    .line 83
    invoke-direct {v0, v2}, Lcom/miui/maml/elements/GeometryScreenElement;->getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;

    .line 84
    move-result-object v2

    .line 87
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 88
    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 90
    invoke-direct/range {p0 .. p1}, Lcom/miui/maml/elements/GeometryScreenElement;->resolveDashIntervals(Lorg/w3c/dom/Element;)[F

    .line 93
    move-result-object v2

    .line 96
    if-eqz v2, :cond_2

    .line 97
    iget-object v4, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 99
    new-instance v5, Landroid/graphics/DashPathEffect;

    .line 101
    const/4 v6, 0x0

    .line 103
    invoke-direct {v5, v2, v6}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    .line 104
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 107
    :cond_2
    const-string/jumbo v2, "strokeAlign"

    .line 110
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 113
    move-result-object v2

    .line 116
    invoke-static {v2}, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->getStrokeAlign(Ljava/lang/String;)Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 117
    move-result-object v2

    .line 120
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 121
    const-string/jumbo v2, "xfermodeNum"

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 126
    move-result-object v2

    .line 129
    invoke-static {v3, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 130
    move-result-object v2

    .line 133
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 134
    if-nez v2, :cond_3

    .line 136
    const-string/jumbo v2, "xfermode"

    .line 138
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v2

    .line 144
    invoke-static {v2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    .line 145
    move-result-object v2

    .line 148
    iget-object v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 149
    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    .line 151
    invoke-direct {v4, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 153
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 156
    :cond_3
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 159
    const/4 v3, 0x1

    .line 161
    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 162
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 165
    const/4 v3, 0x0

    .line 167
    if-eqz v2, :cond_4

    .line 168
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 170
    move-result v2

    .line 173
    goto :goto_0

    .line 174
    :cond_4
    move v2, v3

    .line 175
    :goto_0
    iput v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 176
    iget-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 178
    if-eqz v2, :cond_5

    .line 180
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 182
    move-result v3

    .line 185
    :cond_5
    iput v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 186
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 188
    new-instance v3, Ljava/lang/StringBuilder;

    .line 190
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 192
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 195
    const-string v5, ".fillColor"

    .line 197
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v9

    .line 202
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 203
    move-result-object v10

    .line 206
    const/4 v11, 0x0

    .line 207
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 208
    move-result v12

    .line 211
    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 212
    int-to-double v13, v3

    .line 214
    move-object v8, v2

    .line 215
    invoke-direct/range {v8 .. v14}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 216
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 219
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 221
    new-instance v3, Ljava/lang/StringBuilder;

    .line 223
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 228
    const-string v5, ".strokeColor"

    .line 230
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 232
    move-result-object v16

    .line 235
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 236
    move-result-object v17

    .line 239
    const/16 v18, 0x0

    .line 240
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 242
    move-result v19

    .line 245
    iget v3, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 246
    int-to-double v3, v3

    .line 248
    move-object v15, v2

    .line 249
    move-wide/from16 v20, v3

    .line 250
    invoke-direct/range {v15 .. v21}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 252
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 255
    new-instance v2, Lcom/miui/maml/folme/PropertyWrapper;

    .line 257
    new-instance v3, Ljava/lang/StringBuilder;

    .line 259
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 261
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 264
    const-string v5, ".strokeWeight"

    .line 266
    invoke-static {v3, v4, v5}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 268
    move-result-object v5

    .line 271
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 272
    move-result-object v6

    .line 275
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 276
    move-result v8

    .line 279
    const-wide/16 v9, 0x0

    .line 280
    move-object v4, v2

    .line 282
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 283
    iput-object v2, v0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 286
    invoke-direct/range {p0 .. p2}, Lcom/miui/maml/elements/GeometryScreenElement;->loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 288
    return-void
    .line 291
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/GeometryScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method private final getCap(Ljava/lang/String;)Landroid/graphics/Paint$Cap;
    .locals 1

    .line 1
    sget-object p0, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-object p0

    .line 10
    :cond_0
    const-string v0, "round"

    .line 11
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 13
    move-result v0

    .line 16
    if-eqz v0, :cond_1

    .line 17
    sget-object p0, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    const-string/jumbo v0, "square"

    .line 22
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 25
    move-result p1

    .line 28
    if-eqz p1, :cond_2

    .line 29
    sget-object p0, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    .line 31
    :cond_2
    :goto_0
    return-object p0
    .line 33
.end method

.method private loadShadersElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    const-string v0, "StrokeShaders"

    .line 2
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance v1, Lcom/miui/maml/shader/ShadersElement;

    .line 10
    invoke-direct {v1, v0, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 12
    iput-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 15
    :cond_0
    const-string v0, "FillShaders"

    .line 17
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 19
    move-result-object p1

    .line 22
    if-eqz p1, :cond_1

    .line 23
    new-instance v0, Lcom/miui/maml/shader/ShadersElement;

    .line 25
    invoke-direct {v0, p1, p2}, Lcom/miui/maml/shader/ShadersElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 27
    iput-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 30
    :cond_1
    return-void
    .line 32
.end method

.method private resolveDashIntervals(Lorg/w3c/dom/Element;)[F
    .locals 3

    .line 1
    const-string v0, "dash"

    .line 2
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 8
    move-result p1

    .line 11
    const/4 v0, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    return-object v0

    .line 15
    :cond_0
    const-string p1, ","

    .line 16
    invoke-virtual {p0, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    array-length p1, p0

    .line 22
    const/4 v1, 0x2

    .line 23
    if-lt p1, v1, :cond_2

    .line 24
    array-length p1, p0

    .line 26
    rem-int/2addr p1, v1

    .line 27
    if-nez p1, :cond_2

    .line 28
    array-length p1, p0

    .line 30
    new-array p1, p1, [F

    .line 31
    const/4 v1, 0x0

    .line 33
    :goto_0
    array-length v2, p0

    .line 34
    if-ge v1, v2, :cond_1

    .line 35
    :try_start_0
    aget-object v2, p0, v1

    .line 37
    invoke-static {v2}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 39
    move-result v2

    .line 42
    aput v2, p1, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 47
    :catch_0
    return-object v0

    .line 48
    :cond_1
    return-object p1

    .line 49
    :cond_2
    return-object v0
    .line 50
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 2
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 7
    if-eqz v0, :cond_2

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 11
    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    .line 13
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 18
    if-eqz v0, :cond_1

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    .line 24
    move-result-object v0

    .line 27
    invoke-virtual {v2, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 28
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 33
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 35
    goto :goto_0

    .line 38
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 39
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 41
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 44
    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 46
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 48
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 51
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 53
    move-result v2

    .line 56
    iget v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 57
    invoke-static {v2, v3}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 59
    move-result v2

    .line 62
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 63
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;->FILL:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 66
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 68
    :cond_2
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 71
    const/4 v2, 0x0

    .line 73
    cmpl-float v0, v0, v2

    .line 74
    if-lez v0, :cond_5

    .line 76
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 78
    if-nez v0, :cond_3

    .line 80
    iget v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 82
    if-eqz v0, :cond_5

    .line 84
    :cond_3
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 86
    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 88
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 90
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 93
    iget v2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 95
    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 97
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 100
    if-eqz v0, :cond_4

    .line 102
    iget-object v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 104
    invoke-virtual {v0}, Lcom/miui/maml/shader/ShadersElement;->getShader()Landroid/graphics/Shader;

    .line 106
    move-result-object v0

    .line 109
    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 110
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 113
    iget v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 115
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 117
    goto :goto_1

    .line 120
    :cond_4
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 121
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 123
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 126
    iget v1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 128
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 130
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 133
    invoke-virtual {v0}, Landroid/graphics/Paint;->getAlpha()I

    .line 135
    move-result v1

    .line 138
    iget v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 139
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 141
    move-result v1

    .line 144
    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 145
    :goto_1
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeAlign:Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;

    .line 148
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/GeometryScreenElement;->onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V

    .line 150
    :cond_5
    return-void
    .line 153
.end method

.method public doTick(J)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    move-result p1

    .line 8
    if-nez p1, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 12
    move-result p1

    .line 15
    if-eqz p1, :cond_1

    .line 16
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 18
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 20
    move-result-wide p1

    .line 23
    double-to-long p1, p1

    .line 24
    long-to-int p1, p1

    .line 25
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 26
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 28
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 30
    move-result-wide p1

    .line 33
    double-to-long p1, p1

    .line 34
    long-to-int p1, p1

    .line 35
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorParser:Lcom/miui/maml/util/ColorParser;

    .line 39
    if-eqz p1, :cond_2

    .line 41
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 43
    move-result p1

    .line 46
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColor:I

    .line 47
    :cond_2
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorParser:Lcom/miui/maml/util/ColorParser;

    .line 49
    if-eqz p1, :cond_3

    .line 51
    invoke-virtual {p1}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 53
    move-result p1

    .line 56
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColor:I

    .line 57
    :cond_3
    :goto_0
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 59
    if-eqz p1, :cond_4

    .line 61
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 63
    :cond_4
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillShadersElement:Lcom/miui/maml/shader/ShadersElement;

    .line 66
    if-eqz p1, :cond_5

    .line 68
    invoke-virtual {p1}, Lcom/miui/maml/shader/ShadersElement;->updateShader()V

    .line 70
    :cond_5
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 73
    invoke-virtual {p1}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 75
    move-result-wide p1

    .line 78
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 79
    move-result p1

    .line 82
    iput p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mWeight:F

    .line 83
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mXfermodeNumExp:Lcom/miui/maml/data/Expression;

    .line 85
    if-eqz p1, :cond_6

    .line 87
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 89
    move-result-wide p1

    .line 92
    double-to-int p1, p1

    .line 93
    invoke-static {p1}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    .line 94
    move-result-object p1

    .line 97
    iget-object p2, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 98
    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    .line 100
    invoke-direct {v0, p1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    .line 102
    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 105
    :cond_6
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 108
    if-eqz p1, :cond_7

    .line 110
    iget-object p1, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 112
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 114
    invoke-virtual {p1, p0}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 116
    :cond_7
    return-void
    .line 119
.end method

.method public initProperties()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mFillColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 12
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mStrokeWeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 17
    return-void
    .line 20
.end method

.method public abstract onDraw(Landroid/graphics/Canvas;Lcom/miui/maml/elements/GeometryScreenElement$DrawMode;)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/GeometryScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    :cond_0
    return-void
    .line 12
.end method
