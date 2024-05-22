.class public abstract Lcom/miui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

.field protected mAnimations:Ljava/util/ArrayList;

.field protected mAvailableController:Lcom/miui/maml/RendererController;

.field protected mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lcom/miui/maml/elements/ElementGroup;

.field protected mResumed:Z

.field protected mRoot:Lcom/miui/maml/ScreenElementRoot;

.field private mShow:Z

.field protected mStyle:Lcom/miui/maml/StylesManager$Style;

.field protected mTriggers:Lcom/miui/maml/CommandTriggers;

.field private mVisibilityExpression:Lcom/miui/maml/data/Expression;

.field private mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 6
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 8
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 10
    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 12
    if-eqz p1, :cond_0

    .line 14
    if-eqz p2, :cond_0

    .line 16
    const-string/jumbo v0, "style"

    .line 18
    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v0

    .line 24
    invoke-virtual {p2, v0}, Lcom/miui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lcom/miui/maml/StylesManager$Style;

    .line 25
    move-result-object p2

    .line 28
    iput-object p2, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 29
    :cond_0
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 31
    return-void
    .line 34
.end method

.method public static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1

    .line 1
    const/4 v0, 0x1

    .line 2
    if-nez p0, :cond_0

    .line 3
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 5
    move-result p0

    .line 8
    if-eqz p0, :cond_1

    .line 9
    return v0

    .line 11
    :cond_0
    invoke-static {p0, p1}, Lcom/miui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_1

    .line 16
    return v0

    .line 18
    :cond_1
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 4

    .line 1
    if-nez p1, :cond_0

    .line 2
    return-void

    .line 4
    :cond_0
    const-string v0, "category"

    .line 5
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 7
    move-result-object v0

    .line 10
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 11
    const-string v0, "name"

    .line 13
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 15
    move-result-object v0

    .line 18
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 21
    move-result v0

    .line 24
    const/4 v1, 0x1

    .line 25
    xor-int/2addr v0, v1

    .line 26
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 27
    if-eqz v0, :cond_2

    .line 29
    const-string v0, "namesSuffix"

    .line 31
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    move-result-object v0

    .line 36
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 37
    move-result v2

    .line 40
    if-nez v2, :cond_1

    .line 41
    new-instance v2, Ljava/lang/StringBuilder;

    .line 43
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 45
    iget-object v3, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 48
    invoke-static {v2, v3, v0}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 54
    :cond_1
    const-string v0, "dontAddToMap"

    .line 56
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 58
    move-result-object v0

    .line 61
    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 62
    move-result v0

    .line 65
    if-nez v0, :cond_2

    .line 66
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 68
    move-result-object v0

    .line 71
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 72
    new-instance v3, Ljava/lang/ref/WeakReference;

    .line 74
    invoke-direct {v3, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 76
    invoke-virtual {v0, v2, v3}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 79
    :cond_2
    const-string/jumbo v0, "visibility"

    .line 82
    invoke-virtual {p0, p1, v0}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 85
    move-result-object v0

    .line 88
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 89
    move-result v2

    .line 92
    if-nez v2, :cond_5

    .line 93
    const-string v2, "false"

    .line 95
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 97
    move-result v2

    .line 100
    if-eqz v2, :cond_3

    .line 101
    const/4 v0, 0x0

    .line 103
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 104
    goto :goto_0

    .line 106
    :cond_3
    const-string/jumbo v2, "true"

    .line 107
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 110
    move-result v2

    .line 113
    if-eqz v2, :cond_4

    .line 114
    iput-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 116
    goto :goto_0

    .line 118
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 119
    move-result-object v1

    .line 122
    invoke-static {v1, v0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 123
    move-result-object v0

    .line 126
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    .line 127
    :cond_5
    :goto_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->LEFT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 129
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 131
    const-string v1, "align"

    .line 133
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 135
    move-result-object v1

    .line 138
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 139
    move-result v2

    .line 142
    if-eqz v2, :cond_6

    .line 143
    const-string v1, "alignH"

    .line 145
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 147
    move-result-object v1

    .line 150
    :cond_6
    const-string v2, "right"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 153
    move-result v2

    .line 156
    const-string v3, "center"

    .line 157
    if-eqz v2, :cond_7

    .line 159
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->RIGHT:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 161
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 163
    goto :goto_1

    .line 165
    :cond_7
    const-string v2, "left"

    .line 166
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 168
    move-result v2

    .line 171
    if-eqz v2, :cond_8

    .line 172
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 174
    goto :goto_1

    .line 176
    :cond_8
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 177
    move-result v0

    .line 180
    if-eqz v0, :cond_9

    .line 181
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$Align;->CENTER:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 183
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 185
    :cond_9
    :goto_1
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->TOP:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 187
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 189
    const-string v1, "alignV"

    .line 191
    invoke-virtual {p0, p1, v1}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 193
    move-result-object v1

    .line 196
    const-string v2, "bottom"

    .line 197
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 199
    move-result v2

    .line 202
    if-eqz v2, :cond_a

    .line 203
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 205
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 207
    goto :goto_2

    .line 209
    :cond_a
    const-string/jumbo v2, "top"

    .line 210
    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 213
    move-result v2

    .line 216
    if-eqz v2, :cond_b

    .line 217
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 219
    goto :goto_2

    .line 221
    :cond_b
    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 222
    move-result v0

    .line 225
    if-eqz v0, :cond_c

    .line 226
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$AlignV;->CENTER:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 228
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 230
    :cond_c
    :goto_2
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadTriggers(Lorg/w3c/dom/Element;)V

    .line 232
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    .line 235
    return-void
    .line 238
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    new-instance v0, Lcom/miui/maml/elements/ScreenElement$1;

    .line 2
    invoke-direct {v0, p0}, Lcom/miui/maml/elements/ScreenElement$1;-><init>(Lcom/miui/maml/elements/ScreenElement;)V

    .line 4
    const/4 p0, 0x0

    .line 7
    invoke-static {p1, p0, v0}, Lcom/miui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/util/Utils$XmlTraverseListener;)V

    .line 8
    return-void
    .line 11
.end method

.method private setVisibilityVar(Z)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 6
    if-nez v0, :cond_0

    .line 8
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 10
    new-instance v1, Ljava/lang/StringBuilder;

    .line 12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 14
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 17
    const-string v3, ".visibility"

    .line 19
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 21
    move-result-object v1

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 25
    move-result-object v2

    .line 28
    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 29
    const/4 v3, 0x1

    .line 31
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 32
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 35
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityVar:Lcom/miui/maml/data/IndexedVariable;

    .line 37
    if-eqz p1, :cond_1

    .line 39
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    const-wide/16 v0, 0x0

    .line 44
    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 46
    :cond_2
    return-void
    .line 49
.end method


# virtual methods
.method public acceptVisitor(Lcom/miui/maml/elements/ScreenElementVisitor;)V
    .locals 0

    .line 1
    invoke-interface {p1, p0}, Lcom/miui/maml/elements/ScreenElementVisitor;->visit(Lcom/miui/maml/elements/ScreenElement;)V

    .line 2
    return-void
    .line 5
.end method

.method public createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 2
    move-result-object p0

    .line 5
    if-nez p0, :cond_0

    .line 6
    const/4 p0, 0x0

    .line 8
    return-object p0

    .line 9
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 10
    move-result-object p0

    .line 13
    return-object p0
    .line 14
.end method

.method public final descale(D)D
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 4
    move-result p0

    .line 7
    float-to-double v0, p0

    .line 8
    div-double/2addr p1, v0

    .line 9
    return-wide p1
    .line 10
.end method

.method public abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method public doTick(J)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 6
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-ge v1, v0, :cond_0

    .line 11
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 15
    move-result-object v2

    .line 18
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 19
    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->tick(J)V

    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 24
    goto :goto_0

    .line 26
    :cond_0
    return-void
    .line 27
.end method

.method public final evaluate(Lcom/miui/maml/data/Expression;)D
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const-wide/16 p0, 0x0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 7
    move-result-wide p0

    .line 10
    :goto_0
    return-wide p0
    .line 11
.end method

.method public final evaluateStr(Lcom/miui/maml/data/Expression;)Ljava/lang/String;
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    const/4 p0, 0x0

    .line 4
    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object p0

    .line 9
    :goto_0
    return-object p0
    .line 10
.end method

.method public findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    :goto_0
    return-object p0
    .line 14
.end method

.method public finish()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->finish()V

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 9
    if-eqz v0, :cond_1

    .line 11
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 13
    move-result v0

    .line 16
    const/4 v1, 0x0

    .line 17
    :goto_0
    if-ge v1, v0, :cond_1

    .line 18
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 20
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 26
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->finish()V

    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 31
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method

.method public getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mStyle:Lcom/miui/maml/StylesManager$Style;

    .line 2
    invoke-static {p1, p2, p0}, Lcom/miui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lcom/miui/maml/StylesManager$Style;)Ljava/lang/String;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    return p3
    .line 17
.end method

.method public getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 12
    move-result p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return p0

    .line 16
    :catch_0
    :cond_0
    return p3
    .line 17
.end method

.method public getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    move-result p1

    .line 9
    if-nez p1, :cond_0

    .line 10
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    .line 12
    move-result-wide p0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 15
    return-wide p0

    .line 16
    :catch_0
    :cond_0
    return-wide p3
    .line 17
.end method

.method public getContext()Lcom/miui/maml/ScreenContext;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getContext()Lcom/miui/maml/ScreenContext;

    .line 4
    move-result-object p0

    .line 7
    return-object p0
    .line 8
.end method

.method public final getFramerate()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 2
    if-nez p0, :cond_0

    .line 4
    const/4 p0, 0x0

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    .line 8
    move-result p0

    .line 11
    :goto_0
    return p0
    .line 12
.end method

.method public getLeft(FF)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    if-gtz v0, :cond_0

    .line 5
    return p1

    .line 7
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$Align:[I

    .line 8
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlign:Lcom/miui/maml/elements/ScreenElement$Align;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result p0

    .line 15
    aget p0, v0, p0

    .line 16
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_2

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    .line 25
    div-float/2addr p2, p0

    .line 27
    :cond_2
    sub-float/2addr p1, p2

    .line 28
    :goto_0
    return p1
    .line 29
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getNotifierManager()Lcom/miui/maml/NotifierManager;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mContext:Landroid/content/Context;

    .line 6
    invoke-static {p0}, Lcom/miui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lcom/miui/maml/NotifierManager;

    .line 8
    move-result-object p0

    .line 11
    return-object p0
    .line 12
.end method

.method public getParent()Lcom/miui/maml/elements/ElementGroup;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    return-object p0
    .line 4
.end method

.method public getRendererController()Lcom/miui/maml/RendererController;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 6
    move-result-object p0

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p0, 0x0

    .line 11
    :goto_0
    return-object p0
    .line 12
.end method

.method public getRoot()Lcom/miui/maml/ScreenElementRoot;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    return-object p0
    .line 4
.end method

.method public getTop(FF)F
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p2, v0

    .line 3
    if-gtz v0, :cond_0

    .line 5
    return p1

    .line 7
    :cond_0
    sget-object v0, Lcom/miui/maml/elements/ScreenElement$2;->$SwitchMap$com$miui$maml$elements$ScreenElement$AlignV:[I

    .line 8
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mAlignV:Lcom/miui/maml/elements/ScreenElement$AlignV;

    .line 10
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    .line 12
    move-result p0

    .line 15
    aget p0, v0, p0

    .line 16
    const/4 v0, 0x1

    .line 18
    if-eq p0, v0, :cond_1

    .line 19
    const/4 v0, 0x2

    .line 21
    if-eq p0, v0, :cond_2

    .line 22
    goto :goto_0

    .line 24
    :cond_1
    const/high16 p0, 0x40000000    # 2.0f

    .line 25
    div-float/2addr p2, p0

    .line 27
    :cond_2
    sub-float/2addr p1, p2

    .line 28
    :goto_0
    return p1
    .line 29
.end method

.method public final getVariables()Lcom/miui/maml/data/Variables;
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object p0

    .line 5
    iget-object p0, p0, Lcom/miui/maml/ScreenContext;->mVariables:Lcom/miui/maml/data/Variables;

    .line 6
    return-object p0
    .line 8
.end method

.method public init()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mInitShow:Z

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 13
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 16
    if-eqz v1, :cond_1

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->init()V

    .line 20
    :cond_1
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 23
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 26
    if-eqz v0, :cond_2

    .line 28
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 30
    move-result v0

    .line 33
    const/4 v1, 0x0

    .line 34
    :goto_0
    if-ge v1, v0, :cond_2

    .line 35
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 37
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 39
    move-result-object v2

    .line 42
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 43
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->init()V

    .line 45
    add-int/lit8 v1, v1, 0x1

    .line 48
    goto :goto_0

    .line 50
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 51
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 54
    move-result v0

    .line 57
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 58
    const-string v0, "init"

    .line 61
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 63
    return-void
    .line 66
.end method

.method public isVisible()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 2
    return p0
    .line 4
.end method

.method public isVisibleInner()Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 2
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mVisibilityExpression:Lcom/miui/maml/data/Expression;

    .line 6
    if-nez v0, :cond_0

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 11
    move-result-wide v0

    .line 14
    const-wide/16 v2, 0x0

    .line 15
    cmpl-double v0, v0, v2

    .line 17
    if-lez v0, :cond_2

    .line 19
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 21
    if-nez p0, :cond_1

    .line 23
    goto :goto_1

    .line 25
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 26
    move-result p0

    .line 29
    if-eqz p0, :cond_2

    .line 30
    :goto_1
    const/4 p0, 0x1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    const/4 p0, 0x0

    .line 34
    :goto_2
    return p0
    .line 35
.end method

.method public loadTriggers(Lorg/w3c/dom/Element;)V
    .locals 1

    .line 1
    const-string v0, "Triggers"

    .line 2
    invoke-static {p1, v0}, Lcom/miui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    .line 4
    move-result-object p1

    .line 7
    if-eqz p1, :cond_0

    .line 8
    new-instance v0, Lcom/miui/maml/CommandTriggers;

    .line 10
    invoke-direct {v0, p1, p0}, Lcom/miui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 15
    :cond_0
    return-void
    .line 17
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return-object p0
    .line 3
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onSetAnimBefore()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
    .line 3
.end method

.method public onVisibilityChange(Z)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getFramerate()F

    .line 7
    move-result p1

    .line 10
    iput p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 11
    const/4 p1, 0x0

    .line 13
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    iget p1, p0, Lcom/miui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 18
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method

.method public pause()V
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 3
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz v1, :cond_0

    .line 7
    invoke-virtual {v1}, Lcom/miui/maml/CommandTriggers;->pause()V

    .line 9
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 12
    if-eqz v1, :cond_1

    .line 14
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v1

    .line 19
    :goto_0
    if-ge v0, v1, :cond_1

    .line 20
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 22
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v2

    .line 27
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 28
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->pause()V

    .line 30
    add-int/lit8 v0, v0, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    return-void
    .line 36
.end method

.method public final pauseAnim()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public pauseAnim(J)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->pauseAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    if-eqz p1, :cond_0

    .line 6
    invoke-virtual {v0, p1}, Lcom/miui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final playAnim()V
    .locals 7

    const-wide/16 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x1

    move-object v0, p0

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 13

    move-object v0, p0

    .line 5
    iget-object v1, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    .line 7
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/miui/maml/animation/BaseAnimation;

    move-wide v5, p1

    move-wide/from16 v7, p3

    move-wide/from16 v9, p5

    move/from16 v11, p7

    move/from16 v12, p8

    invoke-virtual/range {v4 .. v12}, Lcom/miui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final playAnim(JJZZ)V
    .locals 11

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v9

    move-object v0, p0

    move-wide v1, v9

    move-wide v3, p1

    move-wide v5, p3

    move/from16 v7, p5

    move/from16 v8, p6

    .line 3
    invoke-virtual/range {v0 .. v8}, Lcom/miui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 4
    invoke-virtual {p0, v9, v10}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public final postInMainThread(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    return-void
    .line 13
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getRendererController()Lcom/miui/maml/RendererController;

    .line 4
    move-result-object p0

    .line 7
    if-eqz p0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->postRunnableAtFrontOfQueue(Ljava/lang/Runnable;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0, p1}, Lcom/miui/maml/RendererController;->removeToken(Lcom/miui/maml/FramerateTokenList$FramerateToken;)V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 12
    return-void
    .line 15
.end method

.method public final requestFramerate(F)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v1, p1, v0

    .line 3
    if-gez v1, :cond_0

    .line 5
    return-void

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 8
    if-nez v1, :cond_2

    .line 10
    cmpl-float v0, p1, v0

    .line 12
    if-nez v0, :cond_1

    .line 14
    return-void

    .line 16
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 17
    move-result-object v0

    .line 20
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 21
    move-result-object v0

    .line 24
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 25
    :cond_2
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 27
    if-eqz v0, :cond_4

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 31
    invoke-virtual {v0}, Lcom/miui/maml/ScreenElementRoot;->getSystemFrameRate()F

    .line 33
    move-result v0

    .line 36
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mFramerateToken:Lcom/miui/maml/FramerateTokenList$FramerateToken;

    .line 37
    cmpg-float v1, p1, v0

    .line 39
    if-gtz v1, :cond_3

    .line 41
    goto :goto_0

    .line 43
    :cond_3
    move p1, v0

    .line 44
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    .line 45
    :cond_4
    return-void
    .line 48
.end method

.method public requestUpdate()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRendererController()Lcom/miui/maml/RendererController;

    .line 2
    move-result-object p0

    .line 5
    if-eqz p0, :cond_0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/RendererController;->forceUpdate()V

    .line 8
    :cond_0
    return-void
    .line 11
.end method

.method public final reset()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->reset(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public reset(J)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->reset(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mResumed:Z

    .line 3
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mTriggers:Lcom/miui/maml/CommandTriggers;

    .line 5
    if-eqz v0, :cond_0

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/CommandTriggers;->resume()V

    .line 9
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 12
    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 16
    move-result v0

    .line 19
    const/4 v1, 0x0

    .line 20
    :goto_0
    if-ge v1, v0, :cond_1

    .line 21
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 23
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 25
    move-result-object v2

    .line 28
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 29
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->resume()V

    .line 31
    add-int/lit8 v1, v1, 0x1

    .line 34
    goto :goto_0

    .line 36
    :cond_1
    return-void
    .line 37
.end method

.method public final resumeAnim()V
    .locals 2

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 3
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    return-void
.end method

.method public resumeAnim(J)V
    .locals 3

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 6
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lcom/miui/maml/animation/BaseAnimation;->resumeAnim(J)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final scale(D)F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/ScreenElementRoot;->getScale()F

    .line 4
    move-result p0

    .line 7
    float-to-double v0, p0

    .line 8
    mul-double/2addr p1, v0

    .line 9
    double-to-float p0, p1

    .line 10
    return p0
    .line 11
.end method

.method public setActualHeight(D)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 18
    const-string v3, ".actual_h"

    .line 20
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 31
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualHeightVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 38
    return-void
    .line 41
.end method

.method public setActualWidth(D)V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 7
    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/miui/maml/data/IndexedVariable;

    .line 11
    new-instance v1, Ljava/lang/StringBuilder;

    .line 13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 15
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 18
    const-string v3, ".actual_w"

    .line 20
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    move-result-object v1

    .line 25
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 26
    move-result-object v2

    .line 29
    const/4 v3, 0x1

    .line 30
    invoke-direct {v0, v1, v2, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 31
    iput-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 34
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mActualWidthVar:Lcom/miui/maml/data/IndexedVariable;

    .line 36
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 38
    return-void
    .line 41
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimBefore()V

    .line 6
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 11
    move-result v0

    .line 14
    const/4 v1, 0x0

    .line 15
    :goto_0
    if-ge v1, v0, :cond_1

    .line 16
    iget-object v2, p0, Lcom/miui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v2

    .line 23
    check-cast v2, Lcom/miui/maml/animation/BaseAnimation;

    .line 24
    invoke-virtual {v2}, Lcom/miui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    .line 26
    move-result-object v3

    .line 29
    invoke-static {p1, v3}, Lcom/miui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    .line 30
    move-result v3

    .line 33
    xor-int/lit8 v4, v3, 0x1

    .line 34
    invoke-virtual {v2, v4}, Lcom/miui/maml/animation/BaseAnimation;->setDisable(Z)V

    .line 36
    if-eqz v3, :cond_0

    .line 39
    invoke-virtual {p0, v2}, Lcom/miui/maml/elements/ScreenElement;->onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V

    .line 41
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 44
    goto :goto_0

    .line 46
    :cond_1
    return-void
    .line 47
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    const-string v0, "."

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    goto :goto_0

    .line 16
    :cond_0
    const-string v0, ","

    .line 17
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 19
    move-result-object p1

    .line 22
    goto :goto_1

    .line 23
    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 24
    :goto_1
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 25
    return-void
    .line 28
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 6
    invoke-virtual {v0, v1}, Lcom/miui/maml/ScreenElementRoot;->removeElement(Ljava/lang/String;)V

    .line 8
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 13
    move-result-object v0

    .line 16
    new-instance v1, Ljava/lang/ref/WeakReference;

    .line 17
    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 19
    invoke-virtual {v0, p1, v1}, Lcom/miui/maml/ScreenElementRoot;->addElement(Ljava/lang/String;Ljava/lang/ref/WeakReference;)V

    .line 22
    return-void
    .line 25
.end method

.method public setParent(Lcom/miui/maml/elements/ElementGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 2
    return-void
    .line 4
.end method

.method public show(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mShow:Z

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 4
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 7
    return-void
    .line 10
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    invoke-virtual {p0, p2}, Lcom/miui/maml/elements/ScreenElement;->show(Z)V

    .line 12
    :cond_0
    return-void
    .line 15
.end method

.method public tick(J)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->updateVisibility()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 5
    move-result v0

    .line 8
    if-nez v0, :cond_0

    .line 9
    return-void

    .line 11
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 12
    return-void
    .line 15
.end method

.method public updateVisibility()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisibleInner()Z

    .line 2
    move-result v0

    .line 5
    iget-boolean v1, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 6
    if-eq v1, v0, :cond_0

    .line 8
    iput-boolean v0, p0, Lcom/miui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 10
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 12
    if-eqz v0, :cond_0

    .line 15
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 17
    move-result-wide v0

    .line 20
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 21
    :cond_0
    return-void
    .line 24
.end method
