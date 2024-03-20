.class public final Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic $recyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public hasAnimated:Z


# direct methods
.method public constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 2
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onChanged()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;->hasAnimated:Z

    .line 2
    if-nez v0, :cond_0

    .line 4
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;->hasAnimated:Z

    .line 7
    iget-object p0, p0, Lcom/android/systemui/controls/management/ControlsEditingActivity$setUpList$adapter$1$1;->$recyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 9
    invoke-static {p0}, Lcom/android/systemui/controls/management/ControlsAnimations;->enterAnimation(Landroid/view/View;)Landroid/animation/Animator;

    .line 11
    move-result-object p0

    .line 14
    invoke-virtual {p0}, Landroid/animation/Animator;->start()V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
