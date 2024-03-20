.class public final Lcom/android/systemui/qs/PagedTileLayout$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/qs/PagedTileLayout;

.field public final synthetic val$postAnimation:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lcom/android/systemui/qs/PagedTileLayout;Lcom/android/systemui/qs/QSTileRevealController$1$$ExternalSyntheticLambda0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->val$postAnimation:Ljava/lang/Runnable;

    .line 4
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->this$0:Lcom/android/systemui/qs/PagedTileLayout;

    .line 2
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/android/systemui/qs/PagedTileLayout;->mBounceAnimatorSet:Landroid/animation/AnimatorSet;

    .line 5
    iget-object p0, p0, Lcom/android/systemui/qs/PagedTileLayout$1;->val$postAnimation:Ljava/lang/Runnable;

    .line 7
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 9
    return-void
    .line 12
.end method
