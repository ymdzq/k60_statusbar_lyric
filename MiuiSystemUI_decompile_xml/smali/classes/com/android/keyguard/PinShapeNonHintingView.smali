.class public Lcom/android/keyguard/PinShapeNonHintingView;
.super Landroid/widget/LinearLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/keyguard/PinShapeInput;


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mColor:I

.field public final mFirstChildVisibleRect:Landroid/graphics/Rect;

.field public final mPinShapeAdapter:Lcom/android/keyguard/PinShapeAdapter;

.field public mPosition:I

.field public final mValueAnimator:Landroid/animation/ValueAnimator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 5
    move-result-object p2

    .line 8
    const v0, 0x112009d    # @android:^attr-private/materialColorOnTertiary

    .line 9
    invoke-static {v0, p2}, Lcom/android/settingslib/Utils;->getColorAttr(ILandroid/content/Context;)Landroid/content/res/ColorStateList;

    .line 12
    move-result-object p2

    .line 15
    invoke-virtual {p2}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    .line 16
    move-result p2

    .line 19
    iput p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mColor:I

    .line 20
    const/4 p2, 0x0

    .line 22
    iput p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 23
    const/4 p2, 0x2

    .line 25
    new-array p2, p2, [F

    .line 26
    fill-array-data p2, :array_0

    .line 28
    invoke-static {p2}, Landroid/animation/ValueAnimator;->ofFloat([F)Landroid/animation/ValueAnimator;

    .line 31
    move-result-object p2

    .line 34
    iput-object p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 35
    new-instance p2, Landroid/graphics/Rect;

    .line 37
    invoke-direct {p2}, Landroid/graphics/Rect;-><init>()V

    .line 39
    iput-object p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    .line 42
    new-instance p2, Lcom/android/keyguard/PinShapeAdapter;

    .line 44
    invoke-direct {p2, p1}, Lcom/android/keyguard/PinShapeAdapter;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPinShapeAdapter:Lcom/android/keyguard/PinShapeAdapter;

    .line 49
    return-void

    .line 51
    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
    .line 52
.end method


# virtual methods
.method public final append()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getResources()Landroid/content/res/Resources;

    .line 2
    move-result-object v0

    .line 5
    const v1, 0x7f070e5e    # @dimen/password_shape_size '30.0dp'

    .line 6
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 9
    move-result v0

    .line 12
    new-instance v1, Landroid/widget/ImageView;

    .line 13
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    .line 15
    move-result-object v2

    .line 18
    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 19
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    .line 22
    invoke-direct {v2, v0, v0}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 24
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 27
    iget-object v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPinShapeAdapter:Lcom/android/keyguard/PinShapeAdapter;

    .line 30
    iget v2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 32
    invoke-virtual {v0, v2}, Lcom/android/keyguard/PinShapeAdapter;->getShape(I)I

    .line 34
    move-result v0

    .line 37
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 38
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 41
    move-result-object v0

    .line 44
    if-eqz v0, :cond_0

    .line 45
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 47
    move-result-object v0

    .line 50
    iget v2, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mColor:I

    .line 51
    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 53
    :cond_0
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 56
    move-result-object v0

    .line 59
    instance-of v0, v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 60
    if-eqz v0, :cond_1

    .line 62
    invoke-virtual {v1}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    .line 64
    move-result-object v0

    .line 67
    check-cast v0, Landroid/graphics/drawable/AnimatedVectorDrawable;

    .line 68
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedVectorDrawable;->start()V

    .line 70
    :cond_1
    new-instance v0, Lcom/android/keyguard/PinShapeNonHintingView$PinShapeViewTransition;

    .line 73
    invoke-direct {v0}, Lcom/android/keyguard/PinShapeNonHintingView$PinShapeViewTransition;-><init>()V

    .line 75
    invoke-static {p0, v0}, Landroid/transition/TransitionManager;->beginDelayedTransition(Landroid/view/ViewGroup;Landroid/transition/Transition;)V

    .line 78
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 81
    iget v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 84
    add-int/lit8 v0, v0, 0x1

    .line 86
    iput v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 88
    return-void
    .line 90
.end method

.method public final delete()V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 2
    if-nez v0, :cond_0

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    .line 10
    move-result-object p0

    .line 13
    const-string v0, "Trying to delete a non-existent char"

    .line 14
    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 20
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    .line 22
    move-result v0

    .line 25
    if-eqz v0, :cond_1

    .line 26
    iget-object v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 28
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->end()V

    .line 30
    :cond_1
    iget v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 35
    iput v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 37
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 39
    move-result-object v0

    .line 42
    check-cast v0, Landroid/widget/ImageView;

    .line 43
    iget-object v1, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 45
    new-instance v2, Lcom/android/keyguard/PinShapeNonHintingView$$ExternalSyntheticLambda0;

    .line 47
    invoke-direct {v2, v0}, Lcom/android/keyguard/PinShapeNonHintingView$$ExternalSyntheticLambda0;-><init>(Landroid/widget/ImageView;)V

    .line 49
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 52
    iget-object v1, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 55
    new-instance v2, Lcom/android/keyguard/PinShapeNonHintingView$1;

    .line 57
    invoke-direct {v2, p0, v0}, Lcom/android/keyguard/PinShapeNonHintingView$1;-><init>(Lcom/android/keyguard/PinShapeNonHintingView;Landroid/widget/ImageView;)V

    .line 59
    invoke-virtual {v1, v2}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 62
    iget-object v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 65
    const-wide/16 v1, 0xa0

    .line 67
    invoke-virtual {v0, v1, v2}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 69
    iget-object p0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mValueAnimator:Landroid/animation/ValueAnimator;

    .line 72
    invoke-virtual {p0}, Landroid/animation/ValueAnimator;->start()V

    .line 74
    return-void
    .line 77
.end method

.method public getView()Landroid/view/View;
    .locals 0

    .line 1
    return-object p0
    .line 2
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 5
    move-result p1

    .line 8
    if-lez p1, :cond_3

    .line 9
    const/4 p1, 0x0

    .line 11
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 12
    move-result-object p2

    .line 15
    iget-object p3, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    .line 16
    invoke-virtual {p2, p3}, Landroid/view/View;->getLocalVisibleRect(Landroid/graphics/Rect;)Z

    .line 18
    move-result p3

    .line 21
    iget-object p4, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mFirstChildVisibleRect:Landroid/graphics/Rect;

    .line 22
    iget p5, p4, Landroid/graphics/Rect;->left:I

    .line 24
    if-gtz p5, :cond_0

    .line 26
    iget p4, p4, Landroid/graphics/Rect;->right:I

    .line 28
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    .line 30
    move-result p2

    .line 33
    if-ge p4, p2, :cond_1

    .line 34
    :cond_0
    const/4 p1, 0x1

    .line 36
    :cond_1
    if-eqz p3, :cond_2

    .line 37
    if-eqz p1, :cond_3

    .line 39
    :cond_2
    const p1, 0x800015

    .line 41
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 44
    return-void

    .line 47
    :cond_3
    const/16 p1, 0x11

    .line 48
    invoke-virtual {p0, p1}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 50
    return-void
    .line 53
.end method

.method public final reset()V
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mPosition:I

    .line 2
    const/4 v1, 0x0

    .line 4
    :goto_0
    if-ge v1, v0, :cond_0

    .line 5
    invoke-virtual {p0}, Lcom/android/keyguard/PinShapeNonHintingView;->delete()V

    .line 7
    add-int/lit8 v1, v1, 0x1

    .line 10
    goto :goto_0

    .line 12
    :cond_0
    return-void
    .line 13
.end method

.method public setDrawColor(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/keyguard/PinShapeNonHintingView;->mColor:I

    .line 2
    return-void
    .line 4
.end method
