.class public final Landroidx/mediarouter/app/MediaRouteControllerDialog$7;
.super Landroid/view/animation/Animation;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic val$endValue:I

.field public final synthetic val$startValue:I

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(IILandroid/view/View;)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    .line 2
    iput p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    .line 4
    iput-object p3, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    .line 6
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 1

    .line 1
    iget p2, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$startValue:I

    .line 2
    iget v0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$endValue:I

    .line 4
    sub-int v0, p2, v0

    .line 6
    int-to-float v0, v0

    .line 8
    mul-float/2addr v0, p1

    .line 9
    float-to-int p1, v0

    .line 10
    sub-int/2addr p2, p1

    .line 11
    iget-object p0, p0, Landroidx/mediarouter/app/MediaRouteControllerDialog$7;->val$view:Landroid/view/View;

    .line 12
    invoke-static {p2, p0}, Landroidx/mediarouter/app/MediaRouteControllerDialog;->setLayoutHeight(ILandroid/view/View;)V

    .line 14
    return-void
    .line 17
.end method
