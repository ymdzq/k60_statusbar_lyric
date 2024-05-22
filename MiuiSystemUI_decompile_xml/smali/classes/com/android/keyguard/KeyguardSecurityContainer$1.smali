.class public final Lcom/android/keyguard/KeyguardSecurityContainer$1;
.super Landroid/view/WindowInsetsAnimation$Callback;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mFinalBounds:Landroid/graphics/Rect;

.field public final mInitialBounds:Landroid/graphics/Rect;

.field public final synthetic this$0:Lcom/android/keyguard/KeyguardSecurityContainer;


# direct methods
.method public constructor <init>(Lcom/android/keyguard/KeyguardSecurityContainer;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    const/4 p1, 0x0

    .line 4
    invoke-direct {p0, p1}, Landroid/view/WindowInsetsAnimation$Callback;-><init>(I)V

    .line 5
    new-instance p1, Landroid/graphics/Rect;

    .line 8
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 10
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    .line 13
    new-instance p1, Landroid/graphics/Rect;

    .line 15
    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    .line 20
    return-void
    .line 22
.end method


# virtual methods
.method public final onEnd(Landroid/view/WindowInsetsAnimation;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    sget v0, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 14
    move-result-object p1

    .line 17
    const/16 v0, 0x11

    .line 18
    invoke-virtual {p1, v0}, Lcom/android/internal/jank/InteractionJankMonitor;->end(I)Z

    .line 20
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 23
    const/high16 p1, 0x3f800000    # 1.0f

    .line 25
    const/4 v0, 0x0

    .line 27
    invoke-virtual {p0, p1, v0}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    .line 28
    return-void
    .line 31
.end method

.method public final onPrepare(Landroid/view/WindowInsetsAnimation;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 4
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    .line 6
    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onProgress(Landroid/view/WindowInsets;Ljava/util/List;)Landroid/view/WindowInsets;
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    sget v1, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    .line 4
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object v0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mInitialBounds:Landroid/graphics/Rect;

    .line 9
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 11
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    .line 13
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    .line 15
    sub-int/2addr v0, v1

    .line 17
    int-to-float v0, v0

    .line 18
    iget-object v1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 19
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 21
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 24
    move-result-object p2

    .line 27
    const/4 v1, 0x0

    .line 28
    const/high16 v2, 0x3f800000    # 1.0f

    .line 29
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 31
    move-result v3

    .line 34
    if-eqz v3, :cond_1

    .line 35
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 37
    move-result-object v3

    .line 40
    check-cast v3, Landroid/view/WindowInsetsAnimation;

    .line 41
    invoke-virtual {v3}, Landroid/view/WindowInsetsAnimation;->getTypeMask()I

    .line 43
    move-result v4

    .line 46
    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    .line 47
    move-result v5

    .line 50
    and-int/2addr v4, v5

    .line 51
    if-nez v4, :cond_0

    .line 52
    goto :goto_0

    .line 54
    :cond_0
    invoke-virtual {v3}, Landroid/view/WindowInsetsAnimation;->getInterpolatedFraction()F

    .line 55
    move-result v2

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-static {v0, v3, v2}, Landroid/util/MathUtils;->lerp(FFF)F

    .line 60
    move-result v3

    .line 63
    float-to-int v3, v3

    .line 64
    add-int/2addr v1, v3

    .line 65
    goto :goto_0

    .line 66
    :cond_1
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 67
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 69
    iget-object p2, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 72
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getAlpha()F

    .line 74
    move-result p2

    .line 77
    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    .line 78
    move-result p2

    .line 81
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 82
    invoke-virtual {p0, p2, v1}, Lcom/android/keyguard/KeyguardSecurityContainer;->updateChildren(FI)V

    .line 84
    return-object p1
    .line 87
.end method

.method public final onStart(Landroid/view/WindowInsetsAnimation;Landroid/view/WindowInsetsAnimation$Bounds;)Landroid/view/WindowInsetsAnimation$Bounds;
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 2
    sget v0, Lcom/android/keyguard/KeyguardSecurityContainer;->MIN_BACK_SCALE:F

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 9
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 11
    invoke-virtual {p1}, Lcom/android/keyguard/KeyguardSecurityViewFlipper;->getSecurityView()Lcom/android/keyguard/KeyguardInputView;

    .line 13
    move-result-object p1

    .line 16
    if-nez p1, :cond_0

    .line 17
    goto :goto_0

    .line 19
    :cond_0
    invoke-static {}, Lcom/android/internal/jank/InteractionJankMonitor;->getInstance()Lcom/android/internal/jank/InteractionJankMonitor;

    .line 20
    move-result-object v0

    .line 23
    const/16 v1, 0x11

    .line 24
    invoke-virtual {v0, p1, v1}, Lcom/android/internal/jank/InteractionJankMonitor;->begin(Landroid/view/View;I)Z

    .line 26
    :goto_0
    iget-object p1, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->this$0:Lcom/android/keyguard/KeyguardSecurityContainer;

    .line 29
    iget-object p1, p1, Lcom/android/keyguard/KeyguardSecurityContainer;->mSecurityViewFlipper:Lcom/android/keyguard/KeyguardSecurityViewFlipper;

    .line 31
    iget-object p0, p0, Lcom/android/keyguard/KeyguardSecurityContainer$1;->mFinalBounds:Landroid/graphics/Rect;

    .line 33
    invoke-virtual {p1, p0}, Landroid/widget/ViewFlipper;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 35
    return-object p2
    .line 38
.end method
