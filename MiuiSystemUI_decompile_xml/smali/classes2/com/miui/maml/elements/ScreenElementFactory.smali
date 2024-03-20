.class public Lcom/miui/maml/elements/ScreenElementFactory;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field private mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

.field private mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 2
    if-nez v0, :cond_0

    .line 4
    :try_start_0
    const-string v0, "com.miui.maml.elements.filament.PhysicallyRenderingElement"

    .line 6
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 8
    move-result-object v0

    .line 11
    const/4 v1, 0x2

    .line 12
    new-array v1, v1, [Ljava/lang/Class;

    .line 13
    const-class v2, Lorg/w3c/dom/Element;

    .line 15
    const/4 v3, 0x0

    .line 17
    aput-object v2, v1, v3

    .line 18
    const-class v2, Lcom/miui/maml/ScreenElementRoot;

    .line 20
    const/4 v3, 0x1

    .line 22
    aput-object v2, v1, v3

    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 25
    move-result-object v0

    .line 28
    filled-new-array {p1, p2}, [Ljava/lang/Object;

    .line 29
    move-result-object v1

    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    move-result-object v0

    .line 36
    check-cast v0, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 37
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 39
    instance-of v1, v0, Lcom/miui/maml/elements/ScreenElement;

    .line 41
    if-eqz v1, :cond_0

    .line 43
    check-cast v0, Lcom/miui/maml/elements/ScreenElement;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 45
    return-object v0

    .line 47
    :catch_0
    move-exception v0

    .line 48
    new-instance v1, Ljava/lang/StringBuilder;

    .line 49
    const-string v2, "fail find IPbrCreator."

    .line 51
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 53
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 56
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 59
    move-result-object v0

    .line 62
    const-string v1, "ScreenElementFactory"

    .line 63
    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mPbrCreator:Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;

    .line 68
    if-nez p0, :cond_1

    .line 70
    const/4 p0, 0x0

    .line 72
    goto :goto_0

    .line 73
    :cond_1
    invoke-interface {p0, p1, p2}, Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement$IPbrCreator;->createRealPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/filament/PhysicallyBasedRenderingElement;

    .line 74
    move-result-object p0

    .line 77
    :goto_0
    return-object p0
    .line 78
.end method


# virtual methods
.method public createInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;
    .locals 2

    .line 1
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    .line 2
    move-result-object v0

    .line 5
    :try_start_0
    const-string v1, "Image"

    .line 6
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 8
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    new-instance p0, Lcom/miui/maml/elements/ImageScreenElement;

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 16
    return-object p0

    .line 19
    :cond_0
    const-string v1, "Graphics"

    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 22
    move-result v1

    .line 25
    if-eqz v1, :cond_1

    .line 26
    new-instance p0, Lcom/miui/maml/elements/GraphicsElement;

    .line 28
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GraphicsElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 30
    return-object p0

    .line 33
    :cond_1
    const-string v1, "Time"

    .line 34
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 36
    move-result v1

    .line 39
    if-eqz v1, :cond_2

    .line 40
    new-instance p0, Lcom/miui/maml/elements/TimepanelScreenElement;

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/TimepanelScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 44
    return-object p0

    .line 47
    :cond_2
    const-string v1, "ImageNumber"

    .line 48
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 50
    move-result v1

    .line 53
    if-nez v1, :cond_28

    .line 54
    const-string v1, "ImageChars"

    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 58
    move-result v1

    .line 61
    if-eqz v1, :cond_3

    .line 62
    goto/16 :goto_1

    .line 64
    :cond_3
    const-string v1, "Text"

    .line 66
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 68
    move-result v1

    .line 71
    if-eqz v1, :cond_4

    .line 72
    new-instance p0, Lcom/miui/maml/elements/TextScreenElement;

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/TextScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 76
    return-object p0

    .line 79
    :cond_4
    const-string v1, "DateTime"

    .line 80
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 82
    move-result v1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    new-instance p0, Lcom/miui/maml/elements/DateTimeScreenElement;

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/DateTimeScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 90
    return-object p0

    .line 93
    :cond_5
    const-string v1, "Button"

    .line 94
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 96
    move-result v1

    .line 99
    if-eqz v1, :cond_6

    .line 100
    new-instance p0, Lcom/miui/maml/elements/ButtonScreenElement;

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ButtonScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 104
    return-object p0

    .line 107
    :cond_6
    const-string v1, "MusicControl"

    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    move-result v1

    .line 113
    if-eqz v1, :cond_7

    .line 114
    new-instance p0, Lcom/miui/maml/elements/MusicControlScreenElement;

    .line 116
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MusicControlScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 118
    return-object p0

    .line 121
    :cond_7
    const-string v1, "ElementGroup"

    .line 122
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 124
    move-result v1

    .line 127
    if-nez v1, :cond_27

    .line 128
    const-string v1, "Group"

    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 132
    move-result v1

    .line 135
    if-eqz v1, :cond_8

    .line 136
    goto/16 :goto_0

    .line 138
    :cond_8
    const-string v1, "Var"

    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 142
    move-result v1

    .line 145
    if-eqz v1, :cond_9

    .line 146
    new-instance p0, Lcom/miui/maml/elements/VariableElement;

    .line 148
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/VariableElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 150
    return-object p0

    .line 153
    :cond_9
    const-string v1, "VarArray"

    .line 154
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 156
    move-result v1

    .line 159
    if-eqz v1, :cond_a

    .line 160
    new-instance p0, Lcom/miui/maml/elements/VariableArrayElement;

    .line 162
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/VariableArrayElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 164
    return-object p0

    .line 167
    :cond_a
    const-string v1, "AutoScaleGroup"

    .line 168
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 170
    move-result v1

    .line 173
    if-eqz v1, :cond_b

    .line 174
    new-instance p0, Lcom/miui/maml/elements/AutoScaleElementGroup;

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AutoScaleElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 178
    return-object p0

    .line 181
    :cond_b
    const-string v1, "SpectrumVisualizer"

    .line 182
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 184
    move-result v1

    .line 187
    if-eqz v1, :cond_c

    .line 188
    new-instance p0, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;

    .line 190
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/SpectrumVisualizerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 192
    return-object p0

    .line 195
    :cond_c
    const-string v1, "Slider"

    .line 196
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 198
    move-result v1

    .line 201
    if-eqz v1, :cond_d

    .line 202
    new-instance p0, Lcom/miui/maml/elements/AdvancedSlider;

    .line 204
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AdvancedSlider;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 206
    return-object p0

    .line 209
    :cond_d
    const-string v1, "FramerateController"

    .line 210
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 212
    move-result v1

    .line 215
    if-eqz v1, :cond_e

    .line 216
    new-instance p0, Lcom/miui/maml/elements/FramerateController;

    .line 218
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FramerateController;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 220
    return-object p0

    .line 223
    :cond_e
    const-string v1, "FolmeConfig"

    .line 224
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 226
    move-result v1

    .line 229
    if-eqz v1, :cond_f

    .line 230
    new-instance p0, Lcom/miui/maml/elements/FolmeConfigElement;

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FolmeConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 234
    return-object p0

    .line 237
    :cond_f
    const-string v1, "FolmeState"

    .line 238
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 240
    move-result v1

    .line 243
    if-eqz v1, :cond_10

    .line 244
    new-instance p0, Lcom/miui/maml/elements/FolmeStateElement;

    .line 246
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FolmeStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 248
    return-object p0

    .line 251
    :cond_10
    const-string v1, "VirtualScreen"

    .line 252
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 254
    move-result v1

    .line 257
    if-eqz v1, :cond_11

    .line 258
    new-instance p0, Lcom/miui/maml/elements/VirtualScreen;

    .line 260
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/VirtualScreen;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 262
    return-object p0

    .line 265
    :cond_11
    const-string v1, "VirtualElement"

    .line 266
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 268
    move-result v1

    .line 271
    if-eqz v1, :cond_12

    .line 272
    new-instance p0, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;

    .line 274
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/VirtualAnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 276
    return-object p0

    .line 279
    :cond_12
    const-string v1, "Line"

    .line 280
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 282
    move-result v1

    .line 285
    if-eqz v1, :cond_13

    .line 286
    new-instance p0, Lcom/miui/maml/elements/LineScreenElement;

    .line 288
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/LineScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 290
    return-object p0

    .line 293
    :cond_13
    const-string v1, "Rectangle"

    .line 294
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 296
    move-result v1

    .line 299
    if-eqz v1, :cond_14

    .line 300
    new-instance p0, Lcom/miui/maml/elements/RectangleScreenElement;

    .line 302
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/RectangleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 304
    return-object p0

    .line 307
    :cond_14
    const-string v1, "Ellipse"

    .line 308
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 310
    move-result v1

    .line 313
    if-eqz v1, :cond_15

    .line 314
    new-instance p0, Lcom/miui/maml/elements/EllipseScreenElement;

    .line 316
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/EllipseScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 318
    return-object p0

    .line 321
    :cond_15
    const-string v1, "Circle"

    .line 322
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 324
    move-result v1

    .line 327
    if-eqz v1, :cond_16

    .line 328
    new-instance p0, Lcom/miui/maml/elements/CircleScreenElement;

    .line 330
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/CircleScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 332
    return-object p0

    .line 335
    :cond_16
    const-string v1, "Arc"

    .line 336
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 338
    move-result v1

    .line 341
    if-eqz v1, :cond_17

    .line 342
    new-instance p0, Lcom/miui/maml/elements/ArcScreenElement;

    .line 344
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ArcScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 346
    return-object p0

    .line 349
    :cond_17
    const-string v1, "Curve"

    .line 350
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 352
    move-result v1

    .line 355
    if-eqz v1, :cond_18

    .line 356
    new-instance p0, Lcom/miui/maml/elements/CurveScreenElement;

    .line 358
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/CurveScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 360
    return-object p0

    .line 363
    :cond_18
    const-string v1, "List"

    .line 364
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 366
    move-result v1

    .line 369
    if-eqz v1, :cond_19

    .line 370
    new-instance p0, Lcom/miui/maml/elements/ListScreenElement;

    .line 372
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ListScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 374
    return-object p0

    .line 377
    :cond_19
    const-string v1, "Paint"

    .line 378
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 380
    move-result v1

    .line 383
    if-eqz v1, :cond_1a

    .line 384
    new-instance p0, Lcom/miui/maml/elements/PaintScreenElement;

    .line 386
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/PaintScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 388
    return-object p0

    .line 391
    :cond_1a
    const-string v1, "Mirror"

    .line 392
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 394
    move-result v1

    .line 397
    if-eqz v1, :cond_1b

    .line 398
    new-instance p0, Lcom/miui/maml/elements/MirrorScreenElement;

    .line 400
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/MirrorScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 402
    return-object p0

    .line 405
    :cond_1b
    const-string v1, "Window"

    .line 406
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 408
    move-result v1

    .line 411
    if-eqz v1, :cond_1c

    .line 412
    new-instance p0, Lcom/miui/maml/elements/WindowScreenElement;

    .line 414
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/WindowScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 416
    return-object p0

    .line 419
    :cond_1c
    const-string v1, "WebView"

    .line 420
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 422
    move-result v1

    .line 425
    if-eqz v1, :cond_1d

    .line 426
    new-instance p0, Lcom/miui/maml/elements/WebViewScreenElement;

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/WebViewScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 430
    return-object p0

    .line 433
    :cond_1d
    const-string v1, "Layer"

    .line 434
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 436
    move-result v1

    .line 439
    if-eqz v1, :cond_1e

    .line 440
    new-instance p0, Lcom/miui/maml/elements/LayerScreenElement;

    .line 442
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/LayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 444
    return-object p0

    .line 447
    :cond_1e
    const-string v1, "GLLayer"

    .line 448
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 450
    move-result v1

    .line 453
    if-eqz v1, :cond_1f

    .line 454
    new-instance p0, Lcom/miui/maml/elements/GLLayerScreenElement;

    .line 456
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/GLLayerScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 458
    return-object p0

    .line 461
    :cond_1f
    const-string v1, "Array"

    .line 462
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 464
    move-result v1

    .line 467
    if-eqz v1, :cond_20

    .line 468
    new-instance p0, Lcom/miui/maml/elements/ScreenElementArray;

    .line 470
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementArray;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 472
    return-object p0

    .line 475
    :cond_20
    const-string v1, "CanvasDrawer"

    .line 476
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 478
    move-result v1

    .line 481
    if-eqz v1, :cond_21

    .line 482
    new-instance p0, Lcom/miui/maml/elements/CanvasDrawerElement;

    .line 484
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/CanvasDrawerElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 486
    return-object p0

    .line 489
    :cond_21
    const-string v1, "Function"

    .line 490
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 492
    move-result v1

    .line 495
    if-eqz v1, :cond_22

    .line 496
    new-instance p0, Lcom/miui/maml/elements/FunctionElement;

    .line 498
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/FunctionElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 500
    return-object p0

    .line 503
    :cond_22
    const-string v1, "AnimConfig"

    .line 504
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 506
    move-result v1

    .line 509
    if-eqz v1, :cond_23

    .line 510
    new-instance p0, Lcom/miui/maml/elements/AnimConfigElement;

    .line 512
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimConfigElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 514
    return-object p0

    .line 517
    :cond_23
    const-string v1, "AnimState"

    .line 518
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 520
    move-result v1

    .line 523
    if-eqz v1, :cond_24

    .line 524
    new-instance p0, Lcom/miui/maml/elements/AnimStateElement;

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimStateElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 528
    return-object p0

    .line 531
    :cond_24
    const-string v1, "Video"

    .line 532
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 534
    move-result v1

    .line 537
    if-eqz v1, :cond_25

    .line 538
    new-instance p0, Lcom/miui/maml/elements/video/VideoElement;

    .line 540
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/video/VideoElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 542
    return-object p0

    .line 545
    :cond_25
    const-string v1, "Pbr"

    .line 546
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 548
    move-result v0

    .line 551
    if-eqz v0, :cond_26

    .line 552
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory;->createPbrElement(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 554
    move-result-object p0

    .line 557
    return-object p0

    .line 558
    :cond_26
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 559
    if-eqz p0, :cond_29

    .line 561
    invoke-interface {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;->onCreateInstance(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)Lcom/miui/maml/elements/ScreenElement;

    .line 563
    move-result-object p0

    .line 566
    return-object p0

    .line 567
    :cond_27
    :goto_0
    new-instance p0, Lcom/miui/maml/elements/ElementGroup;

    .line 568
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 570
    return-object p0

    .line 573
    :cond_28
    :goto_1
    new-instance p0, Lcom/miui/maml/elements/ImageNumberScreenElement;

    .line 574
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ImageNumberScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    return-object p0

    .line 579
    :catch_0
    move-exception p0

    .line 580
    invoke-virtual {p0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 581
    new-instance p1, Ljava/lang/StringBuilder;

    .line 584
    const-string p2, "fail to create element."

    .line 586
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 588
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 591
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 594
    move-result-object p0

    .line 597
    const-string p1, "ScreenElementFactory"

    .line 598
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    :cond_29
    const/4 p0, 0x0

    .line 603
    return-object p0
    .line 604
.end method

.method public getCallback()Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 2
    return-object p0
    .line 4
.end method

.method public setCallback(Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElementFactory;->mFactoryCallback:Lcom/miui/maml/elements/ScreenElementFactory$FactoryCallback;

    .line 2
    return-void
    .line 4
.end method
