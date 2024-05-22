.class public final Lcom/android/systemui/fsgesture/NavStubDemoView$8;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

.field public final synthetic val$initX:I

.field public final synthetic val$initY:I


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/NavStubDemoView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 2
    iput p2, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initX:I

    .line 4
    iput p3, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initY:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 2
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    check-cast v1, Ljava/lang/Float;

    .line 8
    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    .line 10
    move-result v1

    .line 13
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mCurScale:F

    .line 14
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    .line 16
    move-result p1

    .line 19
    iget-object v0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->this$0:Lcom/android/systemui/fsgesture/NavStubDemoView;

    .line 20
    iget v1, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initX:I

    .line 22
    int-to-float v2, v1

    .line 24
    iget v3, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowWidth:I

    .line 25
    div-int/lit8 v3, v3, 0x2

    .line 27
    sub-int/2addr v3, v1

    .line 29
    int-to-float v1, v3

    .line 30
    mul-float/2addr v1, p1

    .line 31
    add-float/2addr v1, v2

    .line 32
    float-to-int v1, v1

    .line 33
    iput v1, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocX:I

    .line 34
    iget p0, p0, Lcom/android/systemui/fsgesture/NavStubDemoView$8;->val$initY:I

    .line 36
    int-to-float v1, p0

    .line 38
    iget v2, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mShowHeight:I

    .line 39
    sub-int/2addr v2, p0

    .line 41
    int-to-float p0, v2

    .line 42
    mul-float/2addr p0, p1

    .line 43
    add-float/2addr p0, v1

    .line 44
    float-to-int p0, p0

    .line 45
    iput p0, v0, Lcom/android/systemui/fsgesture/NavStubDemoView;->mPivotLocY:I

    .line 46
    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 48
    return-void
    .line 51
.end method
