.class public Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;
.super Landroid/graphics/drawable/GradientDrawable;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHeight:I

.field public final mInvalidateUpdateListener:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

.field public mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public mScale:F

.field public final mScaleFloatProperty:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

.field public final mSeekBarGradientState:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

.field public mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

.field public final mWidth:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mWidth:I

    .line 3
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScale:F

    .line 5
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScaleFloatProperty:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    .line 6
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mInvalidateUpdateListener:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    .line 7
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-direct {v0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

    .line 9
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v1

    .line 10
    iput-object v1, v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->initAnim()V

    return-void
.end method

.method public constructor <init>(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;)V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/graphics/drawable/GradientDrawable;-><init>()V

    const/4 v0, 0x0

    .line 13
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mWidth:I

    .line 14
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mHeight:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 15
    iput v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScale:F

    .line 16
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScaleFloatProperty:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    .line 17
    new-instance v0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    invoke-direct {v0, p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;-><init>(Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;)V

    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mInvalidateUpdateListener:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    if-nez p1, :cond_0

    .line 18
    iget-object p1, p3, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 19
    iget-object p2, p3, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    .line 20
    :cond_1
    iget-object v0, p3, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable(Landroid/content/res/Resources;Landroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 21
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p2

    iput-object p2, p3, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 22
    new-instance p2, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

    invoke-direct {p2}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;-><init>()V

    .line 23
    iput-object p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

    .line 24
    iget-object p3, p3, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 25
    iput-object p3, p2, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;->mParent:Landroid/graphics/drawable/Drawable$ConstantState;

    .line 26
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mWidth:I

    .line 27
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    iput p2, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mHeight:I

    .line 28
    instance-of p2, p1, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_2

    .line 29
    check-cast p1, Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getCornerRadius()F

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getShape()I

    move-result p2

    invoke-virtual {p0, p2}, Landroid/graphics/drawable/GradientDrawable;->setShape(I)V

    .line 31
    invoke-virtual {p1}, Landroid/graphics/drawable/GradientDrawable;->getColor()Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(Landroid/content/res/ColorStateList;)V

    .line 32
    :cond_2
    invoke-virtual {p0}, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->initAnim()V

    return-void
.end method


# virtual methods
.method public final draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/graphics/drawable/GradientDrawable;->getBounds()Landroid/graphics/Rect;

    .line 2
    move-result-object v0

    .line 5
    iget v1, v0, Landroid/graphics/Rect;->right:I

    .line 6
    iget v2, v0, Landroid/graphics/Rect;->left:I

    .line 8
    add-int/2addr v1, v2

    .line 10
    div-int/lit8 v1, v1, 0x2

    .line 11
    iget v2, v0, Landroid/graphics/Rect;->top:I

    .line 13
    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    .line 15
    add-int/2addr v2, v0

    .line 17
    div-int/lit8 v2, v2, 0x2

    .line 18
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 20
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScale:F

    .line 23
    int-to-float v1, v1

    .line 25
    int-to-float v2, v2

    .line 26
    invoke-virtual {p1, v0, v0, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 27
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 30
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 33
    return-void
    .line 36
.end method

.method public final getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mSeekBarGradientState:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$SeekBarGradientState;

    .line 2
    return-object p0
    .line 4
.end method

.method public final getIntrinsicHeight()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mHeight:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicHeight()I

    .line 7
    move-result v0

    .line 10
    :goto_0
    return v0
    .line 11
.end method

.method public final getIntrinsicWidth()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mWidth:I

    .line 2
    if-lez v0, :cond_0

    .line 4
    goto :goto_0

    .line 6
    :cond_0
    invoke-super {p0}, Landroid/graphics/drawable/GradientDrawable;->getIntrinsicWidth()I

    .line 7
    move-result v0

    .line 10
    :goto_0
    return v0
    .line 11
.end method

.method public final initAnim()V
    .locals 5

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 2
    iget-object v1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScaleFloatProperty:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    .line 4
    const/high16 v2, 0x40400000    # 3.0f

    .line 6
    invoke-direct {v0, p0, v1, v2}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 8
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 11
    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 13
    const v1, 0x4476bd71

    .line 15
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 18
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 21
    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 23
    const v2, 0x3f333333    # 0.7f

    .line 25
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 28
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 31
    const v2, 0x3b03126f    # 0.002f

    .line 33
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 36
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 39
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mInvalidateUpdateListener:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    .line 41
    invoke-virtual {v0, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 43
    new-instance v0, Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 46
    iget-object v3, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mScaleFloatProperty:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$1;

    .line 48
    const/high16 v4, 0x3f800000    # 1.0f

    .line 50
    invoke-direct {v0, p0, v3, v4}, Landroidx/dynamicanimation/animation/SpringAnimation;-><init>(Ljava/lang/Object;Landroidx/dynamicanimation/animation/FloatPropertyCompat;F)V

    .line 52
    iput-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 55
    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 57
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setStiffness(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 59
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 62
    iget-object v0, v0, Landroidx/dynamicanimation/animation/SpringAnimation;->mSpring:Landroidx/dynamicanimation/animation/SpringForce;

    .line 64
    const v1, 0x3f4ccccd    # 0.8f

    .line 66
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/SpringForce;->setDampingRatio(F)Landroidx/dynamicanimation/animation/SpringForce;

    .line 69
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 72
    invoke-virtual {v0, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setMinimumVisibleChange(F)V

    .line 74
    iget-object v0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 77
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mInvalidateUpdateListener:Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable$2;

    .line 79
    invoke-virtual {v0, p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V

    .line 81
    return-void
    .line 84
.end method

.method public final isStateful()Z
    .locals 0

    .line 1
    const/4 p0, 0x1

    .line 2
    return p0
    .line 3
.end method

.method public final onStateChange([I)Z
    .locals 6

    .line 1
    invoke-super {p0, p1}, Landroid/graphics/drawable/GradientDrawable;->onStateChange([I)Z

    .line 2
    move-result v0

    .line 5
    array-length v1, p1

    .line 6
    const/4 v2, 0x0

    .line 7
    move v3, v2

    .line 8
    :goto_0
    if-ge v2, v1, :cond_1

    .line 9
    aget v4, p1, v2

    .line 11
    const v5, 0x10100a7    # @android:attr/state_pressed

    .line 13
    if-ne v4, v5, :cond_0

    .line 16
    const/4 v3, 0x1

    .line 18
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    if-eqz v3, :cond_3

    .line 22
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 24
    iget-boolean v1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 26
    if-eqz v1, :cond_2

    .line 28
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 30
    :cond_2
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 33
    iget-boolean v1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 35
    if-nez v1, :cond_3

    .line 37
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 39
    :cond_3
    if-nez v3, :cond_5

    .line 42
    iget-object p1, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 44
    iget-boolean v1, p1, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 46
    if-eqz v1, :cond_4

    .line 48
    invoke-virtual {p1}, Landroidx/dynamicanimation/animation/SpringAnimation;->cancel()V

    .line 50
    :cond_4
    iget-object p0, p0, Lcom/android/systemui/statusbar/notification/mediacontrol/SeekBarGradientDrawable;->mUnPressedScaleAnim:Landroidx/dynamicanimation/animation/SpringAnimation;

    .line 53
    iget-boolean p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 55
    if-nez p1, :cond_5

    .line 57
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/SpringAnimation;->start()V

    .line 59
    :cond_5
    return v0
    .line 62
.end method
