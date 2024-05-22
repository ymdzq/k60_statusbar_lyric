.class public final Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 2
    move-result p1

    .line 5
    const/16 v0, 0x9

    .line 6
    new-array v0, v0, [F

    .line 8
    iget-object v1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 10
    iget-object v1, v1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 12
    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->getValues([F)V

    .line 14
    const/4 v1, 0x0

    .line 17
    aget v1, v0, v1

    .line 18
    const/4 v2, 0x4

    .line 20
    aget v2, v0, v2

    .line 21
    const/4 v3, 0x2

    .line 23
    aget v3, v0, v3

    .line 24
    const/4 v4, 0x5

    .line 26
    aget v0, v0, v4

    .line 27
    const/high16 v4, 0x3f800000    # 1.0f

    .line 29
    invoke-static {v4, v1, p1, v1}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 31
    move-result v1

    .line 34
    invoke-static {v4, v2, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 35
    move-result v2

    .line 38
    sub-float/2addr v4, p1

    .line 39
    mul-float/2addr v3, v4

    .line 40
    mul-float/2addr v0, v4

    .line 41
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 42
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 44
    invoke-virtual {p1}, Landroid/graphics/Matrix;->reset()V

    .line 46
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 49
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 51
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Matrix;->setScale(FF)V

    .line 53
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 56
    iget-object p1, p1, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 58
    invoke-virtual {p1, v3, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z

    .line 60
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity$4;->this$0:Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;

    .line 63
    iget-object p1, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityView:Landroid/view/View;

    .line 65
    iget-object p0, p0, Lcom/android/systemui/fsgesture/FsGestureBackDemoActivity;->mDemoActivityViewMatrix:Landroid/graphics/Matrix;

    .line 67
    invoke-virtual {p1, p0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 69
    return-void
    .line 72
.end method
