.class public final Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field public final synthetic val$endingAlpha:I

.field public final synthetic val$startingAlpha:I


# direct methods
.method public constructor <init>(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    iput p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    .line 4
    iput p3, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    .line 6
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 2

    .line 1
    iget-object p2, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->this$0:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 2
    iget-object p2, p2, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->mProgress:Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;

    .line 4
    iget v0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$startingAlpha:I

    .line 6
    int-to-float v1, v0

    .line 8
    iget p0, p0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$4;->val$endingAlpha:I

    .line 9
    sub-int/2addr p0, v0

    .line 11
    int-to-float p0, p0

    .line 12
    mul-float/2addr p0, p1

    .line 13
    add-float/2addr p0, v1

    .line 14
    float-to-int p0, p0

    .line 15
    invoke-virtual {p2, p0}, Landroidx/swiperefreshlayout/widget/CircularProgressDrawable;->setAlpha(I)V

    .line 16
    return-void
    .line 19
.end method
