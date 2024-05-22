.class public final Lcom/android/systemui/assist/ui/DefaultUiController$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/ui/DefaultUiController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/ui/DefaultUiController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController$1;->this$0:Lcom/android/systemui/assist/ui/DefaultUiController;

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
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 2
    iget-object p0, p0, Lcom/android/systemui/assist/ui/DefaultUiController$1;->this$0:Lcom/android/systemui/assist/ui/DefaultUiController;

    .line 5
    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mInvocationInProgress:Z

    .line 8
    const/4 p1, 0x0

    .line 10
    iput p1, p0, Lcom/android/systemui/assist/ui/DefaultUiController;->mLastInvocationProgress:F

    .line 11
    invoke-virtual {p0}, Lcom/android/systemui/assist/ui/DefaultUiController;->hide()V

    .line 13
    return-void
    .line 16
.end method
