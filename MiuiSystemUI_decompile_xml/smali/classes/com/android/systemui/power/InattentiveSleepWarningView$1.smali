.class public final Lcom/android/systemui/power/InattentiveSleepWarningView$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/power/InattentiveSleepWarningView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    .line 5
    const/high16 v1, 0x3f800000    # 1.0f

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 12
    invoke-virtual {p0, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 14
    return-void
    .line 17
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/power/InattentiveSleepWarningView$1;->this$0:Lcom/android/systemui/power/InattentiveSleepWarningView;

    .line 2
    sget p1, Lcom/android/systemui/power/InattentiveSleepWarningView;->$r8$clinit:I

    .line 4
    iget-boolean p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mDismissing:Z

    .line 6
    if-eqz p1, :cond_0

    .line 8
    const/4 p1, 0x4

    .line 10
    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Lcom/android/systemui/power/InattentiveSleepWarningView;->mWindowManager:Landroid/view/WindowManager;

    .line 14
    invoke-interface {p1, p0}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 16
    :cond_0
    return-void
    .line 19
.end method
