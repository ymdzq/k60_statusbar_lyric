.class public abstract Lcom/miui/maml/elements/AnimatedScreenElement;
.super Lcom/miui/maml/elements/ScreenElement;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final LOG_TAG:Ljava/lang/String; = "AnimatedScreenElement"

.field private static final S_PAINT_COLOR:I = -0x4c06f6


# instance fields
.field private mActualXVar:Lcom/miui/maml/data/IndexedVariable;

.field private mActualYVar:Lcom/miui/maml/data/IndexedVariable;

.field protected mAlpha:I

.field public mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

.field private mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

.field private mCamera:Landroid/graphics/Camera;

.field protected mContentDescription:Ljava/lang/String;

.field protected mContentDescriptionExp:Lcom/miui/maml/data/Expression;

.field private mFolmeMode:Z

.field protected mHasContentDescription:Z

.field public mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mInterceptTouch:Z

.field private mIsHaptic:Z

.field private mListener:Lcom/miui/maml/folme/MamlTransitionListener;

.field private mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

.field private mMarginBottom:F

.field private mMarginLeft:F

.field private mMarginRight:F

.field private mMarginTop:F

.field private mMatrix:Landroid/graphics/Matrix;

.field private mPaint:Landroid/graphics/Paint;

.field public mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mPositions:Lcom/miui/maml/animation/PositionAnimation;

.field protected mPressed:Z

.field public mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mRotations:Lcom/miui/maml/animation/RotationAnimation;

.field private mScaleExpression:Lcom/miui/maml/data/Expression;

.field public mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field private mScales:Lcom/miui/maml/animation/ScaleAnimation;

.field private mSizes:Lcom/miui/maml/animation/SizeAnimation;

.field protected mTickListener:Lcom/miui/maml/elements/FunctionElement;

.field protected mTintChanged:Z

.field protected mTintColor:I

.field protected mTintColorParser:Lcom/miui/maml/util/ColorParser;

.field public mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field protected mTintFilter:Landroid/graphics/PorterDuffColorFilter;

.field protected mTintMode:Landroid/graphics/PorterDuff$Mode;

.field protected mTintModeExp:Lcom/miui/maml/data/Expression;

.field public mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

.field protected mTouchable:Z

.field private mVirtualViewId:I

.field public mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

.field public mYProperty:Lcom/miui/maml/folme/PropertyWrapper;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/ScreenElementRoot;)V

    .line 2
    new-instance p2, Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 5
    invoke-direct {p2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    .line 7
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 10
    sget-object p2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    .line 12
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 14
    const/4 p2, 0x1

    .line 16
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 17
    new-instance p2, Landroid/graphics/Matrix;

    .line 19
    invoke-direct {p2}, Landroid/graphics/Matrix;-><init>()V

    .line 21
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 24
    new-instance p2, Landroid/graphics/Paint;

    .line 26
    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    .line 28
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 31
    const/high16 p2, -0x80000000

    .line 33
    iput p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 35
    new-instance p2, Lcom/miui/maml/folme/MamlTransitionListener;

    .line 37
    invoke-direct {p2, p0}, Lcom/miui/maml/folme/MamlTransitionListener;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 39
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 42
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 44
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 47
    if-eqz p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 51
    invoke-virtual {p1, p0}, Lcom/miui/maml/ScreenElementRoot;->addAccessibleElements(Lcom/miui/maml/elements/AnimatedScreenElement;)V

    .line 53
    :cond_0
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 56
    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    .line 58
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 63
    const/high16 p2, 0x3f800000    # 1.0f

    .line 65
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 67
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 70
    const p2, -0x4c06f6

    .line 72
    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 75
    new-instance p1, Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 78
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListener:Lcom/miui/maml/folme/MamlTransitionListener;

    .line 80
    invoke-direct {p1, p2}, Lcom/miui/maml/folme/TransitionListenerWrapper;-><init>(Lcom/miui/maml/folme/MamlTransitionListener;)V

    .line 82
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 85
    return-void
    .line 87
.end method

.method private createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;
    .locals 1

    .line 1
    invoke-virtual {p0, p2, p3}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 2
    move-result-object p3

    .line 5
    invoke-static {p1, p3}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 6
    move-result-object p3

    .line 9
    if-nez p3, :cond_0

    .line 10
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 12
    move-result v0

    .line 15
    if-nez v0, :cond_0

    .line 16
    invoke-virtual {p0, p2, p4}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    move-result-object p0

    .line 21
    invoke-static {p1, p0}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 22
    move-result-object p3

    .line 25
    :cond_0
    return-object p3
    .line 26
.end method

.method private folmeFromToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$3;

    .line 10
    invoke-direct {v1, p0, p1, p2, p3}, Lcom/miui/maml/elements/AnimatedScreenElement$3;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method private folmeSetToImpl(Lmiuix/animation/controller/AnimState;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$2;

    .line 10
    invoke-direct {v1, p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement$2;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method private folmeToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 6
    move-result-object v0

    .line 9
    new-instance v1, Lcom/miui/maml/elements/AnimatedScreenElement$1;

    .line 10
    invoke-direct {v1, p0, p1, p2}, Lcom/miui/maml/elements/AnimatedScreenElement$1;-><init>(Lcom/miui/maml/elements/AnimatedScreenElement;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V

    .line 12
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 15
    return-void
    .line 18
.end method

.method private handleCancel()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    return-void

    .line 6
    :cond_0
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 7
    if-eqz v0, :cond_1

    .line 9
    const/4 v0, 0x0

    .line 11
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 12
    const-string v0, "cancel"

    .line 14
    invoke-virtual {p0, v0}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 19
    :cond_1
    return-void
    .line 22
.end method

.method private isInMainThread()Z
    .locals 1

    .line 1
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    .line 2
    move-result-object p0

    .line 5
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    .line 6
    move-result-object v0

    .line 9
    if-eq p0, v0, :cond_0

    .line 10
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_0
    const/4 p0, 0x1

    .line 14
    return p0
    .line 15
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    move-object/from16 v1, p1

    .line 4
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/ScreenElement;->getVariables()Lcom/miui/maml/data/Variables;

    .line 6
    move-result-object v8

    .line 9
    const/4 v2, 0x0

    .line 10
    if-eqz v1, :cond_5

    .line 11
    const-string v3, "scale"

    .line 13
    invoke-direct {v0, v8, v1, v3, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 15
    move-result-object v3

    .line 18
    iput-object v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 19
    const-string/jumbo v3, "x"

    .line 21
    const-string v4, "left"

    .line 24
    invoke-direct {v0, v8, v1, v3, v4}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 26
    move-result-object v3

    .line 29
    const-string/jumbo v4, "y"

    .line 30
    const-string/jumbo v5, "top"

    .line 33
    invoke-direct {v0, v8, v1, v4, v5}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 36
    move-result-object v4

    .line 39
    const-string/jumbo v5, "w"

    .line 40
    const-string/jumbo v6, "width"

    .line 43
    invoke-direct {v0, v8, v1, v5, v6}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 46
    move-result-object v5

    .line 49
    const-string v6, "h"

    .line 50
    const-string v7, "height"

    .line 52
    invoke-direct {v0, v8, v1, v6, v7}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 54
    move-result-object v6

    .line 57
    const-string v7, "angle"

    .line 58
    const-string v9, "rotation"

    .line 60
    invoke-direct {v0, v8, v1, v7, v9}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 62
    move-result-object v7

    .line 65
    const-string v9, "centerX"

    .line 66
    const-string v10, "pivotX"

    .line 68
    invoke-direct {v0, v8, v1, v9, v10}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 70
    move-result-object v9

    .line 73
    const-string v10, "centerY"

    .line 74
    const-string v11, "pivotY"

    .line 76
    invoke-direct {v0, v8, v1, v10, v11}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 78
    move-result-object v10

    .line 81
    const-string v11, "alpha"

    .line 82
    invoke-direct {v0, v8, v1, v11, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 84
    move-result-object v11

    .line 87
    const-string v12, "scaleX"

    .line 88
    invoke-direct {v0, v8, v1, v12, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 90
    move-result-object v12

    .line 93
    const-string v13, "scaleY"

    .line 94
    invoke-direct {v0, v8, v1, v13, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 96
    move-result-object v2

    .line 99
    const-string v13, "angleX"

    .line 100
    const-string v14, "rotationX"

    .line 102
    invoke-direct {v0, v8, v1, v13, v14}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 104
    move-result-object v13

    .line 107
    const-string v14, "angleY"

    .line 108
    const-string v15, "rotationY"

    .line 110
    invoke-direct {v0, v8, v1, v14, v15}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 112
    move-result-object v14

    .line 115
    const-string v15, "angleZ"

    .line 116
    move-object/from16 v16, v2

    .line 118
    const-string v2, "rotationZ"

    .line 120
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 122
    move-result-object v2

    .line 125
    const-string v15, "centerZ"

    .line 126
    move-object/from16 v17, v2

    .line 128
    const-string v2, "pivotZ"

    .line 130
    invoke-direct {v0, v8, v1, v15, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->createExp(Lcom/miui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 132
    move-result-object v2

    .line 135
    iget-boolean v15, v0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 136
    if-eqz v15, :cond_0

    .line 138
    new-instance v15, Lcom/miui/maml/data/IndexedVariable;

    .line 140
    move-object/from16 v18, v2

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    .line 144
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 146
    move-object/from16 v19, v3

    .line 149
    iget-object v3, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 151
    move-object/from16 v20, v4

    .line 153
    const-string v4, ".actual_x"

    .line 155
    invoke-static {v2, v3, v4}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 157
    move-result-object v2

    .line 160
    const/4 v3, 0x1

    .line 161
    invoke-direct {v15, v2, v8, v3}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 162
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 165
    new-instance v2, Lcom/miui/maml/data/IndexedVariable;

    .line 167
    new-instance v3, Ljava/lang/StringBuilder;

    .line 169
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 171
    iget-object v4, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 174
    const-string v15, ".actual_y"

    .line 176
    invoke-static {v3, v4, v15}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 178
    move-result-object v3

    .line 181
    const/4 v4, 0x1

    .line 182
    invoke-direct {v2, v3, v8, v4}, Lcom/miui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Z)V

    .line 183
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 186
    goto :goto_0

    .line 188
    :cond_0
    move-object/from16 v18, v2

    .line 189
    move-object/from16 v19, v3

    .line 191
    move-object/from16 v20, v4

    .line 193
    const/4 v4, 0x1

    .line 195
    :goto_0
    const-string/jumbo v2, "touchable"

    .line 196
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 199
    move-result-object v2

    .line 202
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 203
    move-result v2

    .line 206
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 207
    const-string v2, "interceptTouch"

    .line 209
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 211
    move-result-object v2

    .line 214
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 215
    move-result v2

    .line 218
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 219
    const-string v2, "haptic"

    .line 221
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 223
    move-result-object v2

    .line 226
    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 227
    move-result v2

    .line 230
    iput-boolean v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 231
    const-string v2, "contentDescription"

    .line 233
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 235
    move-result-object v2

    .line 238
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 239
    const-string v2, "contentDescriptionExp"

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 243
    move-result-object v2

    .line 246
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 247
    move-result-object v2

    .line 250
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 251
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 253
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 255
    move-result v2

    .line 258
    const/4 v3, 0x0

    .line 259
    if-eqz v2, :cond_2

    .line 260
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 262
    if-eqz v2, :cond_1

    .line 264
    goto :goto_1

    .line 266
    :cond_1
    move v4, v3

    .line 267
    :cond_2
    :goto_1
    iput-boolean v4, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 268
    const-string v2, "marginLeft"

    .line 270
    const/4 v4, 0x0

    .line 272
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 273
    move-result v2

    .line 276
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 277
    const-string v2, "marginRight"

    .line 279
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 281
    move-result v2

    .line 284
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 285
    const-string v2, "marginTop"

    .line 287
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 289
    move-result v2

    .line 292
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 293
    const-string v2, "marginBottom"

    .line 295
    invoke-static {v1, v2, v4}, Lcom/miui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    .line 297
    move-result v2

    .line 300
    iput v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 301
    const-string/jumbo v2, "tint"

    .line 303
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 306
    move-result-object v2

    .line 309
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 310
    move-result v4

    .line 313
    if-nez v4, :cond_3

    .line 314
    new-instance v4, Lcom/miui/maml/util/ColorParser;

    .line 316
    invoke-direct {v4, v8, v2}, Lcom/miui/maml/util/ColorParser;-><init>(Lcom/miui/maml/data/Variables;Ljava/lang/String;)V

    .line 318
    iput-object v4, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 321
    :cond_3
    const-string/jumbo v2, "tintmode"

    .line 323
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 326
    move-result-object v2

    .line 329
    invoke-static {v8, v2}, Lcom/miui/maml/data/Expression;->build(Lcom/miui/maml/data/Variables;Ljava/lang/String;)Lcom/miui/maml/data/Expression;

    .line 330
    move-result-object v2

    .line 333
    iput-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 334
    iget-object v2, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 336
    if-eqz v2, :cond_4

    .line 338
    invoke-virtual {v2}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 340
    move-result v3

    .line 343
    :cond_4
    iput v3, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 344
    const-string v2, "folmeMode"

    .line 346
    invoke-virtual {v0, v1, v2}, Lcom/miui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    move-result-object v1

    .line 351
    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    .line 352
    move-result v1

    .line 355
    iput-boolean v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 356
    move-object v15, v12

    .line 358
    move-object/from16 v21, v18

    .line 359
    move-object/from16 v4, v19

    .line 361
    move-object/from16 v18, v9

    .line 363
    move-object/from16 v19, v10

    .line 365
    move-object v12, v11

    .line 367
    move-object v9, v5

    .line 368
    move-object v10, v6

    .line 369
    move-object v11, v7

    .line 370
    goto :goto_2

    .line 371
    :cond_5
    move-object v4, v2

    .line 372
    move-object v9, v4

    .line 373
    move-object v10, v9

    .line 374
    move-object v11, v10

    .line 375
    move-object v12, v11

    .line 376
    move-object v13, v12

    .line 377
    move-object v14, v13

    .line 378
    move-object v15, v14

    .line 379
    move-object/from16 v16, v15

    .line 380
    move-object/from16 v17, v16

    .line 382
    move-object/from16 v18, v17

    .line 384
    move-object/from16 v19, v18

    .line 386
    move-object/from16 v20, v19

    .line 388
    move-object/from16 v21, v20

    .line 390
    :goto_2
    new-instance v6, Lcom/miui/maml/folme/PropertyWrapper;

    .line 392
    new-instance v1, Ljava/lang/StringBuilder;

    .line 394
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 396
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 399
    const-string v3, ".x"

    .line 401
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 403
    move-result-object v2

    .line 406
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 407
    move-result v5

    .line 410
    const-wide/16 v22, 0x0

    .line 411
    move-object v1, v6

    .line 413
    move-object v3, v8

    .line 414
    move-object/from16 p1, v15

    .line 415
    move-object v15, v6

    .line 417
    move-wide/from16 v6, v22

    .line 418
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 420
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 423
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 425
    new-instance v1, Ljava/lang/StringBuilder;

    .line 427
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 429
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 432
    const-string v3, ".y"

    .line 434
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 436
    move-result-object v2

    .line 439
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 440
    move-result v5

    .line 443
    const-wide/16 v6, 0x0

    .line 444
    move-object v1, v15

    .line 446
    move-object v3, v8

    .line 447
    move-object/from16 v4, v20

    .line 448
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 450
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 453
    new-instance v15, Lcom/miui/maml/folme/PropertyWrapper;

    .line 455
    new-instance v1, Ljava/lang/StringBuilder;

    .line 457
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 459
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 462
    const-string v3, ".w"

    .line 464
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 466
    move-result-object v2

    .line 469
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 470
    move-result v5

    .line 473
    const-wide/high16 v22, -0x4010000000000000L    # -1.0

    .line 474
    move-object v1, v15

    .line 476
    move-object v3, v8

    .line 477
    move-object v4, v9

    .line 478
    move-wide/from16 v6, v22

    .line 479
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 481
    iput-object v15, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 484
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 486
    new-instance v1, Ljava/lang/StringBuilder;

    .line 488
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 490
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 493
    const-string v3, ".h"

    .line 495
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 497
    move-result-object v2

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 501
    move-result v5

    .line 504
    move-object v1, v9

    .line 505
    move-object v3, v8

    .line 506
    move-object v4, v10

    .line 507
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 508
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 511
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 513
    new-instance v1, Ljava/lang/StringBuilder;

    .line 515
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 517
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 520
    const-string v3, ".rotation"

    .line 522
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 524
    move-result-object v2

    .line 527
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 528
    move-result v5

    .line 531
    const-wide/16 v6, 0x0

    .line 532
    move-object v1, v9

    .line 534
    move-object v3, v8

    .line 535
    move-object v4, v11

    .line 536
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 537
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 540
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 542
    new-instance v1, Ljava/lang/StringBuilder;

    .line 544
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 546
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 549
    const-string v3, ".alpha"

    .line 551
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 553
    move-result-object v2

    .line 556
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 557
    move-result v5

    .line 560
    const-wide v6, 0x406fe00000000000L    # 255.0

    .line 561
    move-object v1, v9

    .line 566
    move-object v3, v8

    .line 567
    move-object v4, v12

    .line 568
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 569
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 572
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 574
    new-instance v1, Ljava/lang/StringBuilder;

    .line 576
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 578
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 581
    const-string v3, ".rotationX"

    .line 583
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 585
    move-result-object v2

    .line 588
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 589
    move-result v5

    .line 592
    const-wide/16 v10, 0x0

    .line 593
    move-object v1, v9

    .line 595
    move-object v3, v8

    .line 596
    move-object v4, v13

    .line 597
    move-wide v6, v10

    .line 598
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 599
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 602
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 604
    new-instance v1, Ljava/lang/StringBuilder;

    .line 606
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 608
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 611
    const-string v3, ".rotationY"

    .line 613
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 615
    move-result-object v2

    .line 618
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 619
    move-result v5

    .line 622
    move-object v1, v9

    .line 623
    move-object v3, v8

    .line 624
    move-object v4, v14

    .line 625
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 626
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 629
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 631
    new-instance v1, Ljava/lang/StringBuilder;

    .line 633
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 635
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 638
    const-string v3, ".rotationZ"

    .line 640
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 642
    move-result-object v2

    .line 645
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 646
    move-result v5

    .line 649
    move-object v1, v9

    .line 650
    move-object v3, v8

    .line 651
    move-object/from16 v4, v17

    .line 652
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 654
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 657
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 659
    new-instance v1, Ljava/lang/StringBuilder;

    .line 661
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 663
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 666
    const-string v3, ".scaleX"

    .line 668
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 670
    move-result-object v2

    .line 673
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 674
    move-result v5

    .line 677
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    .line 678
    move-object v1, v9

    .line 680
    move-object v3, v8

    .line 681
    move-object/from16 v4, p1

    .line 682
    move-wide v6, v10

    .line 684
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 685
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 688
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 690
    new-instance v1, Ljava/lang/StringBuilder;

    .line 692
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 694
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 697
    const-string v3, ".scaleY"

    .line 699
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 701
    move-result-object v2

    .line 704
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 705
    move-result v5

    .line 708
    move-object v1, v9

    .line 709
    move-object v3, v8

    .line 710
    move-object/from16 v4, v16

    .line 711
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 713
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 716
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 718
    new-instance v1, Ljava/lang/StringBuilder;

    .line 720
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 725
    const-string v3, ".tintColor"

    .line 727
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 729
    move-result-object v2

    .line 732
    const/4 v4, 0x0

    .line 733
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 734
    move-result v5

    .line 737
    iget v1, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 738
    int-to-double v6, v1

    .line 740
    move-object v1, v9

    .line 741
    move-object v3, v8

    .line 742
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 743
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 746
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 748
    new-instance v1, Ljava/lang/StringBuilder;

    .line 750
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 752
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 755
    const-string v3, ".pivotX"

    .line 757
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 759
    move-result-object v2

    .line 762
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 763
    move-result v5

    .line 766
    const-wide/16 v10, 0x0

    .line 767
    move-object v1, v9

    .line 769
    move-object v3, v8

    .line 770
    move-object/from16 v4, v18

    .line 771
    move-wide v6, v10

    .line 773
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 774
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 777
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 779
    new-instance v1, Ljava/lang/StringBuilder;

    .line 781
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 783
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 786
    const-string v3, ".pivotY"

    .line 788
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 790
    move-result-object v2

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 794
    move-result v5

    .line 797
    move-object v1, v9

    .line 798
    move-object v3, v8

    .line 799
    move-object/from16 v4, v19

    .line 800
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 802
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 805
    new-instance v9, Lcom/miui/maml/folme/PropertyWrapper;

    .line 807
    new-instance v1, Ljava/lang/StringBuilder;

    .line 809
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 811
    iget-object v2, v0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 814
    const-string v3, ".pivotZ"

    .line 816
    invoke-static {v1, v2, v3}, Landroidx/constraintlayout/core/widgets/Barrier$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 818
    move-result-object v2

    .line 821
    invoke-virtual/range {p0 .. p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 822
    move-result v5

    .line 825
    move-object v1, v9

    .line 826
    move-object v3, v8

    .line 827
    move-object/from16 v4, v21

    .line 828
    invoke-direct/range {v1 .. v7}, Lcom/miui/maml/folme/PropertyWrapper;-><init>(Ljava/lang/String;Lcom/miui/maml/data/Variables;Lcom/miui/maml/data/Expression;ZD)V

    .line 830
    iput-object v9, v0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 833
    return-void
    .line 835
.end method

.method private setupToProperties(Lcom/miui/maml/elements/StateElement;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lcom/miui/maml/elements/StateElement;->getProperties()Ljava/util/Collection;

    .line 2
    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 6
    move-result-object p1

    .line 9
    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    move-result-object v0

    .line 19
    check-cast v0, Ljava/lang/String;

    .line 20
    invoke-static {v0}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 22
    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    invoke-virtual {v1, v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->add(Ljava/lang/Object;)Z

    .line 30
    goto :goto_0

    .line 33
    :cond_1
    return-void
    .line 34
.end method


# virtual methods
.method public doRenderWithTranslation(Landroid/graphics/Canvas;)V
    .locals 11

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 2
    move-result v0

    .line 5
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {v1}, Landroid/graphics/Matrix;->reset()V

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationX()F

    .line 11
    move-result v1

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationY()F

    .line 15
    move-result v2

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotationZ()F

    .line 19
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    cmpl-float v5, v1, v4

    .line 24
    if-nez v5, :cond_0

    .line 26
    cmpl-float v5, v2, v4

    .line 28
    if-nez v5, :cond_0

    .line 30
    cmpl-float v5, v3, v4

    .line 32
    if-eqz v5, :cond_3

    .line 34
    :cond_0
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 36
    if-nez v5, :cond_1

    .line 38
    new-instance v5, Landroid/graphics/Camera;

    .line 40
    invoke-direct {v5}, Landroid/graphics/Camera;-><init>()V

    .line 42
    iput-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 45
    :cond_1
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 47
    invoke-virtual {v5}, Landroid/graphics/Camera;->save()V

    .line 49
    iget-object v5, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 52
    invoke-virtual {v5, v1, v2, v3}, Landroid/graphics/Camera;->rotate(FFF)V

    .line 54
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotZ()F

    .line 57
    move-result v1

    .line 60
    cmpl-float v2, v1, v4

    .line 61
    if-eqz v2, :cond_2

    .line 63
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 65
    invoke-virtual {v2, v4, v4, v1}, Landroid/graphics/Camera;->translate(FFF)V

    .line 67
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 70
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 72
    invoke-virtual {v1, v2}, Landroid/graphics/Camera;->getMatrix(Landroid/graphics/Matrix;)V

    .line 74
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mCamera:Landroid/graphics/Camera;

    .line 77
    invoke-virtual {v1}, Landroid/graphics/Camera;->restore()V

    .line 79
    :cond_3
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getRotation()F

    .line 82
    move-result v1

    .line 85
    cmpl-float v2, v1, v4

    .line 86
    if-eqz v2, :cond_4

    .line 88
    iget-object v2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 90
    invoke-virtual {v2, v1}, Landroid/graphics/Matrix;->preRotate(F)Z

    .line 92
    :cond_4
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleX()F

    .line 95
    move-result v1

    .line 98
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getScaleY()F

    .line 99
    move-result v2

    .line 102
    const/high16 v3, 0x3f800000    # 1.0f

    .line 103
    cmpl-float v5, v1, v3

    .line 105
    if-nez v5, :cond_5

    .line 107
    cmpl-float v3, v2, v3

    .line 109
    if-eqz v3, :cond_6

    .line 111
    :cond_5
    iget-object v3, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 113
    invoke-virtual {v3, v1, v2}, Landroid/graphics/Matrix;->preScale(FF)Z

    .line 115
    :cond_6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 118
    move-result v1

    .line 121
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 122
    move-result v2

    .line 125
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotX()F

    .line 126
    move-result v3

    .line 129
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    .line 130
    move-result v5

    .line 133
    sub-float v5, v1, v5

    .line 134
    sub-float/2addr v3, v5

    .line 136
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getPivotY()F

    .line 137
    move-result v5

    .line 140
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    .line 141
    move-result v6

    .line 144
    sub-float v6, v2, v6

    .line 145
    sub-float/2addr v5, v6

    .line 147
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 148
    neg-float v7, v3

    .line 150
    neg-float v8, v5

    .line 151
    invoke-virtual {v6, v7, v8}, Landroid/graphics/Matrix;->preTranslate(FF)Z

    .line 152
    iget-object v6, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 155
    add-float/2addr v3, v1

    .line 157
    add-float/2addr v5, v2

    .line 158
    invoke-virtual {v6, v3, v5}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 159
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 162
    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->concat(Landroid/graphics/Matrix;)V

    .line 164
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    .line 167
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 170
    iget-boolean v1, v1, Lcom/miui/maml/ScreenElementRoot;->mShowDebugLayout:Z

    .line 172
    if-eqz v1, :cond_7

    .line 174
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 176
    move-result v1

    .line 179
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 180
    move-result v2

    .line 183
    cmpl-float v3, v1, v4

    .line 184
    if-lez v3, :cond_7

    .line 186
    cmpl-float v3, v2, v4

    .line 188
    if-lez v3, :cond_7

    .line 190
    invoke-virtual {p0, v4, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 192
    move-result v6

    .line 195
    invoke-virtual {p0, v4, v2}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 196
    move-result v7

    .line 199
    add-float v8, v6, v1

    .line 200
    add-float v9, v7, v2

    .line 202
    iget-object v10, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 204
    move-object v5, p1

    .line 206
    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 207
    :cond_7
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 210
    return-void
    .line 213
.end method

.method public doTick(J)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->doTick(J)V

    .line 2
    iget-boolean p1, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 5
    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualXVar:Lcom/miui/maml/data/IndexedVariable;

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 11
    move-result p2

    .line 14
    float-to-double v0, p2

    .line 15
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 16
    move-result-wide v0

    .line 19
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 20
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mActualYVar:Lcom/miui/maml/data/IndexedVariable;

    .line 23
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 25
    move-result p2

    .line 28
    float-to-double v0, p2

    .line 29
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 30
    move-result-wide v0

    .line 33
    invoke-virtual {p1, v0, v1}, Lcom/miui/maml/data/IndexedVariable;->set(D)V

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->evaluateAlpha()I

    .line 37
    move-result p1

    .line 40
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 41
    const/4 p2, 0x0

    .line 43
    if-gez p1, :cond_1

    .line 44
    move p1, p2

    .line 46
    :cond_1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 47
    iput-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 49
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTintColor()I

    .line 51
    move-result p1

    .line 54
    iget p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 55
    const/4 v0, 0x1

    .line 57
    if-eq p1, p2, :cond_2

    .line 58
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 60
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 62
    :cond_2
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 64
    if-eqz p1, :cond_6

    .line 66
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 68
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintModeExp:Lcom/miui/maml/data/Expression;

    .line 70
    if-eqz p2, :cond_3

    .line 72
    invoke-virtual {p2}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 74
    move-result-wide p1

    .line 77
    double-to-int p1, p1

    .line 78
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 79
    invoke-static {p1, p2}, Lcom/miui/maml/util/Utils;->getPorterDuffMode(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    .line 81
    move-result-object p1

    .line 84
    :cond_3
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 85
    if-eq p2, p1, :cond_4

    .line 87
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintMode:Landroid/graphics/PorterDuff$Mode;

    .line 89
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 91
    :cond_4
    iget-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 93
    if-nez p2, :cond_5

    .line 95
    iput-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 97
    :cond_5
    iget-boolean p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintChanged:Z

    .line 99
    if-eqz p2, :cond_7

    .line 101
    new-instance p2, Landroid/graphics/PorterDuffColorFilter;

    .line 103
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColor:I

    .line 105
    invoke-direct {p2, v0, p1}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    .line 107
    iput-object p2, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 110
    goto :goto_0

    .line 112
    :cond_6
    const/4 p1, 0x0

    .line 113
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintFilter:Landroid/graphics/PorterDuffColorFilter;

    .line 114
    :cond_7
    :goto_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 116
    if-eqz p0, :cond_8

    .line 118
    invoke-virtual {p0}, Lcom/miui/maml/elements/FunctionElement;->perform()V

    .line 120
    :cond_8
    return-void
    .line 123
.end method

.method public evaluateAlpha()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_1

    .line 14
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 16
    if-eqz v1, :cond_0

    .line 18
    invoke-virtual {v1}, Lcom/miui/maml/animation/AlphaAnimation;->getAlpha()I

    .line 20
    move-result v1

    .line 23
    goto :goto_0

    .line 24
    :cond_0
    const/16 v1, 0xff

    .line 25
    :goto_0
    invoke-static {v0, v1}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 27
    move-result v0

    .line 30
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 31
    if-eqz v1, :cond_3

    .line 33
    instance-of v2, v1, Lcom/miui/maml/elements/LayerScreenElement;

    .line 35
    if-nez v2, :cond_3

    .line 37
    instance-of v2, v1, Lcom/miui/maml/elements/ElementGroup;

    .line 39
    if-eqz v2, :cond_2

    .line 41
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->isLayered()Z

    .line 43
    move-result v1

    .line 46
    if-eqz v1, :cond_2

    .line 47
    goto :goto_1

    .line 49
    :cond_2
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    .line 50
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAlpha()I

    .line 52
    move-result p0

    .line 55
    invoke-static {v0, p0}, Lcom/miui/maml/util/Utils;->mixAlpha(II)I

    .line 56
    move-result v0

    .line 59
    :cond_3
    :goto_1
    return v0
    .line 60
.end method

.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->finish()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    .line 5
    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lcom/miui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    .line 9
    move-result-object v0

    .line 12
    invoke-virtual {v0, p0}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 16
    if-eqz v0, :cond_0

    .line 18
    filled-new-array {p0}, [Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 20
    move-result-object p0

    .line 23
    invoke-static {p0}, Lmiuix/animation/Folme;->clean([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 24
    goto :goto_0

    .line 27
    :catch_0
    move-exception p0

    .line 28
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 29
    :cond_0
    :goto_0
    return-void
.end method

.method public folmeCancel([Lcom/miui/maml/data/Expression;)V
    .locals 5

    .line 1
    if-eqz p1, :cond_2

    .line 2
    :try_start_0
    new-instance v0, Landroidx/collection/ArraySet;

    .line 4
    const/4 v1, 0x0

    .line 6
    invoke-direct {v0, v1}, Landroidx/collection/ArraySet;-><init>(I)V

    .line 7
    array-length v2, p1

    .line 10
    :goto_0
    if-ge v1, v2, :cond_1

    .line 11
    aget-object v3, p1, v1

    .line 13
    invoke-virtual {v3}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 15
    move-result-object v3

    .line 18
    invoke-static {v3}, Lcom/miui/maml/folme/AnimatedProperty;->getPropertyByName(Ljava/lang/String;)Lmiuix/animation/property/FloatProperty;

    .line 19
    move-result-object v3

    .line 22
    if-eqz v3, :cond_0

    .line 23
    invoke-virtual {v0, v3}, Landroidx/collection/ArraySet;->add(Ljava/lang/Object;)Z

    .line 25
    iget-object v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 28
    invoke-virtual {v4, v3}, Ljava/util/concurrent/CopyOnWriteArraySet;->remove(Ljava/lang/Object;)Z

    .line 30
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 33
    goto :goto_0

    .line 35
    :cond_1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 36
    move-result-object p0

    .line 39
    invoke-static {p0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 40
    move-result-object p0

    .line 43
    invoke-interface {p0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 44
    move-result-object p0

    .line 47
    iget p1, v0, Landroidx/collection/ArraySet;->_size:I

    .line 48
    new-array p1, p1, [Lmiuix/animation/property/FloatProperty;

    .line 50
    invoke-virtual {v0, p1}, Landroidx/collection/ArraySet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 52
    move-result-object p1

    .line 55
    check-cast p1, [Lmiuix/animation/property/FloatProperty;

    .line 56
    invoke-interface {p0, p1}, Lmiuix/animation/ICancelableStyle;->cancel([Lmiuix/animation/property/FloatProperty;)V

    .line 58
    goto :goto_1

    .line 61
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;

    .line 62
    move-result-object p1

    .line 65
    invoke-static {p1}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 66
    move-result-object p1

    .line 69
    invoke-interface {p1}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 70
    move-result-object p1

    .line 73
    invoke-interface {p1}, Lmiuix/animation/ICancelableStyle;->cancel()V

    .line 74
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 77
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 79
    goto :goto_1

    .line 82
    :catch_0
    move-exception p0

    .line 83
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 84
    :goto_1
    return-void
    .line 87
.end method

.method public folmeFromTo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    move-result-object v1

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 18
    move-result-object v2

    .line 21
    invoke-virtual {v2, p3}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 22
    move-result-object p3

    .line 25
    instance-of v2, v0, Lcom/miui/maml/elements/StateElement;

    .line 26
    if-eqz v2, :cond_3

    .line 28
    instance-of v2, v1, Lcom/miui/maml/elements/StateElement;

    .line 30
    if-nez v2, :cond_0

    .line 32
    goto :goto_2

    .line 34
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 35
    check-cast v1, Lcom/miui/maml/elements/StateElement;

    .line 37
    instance-of p1, p3, Lcom/miui/maml/elements/ConfigElement;

    .line 39
    if-eqz p1, :cond_1

    .line 41
    check-cast p3, Lcom/miui/maml/elements/ConfigElement;

    .line 43
    goto :goto_0

    .line 45
    :cond_1
    const/4 p3, 0x0

    .line 46
    :goto_0
    if-eqz p3, :cond_2

    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 49
    invoke-virtual {p3, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Lmiuix/animation/base/AnimConfig;

    .line 51
    move-result-object p1

    .line 54
    goto :goto_1

    .line 55
    :cond_2
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 56
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 58
    :goto_1
    const-string p2, "from"

    .line 61
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 63
    move-result-object p2

    .line 66
    const-string/jumbo p3, "to"

    .line 67
    invoke-virtual {v1, p3}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 70
    move-result-object p3

    .line 73
    invoke-direct {p0, v1}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 74
    invoke-direct {p0, p2, p3, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeFromToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V

    .line 77
    return-void

    .line 80
    :cond_3
    :goto_2
    new-instance p0, Ljava/lang/StringBuilder;

    .line 81
    const-string p3, "folmeFromTo: wrong state name "

    .line 83
    invoke-direct {p0, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    const-string p1, " "

    .line 91
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 99
    move-result-object p0

    .line 102
    const-string p1, "AnimatedScreenElement"

    .line 103
    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    return-void
    .line 108
.end method

.method public folmeSetTo(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    move-result-object v0

    .line 9
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 10
    if-nez v1, :cond_0

    .line 12
    const-string p0, "folmeSetTo: wrong state name "

    .line 14
    const-string v0, "AnimatedScreenElement"

    .line 16
    invoke-static {p0, p1, v0}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    return-void

    .line 21
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 22
    const-string/jumbo p1, "setTo"

    .line 24
    invoke-virtual {v0, p1}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 27
    move-result-object p1

    .line 30
    invoke-direct {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeSetToImpl(Lmiuix/animation/controller/AnimState;)V

    .line 31
    return-void
    .line 34
.end method

.method public folmeTo(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0, p1}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 6
    move-result-object v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 10
    move-result-object v1

    .line 13
    invoke-virtual {v1, p2}, Lcom/miui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lcom/miui/maml/elements/ScreenElement;

    .line 14
    move-result-object p2

    .line 17
    instance-of v1, v0, Lcom/miui/maml/elements/StateElement;

    .line 18
    if-nez v1, :cond_0

    .line 20
    const-string p0, "folmeTo: wrong state name "

    .line 22
    const-string p2, "AnimatedScreenElement"

    .line 24
    invoke-static {p0, p1, p2}, Landroidx/constraintlayout/motion/widget/MotionLayout$$ExternalSyntheticOutline0;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 26
    return-void

    .line 29
    :cond_0
    check-cast v0, Lcom/miui/maml/elements/StateElement;

    .line 30
    instance-of p1, p2, Lcom/miui/maml/elements/ConfigElement;

    .line 32
    if-eqz p1, :cond_1

    .line 34
    check-cast p2, Lcom/miui/maml/elements/ConfigElement;

    .line 36
    goto :goto_0

    .line 38
    :cond_1
    const/4 p2, 0x0

    .line 39
    :goto_0
    if-eqz p2, :cond_2

    .line 40
    iget-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mListenerWrapper:Lcom/miui/maml/folme/TransitionListenerWrapper;

    .line 42
    invoke-virtual {p2, p1}, Lcom/miui/maml/elements/ConfigElement;->getAnimConfig(Lcom/miui/maml/folme/TransitionListenerWrapper;)Lmiuix/animation/base/AnimConfig;

    .line 44
    move-result-object p1

    .line 47
    goto :goto_1

    .line 48
    :cond_2
    new-instance p1, Lmiuix/animation/base/AnimConfig;

    .line 49
    invoke-direct {p1}, Lmiuix/animation/base/AnimConfig;-><init>()V

    .line 51
    :goto_1
    const-string/jumbo p2, "to"

    .line 54
    invoke-virtual {v0, p2}, Lcom/miui/maml/elements/StateElement;->getAnimState(Ljava/lang/String;)Lmiuix/animation/controller/AnimState;

    .line 57
    move-result-object p2

    .line 60
    invoke-direct {p0, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->setupToProperties(Lcom/miui/maml/elements/StateElement;)V

    .line 61
    invoke-direct {p0, p2, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->folmeToImpl(Lmiuix/animation/controller/AnimState;Lmiuix/animation/base/AnimConfig;)V

    .line 64
    return-void
    .line 67
.end method

.method public getAbsoluteLeft()F
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

.method public getAbsoluteTop()F
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

.method public getAlpha()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlpha:I

    .line 2
    return p0
    .line 4
.end method

.method public getAnimTarget()Lcom/miui/maml/folme/AnimatedTarget;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 2
    if-nez v0, :cond_0

    .line 4
    sget-object v0, Lcom/miui/maml/folme/AnimatedTarget;->sCreator:Lmiuix/animation/ITargetCreator;

    .line 6
    invoke-static {p0, v0}, Lmiuix/animation/Folme;->getTarget(Ljava/lang/Object;Lmiuix/animation/ITargetCreator;)Lmiuix/animation/IAnimTarget;

    .line 8
    move-result-object v0

    .line 11
    check-cast v0, Lcom/miui/maml/folme/AnimatedTarget;

    .line 12
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 14
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 16
    return-object p0
    .line 18
.end method

.method public getContentDescription()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescriptionExp:Lcom/miui/maml/data/Expression;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    .line 6
    move-result-object v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    .line 12
    const-string v1, "element.getContentDescription() == null "

    .line 14
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 16
    iget-object p0, p0, Lcom/miui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 19
    const-string v1, "AnimatedScreenElement"

    .line 21
    invoke-static {v0, p0, v1}, Landroidx/constraintlayout/helper/widget/CircularFlow$$ExternalSyntheticOutline0;->m(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    const-string v0, ""

    .line 26
    :cond_0
    return-object v0

    .line 28
    :cond_1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mContentDescription:Ljava/lang/String;

    .line 29
    return-object p0
    .line 31
.end method

.method public getHeight()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeightRaw()F

    .line 2
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public getHeightRaw()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/animation/SizeAnimation;->getHeight()D

    .line 19
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    return v0
    .line 24
.end method

.method public getLeft()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getX()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getLeft(FF)F

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public final getMarginBottom()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginBottom:F

    .line 2
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final getMarginLeft()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginLeft:F

    .line 2
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final getMarginRight()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginRight:F

    .line 2
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public final getMarginTop()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMarginTop:F

    .line 2
    float-to-double v0, v0

    .line 4
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 5
    move-result p0

    .line 8
    return p0
    .line 9
.end method

.method public getMatrix()Landroid/graphics/Matrix;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mMatrix:Landroid/graphics/Matrix;

    .line 2
    return-object p0
    .line 4
.end method

.method public getPivotX()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

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

.method public getPivotY()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

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

.method public getPivotZ()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

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

.method public getRotation()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/animation/RotationAnimation;->getAngle()F

    .line 19
    move-result p0

    .line 22
    add-float/2addr v0, p0

    .line 23
    :cond_0
    return v0
    .line 24
.end method

.method public getRotationX()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getRotationY()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getRotationZ()F
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float p0, v0

    .line 8
    return p0
    .line 9
.end method

.method public getScaleX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    float-to-double v0, v0

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleX()D

    .line 29
    move-result-wide v2

    .line 32
    mul-double/2addr v2, v0

    .line 33
    double-to-float v0, v2

    .line 34
    :cond_1
    return v0
    .line 35
.end method

.method public getScaleY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_1

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleExpression:Lcom/miui/maml/data/Expression;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    invoke-virtual {v1}, Lcom/miui/maml/data/Expression;->evaluate()D

    .line 19
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 24
    if-eqz p0, :cond_1

    .line 26
    float-to-double v0, v0

    .line 28
    invoke-virtual {p0}, Lcom/miui/maml/animation/ScaleAnimation;->getScaleY()D

    .line 29
    move-result-wide v2

    .line 32
    mul-double/2addr v2, v0

    .line 33
    double-to-float v0, v2

    .line 34
    :cond_1
    return v0
    .line 35
.end method

.method public getTintColor()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-long v0, v0

    .line 8
    long-to-int v0, v0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 10
    move-result v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorParser:Lcom/miui/maml/util/ColorParser;

    .line 16
    if-eqz p0, :cond_0

    .line 18
    invoke-virtual {p0}, Lcom/miui/maml/util/ColorParser;->getColor()I

    .line 20
    move-result v0

    .line 23
    :cond_0
    return v0
    .line 24
.end method

.method public getTop()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getY()F

    .line 2
    move-result v0

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    .line 6
    move-result v1

    .line 9
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->getTop(FF)F

    .line 10
    move-result p0

    .line 13
    return p0
    .line 14
.end method

.method public getWidth()F
    .locals 2

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidthRaw()F

    .line 2
    move-result v0

    .line 5
    float-to-double v0, v0

    .line 6
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 7
    move-result p0

    .line 10
    return p0
    .line 11
.end method

.method public getWidthRaw()F
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 15
    if-eqz p0, :cond_0

    .line 17
    invoke-virtual {p0}, Lcom/miui/maml/animation/SizeAnimation;->getWidth()D

    .line 19
    move-result-wide v0

    .line 22
    double-to-float v0, v0

    .line 23
    :cond_0
    return v0
    .line 24
.end method

.method public getX()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getX()D

    .line 20
    move-result-wide v0

    .line 23
    add-double/2addr v0, v2

    .line 24
    double-to-float v0, v0

    .line 25
    :cond_0
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public getY()F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->getValue()D

    .line 4
    move-result-wide v0

    .line 7
    double-to-float v0, v0

    .line 8
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 9
    move-result v1

    .line 12
    if-nez v1, :cond_0

    .line 13
    iget-object v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    if-eqz v1, :cond_0

    .line 17
    float-to-double v2, v0

    .line 19
    invoke-virtual {v1}, Lcom/miui/maml/animation/PositionAnimation;->getY()D

    .line 20
    move-result-wide v0

    .line 23
    add-double/2addr v0, v2

    .line 24
    double-to-float v0, v0

    .line 25
    :cond_0
    float-to-double v0, v0

    .line 26
    invoke-virtual {p0, v0, v1}, Lcom/miui/maml/elements/ScreenElement;->scale(D)F

    .line 27
    move-result p0

    .line 30
    return p0
    .line 31
.end method

.method public init()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->init()V

    .line 2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->isInFolmeMode()Z

    .line 5
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->initProperties()V

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public initProperties()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 4
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 7
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 9
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 12
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 14
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 17
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 19
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 22
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 24
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphaProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 27
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 29
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 32
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 34
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 37
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 39
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotationZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 42
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 44
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 47
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 49
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScaleYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 52
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 54
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTintColorProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 57
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 59
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 62
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 64
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 67
    invoke-virtual {v0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 69
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPivotZProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 72
    invoke-virtual {p0}, Lcom/miui/maml/folme/PropertyWrapper;->init()V

    .line 74
    return-void
    .line 77
.end method

.method public isInFolmeMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mFolmeMode:Z

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-boolean p0, p0, Lcom/miui/maml/elements/ScreenElement;->mHasName:Z

    .line 6
    if-eqz p0, :cond_0

    .line 8
    const/4 p0, 0x1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    :goto_0
    return p0
    .line 13
.end method

.method public onActionCancel()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public onActionDown(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const-string p2, "down"

    .line 4
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public onActionMove(FF)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const-string p2, "move"

    .line 4
    invoke-virtual {p1, p0, p2}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 6
    return-void
    .line 9
.end method

.method public onActionUp()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 2
    const-string/jumbo v1, "up"

    .line 4
    invoke-virtual {v0, p0, v1}, Lcom/miui/maml/ScreenElementRoot;->onUIInteractive(Lcom/miui/maml/elements/ScreenElement;Ljava/lang/String;)V

    .line 7
    return-void
    .line 10
.end method

.method public onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;
    .locals 1

    .line 1
    const-string v0, "AlphaAnimation"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    new-instance p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 10
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/AlphaAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 12
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 15
    return-object p1

    .line 17
    :cond_0
    const-string v0, "PositionAnimation"

    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    move-result v0

    .line 23
    if-eqz v0, :cond_1

    .line 24
    new-instance p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 26
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/PositionAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 28
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 31
    return-object p1

    .line 33
    :cond_1
    const-string v0, "RotationAnimation"

    .line 34
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 36
    move-result v0

    .line 39
    if-eqz v0, :cond_2

    .line 40
    new-instance p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 42
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/RotationAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 44
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 47
    return-object p1

    .line 49
    :cond_2
    const-string v0, "SizeAnimation"

    .line 50
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    move-result v0

    .line 55
    if-eqz v0, :cond_3

    .line 56
    new-instance p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 58
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/SizeAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 60
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 63
    return-object p1

    .line 65
    :cond_3
    const-string v0, "ScaleAnimation"

    .line 66
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 68
    move-result v0

    .line 71
    if-eqz v0, :cond_4

    .line 72
    new-instance p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 74
    invoke-direct {p1, p2, p0}, Lcom/miui/maml/animation/ScaleAnimation;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/elements/ScreenElement;)V

    .line 76
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 79
    return-object p1

    .line 81
    :cond_4
    invoke-super {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lcom/miui/maml/animation/BaseAnimation;

    .line 82
    move-result-object p0

    .line 85
    return-object p0
    .line 86
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
    if-eqz v0, :cond_6

    .line 7
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHasContentDescription:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto :goto_2

    .line 13
    :cond_0
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getContentDescription()Ljava/lang/String;

    .line 14
    move-result-object v0

    .line 17
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 18
    move-result v2

    .line 21
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 22
    move-result v3

    .line 25
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    .line 26
    move-result v4

    .line 29
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 30
    move-result p1

    .line 33
    const/4 v5, 0x7

    .line 34
    const/4 v6, 0x1

    .line 35
    if-eq p1, v5, :cond_3

    .line 36
    const/16 v5, 0x9

    .line 38
    if-eq p1, v5, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 43
    move-result p1

    .line 46
    if-eqz p1, :cond_4

    .line 47
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 49
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 51
    :cond_2
    :goto_0
    move v4, v6

    .line 54
    goto :goto_1

    .line 55
    :cond_3
    invoke-virtual {p0, v2, v3}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 56
    move-result p1

    .line 59
    if-eqz p1, :cond_4

    .line 60
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 62
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getHoverElement()Lcom/miui/maml/elements/AnimatedScreenElement;

    .line 64
    move-result-object p1

    .line 67
    if-eq p1, p0, :cond_2

    .line 68
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 70
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/ScreenElementRoot;->onHoverChange(Lcom/miui/maml/elements/AnimatedScreenElement;Ljava/lang/String;)V

    .line 72
    goto :goto_0

    .line 75
    :cond_4
    :goto_1
    if-eqz v4, :cond_5

    .line 76
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 78
    :cond_5
    if-eqz v4, :cond_6

    .line 81
    iget-boolean p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 83
    if-eqz p0, :cond_6

    .line 85
    move v1, v6

    .line 87
    :cond_6
    :goto_2
    return v1
    .line 88
.end method

.method public onSetAnimBefore()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 3
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 5
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 7
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 9
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 11
    return-void
    .line 13
.end method

.method public onSetAnimEnable(Lcom/miui/maml/animation/BaseAnimation;)V
    .locals 1

    .line 1
    instance-of v0, p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Lcom/miui/maml/animation/AlphaAnimation;

    .line 6
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAlphas:Lcom/miui/maml/animation/AlphaAnimation;

    .line 8
    goto :goto_0

    .line 10
    :cond_0
    instance-of v0, p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 11
    if-eqz v0, :cond_1

    .line 13
    check-cast p1, Lcom/miui/maml/animation/PositionAnimation;

    .line 15
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPositions:Lcom/miui/maml/animation/PositionAnimation;

    .line 17
    goto :goto_0

    .line 19
    :cond_1
    instance-of v0, p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 20
    if-eqz v0, :cond_2

    .line 22
    check-cast p1, Lcom/miui/maml/animation/RotationAnimation;

    .line 24
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mRotations:Lcom/miui/maml/animation/RotationAnimation;

    .line 26
    goto :goto_0

    .line 28
    :cond_2
    instance-of v0, p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 29
    if-eqz v0, :cond_3

    .line 31
    check-cast p1, Lcom/miui/maml/animation/SizeAnimation;

    .line 33
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mSizes:Lcom/miui/maml/animation/SizeAnimation;

    .line 35
    goto :goto_0

    .line 37
    :cond_3
    instance-of v0, p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 38
    if-eqz v0, :cond_4

    .line 40
    check-cast p1, Lcom/miui/maml/animation/ScaleAnimation;

    .line 42
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mScales:Lcom/miui/maml/animation/ScaleAnimation;

    .line 44
    :cond_4
    :goto_0
    return-void
    .line 46
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 6

    .line 1
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->isVisible()Z

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-eqz v0, :cond_a

    .line 7
    iget-boolean v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTouchable:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    goto/16 :goto_2

    .line 13
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    .line 15
    move-result v0

    .line 18
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    .line 19
    move-result v2

    .line 22
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    .line 23
    move-result v3

    .line 26
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 27
    move-result p1

    .line 30
    const/4 v4, 0x1

    .line 31
    if-eqz p1, :cond_6

    .line 32
    if-eq p1, v4, :cond_3

    .line 34
    const/4 v5, 0x2

    .line 36
    if-eq p1, v5, :cond_2

    .line 37
    const/4 v0, 0x3

    .line 39
    if-eq p1, v0, :cond_1

    .line 40
    goto :goto_1

    .line 42
    :cond_1
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 43
    goto :goto_1

    .line 46
    :cond_2
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 47
    if-eqz p1, :cond_8

    .line 49
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 51
    move-result v3

    .line 54
    const-string p1, "move"

    .line 55
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 57
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionMove(FF)V

    .line 60
    goto :goto_1

    .line 63
    :cond_3
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 64
    if-eqz p1, :cond_8

    .line 66
    iput-boolean v1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 68
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 70
    move-result p1

    .line 73
    if-eqz p1, :cond_5

    .line 74
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 76
    if-eqz p1, :cond_4

    .line 78
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 80
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 82
    :cond_4
    const-string/jumbo p1, "up"

    .line 85
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 88
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionUp()V

    .line 91
    goto :goto_0

    .line 94
    :cond_5
    const-string p1, "cancel"

    .line 95
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 97
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionCancel()V

    .line 100
    goto :goto_0

    .line 103
    :cond_6
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FF)Z

    .line 104
    move-result p1

    .line 107
    if-eqz p1, :cond_8

    .line 108
    iput-boolean v4, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPressed:Z

    .line 110
    iget-boolean p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mIsHaptic:Z

    .line 112
    if-eqz p1, :cond_7

    .line 114
    iget-object p1, p0, Lcom/miui/maml/elements/ScreenElement;->mRoot:Lcom/miui/maml/ScreenElementRoot;

    .line 116
    invoke-virtual {p1, v4}, Lcom/miui/maml/ScreenElementRoot;->haptic(I)V

    .line 118
    :cond_7
    const-string p1, "down"

    .line 121
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->performAction(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, v0, v2}, Lcom/miui/maml/elements/AnimatedScreenElement;->onActionDown(FF)V

    .line 126
    :goto_0
    move v3, v4

    .line 129
    :cond_8
    :goto_1
    if-eqz v3, :cond_9

    .line 130
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->requestUpdate()V

    .line 132
    :cond_9
    if-eqz v3, :cond_a

    .line 135
    iget-boolean p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mInterceptTouch:Z

    .line 137
    if-eqz p0, :cond_a

    .line 139
    move v1, v4

    .line 141
    :cond_a
    :goto_2
    return v1
    .line 142
.end method

.method public onVisibilityChange(Z)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Lcom/miui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 2
    if-nez p1, :cond_0

    .line 5
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 7
    iget p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 10
    const/high16 v0, -0x80000000

    .line 12
    if-eq p1, v0, :cond_0

    .line 14
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 16
    move-result-object p1

    .line 19
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 20
    move-result-object p1

    .line 23
    if-eqz p1, :cond_0

    .line 24
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 26
    move-result-object p1

    .line 29
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 30
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Landroidx/customview/widget/ExploreByTouchHelper;->getFocusedVirtualView()I

    .line 34
    move-result p1

    .line 37
    iget v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 38
    if-ne p1, v0, :cond_0

    .line 40
    invoke-virtual {p0}, Lcom/miui/maml/elements/ScreenElement;->getRoot()Lcom/miui/maml/ScreenElementRoot;

    .line 42
    move-result-object p1

    .line 45
    invoke-virtual {p1}, Lcom/miui/maml/ScreenElementRoot;->getMamlAccessHelper()Lcom/miui/maml/util/MamlAccessHelper;

    .line 46
    move-result-object p1

    .line 49
    iget p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 50
    const/16 v0, 0x80

    .line 52
    invoke-virtual {p1, p0, v0}, Lcom/miui/maml/util/MamlAccessHelper;->performAccessibilityAction(II)V

    .line 54
    :cond_0
    return-void
    .line 57
.end method

.method public pause()V
    .locals 1

    .line 1
    invoke-super {p0}, Lcom/miui/maml/elements/ScreenElement;->pause()V

    .line 2
    invoke-direct {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->handleCancel()V

    .line 5
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 8
    if-eqz v0, :cond_0

    .line 10
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 12
    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;->size()I

    .line 14
    move-result v0

    .line 17
    if-lez v0, :cond_0

    .line 18
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mAnimTarget:Lcom/miui/maml/folme/AnimatedTarget;

    .line 20
    invoke-static {v0}, Lmiuix/animation/Folme;->useAt(Lmiuix/animation/IAnimTarget;)Lmiuix/animation/IFolme;

    .line 22
    move-result-object v0

    .line 25
    invoke-interface {v0}, Lmiuix/animation/IFolme;->state()Lmiuix/animation/IStateStyle;

    .line 26
    move-result-object v0

    .line 29
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mToProperties:Ljava/util/concurrent/CopyOnWriteArraySet;

    .line 30
    invoke-virtual {p0}, Ljava/util/concurrent/CopyOnWriteArraySet;->toArray()[Ljava/lang/Object;

    .line 32
    move-result-object p0

    .line 35
    invoke-interface {v0, p0}, Lmiuix/animation/ICancelableStyle;->end([Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 36
    goto :goto_0

    .line 39
    :catch_0
    move-exception p0

    .line 40
    invoke-virtual {p0}, Ljava/lang/Exception;->printStackTrace()V

    .line 41
    :cond_0
    :goto_0
    return-void
    .line 44
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
    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/AnimatedScreenElement;->doRenderWithTranslation(Landroid/graphics/Canvas;)V

    .line 12
    return-void
    .line 15
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 2
    if-eqz p0, :cond_0

    .line 4
    invoke-virtual {p0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    :cond_0
    return-void
    .line 9
.end method

.method public setHeight(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mHeightProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    move-result-wide p0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 8
    return-void
    .line 11
.end method

.method public setOnTickListener(Lcom/miui/maml/elements/FunctionElement;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 2
    return-void
    .line 4
.end method

.method public setVirtualViewId(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mVirtualViewId:I

    .line 2
    return-void
    .line 4
.end method

.method public setWidth(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mWidthProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    move-result-wide p0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 8
    return-void
    .line 11
.end method

.method public setX(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mXProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    move-result-wide p0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 8
    return-void
    .line 11
.end method

.method public setY(D)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mYProperty:Lcom/miui/maml/folme/PropertyWrapper;

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/miui/maml/elements/ScreenElement;->descale(D)D

    .line 4
    move-result-wide p0

    .line 7
    invoke-virtual {v0, p0, p1}, Lcom/miui/maml/folme/PropertyWrapper;->setValue(D)V

    .line 8
    return-void
    .line 11
.end method

.method public touched(FF)Z
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, p1, p2, v0}, Lcom/miui/maml/elements/AnimatedScreenElement;->touched(FFZ)Z

    move-result p0

    return p0
.end method

.method public touched(FFZ)Z
    .locals 3

    if-eqz p3, :cond_2

    .line 2
    iget-object p3, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    const/4 v0, 0x0

    if-nez p3, :cond_0

    move p3, v0

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/miui/maml/elements/ElementGroup;->getParentLeft()F

    move-result p3

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/miui/maml/elements/ScreenElement;->mParent:Lcom/miui/maml/elements/ElementGroup;

    if-nez v1, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v1}, Lcom/miui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    :goto_1
    sub-float/2addr p1, p3

    sub-float/2addr p2, v0

    .line 4
    :cond_2
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getLeft()F

    move-result p3

    .line 5
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getTop()F

    move-result v0

    .line 6
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v1

    .line 7
    invoke-virtual {p0}, Lcom/miui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result p0

    cmpl-float v2, p1, p3

    if-ltz v2, :cond_3

    add-float/2addr p3, v1

    cmpg-float p1, p1, p3

    if-gtz p1, :cond_3

    cmpl-float p1, p2, v0

    if-ltz p1, :cond_3

    add-float/2addr v0, p0

    cmpg-float p0, p2, v0

    if-gtz p0, :cond_3

    const/4 p0, 0x1

    goto :goto_2

    :cond_3
    const/4 p0, 0x0

    :goto_2
    return p0
.end method

.method public unsetOnTickListener()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/miui/maml/elements/AnimatedScreenElement;->mTickListener:Lcom/miui/maml/elements/FunctionElement;

    .line 3
    return-void
    .line 5
.end method
