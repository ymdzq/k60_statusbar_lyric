.class public final Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mAnimator:Landroid/animation/ValueAnimator;

.field public final mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

.field public final mUpdateListener:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;

.field public final mViews:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/TouchAnimator$Listener;II)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mViews:Ljava/util/List;

    .line 10
    new-instance v0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;

    .line 12
    invoke-direct {v0, p0}, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;-><init>(Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;)V

    .line 14
    iput-object v0, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mUpdateListener:Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator$1;

    .line 17
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mListener:Lcom/android/systemui/qs/TouchAnimator$Listener;

    .line 19
    filled-new-array {p2, p3}, [I

    .line 21
    move-result-object p1

    .line 24
    invoke-static {p1}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    .line 25
    move-result-object p1

    .line 28
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mAnimator:Landroid/animation/ValueAnimator;

    .line 29
    const/4 p0, -0x1

    .line 31
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatCount(I)V

    .line 32
    const/4 p0, 0x2

    .line 35
    invoke-virtual {p1, p0}, Landroid/animation/ValueAnimator;->setRepeatMode(I)V

    .line 36
    invoke-virtual {p1, v0}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 39
    return-void
    .line 42
.end method


# virtual methods
.method public final resetViewsHeights()V
    .locals 5

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator$HeightExpansionAnimator;->mViews:Ljava/util/List;

    .line 2
    move-object v0, p0

    .line 4
    check-cast v0, Ljava/util/ArrayList;

    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 7
    move-result v0

    .line 10
    const/4 v1, 0x0

    .line 11
    :goto_0
    if-ge v1, v0, :cond_1

    .line 12
    move-object v2, p0

    .line 14
    check-cast v2, Ljava/util/ArrayList;

    .line 15
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 17
    move-result-object v2

    .line 20
    check-cast v2, Landroid/view/View;

    .line 21
    instance-of v3, v2, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    .line 23
    if-eqz v3, :cond_0

    .line 25
    check-cast v2, Lcom/android/systemui/qs/tileimpl/HeightOverrideable;

    .line 27
    check-cast v2, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;

    .line 29
    const/4 v3, -0x1

    .line 31
    invoke-virtual {v2, v3}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->setHeightOverride(I)V

    .line 32
    invoke-virtual {v2}, Lcom/android/systemui/qs/tileimpl/QSTileViewImpl;->updateHeight()V

    .line 35
    goto :goto_1

    .line 38
    :cond_0
    invoke-virtual {v2}, Landroid/view/View;->getTop()I

    .line 39
    move-result v3

    .line 42
    invoke-virtual {v2}, Landroid/view/View;->getMeasuredHeight()I

    .line 43
    move-result v4

    .line 46
    add-int/2addr v4, v3

    .line 47
    invoke-virtual {v2, v4}, Landroid/view/View;->setBottom(I)V

    .line 48
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_1
    return-void
    .line 54
.end method
