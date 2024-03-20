.class Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;
.super Ljava/lang/Object;
.source "KeyguardPasswordSlidingGuideRecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FollowGuideTask"
.end annotation


# instance fields
.field currentIndex:I

.field private final mReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 37
    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    .line 39
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->mReference:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->mReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;

    if-eqz v0, :cond_1

    .line 44
    invoke-static {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->-$$Nest$fgetrunning(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {v0}, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->-$$Nest$fgetcanRun(Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 45
    iget v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    const/4 v2, 0x2

    if-ge v1, v2, :cond_0

    add-int/lit8 v1, v1, 0x1

    .line 46
    iput v1, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->smoothScrollToPosition(I)V

    .line 47
    iget-object p0, v0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView;->followGuideTask:Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, p0, v1, v2}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lcom/android/settings/KeyguardPasswordSlidingGuideRecyclerView$FollowGuideTask;->currentIndex:I

    :cond_1
    :goto_0
    return-void
.end method
