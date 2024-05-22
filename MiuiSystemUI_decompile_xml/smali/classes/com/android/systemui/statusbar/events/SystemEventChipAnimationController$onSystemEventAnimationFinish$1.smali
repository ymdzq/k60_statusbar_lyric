.class public final Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;
.super Landroidx/core/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 2
    invoke-direct {p0}, Landroidx/core/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd$1(Landroidx/core/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController$onSystemEventAnimationFinish$1;->this$0:Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->animationWindowView:Landroid/widget/FrameLayout;

    .line 4
    if-nez p1, :cond_0

    .line 6
    const/4 p1, 0x0

    .line 8
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/events/SystemEventChipAnimationController;->currentAnimatedView:Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;

    .line 9
    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 11
    invoke-interface {p0}, Lcom/android/systemui/statusbar/events/BackgroundAnimatableView;->getView()Landroid/view/View;

    .line 14
    move-result-object p0

    .line 17
    invoke-virtual {p1, p0}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 18
    return-void
    .line 21
.end method
