.class Landroidx/recyclerview/widget/RecyclerView$1;
.super Ljava/lang/Object;
.source "RecyclerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/recyclerview/widget/RecyclerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroidx/recyclerview/widget/RecyclerView;)V
    .locals 0

    .line 451
    iput-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 454
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v1, v0, Landroidx/recyclerview/widget/RecyclerView;->mFirstLayoutComplete:Z

    if-eqz v1, :cond_3

    invoke-virtual {v0}, Landroid/view/ViewGroup;->isLayoutRequested()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 458
    :cond_0
    iget-object p0, p0, Landroidx/recyclerview/widget/RecyclerView$1;->this$0:Landroidx/recyclerview/widget/RecyclerView;

    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mIsAttached:Z

    if-nez v0, :cond_1

    .line 459
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->requestLayout()V

    return-void

    .line 463
    :cond_1
    iget-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutSuppressed:Z

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    .line 464
    iput-boolean v0, p0, Landroidx/recyclerview/widget/RecyclerView;->mLayoutWasDefered:Z

    return-void

    .line 467
    :cond_2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView;->consumePendingUpdateOperations()V

    :cond_3
    :goto_0
    return-void
.end method
