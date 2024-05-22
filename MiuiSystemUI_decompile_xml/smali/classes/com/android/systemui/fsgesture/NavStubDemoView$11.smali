.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$11;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field public final synthetic val$destX:F

.field public final synthetic val$destY:F

.field public final synthetic val$initX:I

.field public final synthetic val$initY:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;IFIF)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 2
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initX:I

    .line 4
    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destX:F

    .line 6
    iput p4, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initY:I

    .line 8
    iput p5, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destY:F

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    return-void
    .line 15
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 2
    const-string/jumbo v1, "scale"

    .line 4
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    move-result-object v1

    .line 10
    check-cast v1, Ljava/lang/Float;

    .line 11
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 13
    move-result v1

    .line 16
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 17
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 19
    const-string v1, "bottomDec"

    .line 21
    invoke-virtual {p1, v1}, Landroid/animation/ValueAnimator;->getAnimatedValue(Ljava/lang/String;)Ljava/lang/Object;

    .line 23
    move-result-object v1

    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 29
    move-result v1

    .line 32
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mBottomDec:I

    .line 33
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 35
    move-result p1

    .line 38
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 39
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initX:I

    .line 41
    int-to-float v2, v1

    .line 43
    iget v3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destX:F

    .line 44
    int-to-float v1, v1

    .line 46
    invoke-static {v3, v1, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 47
    move-result v1

    .line 50
    float-to-int v1, v1

    .line 51
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 52
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$initY:I

    .line 54
    int-to-float v2, v1

    .line 56
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$11;->val$destY:F

    .line 57
    int-to-float v1, v1

    .line 59
    invoke-static {p0, v1, p1, v2}, Landroidx/constraintlayout/core/widgets/analyzer/DependencyGraph$$ExternalSyntheticOutline0;->m(FFFF)F

    .line 60
    move-result p0

    .line 63
    float-to-int p0, p0

    .line 64
    iput p0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 65
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 67
    return-void
    .line 70
.end method
