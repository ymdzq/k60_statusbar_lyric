.class public final Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/NotificationShadeDepthController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController$keyguardStateCallback$1$onKeyguardFadingAwayChanged$1$2;->this$0:Lcom/android/systemui/statusbar/NotificationShadeDepthController;

    .line 2
    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->keyguardAnimator:Landroid/animation/Animator;

    .line 5
    const/4 p1, 0x0

    .line 7
    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/NotificationShadeDepthController;->access$setWakeAndUnlockBlurRadius(Lcom/android/systemui/statusbar/NotificationShadeDepthController;F)V

    .line 8
    return-void
    .line 11
.end method
