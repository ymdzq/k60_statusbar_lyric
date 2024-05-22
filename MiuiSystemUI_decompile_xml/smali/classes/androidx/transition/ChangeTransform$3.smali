.class public final Landroidx/transition/ChangeTransform$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mIsCanceled:Z

.field public final mTempMatrix:Landroid/graphics/Matrix;

.field public final synthetic this$0:Landroidx/transition/ChangeTransform;

.field public final synthetic val$finalEndMatrix:Landroid/graphics/Matrix;

.field public final synthetic val$handleParentChange:Z

.field public final synthetic val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

.field public final synthetic val$transforms:Landroidx/transition/ChangeTransform$Transforms;

.field public final synthetic val$view:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroidx/transition/ChangeTransform;ZLandroid/graphics/Matrix;Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    .line 2
    iput-boolean p2, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    .line 4
    iput-object p3, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    .line 6
    iput-object p4, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 8
    iput-object p5, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 10
    iput-object p6, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 12
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 14
    new-instance p1, Landroid/graphics/Matrix;

    .line 17
    invoke-direct {p1}, Landroid/graphics/Matrix;-><init>()V

    .line 19
    iput-object p1, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 22
    return-void
    .line 24
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 3

    .line 1
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->mIsCanceled:Z

    .line 2
    const/4 v0, 0x0

    .line 4
    if-nez p1, :cond_1

    .line 5
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$3;->val$handleParentChange:Z

    .line 7
    const v1, 0x7f0a09dc    # @id/transition_transform

    .line 9
    if-eqz p1, :cond_0

    .line 12
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->this$0:Landroidx/transition/ChangeTransform;

    .line 14
    iget-boolean p1, p1, Landroidx/transition/ChangeTransform;->mUseOverlay:Z

    .line 16
    if-eqz p1, :cond_0

    .line 18
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$finalEndMatrix:Landroid/graphics/Matrix;

    .line 20
    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 22
    invoke-virtual {v2, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 24
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 27
    iget-object v2, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 29
    invoke-virtual {p1, v1, v2}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 31
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 34
    iget-object v1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 36
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    sget-object v2, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 41
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 43
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationX(F)V

    .line 45
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 48
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 50
    sget-object v2, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 53
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 55
    invoke-static {v1, v2}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 57
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 60
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleX(F)V

    .line 62
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setScaleY(F)V

    .line 67
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 70
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationX(F)V

    .line 72
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 75
    invoke-virtual {v1, v2}, Landroid/view/View;->setRotationY(F)V

    .line 77
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 80
    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    .line 82
    goto :goto_0

    .line 85
    :cond_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 86
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 88
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 91
    const v1, 0x7f0a06ec    # @id/parent_matrix

    .line 93
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 96
    :cond_1
    :goto_0
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 99
    sget-object v1, Landroidx/transition/ViewUtils;->IMPL:Landroidx/transition/ViewUtilsApi29;

    .line 101
    invoke-virtual {p1, v0}, Landroid/view/View;->setAnimationMatrix(Landroid/graphics/Matrix;)V

    .line 103
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 106
    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 113
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 115
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 117
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 120
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 122
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 125
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 127
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 129
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 132
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 134
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 137
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 139
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 142
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 144
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 147
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 149
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 152
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 154
    return-void
    .line 157
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$pathAnimatorMatrix:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    iget-object p1, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->mMatrix:Landroid/graphics/Matrix;

    .line 4
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 6
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 11
    iget-object v0, p0, Landroidx/transition/ChangeTransform$3;->mTempMatrix:Landroid/graphics/Matrix;

    .line 13
    const v1, 0x7f0a09dc    # @id/transition_transform

    .line 15
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 18
    iget-object p1, p0, Landroidx/transition/ChangeTransform$3;->val$transforms:Landroidx/transition/ChangeTransform$Transforms;

    .line 21
    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 23
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 25
    sget-object v0, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 28
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationX:F

    .line 30
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 32
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationY:F

    .line 35
    invoke-virtual {p0, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 37
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 40
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mTranslationZ:F

    .line 42
    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 44
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleX:F

    .line 47
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 49
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mScaleY:F

    .line 52
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 54
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationX:F

    .line 57
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationX(F)V

    .line 59
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationY:F

    .line 62
    invoke-virtual {p0, v0}, Landroid/view/View;->setRotationY(F)V

    .line 64
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->mRotationZ:F

    .line 67
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 69
    return-void
    .line 72
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/transition/ChangeTransform$3;->val$view:Landroid/view/View;

    .line 2
    sget-object p1, Landroidx/transition/ChangeTransform;->sTransitionProperties:[Ljava/lang/String;

    .line 4
    const/4 p1, 0x0

    .line 6
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    invoke-virtual {p0, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    sget-object v0, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 13
    invoke-static {p0, p1}, Landroidx/core/view/ViewCompat$Api21Impl;->setTranslationZ(Landroid/view/View;F)V

    .line 15
    const/high16 v0, 0x3f800000    # 1.0f

    .line 18
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleX(F)V

    .line 20
    invoke-virtual {p0, v0}, Landroid/view/View;->setScaleY(F)V

    .line 23
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationX(F)V

    .line 26
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotationY(F)V

    .line 29
    invoke-virtual {p0, p1}, Landroid/view/View;->setRotation(F)V

    .line 32
    return-void
    .line 35
.end method
