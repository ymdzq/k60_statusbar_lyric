.class public Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;
.super Landroid/widget/ImageView;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final synthetic $r8$clinit:I


# instance fields
.field public mAlpha:I

.field public mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

.field public final mBubbleBounds:Landroid/graphics/RectF;

.field public mBubbleCornerRadius:F

.field public final mDelayAlpha:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

.field public final mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

.field public mHeight:I

.field public mIconBitmap:Landroid/graphics/Bitmap;

.field public final mPaint:Landroid/graphics/Paint;

.field public mScaleCenterType:I

.field public mScaledHeight:I

.field public mScaledWidth:I

.field public final mShadowRadiusBig:I

.field public mWidth:I

.field public toEdge:Z


# direct methods
.method public static bridge synthetic -$$Nest$mgetDelX(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getDelX()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public static bridge synthetic -$$Nest$mgetDelY(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)F
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getDelY()F

    .line 2
    move-result p0

    .line 5
    return p0
    .line 6
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2

    .line 4
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 5
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    .line 6
    new-instance p2, Landroid/graphics/Paint;

    const/4 p3, 0x1

    invoke-direct {p2, p3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mPaint:Landroid/graphics/Paint;

    .line 7
    new-instance p4, Landroid/graphics/Paint;

    invoke-direct {p4, p3}, Landroid/graphics/Paint;-><init>(I)V

    const/4 v0, 0x0

    .line 8
    iput-boolean v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->toEdge:Z

    .line 9
    new-instance v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;I)V

    iput-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDelayAlpha:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$$ExternalSyntheticLambda0;

    .line 10
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 11
    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 12
    sget-object p3, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p3}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setLayoutDirection(I)V

    const/16 p3, 0x11

    .line 14
    iput p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaleCenterType:I

    .line 15
    new-instance p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    invoke-direct {p3}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;-><init>()V

    iput-object p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 16
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_EDGE:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    iput-object v1, p3, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->preMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 17
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x7f0707dd    # @dimen/miui_bubble_shadow_radius_big '120.0dp'

    .line 18
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    iput p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mShadowRadiusBig:I

    const p3, 0x7f0707d8    # @dimen/miui_bubble_corner_radius '18.0dp'

    .line 19
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p3

    int-to-float p3, p3

    iput p3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleCornerRadius:F

    const p3, 0x7f060397    # @color/miui_bubble_shadow_bg '#ffffffff'

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 21
    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 22
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 23
    sget-object p1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 24
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setColor(I)V

    const/4 p1, 0x0

    .line 25
    invoke-virtual {p4, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 26
    invoke-virtual {p4, v0}, Landroid/graphics/Paint;->setAlpha(I)V

    const/16 p1, 0xff

    .line 27
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mAlpha:I

    .line 28
    new-instance p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$1;

    invoke-direct {p1, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$1;-><init>(Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    return-void
.end method

.method private getDelX()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaleCenterType:I

    .line 2
    const/16 v1, 0x11

    .line 4
    if-eq v0, v1, :cond_1

    .line 6
    const/4 v1, 0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    goto :goto_0

    .line 11
    :cond_0
    const/4 p0, 0x0

    .line 12
    return p0

    .line 13
    :cond_1
    :goto_0
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 14
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 16
    sub-int/2addr v0, p0

    .line 18
    neg-int p0, v0

    .line 19
    int-to-float p0, p0

    .line 20
    const/high16 v0, 0x40000000    # 2.0f

    .line 21
    div-float/2addr p0, v0

    .line 23
    return p0
    .line 24
.end method

.method private getDelY()F
    .locals 2

    .line 1
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaleCenterType:I

    .line 2
    const/16 v1, 0x11

    .line 4
    if-ne v0, v1, :cond_0

    .line 6
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 8
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mHeight:I

    .line 10
    sub-int/2addr v0, p0

    .line 12
    neg-int p0, v0

    .line 13
    int-to-float p0, p0

    .line 14
    const/high16 v0, 0x40000000    # 2.0f

    .line 15
    div-float/2addr p0, v0

    .line 17
    return p0

    .line 18
    :cond_0
    const/4 p0, 0x0

    .line 19
    return p0
    .line 20
.end method

.method private getShadowAlpha()I
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 6
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_MINI:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 12
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 14
    if-eq v0, p0, :cond_0

    .line 16
    const/16 p0, 0x7f

    .line 18
    return p0

    .line 20
    :cond_0
    const/16 p0, 0x66

    .line 21
    return p0
    .line 23
.end method

.method private getShadowDelY()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 6
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 12
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 14
    if-eq v1, v2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const v0, 0x7f0707d5    # @dimen/miui_bubble_app_freeform_radius_del_y '40.0dp'

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_MINI:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 30
    if-ne v0, v1, :cond_1

    .line 32
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 34
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 36
    if-eq v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p0

    .line 43
    const v0, 0x7f0707d7    # @dimen/miui_bubble_app_mini_radius_del_y '25.0dp'

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    const/4 p0, 0x0

    .line 52
    return p0
    .line 53
.end method

.method private getShadowRadius()I
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 2
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 4
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 6
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 8
    if-ne v0, v1, :cond_0

    .line 10
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 12
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 14
    if-eq v1, v2, :cond_0

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const v0, 0x7f0707d4    # @dimen/miui_bubble_app_freeform_radius '60.0dp'

    .line 22
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 25
    move-result p0

    .line 28
    return p0

    .line 29
    :cond_0
    sget-object v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_MINI:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 30
    if-ne v0, v1, :cond_1

    .line 32
    iget v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 34
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 36
    if-eq v0, v1, :cond_1

    .line 38
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 40
    move-result-object p0

    .line 43
    const v0, 0x7f0707d6    # @dimen/miui_bubble_app_mini_radius '80.0dp'

    .line 44
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 47
    move-result p0

    .line 50
    return p0

    .line 51
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 52
    move-result-object p0

    .line 55
    const v0, 0x7f0707d3    # @dimen/miui_bubble_app_edge_radius '20.0dp'

    .line 56
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    .line 59
    move-result p0

    .line 62
    return p0
    .line 63
.end method


# virtual methods
.method public final dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    .line 2
    move-result v0

    .line 5
    const-string v1, "dispatchTouchEvent "

    .line 6
    const-string v2, "MiuiBubbleImageView"

    .line 8
    invoke-static {v1, v0, v2}, Lcom/android/systemui/keyguard/KeyguardService$$ExternalSyntheticOutline0;->m(Ljava/lang/String;ILjava/lang/String;)V

    .line 10
    if-nez v0, :cond_1

    .line 13
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->PINNED:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 15
    invoke-virtual {p0, v0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->isEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)Z

    .line 17
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 23
    move-result p0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    const/4 p0, 0x1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    const/4 p0, 0x0

    .line 31
    :goto_0
    return p0

    .line 32
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    .line 33
    move-result p0

    .line 36
    return p0
    .line 37
.end method

.method public getBounds()Landroid/graphics/Rect;
    .locals 4

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    .line 2
    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationX()F

    .line 7
    move-result v1

    .line 10
    float-to-int v1, v1

    .line 11
    invoke-virtual {p0}, Landroid/widget/ImageView;->getTranslationY()F

    .line 12
    move-result v2

    .line 15
    float-to-int v2, v2

    .line 16
    invoke-virtual {p0}, Landroid/widget/ImageView;->getWidth()I

    .line 17
    move-result v3

    .line 20
    add-int/2addr v3, v1

    .line 21
    invoke-virtual {p0}, Landroid/widget/ImageView;->getHeight()I

    .line 22
    move-result p0

    .line 25
    add-int/2addr p0, v2

    .line 26
    invoke-virtual {v0, v1, v2, v3, p0}, Landroid/graphics/Rect;->set(IIII)V

    .line 27
    return-object v0
    .line 30
.end method

.method public getBubbleCornerRadius()F
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleCornerRadius:F

    .line 2
    return p0
    .line 4
.end method

.method public getDragState()Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 2
    return-object p0
    .line 4
.end method

.method public getEdgeState()Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 2
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->edgeState:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 4
    return-object p0
    .line 6
.end method

.method public final getFinalCornerRadius(Z)F
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 8
    iget p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowRoundCorner:F

    .line 10
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->windowScaleX:F

    .line 12
    mul-float/2addr p1, p0

    .line 14
    return p1

    .line 15
    :cond_0
    iget-object p0, p0, Landroid/widget/ImageView;->mContext:Landroid/content/Context;

    .line 16
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 18
    move-result-object p0

    .line 21
    const p1, 0x7f0707d8    # @dimen/miui_bubble_corner_radius '18.0dp'

    .line 22
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 25
    move-result p0

    .line 28
    int-to-float p0, p0

    .line 29
    return p0
    .line 30
.end method

.method public getScaledHeight()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 2
    return p0
    .line 4
.end method

.method public getScaledWidth()I
    .locals 0

    .line 1
    iget p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 2
    return p0
    .line 4
.end method

.method public final isEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 6
    const-string v1, "isEdgeState: "

    .line 8
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 13
    iget-object v1, v1, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->edgeState:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 15
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    move-result-object v0

    .line 23
    const-string v1, "MiuiBubbleImageView"

    .line 24
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 26
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 29
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->edgeState:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 31
    if-ne p0, p1, :cond_0

    .line 33
    const/4 p0, 0x1

    .line 35
    goto :goto_0

    .line 36
    :cond_0
    const/4 p0, 0x0

    .line 37
    :goto_0
    return p0
    .line 38
.end method

.method public final onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    .line 5
    move-result-object p1

    .line 8
    const v0, 0x7f060397    # @color/miui_bubble_shadow_bg '#ffffffff'

    .line 9
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getColor(I)I

    .line 12
    move-result p1

    .line 15
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mPaint:Landroid/graphics/Paint;

    .line 16
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 18
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 21
    return-void
    .line 24
.end method

.method public final onDraw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    .line 2
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 4
    int-to-float v1, v1

    .line 6
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 7
    int-to-float v2, v2

    .line 9
    const/4 v3, 0x0

    .line 10
    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 11
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getShadowAlpha()I

    .line 14
    move-result v0

    .line 17
    const/4 v1, 0x0

    .line 18
    invoke-static {v0, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    .line 19
    move-result v3

    .line 22
    const/4 v4, 0x0

    .line 23
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getShadowDelY()I

    .line 24
    move-result v0

    .line 27
    int-to-float v5, v0

    .line 28
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getShadowRadius()I

    .line 29
    move-result v0

    .line 32
    int-to-float v6, v0

    .line 33
    const/high16 v7, 0x3f800000    # 1.0f

    .line 34
    move-object v2, p0

    .line 36
    invoke-virtual/range {v2 .. v7}, Landroid/widget/ImageView;->setMiShadow(IFFFF)V

    .line 37
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    .line 40
    iget v0, v0, Landroid/graphics/RectF;->left:F

    .line 42
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 44
    div-int/lit8 v1, v1, 0x2

    .line 46
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mShadowRadiusBig:I

    .line 48
    add-int/lit16 v2, v2, 0xc8

    .line 50
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 52
    move-result v1

    .line 55
    int-to-float v1, v1

    .line 56
    sub-float v3, v0, v1

    .line 57
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    .line 59
    iget v1, v0, Landroid/graphics/RectF;->top:F

    .line 61
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mShadowRadiusBig:I

    .line 63
    int-to-float v2, v2

    .line 65
    sub-float v4, v1, v2

    .line 66
    iget v1, v0, Landroid/graphics/RectF;->right:F

    .line 68
    add-float v5, v2, v1

    .line 70
    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    .line 72
    add-float v6, v0, v2

    .line 74
    iget v7, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mAlpha:I

    .line 76
    move-object v2, p1

    .line 78
    invoke-virtual/range {v2 .. v7}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFI)I

    .line 79
    move-result v0

    .line 82
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getDelX()F

    .line 83
    move-result v1

    .line 86
    invoke-direct {p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->getDelY()F

    .line 87
    move-result v2

    .line 90
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 91
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleBounds:Landroid/graphics/RectF;

    .line 94
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleCornerRadius:F

    .line 96
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mPaint:Landroid/graphics/Paint;

    .line 98
    invoke-virtual {p1, v1, v2, v2, v3}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 100
    iget-object v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 103
    if-eqz v1, :cond_0

    .line 105
    iget v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 107
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    .line 109
    move-result v1

    .line 112
    sub-int/2addr v2, v1

    .line 113
    div-int/lit8 v2, v2, 0x2

    .line 114
    iget v1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 116
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 118
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    .line 120
    move-result v3

    .line 123
    sub-int/2addr v1, v3

    .line 124
    div-int/lit8 v1, v1, 0x2

    .line 125
    iget-object v3, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 127
    int-to-float v2, v2

    .line 129
    int-to-float v1, v1

    .line 130
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mPaint:Landroid/graphics/Paint;

    .line 131
    invoke-virtual {p1, v3, v2, v1, p0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 136
    return-void
    .line 139
.end method

.method public final onSizeChanged(IIII)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->onSizeChanged(IIII)V

    .line 2
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mWidth:I

    .line 5
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mHeight:I

    .line 7
    iput p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledHeight:I

    .line 9
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaledWidth:I

    .line 11
    return-void
    .line 13
.end method

.method public final postDelayed(Ljava/lang/Runnable;J)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string v1, "postDelayed: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 12
    move-result-object v0

    .line 15
    const-string v1, "MiuiBubbleImageView"

    .line 16
    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 18
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 21
    move-result p0

    .line 24
    return p0
    .line 25
.end method

.method public setAlpha(F)V
    .locals 1

    .line 1
    const/high16 v0, 0x437f0000    # 255.0f

    .line 2
    mul-float/2addr p1, v0

    .line 4
    float-to-int p1, p1

    .line 5
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mAlpha:I

    .line 6
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 8
    return-void
    .line 11
.end method

.method public setBubbleCornerRadius(F)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubbleCornerRadius:F

    .line 2
    return-void
    .line 4
.end method

.method public setEdgeState(Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;)V
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setEdgeState "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiBubbleImageView"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mDragState:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;

    .line 22
    if-eqz v0, :cond_0

    .line 24
    iput-object p1, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView$DragState;->edgeState:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 26
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 28
    const-string/jumbo v2, "setEdgeState, bubble is inflated "

    .line 30
    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 33
    iget-object v2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 36
    iget-object v2, v2, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 38
    const/4 v3, 0x1

    .line 40
    const/4 v4, 0x0

    .line 41
    if-eqz v2, :cond_1

    .line 42
    move v2, v3

    .line 44
    goto :goto_0

    .line 45
    :cond_1
    move v2, v4

    .line 46
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 50
    move-result-object v0

    .line 53
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    iget-object v0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 57
    if-eqz v0, :cond_4

    .line 59
    iget-object v0, v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->mIconView:Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;

    .line 61
    if-eqz v0, :cond_2

    .line 63
    goto :goto_1

    .line 65
    :cond_2
    move v3, v4

    .line 66
    :goto_1
    if-eqz v3, :cond_4

    .line 67
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;->PINNED:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/EdgeState;

    .line 69
    if-ne p1, v0, :cond_3

    .line 71
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 73
    move-result-object p1

    .line 76
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 77
    sget-object v0, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->mActiveBubbles:Ljava/util/HashSet;

    .line 79
    invoke-virtual {v0, p0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-static {p1}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->notifyNotificationBubblesChanged(Landroid/content/Context;)V

    .line 84
    goto :goto_2

    .line 87
    :cond_3
    invoke-virtual {p0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    .line 88
    move-result-object p1

    .line 91
    iget-object p0, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 92
    invoke-static {p1, p0}, Lcom/android/wm/shell/miuifreeform/miuibubbles/settings/MiuiBubbleSettings;->removeActiveBubble(Landroid/content/Context;Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;)V

    .line 94
    :cond_4
    :goto_2
    return-void
    .line 97
.end method

.method public setEnabled(Z)V
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    const-string/jumbo v1, "setEnabled: "

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    move-result-object v0

    .line 16
    const-string v1, "MiuiBubbleImageView"

    .line 17
    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 22
    return-void
    .line 25
.end method

.method public setIconBitmap(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 4
    return-void
    .line 7
.end method

.method public setRenderedBubble(Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;Landroid/graphics/Bitmap;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mBubble:Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;

    .line 2
    iput-object p2, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mIconBitmap:Landroid/graphics/Bitmap;

    .line 4
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/MiuiBubble;->bubbleEntry:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;

    .line 6
    iget-object p1, p1, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiBubbleEntry;->mFreeformMode:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 8
    sget-object p2, Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;->MODE_FREEFORM:Lcom/android/wm/shell/miuifreeform/miuibubbles/data/MiuiFreeformMode;

    .line 10
    if-ne p1, p2, :cond_0

    .line 12
    const/4 p1, 0x1

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/16 p1, 0x11

    .line 16
    :goto_0
    iput p1, p0, Lcom/android/wm/shell/miuifreeform/miuibubbles/views/MiuiBubbleImageView;->mScaleCenterType:I

    .line 18
    return-void
    .line 20
.end method

.method public setShadowAlpha(F)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 2
    return-void
    .line 5
.end method
