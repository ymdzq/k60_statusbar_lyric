.class public Lcom/android/systemui/qs/SignalTileView;
.super Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mIconFrame:Landroid/widget/FrameLayout;

.field public final mIn:Landroid/widget/ImageView;

.field public final mOut:Landroid/widget/ImageView;

.field public mOverlay:Landroid/widget/ImageView;

.field public mSignal:Lcom/android/systemui/qs/tileimpl/SlashImageView;

.field public final mSignalIndicatorToIconFrameSpacing:I

.field public final mWideOverlayIconStartPadding:I


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Landroid/animation/ValueAnimator;

    .line 2
    invoke-direct {v0}, Landroid/animation/ValueAnimator;-><init>()V

    .line 4
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getDuration()J

    .line 7
    move-result-wide v0

    .line 10
    const-wide/16 v2, 0x3

    .line 11
    div-long/2addr v0, v2

    .line 13
    return-void
    .line 14
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;-><init>(Landroid/content/Context;)V

    .line 2
    new-instance v0, Landroid/widget/ImageView;

    .line 5
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 7
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 9
    const v1, 0x7f08116e    # @drawable/ic_qs_signal_in 'res/drawable/ic_qs_signal_in.xml'

    .line 12
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 15
    const/4 v1, 0x0

    .line 18
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 19
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 22
    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 25
    new-instance v0, Landroid/widget/ImageView;

    .line 27
    iget-object v2, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 29
    invoke-direct {v0, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 31
    const v2, 0x7f08116f    # @drawable/ic_qs_signal_out 'res/drawable/ic_qs_signal_out.xml'

    .line 34
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 37
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 40
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 43
    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 46
    const/4 v0, 0x0

    .line 48
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipChildren(Z)V

    .line 49
    invoke-virtual {p0, v0}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 55
    move-result-object v0

    .line 58
    const v1, 0x7f071279    # @dimen/wide_type_icon_start_padding_qs '3.0dp'

    .line 59
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 62
    move-result v0

    .line 65
    iput v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    .line 66
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 68
    move-result-object p1

    .line 71
    const v0, 0x7f0710a1    # @dimen/signal_indicator_to_icon_frame_spacing '3.0dp'

    .line 72
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 75
    move-result p1

    .line 78
    iput p1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    .line 79
    return-void
    .line 81
.end method


# virtual methods
.method public final createIcon()Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/FrameLayout;

    .line 2
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 4
    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 6
    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 9
    iget-object v0, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 11
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/SignalTileView;->createSlashImageView(Landroid/content/Context;)Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 13
    move-result-object v0

    .line 16
    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 17
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 19
    invoke-virtual {v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 21
    new-instance v0, Landroid/widget/ImageView;

    .line 24
    iget-object v1, p0, Landroid/view/ViewGroup;->mContext:Landroid/content/Context;

    .line 26
    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 28
    iput-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 31
    iget-object v1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 33
    const/4 v2, -0x2

    .line 35
    invoke-virtual {v1, v0, v2, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;II)V

    .line 36
    iget-object p0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 39
    return-object p0
    .line 41
.end method

.method public createSlashImageView(Landroid/content/Context;)Lcom/android/systemui/qs/tileimpl/SlashImageView;
    .locals 0

    .line 1
    new-instance p0, Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 2
    invoke-direct {p0, p1}, Lcom/android/systemui/qs/tileimpl/SlashImageView;-><init>(Landroid/content/Context;)V

    .line 4
    return-object p0
    .line 7
.end method

.method public getIconMeasureMode()I
    .locals 0

    .line 1
    const/high16 p0, -0x80000000

    .line 2
    return p0
    .line 4
.end method

.method public final layoutIndicator(Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLayoutDirection()I

    .line 2
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-ne v0, v1, :cond_0

    .line 7
    goto :goto_0

    .line 9
    :cond_0
    const/4 v1, 0x0

    .line 10
    :goto_0
    if-eqz v1, :cond_1

    .line 11
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getLeft()I

    .line 13
    move-result v0

    .line 16
    iget v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    .line 17
    sub-int/2addr v0, v1

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 20
    move-result v1

    .line 23
    sub-int v1, v0, v1

    .line 24
    goto :goto_1

    .line 26
    :cond_1
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getRight()I

    .line 27
    move-result v0

    .line 30
    iget v1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignalIndicatorToIconFrameSpacing:I

    .line 31
    add-int/2addr v1, v0

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 34
    move-result v0

    .line 37
    add-int/2addr v0, v1

    .line 38
    :goto_1
    iget-object v2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 39
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getBottom()I

    .line 41
    move-result v2

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 45
    move-result v3

    .line 48
    sub-int/2addr v2, v3

    .line 49
    iget-object p0, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 50
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getBottom()I

    .line 52
    move-result p0

    .line 55
    invoke-virtual {p1, v1, v2, v0, p0}, Landroid/view/View;->layout(IIII)V

    .line 56
    return-void
    .line 59
.end method

.method public final onLayout(ZIIII)V
    .locals 0

    .line 1
    invoke-super/range {p0 .. p5}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 5
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 7
    iget-object p1, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 10
    invoke-virtual {p0, p1}, Lcom/android/systemui/qs/SignalTileView;->layoutIndicator(Landroid/view/View;)V

    .line 12
    return-void
    .line 15
.end method

.method public final onMeasure(II)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->onMeasure(II)V

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 5
    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 7
    move-result p1

    .line 10
    const/high16 p2, 0x40000000    # 2.0f

    .line 11
    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 13
    move-result p1

    .line 16
    iget-object p2, p0, Lcom/android/systemui/qs/SignalTileView;->mIconFrame:Landroid/widget/FrameLayout;

    .line 17
    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getMeasuredHeight()I

    .line 19
    move-result p2

    .line 22
    const/high16 v0, -0x80000000

    .line 23
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 25
    move-result p2

    .line 28
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mIn:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {v0, p2, p1}, Landroid/widget/ImageView;->measure(II)V

    .line 31
    iget-object p0, p0, Lcom/android/systemui/qs/SignalTileView;->mOut:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p0, p2, p1}, Landroid/widget/ImageView;->measure(II)V

    .line 36
    return-void
    .line 39
.end method

.method public setIcon(Lcom/android/systemui/plugins/qs/QSTile$State;Z)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 4
    invoke-virtual {p0, v0, p1, p2}, Lcom/android/systemui/qs/tileimpl/QSIconViewImpl;->setIcon(Landroid/widget/ImageView;Lcom/android/systemui/plugins/qs/QSTile$State;Z)V

    .line 6
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 9
    const/4 v1, 0x0

    .line 11
    if-lez v0, :cond_0

    .line 12
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 14
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 19
    iget v2, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 21
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 23
    goto :goto_0

    .line 26
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/qs/SignalTileView;->mOverlay:Landroid/widget/ImageView;

    .line 27
    const/16 v2, 0x8

    .line 29
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 31
    :goto_0
    iget v0, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->overlayIconId:I

    .line 34
    if-lez v0, :cond_1

    .line 36
    iget-boolean p1, p1, Lcom/android/systemui/plugins/qs/QSTile$SignalState;->isOverlayIconWide:Z

    .line 38
    if-eqz p1, :cond_1

    .line 40
    iget-object p1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 42
    iget v0, p0, Lcom/android/systemui/qs/SignalTileView;->mWideOverlayIconStartPadding:I

    .line 44
    invoke-virtual {p1, v0, v1, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 46
    goto :goto_1

    .line 49
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/qs/SignalTileView;->mSignal:Lcom/android/systemui/qs/tileimpl/SlashImageView;

    .line 50
    invoke-virtual {p1, v1, v1, v1, v1}, Landroid/widget/ImageView;->setPaddingRelative(IIII)V

    .line 52
    :goto_1
    if-eqz p2, :cond_2

    .line 55
    invoke-virtual {p0}, Landroid/view/ViewGroup;->isShown()Z

    .line 57
    :cond_2
    return-void
    .line 60
.end method
