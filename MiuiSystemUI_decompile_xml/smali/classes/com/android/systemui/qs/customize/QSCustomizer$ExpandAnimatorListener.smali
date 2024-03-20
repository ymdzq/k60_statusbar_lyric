.class public final Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

.field public final synthetic this$0:Lcom/android/systemui/qs/customize/QSCustomizer;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/customize/QSCustomizer;Lcom/android/systemui/qs/customize/TileAdapter;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 5
    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 7
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 9
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 12
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 14
    invoke-interface {p0, v0}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 16
    return-void
    .line 19
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 2
    iget-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->isShown:Z

    .line 4
    if-eqz v0, :cond_0

    .line 6
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mCustomizing:Z

    .line 9
    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mQs:Lcom/android/systemui/plugins/qs/QS;

    .line 11
    invoke-interface {p1}, Lcom/android/systemui/plugins/qs/QS;->notifyCustomizeChanged()V

    .line 13
    :cond_0
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 16
    const/4 v0, 0x0

    .line 18
    iput-boolean v0, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mOpening:Z

    .line 19
    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mQsContainerController:Lcom/android/systemui/plugins/qs/QSContainerController;

    .line 21
    invoke-interface {p1, v0}, Lcom/android/systemui/plugins/qs/QSContainerController;->setCustomizerAnimating(Z)V

    .line 23
    iget-object p1, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->this$0:Lcom/android/systemui/qs/customize/QSCustomizer;

    .line 26
    iget-object p1, p1, Lcom/android/systemui/qs/customize/QSCustomizer;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    iget-object p0, p0, Lcom/android/systemui/qs/customize/QSCustomizer$ExpandAnimatorListener;->mTileAdapter:Lcom/android/systemui/qs/customize/TileAdapter;

    .line 30
    invoke-virtual {p1, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 32
    return-void
    .line 35
.end method
