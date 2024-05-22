.class public final synthetic Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/dynamicanimation/animation/DynamicAnimation$OnAnimationEndListener;


# instance fields
.field public final synthetic f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

.field public final synthetic f$1:Z

.field public final synthetic f$2:[Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/android/wm/shell/bubbles/animation/StackAnimationController;Z[Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 5
    iput-boolean p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$1:Z

    .line 7
    iput-object p3, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/Runnable;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final onAnimationEnd(Landroidx/dynamicanimation/animation/DynamicAnimation;ZFF)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$1:Z

    .line 2
    iget-object p2, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$0:Lcom/android/wm/shell/bubbles/animation/StackAnimationController;

    .line 4
    if-nez p1, :cond_0

    .line 6
    iget-object p1, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mStackPosition:Landroid/graphics/PointF;

    .line 8
    iget-object p3, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mPositioner:Lcom/android/wm/shell/bubbles/BubblePositioner;

    .line 10
    invoke-virtual {p3, p1}, Lcom/android/wm/shell/bubbles/BubblePositioner;->setRestingPosition(Landroid/graphics/PointF;)V

    .line 12
    :cond_0
    iget-object p1, p2, Lcom/android/wm/shell/bubbles/animation/StackAnimationController;->mOnStackAnimationFinished:Ljava/lang/Runnable;

    .line 15
    if-eqz p1, :cond_1

    .line 17
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 19
    :cond_1
    iget-object p0, p0, Lcom/android/wm/shell/bubbles/animation/StackAnimationController$$ExternalSyntheticLambda1;->f$2:[Ljava/lang/Runnable;

    .line 22
    if-eqz p0, :cond_2

    .line 24
    array-length p1, p0

    .line 26
    const/4 p2, 0x0

    .line 27
    :goto_0
    if-ge p2, p1, :cond_2

    .line 28
    aget-object p3, p0, p2

    .line 30
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 32
    add-int/lit8 p2, p2, 0x1

    .line 35
    goto :goto_0

    .line 37
    :cond_2
    return-void
    .line 38
.end method
