.class public final Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/util/animation/TransitionLayout;


# direct methods
.method public constructor <init>(Lcom/android/systemui/util/animation/TransitionLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onPreDraw()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 2
    const/4 v1, 0x0

    .line 4
    iput-boolean v1, v0, Lcom/android/systemui/util/animation/TransitionLayout;->updateScheduled:Z

    .line 5
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    .line 7
    move-result-object v0

    .line 10
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 11
    iget-object p0, p0, Lcom/android/systemui/util/animation/TransitionLayout$preDrawApplicator$1;->this$0:Lcom/android/systemui/util/animation/TransitionLayout;

    .line 14
    iput-boolean v1, p0, Lcom/android/systemui/util/animation/TransitionLayout;->isPreDrawApplicatorRegistered:Z

    .line 16
    invoke-virtual {p0}, Lcom/android/systemui/util/animation/TransitionLayout;->applyCurrentState()V

    .line 18
    const/4 p0, 0x1

    .line 21
    return p0
    .line 22
.end method
