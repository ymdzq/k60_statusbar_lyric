.class public final Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/unfold/UnfoldTransitionProgressProvider$TransitionProgressListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onTransitionFinished()V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    .line 4
    const/high16 v1, 0x3f800000    # 1.0f

    .line 6
    invoke-virtual {v0, v1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 8
    const/4 v0, 0x0

    .line 11
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->isOnHomeActivity:Ljava/lang/Boolean;

    .line 12
    return-void
    .line 14
.end method

.method public final onTransitionProgress(F)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->moveFromCenterAnimator:Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;

    .line 4
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/animation/UnfoldMoveFromCenterAnimator;->onTransitionProgress(F)V

    .line 6
    return-void
    .line 9
.end method

.method public final onTransitionStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController$TransitionListener;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->currentActivityTypeProvider:Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;

    .line 4
    iget-object v0, v0, Lcom/android/systemui/unfold/system/ActivityManagerActivityTypeProvider;->_isHomeActivity:Ljava/lang/Boolean;

    .line 6
    iput-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarMoveFromCenterAnimationController;->isOnHomeActivity:Ljava/lang/Boolean;

    .line 8
    return-void
    .line 10
.end method
