.class public Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;
.super Landroidx/recyclerview/widget/RecyclerView;
.source "KeyguardPasswordSlidingGuideRecyclerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;
    }
.end annotation


# instance fields
.field private final TIME_AUTO_POLL:J

.field private canRun:Z

.field followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

.field private running:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetcanRun(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->canRun:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetrunning(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->running:Z

    return p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 20
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const-wide/16 v0, 0xbb8

    .line 14
    iput-wide v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->TIME_AUTO_POLL:J

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, 0xbb8

    .line 14
    iput-wide p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->TIME_AUTO_POLL:J

    .line 25
    new-instance p1, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    invoke-direct {p1, p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;-><init>(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)V

    iput-object p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const-wide/16 p1, 0xbb8

    .line 14
    iput-wide p1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->TIME_AUTO_POLL:J

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 95
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    return-void
.end method

.method public fling(II)Z
    .locals 0

    .line 58
    invoke-super {p0, p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->fling(II)Z

    move-result p0

    return p0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 79
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 81
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->running:Z

    if-eqz v0, :cond_1

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->stop()V

    .line 91
    :cond_1
    :goto_0
    invoke-super {p0, p1}, Landroidx/recyclerview/widget/RecyclerView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p0

    return p0
.end method

.method public start()V
    .locals 3

    .line 64
    iget-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->running:Z

    if-eqz v0, :cond_0

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->stop()V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    const/4 v1, 0x0

    iput v1, v0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    const/4 v1, 0x1

    .line 67
    iput-boolean v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->canRun:Z

    .line 68
    iput-boolean v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->running:Z

    const-wide/16 v1, 0xbb8

    .line 69
    invoke-virtual {p0, v0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public stop()V
    .locals 2

    const/4 v0, 0x0

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->running:Z

    .line 74
    iget-object v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    iput v0, v1, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    .line 75
    invoke-virtual {p0, v1}, Landroid/view/ViewGroup;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-void
.end method
