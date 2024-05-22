.class public final Lcom/miui/utils/animation/AnimationListenerFolmeConverter;
.super Lmiuix/animation/listener/TransitionListener;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final listener:Landroid/animation/Animator$AnimatorListener;


# direct methods
.method public constructor <init>(Landroid/animation/Animator$AnimatorListener;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lmiuix/animation/listener/TransitionListener;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/miui/utils/animation/AnimationListenerFolmeConverter;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onBegin(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onBegin(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/miui/utils/animation/AnimationListenerFolmeConverter;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 5
    const/4 p1, 0x0

    .line 7
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationStart(Landroid/animation/Animator;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onCancel(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onCancel(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/miui/utils/animation/AnimationListenerFolmeConverter;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 5
    const/4 p1, 0x0

    .line 7
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationCancel(Landroid/animation/Animator;)V

    .line 8
    return-void
    .line 11
.end method

.method public final onComplete(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Lmiuix/animation/listener/TransitionListener;->onComplete(Ljava/lang/Object;)V

    .line 2
    iget-object p0, p0, Lcom/miui/utils/animation/AnimationListenerFolmeConverter;->listener:Landroid/animation/Animator$AnimatorListener;

    .line 5
    const/4 p1, 0x0

    .line 7
    invoke-interface {p0, p1}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 8
    return-void
    .line 11
.end method
