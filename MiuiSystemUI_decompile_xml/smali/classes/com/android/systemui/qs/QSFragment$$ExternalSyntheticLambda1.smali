.class public final synthetic Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# instance fields
.field public final synthetic f$0:Lcom/android/systemui/qs/QSFragment;


# direct methods
.method public synthetic constructor <init>(Lcom/android/systemui/qs/QSFragment;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSFragment;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final onScrollChange(Landroid/view/View;IIII)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment$$ExternalSyntheticLambda1;->f$0:Lcom/android/systemui/qs/QSFragment;

    .line 2
    iget-object p1, p0, Lcom/android/systemui/qs/QSFragment;->mQSAnimator:Lcom/android/systemui/qs/QSAnimator;

    .line 4
    const/4 p2, 0x1

    .line 6
    iput-boolean p2, p1, Lcom/android/systemui/qs/QSAnimator;->mNeedsAnimatorUpdate:Z

    .line 7
    iget-object p0, p0, Lcom/android/systemui/qs/QSFragment;->mScrollListener:Lcom/android/systemui/plugins/qs/QS$ScrollListener;

    .line 9
    if-eqz p0, :cond_0

    .line 11
    invoke-interface {p0, p3}, Lcom/android/systemui/plugins/qs/QS$ScrollListener;->onQsPanelScrollChanged(I)V

    .line 13
    :cond_0
    return-void
    .line 16
.end method
