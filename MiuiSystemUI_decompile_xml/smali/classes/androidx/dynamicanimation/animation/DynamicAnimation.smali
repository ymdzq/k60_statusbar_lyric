.class public abstract Landroidx/dynamicanimation/animation/DynamicAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

.field public static final TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$1;


# instance fields
.field public final mEndListeners:Ljava/util/ArrayList;

.field public mLastFrameTime:J

.field public mMaxValue:F

.field public mMinValue:F

.field public mMinVisibleChange:F

.field public final mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

.field public mRunning:Z

.field public mStartValueIsSet:Z

.field public final mTarget:Ljava/lang/Object;

.field public final mUpdateListeners:Ljava/util/ArrayList;

.field public mValue:F

.field public mVelocity:F


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 2
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 5
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 8
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 10
    const/4 v1, 0x6

    .line 12
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 13
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 16
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 18
    const/4 v1, 0x7

    .line 20
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 21
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->TRANSLATION_Z:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 24
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 26
    const/16 v1, 0x8

    .line 28
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 30
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 33
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 35
    const/16 v1, 0x9

    .line 37
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 39
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 42
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 44
    const/16 v1, 0xa

    .line 46
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 48
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 51
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 53
    const/16 v1, 0xb

    .line 55
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 57
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 60
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 62
    const/16 v1, 0xc

    .line 64
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 66
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 69
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 71
    const/4 v1, 0x3

    .line 73
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 74
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 77
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 79
    const/4 v1, 0x4

    .line 81
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 82
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 85
    new-instance v0, Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 87
    const/4 v1, 0x5

    .line 89
    invoke-direct {v0, v1}, Landroidx/dynamicanimation/animation/DynamicAnimation$1;-><init>(I)V

    .line 90
    sput-object v0, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCROLL_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 93
    return-void
    .line 95
.end method

.method public constructor <init>(Landroidx/dynamicanimation/animation/FloatPropertyCompat;Ljava/lang/Object;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    const/4 v0, 0x0

    .line 5
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 6
    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 8
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 11
    const/4 v1, 0x0

    .line 13
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 14
    iput-boolean v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 16
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 18
    const v0, -0x800001

    .line 20
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 23
    const-wide/16 v0, 0x0

    .line 25
    iput-wide v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    .line 29
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 31
    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    .line 36
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 38
    iput-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 41
    iput-object p2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 43
    iput-object p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 45
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 47
    if-eq p1, p2, :cond_4

    .line 49
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 51
    if-eq p1, p2, :cond_4

    .line 53
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ROTATION_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 55
    if-ne p1, p2, :cond_0

    .line 57
    goto :goto_1

    .line 59
    :cond_0
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->ALPHA:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 60
    if-ne p1, p2, :cond_1

    .line 62
    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 64
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 66
    goto :goto_2

    .line 68
    :cond_1
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_X:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 69
    if-eq p1, p2, :cond_3

    .line 71
    sget-object p2, Landroidx/dynamicanimation/animation/DynamicAnimation;->SCALE_Y:Landroidx/dynamicanimation/animation/DynamicAnimation$1;

    .line 73
    if-ne p1, p2, :cond_2

    .line 75
    goto :goto_0

    .line 77
    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 78
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 80
    goto :goto_2

    .line 82
    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 83
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 86
    goto :goto_2

    .line 88
    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 89
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 92
    :goto_2
    return-void
    .line 94
.end method

.method public static getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;
    .locals 3

    .line 1
    sget-object v0, Landroidx/dynamicanimation/animation/AnimationHandler;->sAnimatorHandler:Ljava/lang/ThreadLocal;

    .line 2
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 4
    move-result-object v1

    .line 7
    if-nez v1, :cond_0

    .line 8
    new-instance v1, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 10
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 12
    invoke-direct {v2}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>()V

    .line 14
    invoke-direct {v1, v2}, Landroidx/dynamicanimation/animation/AnimationHandler;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;)V

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 20
    :cond_0
    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    .line 23
    move-result-object v0

    .line 26
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 27
    return-object v0
    .line 29
.end method


# virtual methods
.method public final addEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final addUpdateListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 2
    if-nez v0, :cond_1

    .line 4
    iget-object p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 8
    move-result v0

    .line 11
    if-nez v0, :cond_0

    .line 12
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 14
    :cond_0
    return-void

    .line 17
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 18
    const-string p1, "Error: Update listeners must be added beforethe animation."

    .line 20
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 22
    throw p0
    .line 25
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 6
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->isCurrentThread()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 16
    if-eqz v0, :cond_0

    .line 18
    const/4 v0, 0x1

    .line 20
    invoke-virtual {p0, v0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->endAnimationInternal(Z)V

    .line 21
    :cond_0
    return-void

    .line 24
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 25
    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    .line 27
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 29
    throw p0
    .line 32
.end method

.method public final endAnimationInternal(Z)V
    .locals 5

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 3
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 5
    move-result-object v1

    .line 8
    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mDelayedCallbackStartTime:Landroidx/collection/SimpleArrayMap;

    .line 9
    invoke-virtual {v2, p0}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    iget-object v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 14
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 16
    move-result v3

    .line 19
    if-ltz v3, :cond_0

    .line 20
    const/4 v4, 0x0

    .line 22
    invoke-virtual {v2, v3, v4}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 23
    const/4 v2, 0x1

    .line 26
    iput-boolean v2, v1, Landroidx/dynamicanimation/animation/AnimationHandler;->mListDirty:Z

    .line 27
    :cond_0
    const-wide/16 v1, 0x0

    .line 29
    iput-wide v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mLastFrameTime:J

    .line 31
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 33
    :goto_0
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 35
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 37
    move-result v2

    .line 40
    if-ge v0, v2, :cond_2

    .line 41
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 43
    move-result-object v2

    .line 46
    if-eqz v2, :cond_1

    .line 47
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 49
    move-result-object v1

    .line 52
    check-cast v1, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;

    .line 53
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 55
    iget v3, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 57
    invoke-interface {v1, p0, p1, v2, v3}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V

    .line 59
    :cond_1
    add-int/lit8 v0, v0, 0x1

    .line 62
    goto :goto_0

    .line 64
    :cond_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 65
    move-result p0

    .line 68
    :cond_3
    :goto_1
    add-int/lit8 p0, p0, -0x1

    .line 69
    if-ltz p0, :cond_4

    .line 71
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 73
    move-result-object p1

    .line 76
    if-nez p1, :cond_3

    .line 77
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 79
    goto :goto_1

    .line 82
    :cond_4
    return-void
    .line 83
.end method

.method public getValueThreshold()F
    .locals 1

    .line 1
    iget p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    .line 4
    mul-float/2addr p0, v0

    .line 6
    return p0
    .line 7
.end method

.method public final removeEndListener(Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;)V
    .locals 1

    .line 1
    iget-object p0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 4
    move-result p1

    .line 7
    if-ltz p1, :cond_0

    .line 8
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 11
    :cond_0
    return-void
    .line 14
.end method

.method public final setMinimumVisibleChange(F)V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    iput p1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinVisibleChange:F

    .line 7
    const/high16 v0, 0x3f400000    # 0.75f

    .line 9
    mul-float/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Landroidx/dynamicanimation/animation/DynamicAnimation;->setValueThreshold(F)V

    .line 12
    return-void

    .line 15
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 16
    const-string p1, "Minimum visible change must be positive."

    .line 18
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    throw p0
    .line 23
.end method

.method public final setPropertyValue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 2
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->setValue(Ljava/lang/Object;F)V

    .line 6
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v1

    .line 15
    if-ge p1, v1, :cond_1

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 18
    move-result-object v1

    .line 21
    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 24
    move-result-object v0

    .line 27
    check-cast v0, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;

    .line 28
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 30
    iget v2, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mVelocity:F

    .line 32
    invoke-interface {v0, v1, v2}, Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(FF)V

    .line 34
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 37
    goto :goto_0

    .line 39
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 40
    move-result p0

    .line 43
    :cond_2
    :goto_1
    add-int/lit8 p0, p0, -0x1

    .line 44
    if-ltz p0, :cond_3

    .line 46
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 48
    move-result-object p1

    .line 51
    if-nez p1, :cond_2

    .line 52
    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 54
    goto :goto_1

    .line 57
    :cond_3
    return-void
    .line 58
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 2
    move-result-object v0

    .line 5
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 6
    check-cast v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 8
    invoke-virtual {v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->isCurrentThread()Z

    .line 10
    move-result v0

    .line 13
    if-eqz v0, :cond_1

    .line 14
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 16
    if-nez v0, :cond_0

    .line 18
    invoke-virtual {p0}, Landroidx/dynamicanimation/animation/DynamicAnimation;->startAnimationInternal()V

    .line 20
    :cond_0
    return-void

    .line 23
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 24
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    .line 26
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 28
    throw p0
    .line 31
.end method

.method public final startAnimationInternal()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 2
    if-nez v0, :cond_4

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mRunning:Z

    .line 7
    iget-boolean v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mStartValueIsSet:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    iget-object v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mProperty:Landroidx/dynamicanimation/animation/FloatPropertyCompat;

    .line 13
    iget-object v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 15
    invoke-virtual {v0, v1}, Landroidx/dynamicanimation/animation/FloatPropertyCompat;->getValue(Ljava/lang/Object;)F

    .line 17
    move-result v0

    .line 20
    iput v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 21
    :cond_0
    iget v0, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mValue:F

    .line 23
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMaxValue:F

    .line 25
    cmpl-float v1, v0, v1

    .line 27
    if-gtz v1, :cond_3

    .line 29
    iget v1, p0, Landroidx/dynamicanimation/animation/DynamicAnimation;->mMinValue:F

    .line 31
    cmpg-float v0, v0, v1

    .line 33
    if-ltz v0, :cond_3

    .line 35
    invoke-static {}, Landroidx/dynamicanimation/animation/DynamicAnimation;->getAnimationHandler()Landroidx/dynamicanimation/animation/AnimationHandler;

    .line 37
    move-result-object v0

    .line 40
    iget-object v1, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mAnimationCallbacks:Ljava/util/ArrayList;

    .line 41
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 43
    move-result v2

    .line 46
    if-nez v2, :cond_2

    .line 47
    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mScheduler:Landroidx/dynamicanimation/animation/FrameCallbackScheduler;

    .line 49
    check-cast v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 51
    iget-object v2, v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    .line 53
    check-cast v2, Landroid/view/Choreographer;

    .line 55
    new-instance v3, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;

    .line 57
    iget-object v4, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mRunnable:Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;

    .line 59
    invoke-direct {v3, v4}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$$ExternalSyntheticLambda0;)V

    .line 61
    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    .line 64
    invoke-static {}, Landroid/animation/ValueAnimator;->getDurationScale()F

    .line 67
    move-result v2

    .line 70
    iput v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScale:F

    .line 71
    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 73
    if-nez v2, :cond_1

    .line 75
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 77
    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler;)V

    .line 79
    iput-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 82
    :cond_1
    iget-object v0, v0, Landroidx/dynamicanimation/animation/AnimationHandler;->mDurationScaleChangeListener:Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;

    .line 84
    iget-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    .line 86
    check-cast v2, Landroid/animation/ValueAnimator$DurationScaleChangeListener;

    .line 88
    if-nez v2, :cond_2

    .line 90
    new-instance v2, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;

    .line 92
    invoke-direct {v2, v0}, Landroidx/dynamicanimation/animation/AnimationHandler$DurationScaleChangeListener33$$ExternalSyntheticLambda0;-><init>(Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;)V

    .line 94
    iput-object v2, v0, Landroidx/dynamicanimation/animation/AnimationHandler$FrameCallbackScheduler16;->mChoreographer:Ljava/lang/Object;

    .line 97
    invoke-static {v2}, Landroid/animation/ValueAnimator;->registerDurationScaleChangeListener(Landroid/animation/ValueAnimator$DurationScaleChangeListener;)Z

    .line 99
    :cond_2
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 102
    move-result v0

    .line 105
    if-nez v0, :cond_4

    .line 106
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 108
    goto :goto_0

    .line 111
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 112
    const-string v0, "Starting value need to be in between min value and max value"

    .line 114
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 116
    throw p0

    .line 119
    :cond_4
    :goto_0
    return-void
    .line 120
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
