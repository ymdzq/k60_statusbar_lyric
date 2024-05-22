.class public final Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;
.super Landroid/view/View;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final ripplePaint:Landroid/graphics/Paint;

.field public final ripples:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance p1, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    .line 10
    new-instance p1, Landroid/graphics/Paint;

    .line 12
    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    .line 14
    iput-object p1, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 17
    return-void
    .line 19
.end method

.method public static synthetic getRipples$annotations()V
    .locals 0

    .line 1
    return-void
    .line 2
.end method


# virtual methods
.method public final getRipples()Ljava/util/ArrayList;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    .line 2
    return-object p0
    .line 4
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->isHardwareAccelerated()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    return-void

    .line 8
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripples:Ljava/util/ArrayList;

    .line 9
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 11
    move-result-object v0

    .line 14
    :cond_1
    const/4 v1, 0x0

    .line 15
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 16
    move-result v2

    .line 19
    if-eqz v2, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 22
    move-result-object v2

    .line 25
    check-cast v2, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;

    .line 26
    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 28
    iget-object v4, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->rippleShader:Lcom/android/systemui/surfaceeffects/ripple/RippleShader;

    .line 30
    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 32
    iget-object v3, p0, Lcom/android/systemui/surfaceeffects/ripple/MultiRippleView;->ripplePaint:Landroid/graphics/Paint;

    .line 35
    invoke-virtual {p1, v3}, Landroid/graphics/Canvas;->drawPaint(Landroid/graphics/Paint;)V

    .line 37
    if-nez v1, :cond_2

    .line 40
    iget-object v1, v2, Lcom/android/systemui/surfaceeffects/ripple/RippleAnimation;->animator:Landroid/animation/ValueAnimator;

    .line 42
    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 44
    move-result v1

    .line 47
    if-eqz v1, :cond_1

    .line 48
    :cond_2
    const/4 v1, 0x1

    .line 50
    goto :goto_0

    .line 51
    :cond_3
    if-eqz v1, :cond_4

    .line 52
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 54
    :cond_4
    return-void
    .line 57
.end method
