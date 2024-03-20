.class public final Lcom/android/systemui/fsgesture/GestureStubView$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/animation/Animator$AnimatorListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/fsgesture/GestureStubView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/fsgesture/GestureStubView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    sget-boolean p1, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    sget-boolean v0, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 9
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mHandler:Lcom/android/systemui/fsgesture/GestureStubView$H;

    .line 11
    const/16 v0, 0x102

    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 15
    iget-object p1, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 18
    iget-object p1, p1, Lcom/android/systemui/fsgesture/GestureStubView;->mGestureBackArrowView:Lcom/android/systemui/fsgesture/GestureBackArrowView;

    .line 20
    const/16 v0, 0x8

    .line 22
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 24
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 27
    const-string p1, "onAnimationEnd"

    .line 29
    invoke-virtual {p0, p1}, Lcom/android/systemui/fsgesture/GestureStubView;->resetRenderProperty(Ljava/lang/String;)V

    .line 31
    return-void
    .line 34
.end method

.method public final onAnimationRepeat(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method

.method public final onAnimationStart(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/fsgesture/GestureStubView$1;->this$0:Lcom/android/systemui/fsgesture/GestureStubView;

    .line 2
    sget-boolean p1, Lcom/android/systemui/fsgesture/GestureStubView;->isUserSetUp:Z

    .line 4
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    return-void
    .line 9
.end method
