.class public final Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;
.super Landroid/view/ViewOutlineProvider;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 2
    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mCustomOutline:Z

    .line 4
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_1

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/statusbar/notification/Roundable;->hasRoundedCorner()Z

    .line 9
    move-result p1

    .line 12
    if-nez p1, :cond_1

    .line 13
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 15
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mAlwaysRoundBothCorners:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    iget-boolean v0, p1, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mDismissUsingRowTranslationX:Z

    .line 21
    if-nez v0, :cond_0

    .line 23
    invoke-virtual {p1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getTranslation()F

    .line 25
    move-result p1

    .line 28
    float-to-int p1, p1

    .line 29
    goto :goto_0

    .line 30
    :cond_0
    move p1, v1

    .line 31
    :goto_0
    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    .line 32
    move-result v0

    .line 35
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 36
    iget v3, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipTopAmount:I

    .line 38
    invoke-virtual {v2}, Landroid/widget/FrameLayout;->getWidth()I

    .line 40
    move-result v2

    .line 43
    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    .line 44
    move-result p1

    .line 47
    add-int/2addr p1, v2

    .line 48
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 49
    iget v1, v1, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipRightAmount:I

    .line 51
    sub-int/2addr p1, v1

    .line 53
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 54
    move-result p1

    .line 57
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 58
    invoke-virtual {v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->getActualHeight()I

    .line 60
    move-result v1

    .line 63
    iget-object v2, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 64
    iget v2, v2, Lcom/android/systemui/statusbar/notification/row/ExpandableView;->mClipBottomAmount:I

    .line 66
    sub-int/2addr v1, v2

    .line 68
    invoke-static {v1, v3}, Ljava/lang/Math;->max(II)I

    .line 69
    move-result v1

    .line 72
    invoke-virtual {p2, v0, v3, p1, v1}, Landroid/graphics/Outline;->setRect(IIII)V

    .line 73
    goto :goto_1

    .line 76
    :cond_1
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 77
    invoke-virtual {p1, v1}, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->getClipPath(Z)Landroid/graphics/Path;

    .line 79
    move-result-object p1

    .line 82
    if-eqz p1, :cond_2

    .line 83
    invoke-virtual {p2, p1}, Landroid/graphics/Outline;->setPath(Landroid/graphics/Path;)V

    .line 85
    :cond_2
    :goto_1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView$1;->this$0:Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;

    .line 88
    iget p0, p0, Lcom/android/systemui/statusbar/notification/row/ExpandableOutlineView;->mOutlineAlpha:F

    .line 90
    invoke-virtual {p2, p0}, Landroid/graphics/Outline;->setAlpha(F)V

    .line 92
    return-void
    .line 95
.end method
