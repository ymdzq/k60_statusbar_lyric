.class public Lcom/miui/maml/elements/TextScreenElement;
.super Lcom/miui/maml/elements/AnimatedScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field private static final CRLF:Ljava/lang/String; = "\n"

.field private static final DEFAULT_SIZE:I = 0x12

.field private static final LOG_TAG:Ljava/lang/String; = "TextScreenElement"

.field private static final MARQUEE_FRAMERATE:I = 0x2d

.field private static final PADDING:I = 0x32

.field private static final PROPERTY_NAME_TEXT_COLOR:Ljava/lang/String; = "textColor"

.field private static final PROPERTY_NAME_TEXT_SHADOW_COLOR:Ljava/lang/String; = "textShadowColor"

.field private static final PROPERTY_NAME_TEXT_SIZE:Ljava/lang/String; = "textSize"

.field private static final RAW_CRLF:Ljava/lang/String; = "\\n"

.field public static final TAG_NAME:Ljava/lang/String; = "Text"

.field public static final TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_HEIGHT:Ljava/lang/String; = "text_height"

.field public static final TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

.field public static final TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

.field public static final TEXT_WIDTH:Ljava/lang/String; = "text_width"

.field private static final mLock:Ljava/lang/Object;


# instance fields
.field private mColorParser:Lcom/miui/maml/util/ColorParser;

.field private mFontScaleEnabled:Z

.field protected mFormatter:Lcom/miui/maml/util/TextFormatter;

.field private mLayoutWidth:F

.field private mMarqueeGap:I

.field private mMarqueePos:F

.field private mMarqueeSpeed:I

.field private mMultiLine:Z

.field private final mPaint:Landroid/text/TextPaint;

.field private mPreviousTime:J

.field private mSetText:Ljava/lang/String;

.field private mShadowColorParser:Lcom/miui/maml/util/ColorParser;

.field private mShadowDx:F

.field private mShadowDy:F

.field private mShadowRadius:F

.field private mShouldMarquee:Z

.field private mSpacingAdd:F

.field private mSpacingAddExp:Lcom/miui/maml/data/Expression;

.field private mSpacingMult:F

.field private mSpacingMultExp:Lcom/miui/maml/data/Expression;

.field private mText:Ljava/lang/String;

.field private mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextFontName:Ljava/lang/String;

.field private mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTextHeight:F

.field private mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mTextLayout:Landroid/text/StaticLayout;

.field private mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextSize:F

.field private mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mTextWidth:F

.field private mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Ljava/lang/Object;

    .line 2
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    .line 7
    new-instance v0, Lcom/miui/maml/elements/TextScreenElement$1;

    .line 9
    const-string/jumbo v1, "textColor"

    .line 11
    invoke-direct {v0, v1}, Lcom/miui/maml/elements/TextScreenElement$1;-><init>(Ljava/lang/String;)V

    .line 14
    sput-object v0, Lcom/miui/maml/elements/TextScreenElement;->TEXT_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 17
    new-instance v2, Lcom/miui/maml/elements/TextScreenElement$2;

    .line 19
    const-string/jumbo v3, "textSize"

    .line 21
    invoke-direct {v2, v3}, Lcom/miui/maml/elements/TextScreenElement$2;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v2, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SIZE:Lcom/miui/maml/folme/AnimatedProperty;

    .line 27
    new-instance v4, Lcom/miui/maml/elements/TextScreenElement$3;

    .line 29
    const-string/jumbo v5, "textShadowColor"

    .line 31
    invoke-direct {v4, v5}, Lcom/miui/maml/elements/TextScreenElement$3;-><init>(Ljava/lang/String;)V

    .line 34
    sput-object v4, Lcom/miui/maml/elements/TextScreenElement;->TEXT_SHADOW_COLOR:Lcom/miui/maml/folme/AnimatedProperty$AnimatedColorProperty;

    .line 37
    sget-object v6, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 39
    invoke-virtual {v6, v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 44
    const/16 v6, 0x3eb

    .line 46
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 48
    move-result-object v6

    .line 51
    invoke-virtual {v1, v6, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 52
    sget-object v1, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 55
    invoke-virtual {v1, v0, v6}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 57
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 60
    invoke-virtual {v0, v3, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 62
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 65
    const/16 v1, 0x3ea

    .line 67
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 69
    move-result-object v1

    .line 72
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 76
    invoke-virtual {v0, v2, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/miui/maml/folme/AnimatedProperty;->sPropertyNameMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 81
    invoke-virtual {v0, v5, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 86
    const/16 v1, 0x3f5

    .line 88
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 90
    move-result-object v1

    .line 93
    invoke-virtual {v0, v1, v4}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sPropertyTypeMap:Ljava/util/concurrent/ConcurrentHashMap;

    .line 97
    invoke-virtual {v0, v4, v1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    return-void
    .line 102
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Landroid/text/TextPaint;

    .line 5
    invoke-direct {p2}, Landroid/text/TextPaint;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 10
    const p2, 0x7f7fffff    # Float.MAX_VALUE

    .line 12
    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 15
    const-wide/high16 v0, 0x4032000000000000L    # 18.0

    .line 17
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 19
    move-result p2

    .line 22
    iput p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 23
    const/4 p2, 0x0

    .line 25
    iput-object p2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    .line 26
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/TextScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 28
    return-void
    .line 31
.end method

.method public static synthetic access$000(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$100(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method public static synthetic access$200(Lcom/miui/maml/elements/TextScreenElement;)Lcom/miui/maml/folme/PropertyWrapper;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    return-object p0
    .line 4
.end method

.method private getAlignment()Landroid/text/Layout$Alignment;
    .locals 4

    .line 1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    .line 2
    sget-object v1, Lcom/miui/maml/elements/TextScreenElement$4;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 4
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 6
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 8
    move-result p0

    .line 11
    aget p0, v1, p0

    .line 12
    const/4 v1, 0x1

    .line 14
    const-string v2, "TextScreenElement"

    .line 15
    if-eq p0, v1, :cond_2

    .line 17
    const/4 v1, 0x2

    .line 19
    if-eq p0, v1, :cond_1

    .line 20
    const/4 v1, 0x3

    .line 22
    if-eq p0, v1, :cond_0

    .line 23
    goto :goto_1

    .line 25
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 26
    move-result-object p0

    .line 29
    const-string v1, "ALIGN_RIGHT"

    .line 30
    invoke-static {p0, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    check-cast p0, Landroid/text/Layout$Alignment;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 38
    :catch_0
    move-exception p0

    .line 39
    new-instance v1, Ljava/lang/StringBuilder;

    .line 40
    const-string v3, "Invoke | getAlignment_ALIGN_RIGHT occur EXCEPTION: "

    .line 42
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-static {p0, v1, v2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 47
    goto :goto_1

    .line 50
    :cond_1
    sget-object v0, Landroid/text/Layout$Alignment;->ALIGN_CENTER:Landroid/text/Layout$Alignment;

    .line 51
    goto :goto_1

    .line 53
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 54
    move-result-object p0

    .line 57
    const-string v1, "ALIGN_LEFT"

    .line 58
    invoke-static {p0, v0, v1}, Lcom/miui/maml/util/ReflectionHelper;->getFieldValue(Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 60
    move-result-object p0

    .line 63
    check-cast p0, Landroid/text/Layout$Alignment;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 64
    :goto_0
    move-object v0, p0

    .line 66
    goto :goto_1

    .line 67
    :catch_1
    move-exception p0

    .line 68
    new-instance v1, Ljava/lang/StringBuilder;

    .line 69
    const-string v3, "Invoke | getAlignment_ALIGN_LEFT occur EXCEPTION: "

    .line 71
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    invoke-static {p0, v1, v2}, Lcom/android/keyguard/WallpaperProvider$$ExternalSyntheticOutline0;->m(Ljava/lang/Exception;Ljava/lang/StringBuilder;Ljava/lang/String;)V

    .line 76
    :goto_1
    return-object v0
    .line 79
.end method

.method private getSpacingAdd()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAddExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    iget p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 12
    return p0
    .line 14
.end method

.method private getSpacingMult()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMultExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 6
    move-result-wide v0

    .line 9
    double-to-float p0, v0

    .line 10
    return p0

    .line 11
    :cond_0
    iget p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 12
    return p0
    .line 14
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 21

    .line 1
    move-object/from16 v1, p0

    .line 2
    move-object/from16 v2, p1

    .line 4
    if-nez v2, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 9
    move-result-object v3

    .line 12
    iget-boolean v0, v1, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 13
    const/4 v4, 0x1

    .line 15
    if-eqz v0, :cond_1

    .line 16
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 18
    new-instance v5, Ljava/lang/StringBuilder;

    .line 20
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 22
    iget-object v6, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 25
    const-string v7, ".text_width"

    .line 27
    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    move-result-object v5

    .line 32
    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 33
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 38
    new-instance v5, Ljava/lang/StringBuilder;

    .line 40
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 42
    iget-object v6, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 45
    const-string v7, ".text_height"

    .line 47
    invoke-static {v5, v6, v7}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 49
    move-result-object v5

    .line 52
    invoke-direct {v0, v5, v3, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 53
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 56
    :cond_1
    iget-object v0, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 58
    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/TextFormatter;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/TextFormatter;

    .line 60
    move-result-object v0

    .line 63
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 64
    iget-object v0, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 66
    invoke-static {v3, v2, v0}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    .line 68
    move-result-object v0

    .line 71
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 72
    const-string v0, "marqueeSpeed"

    .line 74
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v1, v2, v0, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 77
    move-result v0

    .line 80
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 81
    const-string/jumbo v0, "spacingMult"

    .line 83
    const/high16 v6, 0x3f800000    # 1.0f

    .line 86
    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 88
    move-result v0

    .line 91
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 92
    const-string/jumbo v0, "spacingAdd"

    .line 94
    const/4 v6, 0x0

    .line 97
    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 98
    move-result v0

    .line 101
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 102
    const-string/jumbo v0, "spacingMultExp"

    .line 104
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 107
    move-result-object v0

    .line 110
    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 111
    move-result-object v0

    .line 114
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMultExp:Lcom/miui/maml/data/Expression;

    .line 115
    const-string/jumbo v0, "spacingAddExp"

    .line 117
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 120
    move-result-object v0

    .line 123
    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 124
    move-result-object v0

    .line 127
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAddExp:Lcom/miui/maml/data/Expression;

    .line 128
    const-string v0, "marqueeGap"

    .line 130
    const/4 v7, 0x2

    .line 132
    invoke-virtual {v1, v2, v0, v7}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    .line 133
    move-result v0

    .line 136
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 137
    const-string v0, "multiLine"

    .line 139
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 141
    move-result-object v0

    .line 144
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 145
    move-result v0

    .line 148
    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 149
    const-string v0, "enableFontScale"

    .line 151
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 153
    move-result-object v0

    .line 156
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 157
    move-result v0

    .line 160
    iput-boolean v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    .line 161
    const-string/jumbo v0, "size"

    .line 163
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 166
    move-result-object v0

    .line 169
    invoke-static {v3, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 170
    move-result-object v10

    .line 173
    const-string v0, "fontFamily"

    .line 174
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 176
    move-result-object v0

    .line 179
    const-string v7, "fontPath"

    .line 180
    invoke-virtual {v1, v2, v7}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 182
    move-result-object v7

    .line 185
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 186
    move-result v8

    .line 189
    if-nez v8, :cond_2

    .line 190
    const-string v5, "fontStyle"

    .line 192
    invoke-virtual {v1, v2, v5}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 194
    move-result-object v5

    .line 197
    invoke-static {v5}, Lcom/miui/maml/elements/TextScreenElement;->parseFontStyle(Ljava/lang/String;)I

    .line 198
    move-result v5

    .line 201
    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 202
    invoke-static {v0, v5}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    .line 204
    move-result-object v0

    .line 207
    invoke-virtual {v7, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 208
    goto :goto_2

    .line 211
    :cond_2
    invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 212
    move-result v0

    .line 215
    if-nez v0, :cond_5

    .line 216
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 218
    move-result-object v0

    .line 221
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 222
    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    .line 224
    move-result-object v0

    .line 227
    invoke-static {v0, v7}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    .line 228
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    goto :goto_0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    const-string v8, "create typeface from asset fail :"

    .line 234
    const-string v9, "TextScreenElement"

    .line 236
    invoke-static {v8, v0, v9}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 238
    const/4 v0, 0x0

    .line 241
    :goto_0
    if-nez v0, :cond_4

    .line 242
    const-string v8, "@"

    .line 244
    invoke-virtual {v7, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 246
    move-result v8

    .line 249
    if-eqz v8, :cond_3

    .line 250
    new-instance v8, Lcom/miui/maml/data/IndexedVariable;

    .line 252
    invoke-virtual {v7, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 254
    move-result-object v7

    .line 257
    invoke-direct {v8, v7, v3, v5}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 258
    iput-object v8, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

    .line 261
    goto :goto_1

    .line 263
    :cond_3
    invoke-direct {v1, v7}, Lcom/miui/maml/elements/TextScreenElement;->updateTypeface(Ljava/lang/String;)V

    .line 264
    :cond_4
    :goto_1
    if-eqz v0, :cond_6

    .line 267
    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 269
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 271
    goto :goto_2

    .line 274
    :cond_5
    const-string v0, "bold"

    .line 275
    invoke-virtual {v1, v2, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 277
    move-result-object v0

    .line 280
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 281
    move-result v0

    .line 284
    iget-object v5, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 285
    invoke-virtual {v5, v0}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 287
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 290
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 292
    move-result-object v5

    .line 295
    iget-object v5, v5, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 296
    iget-object v7, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 298
    invoke-virtual {v7}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    .line 300
    move-result-object v7

    .line 303
    invoke-static {v5, v7}, Lcom/miui/maml/util/HideSdkDependencyUtils;->TypefaceUtils_replaceTypeface(Landroid/content/Context;Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 304
    move-result-object v5

    .line 307
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 308
    :cond_6
    :goto_2
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 311
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    .line 313
    move-result v5

    .line 316
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setColor(I)V

    .line 317
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 320
    const-wide/high16 v7, 0x4032000000000000L    # 18.0

    .line 322
    invoke-virtual {v1, v7, v8}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 324
    move-result v5

    .line 327
    invoke-virtual {v0, v5}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 328
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 331
    invoke-virtual {v0, v4}, Landroid/text/TextPaint;->setAntiAlias(Z)V

    .line 333
    const-string/jumbo v0, "shadowRadius"

    .line 336
    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 339
    move-result v0

    .line 342
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 343
    const-string/jumbo v0, "shadowDx"

    .line 345
    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 348
    move-result v0

    .line 351
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 352
    const-string/jumbo v0, "shadowDy"

    .line 354
    invoke-virtual {v1, v2, v0, v6}, Lcom/miui/maml/elements/ScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 357
    move-result v0

    .line 360
    iput v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 361
    const-string/jumbo v0, "shadowColor"

    .line 363
    iget-object v4, v1, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 366
    invoke-static {v3, v2, v0, v4}, Lcom/miui/maml/util/ColorParser;->fromElement(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Lcom/miui/maml/util/ColorParser;

    .line 368
    move-result-object v0

    .line 371
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 372
    iget-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 374
    iget v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 376
    iget v3, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 378
    iget v4, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 380
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    .line 382
    move-result v5

    .line 385
    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 386
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 389
    new-instance v2, Ljava/lang/StringBuilder;

    .line 391
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 393
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 396
    const-string v4, ".textColor"

    .line 398
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 400
    move-result-object v8

    .line 403
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 404
    move-result-object v9

    .line 407
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 408
    move-result v11

    .line 411
    const-wide/high16 v12, 0x4032000000000000L    # 18.0

    .line 412
    move-object v7, v0

    .line 414
    invoke-direct/range {v7 .. v13}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 415
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 418
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 420
    new-instance v2, Ljava/lang/StringBuilder;

    .line 422
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 424
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 427
    const-string v4, ".textSize"

    .line 429
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 431
    move-result-object v15

    .line 434
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 435
    move-result-object v16

    .line 438
    const/16 v17, 0x0

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 441
    move-result v18

    .line 444
    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 445
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 447
    move-result v2

    .line 450
    int-to-double v2, v2

    .line 451
    move-object v14, v0

    .line 452
    move-wide/from16 v19, v2

    .line 453
    invoke-direct/range {v14 .. v20}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 455
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 458
    new-instance v0, Lcom/miui/maml/folme/PropertyWrapper;

    .line 460
    new-instance v2, Ljava/lang/StringBuilder;

    .line 462
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 464
    iget-object v3, v1, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 467
    const-string v4, ".textShadowColor"

    .line 469
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 471
    move-result-object v5

    .line 474
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 475
    move-result-object v6

    .line 478
    const/4 v7, 0x0

    .line 479
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 480
    move-result v8

    .line 483
    iget-object v2, v1, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 484
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 486
    move-result v2

    .line 489
    int-to-double v9, v2

    .line 490
    move-object v4, v0

    .line 491
    invoke-direct/range {v4 .. v10}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 492
    iput-object v0, v1, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 495
    return-void
    .line 497
.end method

.method private static parseFontStyle(Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_3

    .line 7
    const-string v0, "normal"

    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 11
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    goto :goto_0

    .line 17
    :cond_0
    const-string v0, "bold"

    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_1
    const-string v0, "italic"

    .line 28
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 30
    move-result v0

    .line 33
    if-eqz v0, :cond_2

    .line 34
    const/4 p0, 0x2

    .line 36
    return p0

    .line 37
    :cond_2
    const-string v0, "bold_italic"

    .line 38
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    move-result p0

    .line 43
    if-eqz p0, :cond_3

    .line 44
    const/4 p0, 0x3

    .line 46
    return p0

    .line 47
    :cond_3
    :goto_0
    return v1
    .line 48
.end method

.method private updateTextFontIfNeed()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontVar:Lcom/miui/maml/data/IndexedVariable;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/IndexedVariable;->getString()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 12
    move-result v1

    .line 15
    if-lez v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    .line 18
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v1

    .line 23
    if-nez v1, :cond_0

    .line 24
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/TextScreenElement;->updateTypeface(Ljava/lang/String;)V

    .line 26
    :cond_0
    return-void
    .line 29
.end method

.method private updateTextSize()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 8
    move-result v0

    .line 11
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 12
    iget-boolean v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mFontScaleEnabled:Z

    .line 14
    if-eqz v1, :cond_0

    .line 16
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/ScreenElementRoot;->getFontScale()F

    .line 20
    move-result v1

    .line 23
    mul-float/2addr v1, v0

    .line 24
    iput v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 25
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 27
    iget p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 29
    invoke-virtual {v0, p0}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 31
    return-void
    .line 34
.end method

.method private updateTextWidth()V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 5
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 7
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 13
    if-eqz v0, :cond_1

    .line 15
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 17
    const-string v1, "\n"

    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    const/4 v1, 0x0

    .line 25
    :goto_0
    array-length v2, v0

    .line 26
    if-ge v1, v2, :cond_2

    .line 27
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 29
    aget-object v3, v0, v1

    .line 31
    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 33
    move-result v2

    .line 36
    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 37
    cmpl-float v3, v2, v3

    .line 39
    if-lez v3, :cond_0

    .line 41
    iput v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 43
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 45
    goto :goto_0

    .line 47
    :cond_1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 48
    iget-object v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 50
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    .line 52
    move-result v0

    .line 55
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 56
    :cond_2
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 58
    if-eqz v0, :cond_3

    .line 60
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 62
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 64
    float-to-double v1, v1

    .line 66
    invoke-virtual {p0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 67
    move-result-wide v1

    .line 70
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 71
    :cond_3
    return-void
    .line 74
.end method

.method private updateTypeface(Ljava/lang/String;)V
    .locals 1

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextFontName:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object v0

    .line 7
    iget-object v0, v0, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    .line 8
    invoke-virtual {v0, p1}, Lcom/miui/maml/ResourceManager;->getExtraFile(Ljava/lang/String;)Ljava/io/File;

    .line 10
    move-result-object p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 16
    move-result v0

    .line 19
    if-eqz v0, :cond_0

    .line 20
    :try_start_0
    invoke-static {p1}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    .line 22
    move-result-object p1

    .line 25
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 26
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    goto :goto_0

    .line 31
    :catch_0
    move-exception p0

    .line 32
    const-string p1, "int. create typeface from PATH failed. "

    .line 33
    const-string v0, "TextScreenElement"

    .line 35
    invoke-static {p1, p0, v0}, Lcom/android/bluetooth/ble/app/ShareNetwork$1$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    .line 37
    :cond_0
    :goto_0
    return-void
    .line 40
.end method


# virtual methods
.method public doRender(Landroid/graphics/Canvas;)V
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    return-void

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getColor()I

    .line 13
    move-result v1

    .line 16
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    .line 17
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 20
    invoke-virtual {v0}, Landroid/text/TextPaint;->getAlpha()I

    .line 22
    move-result v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 26
    move-result v2

    .line 29
    invoke-static {v1, v2}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 30
    move-result v1

    .line 33
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setAlpha(I)V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 37
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 39
    iget v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 41
    iget v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 43
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getShadowColor()I

    .line 45
    move-result v4

    .line 48
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    .line 52
    move-result v0

    .line 55
    const/4 v1, 0x0

    .line 56
    cmpl-float v2, v0, v1

    .line 57
    const/4 v3, 0x1

    .line 59
    const/4 v4, 0x0

    .line 60
    if-ltz v2, :cond_1

    .line 61
    move v2, v3

    .line 63
    goto :goto_0

    .line 64
    :cond_1
    move v2, v4

    .line 65
    :goto_0
    cmpg-float v5, v0, v1

    .line 66
    if-ltz v5, :cond_2

    .line 68
    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 70
    cmpl-float v5, v0, v5

    .line 72
    if-lez v5, :cond_3

    .line 74
    :cond_2
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 76
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/TextScreenElement;->getHeight()F

    .line 78
    move-result v5

    .line 81
    iget-object v6, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 82
    invoke-virtual {v6}, Landroid/text/TextPaint;->getTextSize()F

    .line 84
    move-result v6

    .line 87
    cmpg-float v7, v5, v1

    .line 88
    if-gez v7, :cond_4

    .line 90
    iget v5, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 92
    :cond_4
    invoke-virtual {p0, v1, v0}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 94
    move-result v7

    .line 97
    invoke-virtual {p0, v1, v5}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 98
    move-result v8

    .line 101
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 102
    iget v9, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 105
    cmpl-float v10, v9, v1

    .line 107
    if-eqz v10, :cond_5

    .line 109
    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 111
    sub-float/2addr v10, v9

    .line 113
    invoke-static {v1, v10}, Ljava/lang/Math;->min(FF)F

    .line 114
    move-result v9

    .line 117
    iget v10, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDx:F

    .line 118
    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 120
    add-float/2addr v10, v11

    .line 122
    invoke-static {v1, v10}, Ljava/lang/Math;->max(FF)F

    .line 123
    move-result v10

    .line 126
    iget v11, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 127
    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 129
    sub-float/2addr v11, v12

    .line 131
    invoke-static {v1, v11}, Ljava/lang/Math;->min(FF)F

    .line 132
    move-result v11

    .line 135
    iget v12, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowDy:F

    .line 136
    iget v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowRadius:F

    .line 138
    add-float/2addr v12, v13

    .line 140
    invoke-static {v1, v12}, Ljava/lang/Math;->max(FF)F

    .line 141
    move-result v12

    .line 144
    goto :goto_1

    .line 145
    :cond_5
    move v9, v1

    .line 146
    move v10, v9

    .line 147
    move v11, v10

    .line 148
    move v12, v11

    .line 149
    :goto_1
    invoke-virtual {p1, v7, v8}, Landroid/graphics/Canvas;->translate(FF)V

    .line 150
    if-eqz v2, :cond_6

    .line 153
    move v9, v1

    .line 155
    :cond_6
    if-eqz v2, :cond_7

    .line 156
    move v10, v1

    .line 158
    :cond_7
    add-float/2addr v10, v0

    .line 159
    add-float/2addr v5, v12

    .line 160
    invoke-virtual {p1, v9, v11, v10, v5}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 161
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 164
    if-eqz v2, :cond_9

    .line 166
    invoke-virtual {v2}, Landroid/text/StaticLayout;->getLineCount()I

    .line 168
    move-result v2

    .line 171
    if-ne v2, v3, :cond_8

    .line 172
    iget-boolean v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 174
    if-eqz v2, :cond_8

    .line 176
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 178
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineStart(I)I

    .line 180
    move-result v9

    .line 183
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 184
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineEnd(I)I

    .line 186
    move-result v10

    .line 189
    iget-object v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 190
    invoke-virtual {v2, v4}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 192
    move-result v2

    .line 195
    iget-object v3, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 196
    invoke-virtual {v3, v4}, Landroid/text/StaticLayout;->getLineLeft(I)F

    .line 198
    move-result v3

    .line 201
    iget-object v8, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 202
    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 204
    add-float v11, v3, v4

    .line 206
    int-to-float v2, v2

    .line 208
    add-float/2addr v6, v2

    .line 209
    iget-object v13, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 210
    move-object v7, p1

    .line 212
    move v12, v6

    .line 213
    invoke-virtual/range {v7 .. v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;IIFFLandroid/graphics/Paint;)V

    .line 214
    iget v2, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 217
    cmpl-float v1, v2, v1

    .line 219
    if-eqz v1, :cond_9

    .line 221
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 223
    add-float/2addr v2, v1

    .line 225
    iget v1, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 226
    iget v4, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 228
    int-to-float v4, v4

    .line 230
    mul-float/2addr v1, v4

    .line 231
    add-float/2addr v1, v2

    .line 232
    cmpg-float v0, v1, v0

    .line 233
    if-gez v0, :cond_9

    .line 235
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 237
    add-float/2addr v3, v1

    .line 239
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 240
    invoke-virtual {p1, v0, v3, v6, p0}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 242
    goto :goto_2

    .line 245
    :cond_8
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 246
    invoke-virtual {p0, p1}, Landroid/text/StaticLayout;->draw(Landroid/graphics/Canvas;)V

    .line 248
    :cond_9
    :goto_2
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 251
    return-void
    .line 254
.end method

.method public doTick(J)V
    .locals 20

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-wide/from16 v1, p1

    .line 4
    sget-object v3, Lcom/miui/maml/elements/TextScreenElement;->mLock:Ljava/lang/Object;

    .line 6
    monitor-enter v3

    .line 8
    :try_start_0
    invoke-super/range {p0 .. p2}, Lcom/miui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 9
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 12
    move-result v4

    .line 15
    if-nez v4, :cond_0

    .line 16
    monitor-exit v3

    .line 18
    return-void

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    iput-boolean v4, v0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 21
    iget-object v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getText()Ljava/lang/String;

    .line 25
    move-result-object v6

    .line 28
    iput-object v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 29
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 31
    move-result v6

    .line 34
    if-eqz v6, :cond_1

    .line 35
    const/4 v1, 0x0

    .line 37
    iput-object v1, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 38
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 40
    monitor-exit v3

    .line 43
    return-void

    .line 44
    :cond_1
    iget v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 45
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextSize()V

    .line 47
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextFontIfNeed()V

    .line 50
    iget-object v7, v0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 53
    invoke-static {v5, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 55
    move-result v5

    .line 58
    const/4 v7, 0x1

    .line 59
    if-eqz v5, :cond_3

    .line 60
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 62
    cmpl-float v5, v6, v5

    .line 64
    if-eqz v5, :cond_2

    .line 66
    goto :goto_0

    .line 68
    :cond_2
    move v5, v4

    .line 69
    goto :goto_1

    .line 70
    :cond_3
    :goto_0
    move v5, v7

    .line 71
    :goto_1
    if-eqz v5, :cond_4

    .line 72
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextWidth()V

    .line 74
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getWidth()F

    .line 77
    move-result v6

    .line 80
    iget-boolean v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 81
    if-nez v8, :cond_5

    .line 83
    iget v9, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 85
    if-lez v9, :cond_5

    .line 87
    iget v9, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 89
    cmpl-float v9, v9, v6

    .line 91
    if-lez v9, :cond_5

    .line 93
    move v4, v7

    .line 95
    :cond_5
    if-eqz v8, :cond_6

    .line 96
    iget v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 98
    cmpl-float v8, v6, v8

    .line 100
    if-lez v8, :cond_7

    .line 102
    :cond_6
    iget v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 104
    :cond_7
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getSpacingMult()F

    .line 106
    move-result v8

    .line 109
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getSpacingAdd()F

    .line 110
    move-result v9

    .line 113
    iget-object v10, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 114
    const v11, 0x7f7fffff    # Float.MAX_VALUE

    .line 116
    if-eqz v10, :cond_8

    .line 119
    if-nez v5, :cond_8

    .line 121
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 123
    cmpl-float v5, v5, v6

    .line 125
    if-nez v5, :cond_8

    .line 127
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 129
    cmpl-float v5, v5, v8

    .line 131
    if-nez v5, :cond_8

    .line 133
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 135
    cmpl-float v5, v5, v9

    .line 137
    if-eqz v5, :cond_a

    .line 139
    :cond_8
    iput v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 141
    iput v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 143
    iput v9, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 145
    new-instance v5, Landroid/text/StaticLayout;

    .line 147
    iget-object v13, v0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 149
    iget-object v14, v0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 151
    iget v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mLayoutWidth:F

    .line 153
    float-to-double v8, v6

    .line 155
    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    .line 156
    move-result-wide v8

    .line 159
    double-to-int v15, v8

    .line 160
    invoke-direct/range {p0 .. p0}, Lcom/miui/maml/elements/TextScreenElement;->getAlignment()Landroid/text/Layout$Alignment;

    .line 161
    move-result-object v16

    .line 164
    iget v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingMult:F

    .line 165
    iget v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mSpacingAdd:F

    .line 167
    const/16 v19, 0x0

    .line 169
    move-object v12, v5

    .line 171
    move/from16 v17, v6

    .line 172
    move/from16 v18, v8

    .line 174
    invoke-direct/range {v12 .. v19}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 176
    iput-object v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextLayout:Landroid/text/StaticLayout;

    .line 179
    invoke-virtual {v5}, Landroid/text/StaticLayout;->getLineCount()I

    .line 181
    move-result v6

    .line 184
    invoke-virtual {v5, v6}, Landroid/text/StaticLayout;->getLineTop(I)I

    .line 185
    move-result v5

    .line 188
    int-to-float v5, v5

    .line 189
    iput v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 190
    iget-boolean v6, v0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 192
    if-eqz v6, :cond_9

    .line 194
    iget-object v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 196
    float-to-double v8, v5

    .line 198
    invoke-virtual {v0, v8, v9}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 199
    move-result-wide v8

    .line 202
    invoke-virtual {v6, v8, v9}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 203
    :cond_9
    iput v11, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 206
    :cond_a
    if-eqz v4, :cond_d

    .line 208
    iget v4, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 210
    cmpl-float v5, v4, v11

    .line 212
    if-nez v5, :cond_b

    .line 214
    const/high16 v4, 0x42480000    # 50.0f

    .line 216
    iput v4, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 218
    goto :goto_2

    .line 220
    :cond_b
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeSpeed:I

    .line 221
    int-to-long v5, v5

    .line 223
    iget-wide v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 224
    sub-long v8, v1, v8

    .line 226
    mul-long/2addr v8, v5

    .line 228
    long-to-float v5, v8

    .line 229
    const/high16 v6, 0x447a0000    # 1000.0f

    .line 230
    div-float/2addr v5, v6

    .line 232
    sub-float/2addr v4, v5

    .line 233
    iput v4, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 234
    iget v5, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 236
    neg-float v6, v5

    .line 238
    cmpg-float v6, v4, v6

    .line 239
    if-gez v6, :cond_c

    .line 241
    iget v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mTextSize:F

    .line 243
    iget v8, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueeGap:I

    .line 245
    int-to-float v8, v8

    .line 247
    mul-float/2addr v6, v8

    .line 248
    add-float/2addr v6, v5

    .line 249
    add-float/2addr v6, v4

    .line 250
    iput v6, v0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 251
    :cond_c
    :goto_2
    iput-wide v1, v0, Lcom/miui/maml/elements/TextScreenElement;->mPreviousTime:J

    .line 253
    iput-boolean v7, v0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 255
    :cond_d
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    iget-boolean v1, v0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 258
    if-eqz v1, :cond_e

    .line 260
    const/high16 v1, 0x42340000    # 45.0f

    .line 262
    goto :goto_3

    .line 264
    :cond_e
    const/4 v1, 0x0

    .line 265
    :goto_3
    invoke-virtual {v0, v1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 266
    return-void

    .line 269
    :catchall_0
    move-exception v0

    .line 270
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 271
    throw v0
    .line 272
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->finish()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mText:Ljava/lang/String;

    .line 6
    iput-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 8
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 10
    iput v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMarqueePos:F

    .line 13
    return-void
    .line 15
.end method

.method public getColor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 10
    move-result-wide v0

    .line 13
    double-to-long v0, v0

    .line 14
    long-to-int p0, v0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mColorParser:Lcom/miui/maml/util/ColorParser;

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public getFormat()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/util/TextFormatter;->getFormat()Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getHeight()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 7
    if-gtz v1, :cond_0

    .line 9
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextHeight:F

    .line 11
    :cond_0
    return v0
    .line 13
.end method

.method public getShadowColor()I
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 2
    move-result v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 10
    move-result-wide v0

    .line 13
    double-to-long v0, v0

    .line 14
    long-to-int p0, v0

    .line 15
    return p0

    .line 16
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShadowColorParser:Lcom/miui/maml/util/ColorParser;

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 19
    move-result p0

    .line 22
    return p0
    .line 23
.end method

.method public getText()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    return-object v0

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    .line 9
    move-result-object v0

    .line 12
    if-eqz v0, :cond_1

    .line 13
    const-string v1, "\\n"

    .line 15
    const-string v2, "\n"

    .line 17
    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 19
    move-result-object v0

    .line 22
    iget-boolean p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mMultiLine:Z

    .line 23
    if-nez p0, :cond_1

    .line 25
    const-string p0, " "

    .line 27
    invoke-virtual {v0, v2, p0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 29
    move-result-object v0

    .line 32
    :cond_1
    return-object v0
    .line 33
.end method

.method public getWidth()F
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    cmpg-float v1, v0, v1

    .line 7
    if-gtz v1, :cond_0

    .line 9
    iget v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextWidth:F

    .line 11
    :cond_0
    return v0
    .line 13
.end method

.method public init()V
    .locals 0

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->init()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/TextScreenElement;->updateTextFontIfNeed()V

    .line 5
    return-void
    .line 8
.end method

.method public initProperties()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 2
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextSizeProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 7
    iget-object v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 10
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 12
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mTextShadowColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 15
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 17
    return-void
    .line 20
.end method

.method public onVisibilityChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 2
    iget-boolean v0, p0, Lcom/miui/maml/elements/TextScreenElement;->mShouldMarquee:Z

    .line 5
    if-eqz v0, :cond_0

    .line 7
    if-eqz p1, :cond_0

    .line 9
    const/high16 p1, 0x42340000    # 45.0f

    .line 11
    goto :goto_0

    .line 13
    :cond_0
    const/4 p1, 0x0

    .line 14
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 15
    return-void
    .line 18
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setColorFilter(Landroid/graphics/ColorFilter;)V

    .line 2
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mPaint:Landroid/text/TextPaint;

    .line 5
    if-eqz p0, :cond_0

    .line 7
    invoke-virtual {p0, p1}, Landroid/text/TextPaint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method public varargs setParams([Ljava/lang/Object;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/TextScreenElement;->mFormatter:Lcom/miui/maml/util/TextFormatter;

    .line 2
    invoke-virtual {p0, p1}, Lcom/miui/maml/util/TextFormatter;->setParams([Ljava/lang/Object;)V

    .line 4
    return-void
    .line 7
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/TextScreenElement;->mSetText:Ljava/lang/String;

    .line 2
    return-void
    .line 4
.end method
