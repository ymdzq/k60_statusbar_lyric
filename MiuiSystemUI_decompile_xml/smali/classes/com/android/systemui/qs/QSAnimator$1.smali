.class public final Lcom/android/systemui/qs/QSAnimator$1;
.super Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/QSAnimator;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/QSAnimator;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    .line 2
    invoke-direct {p0}, Lcom/android/systemui/qs/TouchAnimator$ListenerAdapter;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onAnimationAtEnd()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 4
    const/4 v0, 0x4

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 7
    return-void
    .line 10
.end method

.method public final onAnimationStarted()V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator$1;->this$0:Lcom/android/systemui/qs/QSAnimator;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/qs/QSAnimator;->mQuickQsPanel:Lcom/android/systemui/qs/QuickQSPanel;

    .line 4
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p0, v0}, Lcom/android/systemui/qs/QuickQSPanel;->setVisibility(I)V

    .line 7
    return-void
    .line 10
.end method
