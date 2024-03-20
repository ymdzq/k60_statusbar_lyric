.class public final Lcom/android/systemui/statusbar/ViewTransformationHelper$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public mCancelled:Z

.field public final synthetic this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    .line 3
    return-void
    .line 5
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    iget-boolean p1, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->mCancelled:Z

    .line 2
    if-nez p1, :cond_0

    .line 4
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 6
    const/4 p1, 0x1

    .line 8
    invoke-virtual {p0, p1}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->setVisible(Z)V

    .line 9
    goto :goto_0

    .line 12
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/statusbar/ViewTransformationHelper$2;->this$0:Lcom/android/systemui/statusbar/ViewTransformationHelper;

    .line 13
    invoke-static {p0}, Lcom/android/systemui/statusbar/ViewTransformationHelper;->-$$Nest$mabortTransformations(Lcom/android/systemui/statusbar/ViewTransformationHelper;)V

    .line 15
    :goto_0
    return-void
    .line 18
.end method
