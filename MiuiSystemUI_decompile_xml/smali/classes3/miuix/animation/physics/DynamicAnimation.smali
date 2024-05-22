.class public abstract Lmiuix/animation/physics/DynamicAnimation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;


# static fields
.field public static final MIN_VISIBLE_CHANGE_ALPHA:F = 0.00390625f

.field public static final MIN_VISIBLE_CHANGE_PIXELS:F = 1.0f

.field public static final MIN_VISIBLE_CHANGE_ROTATION_DEGREES:F = 0.1f

.field public static final MIN_VISIBLE_CHANGE_SCALE:F = 0.002f

.field private static final THRESHOLD_MULTIPLIER:F = 0.75f

.field private static final UNSET:F = 3.4028235E38f


# instance fields
.field private final mEndListeners:Ljava/util/ArrayList;

.field private mLastFrameTime:J

.field mMaxValue:F

.field mMinValue:F

.field private mMinVisibleChange:F

.field final mProperty:Lmiuix/animation/property/FloatProperty;

.field mRunning:Z

.field private mStartDelay:J

.field mStartValueIsSet:Z

.field final mTarget:Ljava/lang/Object;

.field private final mUpdateListeners:Ljava/util/ArrayList;

.field mValue:F

.field mVelocity:F


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lmiuix/animation/property/FloatProperty;)V
    .locals 2

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 17
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 18
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 19
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 20
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 21
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 22
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 23
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 26
    iput-object p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 27
    iput-object p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 28
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_4

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_X:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_4

    sget-object p1, Lmiuix/animation/property/ViewProperty;->ROTATION_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_0

    goto :goto_1

    .line 29
    :cond_0
    sget-object p1, Lmiuix/animation/property/ViewProperty;->ALPHA:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_1

    const/high16 p1, 0x3b800000    # 0.00390625f

    .line 30
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    .line 31
    :cond_1
    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_X:Lmiuix/animation/property/ViewProperty;

    if-eq p2, p1, :cond_3

    sget-object p1, Lmiuix/animation/property/ViewProperty;->SCALE_Y:Lmiuix/animation/property/ViewProperty;

    if-ne p2, p1, :cond_2

    goto :goto_0

    :cond_2
    const/high16 p1, 0x3f800000    # 1.0f

    .line 32
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_3
    :goto_0
    const p1, 0x3b03126f    # 0.002f

    .line 33
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    goto :goto_2

    :cond_4
    :goto_1
    const p1, 0x3dcccccd    # 0.1f

    .line 34
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    :goto_2
    return-void
.end method

.method public constructor <init>(Lmiuix/animation/property/FloatValueHolder;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    const v0, 0x7f7fffff    # Float.MAX_VALUE

    .line 3
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 5
    iput-boolean v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 6
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    neg-float v0, v0

    .line 7
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 9
    iput-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 10
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 11
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 13
    new-instance v0, Lmiuix/animation/physics/DynamicAnimation$1;

    const-string v1, "FloatValueHolder"

    invoke-direct {v0, p0, v1, p1}, Lmiuix/animation/physics/DynamicAnimation$1;-><init>(Lmiuix/animation/physics/DynamicAnimation;Ljava/lang/String;Lmiuix/animation/property/FloatValueHolder;)V

    iput-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    const/high16 p1, 0x3f800000    # 1.0f

    .line 14
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    return-void
.end method

.method private endAnimationInternal(Z)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 3
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 5
    move-result-object v1

    .line 8
    invoke-virtual {v1, p0}, Lmiuix/animation/physics/AnimationHandler;->removeCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;)V

    .line 9
    const-wide/16 v1, 0x0

    .line 12
    iput-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 14
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 16
    :goto_0
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    .line 20
    move-result v1

    .line 23
    if-ge v0, v1, :cond_1

    .line 24
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v1

    .line 31
    if-eqz v1, :cond_0

    .line 32
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 34
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    move-result-object v1

    .line 39
    check-cast v1, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;

    .line 40
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 42
    iget v3, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 44
    invoke-interface {v1, p0, p1, v2, v3}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;->onAnimationEnd(Lmiuix/animation/physics/DynamicAnimation;ZFF)V

    .line 46
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 49
    goto :goto_0

    .line 51
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 52
    invoke-static {p0}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 54
    return-void
    .line 57
.end method

.method private getPropertyValue()F
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 2
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, p0}, Lmiuix/animation/property/FloatProperty;->getValue(Ljava/lang/Object;)F

    .line 6
    move-result p0

    .line 9
    return p0
    .line 10
.end method

.method private static removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    .line 2
    move-result p1

    .line 5
    if-ltz p1, :cond_0

    .line 6
    const/4 v0, 0x0

    .line 8
    invoke-virtual {p0, p1, v0}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_0
    return-void
    .line 12
.end method

.method private static removeNullEntries(Ljava/util/ArrayList;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 2
    move-result v0

    .line 5
    add-int/lit8 v0, v0, -0x1

    .line 6
    :goto_0
    if-ltz v0, :cond_1

    .line 8
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 10
    move-result-object v1

    .line 13
    if-nez v1, :cond_0

    .line 14
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 16
    :cond_0
    add-int/lit8 v0, v0, -0x1

    .line 19
    goto :goto_0

    .line 21
    :cond_1
    return-void
    .line 22
.end method

.method private startAnimationInternal()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 2
    if-nez v0, :cond_2

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 7
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 9
    if-nez v0, :cond_0

    .line 11
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->getPropertyValue()F

    .line 13
    move-result v0

    .line 16
    iput v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 17
    :cond_0
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 19
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 21
    cmpl-float v1, v0, v1

    .line 23
    if-gtz v1, :cond_1

    .line 25
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 27
    cmpg-float v0, v0, v1

    .line 29
    if-ltz v0, :cond_1

    .line 31
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 33
    move-result-object v0

    .line 36
    iget-wide v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 37
    invoke-virtual {v0, p0, v1, v2}, Lmiuix/animation/physics/AnimationHandler;->addAnimationFrameCallback(Lmiuix/animation/physics/AnimationHandler$AnimationFrameCallback;J)V

    .line 39
    goto :goto_0

    .line 42
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 43
    const-string v0, "Starting value need to be in between min value and max value"

    .line 45
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 47
    throw p0

    .line 50
    :cond_2
    :goto_0
    return-void
    .line 51
.end method


# virtual methods
.method public addEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 4
    move-result v0

    .line 7
    if-nez v0, :cond_0

    .line 8
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    return-object p0
    .line 15
.end method

.method public addUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->isRunning()Z

    .line 2
    move-result v0

    .line 5
    if-nez v0, :cond_1

    .line 6
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    .line 10
    move-result v0

    .line 13
    if-nez v0, :cond_0

    .line 14
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 16
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    :cond_0
    return-object p0

    .line 21
    :cond_1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 22
    const-string p1, "Error: Update listeners must be added beforethe miuix.animation."

    .line 24
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 26
    throw p0
    .line 29
.end method

.method public cancel()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 12
    if-eqz v0, :cond_0

    .line 14
    const/4 v0, 0x1

    .line 16
    invoke-direct {p0, v0}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    .line 17
    :cond_0
    return-void

    .line 20
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 21
    const-string v0, "Animations may only be canceled from the same thread as the animation handler"

    .line 23
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 25
    throw p0
    .line 28
.end method

.method public doAnimationFrame(J)Z
    .locals 4

    .line 1
    iget-wide v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 2
    const-wide/16 v2, 0x0

    .line 4
    cmp-long v2, v0, v2

    .line 6
    const/4 v3, 0x0

    .line 8
    if-nez v2, :cond_0

    .line 9
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 11
    iget p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 13
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    .line 15
    return v3

    .line 18
    :cond_0
    sub-long v0, p1, v0

    .line 19
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mLastFrameTime:J

    .line 21
    invoke-virtual {p0, v0, v1}, Lmiuix/animation/physics/DynamicAnimation;->updateValueAndVelocity(J)Z

    .line 23
    move-result p1

    .line 26
    iget p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 27
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 29
    invoke-static {p2, v0}, Ljava/lang/Math;->min(FF)F

    .line 31
    move-result p2

    .line 34
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 35
    iget v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 37
    invoke-static {p2, v0}, Ljava/lang/Math;->max(FF)F

    .line 39
    move-result p2

    .line 42
    iput p2, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 43
    invoke-virtual {p0, p2}, Lmiuix/animation/physics/DynamicAnimation;->setPropertyValue(F)V

    .line 45
    if-eqz p1, :cond_1

    .line 48
    invoke-direct {p0, v3}, Lmiuix/animation/physics/DynamicAnimation;->endAnimationInternal(Z)V

    .line 50
    :cond_1
    return p1
    .line 53
.end method

.method public abstract getAcceleration(FF)F
.end method

.method public getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;
    .locals 0

    .line 1
    invoke-static {}, Lmiuix/animation/physics/AnimationHandler;->getInstance()Lmiuix/animation/physics/AnimationHandler;

    .line 2
    move-result-object p0

    .line 5
    return-object p0
    .line 6
.end method

.method public getMinimumVisibleChange()F
    .locals 0

    .line 1
    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    .line 2
    return p0
    .line 4
.end method

.method public getValueThreshold()F
    .locals 1

    .line 1
    iget p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    .line 2
    const/high16 v0, 0x3f400000    # 0.75f

    .line 4
    mul-float/2addr p0, v0

    .line 6
    return p0
    .line 7
.end method

.method public abstract isAtEquilibrium(FF)Z
.end method

.method public isRunning()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 2
    return p0
    .line 4
.end method

.method public removeEndListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationEndListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mEndListeners:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 4
    return-void
    .line 7
.end method

.method public removeUpdateListener(Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 2
    invoke-static {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->removeEntry(Ljava/util/ArrayList;Ljava/lang/Object;)V

    .line 4
    return-void
    .line 7
.end method

.method public setMaxValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMaxValue:F

    .line 2
    return-object p0
    .line 4
.end method

.method public setMinValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinValue:F

    .line 2
    return-object p0
    .line 4
.end method

.method public setMinimumVisibleChange(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    cmpg-float v0, p1, v0

    .line 3
    if-lez v0, :cond_0

    .line 5
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mMinVisibleChange:F

    .line 7
    const/high16 v0, 0x3f400000    # 0.75f

    .line 9
    mul-float/2addr p1, v0

    .line 11
    invoke-virtual {p0, p1}, Lmiuix/animation/physics/DynamicAnimation;->setValueThreshold(F)V

    .line 12
    return-object p0

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

.method public setPropertyValue(F)V
    .locals 3

    .line 1
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mProperty:Lmiuix/animation/property/FloatProperty;

    .line 2
    iget-object v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mTarget:Ljava/lang/Object;

    .line 4
    invoke-virtual {v0, v1, p1}, Lmiuix/animation/property/FloatProperty;->setValue(Ljava/lang/Object;F)V

    .line 6
    const/4 p1, 0x0

    .line 9
    :goto_0
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 10
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    .line 12
    move-result v0

    .line 15
    if-ge p1, v0, :cond_1

    .line 16
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 18
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 20
    move-result-object v0

    .line 23
    if-eqz v0, :cond_0

    .line 24
    iget-object v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 26
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    move-result-object v0

    .line 31
    check-cast v0, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;

    .line 32
    iget v1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 34
    iget v2, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 36
    invoke-interface {v0, p0, v1, v2}, Lmiuix/animation/physics/DynamicAnimation$OnAnimationUpdateListener;->onAnimationUpdate(Lmiuix/animation/physics/DynamicAnimation;FF)V

    .line 38
    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 41
    goto :goto_0

    .line 43
    :cond_1
    iget-object p0, p0, Lmiuix/animation/physics/DynamicAnimation;->mUpdateListeners:Ljava/util/ArrayList;

    .line 44
    invoke-static {p0}, Lmiuix/animation/physics/DynamicAnimation;->removeNullEntries(Ljava/util/ArrayList;)V

    .line 46
    return-void
    .line 49
.end method

.method public setStartDelay(J)V
    .locals 3

    .line 1
    const-wide/16 v0, 0x0

    .line 2
    cmp-long v2, p1, v0

    .line 4
    if-gez v2, :cond_0

    .line 6
    move-wide p1, v0

    .line 8
    :cond_0
    iput-wide p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartDelay:J

    .line 9
    return-void
    .line 11
.end method

.method public setStartValue(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mValue:F

    .line 2
    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mStartValueIsSet:Z

    .line 5
    return-object p0
    .line 7
.end method

.method public setStartVelocity(F)Lmiuix/animation/physics/DynamicAnimation;
    .locals 0

    .line 1
    iput p1, p0, Lmiuix/animation/physics/DynamicAnimation;->mVelocity:F

    .line 2
    return-object p0
    .line 4
.end method

.method public abstract setValueThreshold(F)V
.end method

.method public start()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lmiuix/animation/physics/DynamicAnimation;->getAnimationHandler()Lmiuix/animation/physics/AnimationHandler;

    .line 2
    move-result-object v0

    .line 5
    invoke-virtual {v0}, Lmiuix/animation/physics/AnimationHandler;->isCurrentThread()Z

    .line 6
    move-result v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    iget-boolean v0, p0, Lmiuix/animation/physics/DynamicAnimation;->mRunning:Z

    .line 12
    if-nez v0, :cond_0

    .line 14
    invoke-direct {p0}, Lmiuix/animation/physics/DynamicAnimation;->startAnimationInternal()V

    .line 16
    :cond_0
    return-void

    .line 19
    :cond_1
    new-instance p0, Landroid/util/AndroidRuntimeException;

    .line 20
    const-string v0, "Animations may only be started on the same thread as the animation handler"

    .line 22
    invoke-direct {p0, v0}, Landroid/util/AndroidRuntimeException;-><init>(Ljava/lang/String;)V

    .line 24
    throw p0
    .line 27
.end method

.method public abstract updateValueAndVelocity(J)Z
.end method
