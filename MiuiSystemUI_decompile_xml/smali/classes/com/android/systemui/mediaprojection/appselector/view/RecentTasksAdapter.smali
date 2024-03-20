.class public final Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final items:Ljava/util/List;

.field public final listener:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;

.field public final viewHolderFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->items:Ljava/util/List;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->listener:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->viewHolderFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final getItemCount()I
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->items:Ljava/util/List;

    .line 2
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method

.method public final onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 3

    .line 1
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->items:Ljava/util/List;

    .line 4
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 6
    move-result-object p2

    .line 9
    check-cast p2, Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;

    .line 10
    new-instance v0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;

    .line 12
    invoke-direct {v0, p0, p2, p1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$onBindViewHolder$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;)V

    .line 14
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    .line 17
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 19
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 24
    const/4 v1, 0x0

    .line 26
    if-eqz p0, :cond_0

    .line 27
    invoke-virtual {p0, v1}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 29
    :cond_0
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;

    .line 32
    invoke-direct {p0, p2, p1, v1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$bind$1;-><init>(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;Lkotlin/coroutines/Continuation;)V

    .line 34
    const/4 p2, 0x3

    .line 37
    iget-object v2, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->scope:Lkotlinx/coroutines/CoroutineScope;

    .line 38
    invoke-static {v2, v1, v1, p0, p2}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;I)Lkotlinx/coroutines/StandaloneCoroutine;

    .line 40
    move-result-object p0

    .line 43
    iput-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 44
    new-instance p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$sam$android_view_View_OnClickListener$0;

    .line 46
    invoke-direct {p0, v0}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$sam$android_view_View_OnClickListener$0;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 48
    iget-object p1, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->root:Landroid/view/ViewGroup;

    .line 51
    invoke-virtual {p1, p0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
    .line 56
.end method

.method public final onCreateViewHolder(ILandroidx/recyclerview/widget/RecyclerView;)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    .line 2
    move-result-object p1

    .line 5
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    .line 6
    move-result-object p1

    .line 9
    const v0, 0x7f0d0187    # @layout/media_projection_task_item 'res/layout/media_projection_task_item.xml'

    .line 10
    const/4 v1, 0x0

    .line 13
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 14
    move-result-object p1

    .line 17
    check-cast p1, Landroid/view/ViewGroup;

    .line 18
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;->viewHolderFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;

    .line 20
    invoke-interface {p0, p1}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder$Factory;->create(Landroid/view/ViewGroup;)Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 22
    move-result-object p0

    .line 25
    return-object p0
    .line 26
.end method

.method public final onViewRecycled(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V
    .locals 1

    .line 1
    check-cast p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;

    .line 2
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    .line 4
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 8
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->iconView:Landroid/widget/ImageView;

    .line 11
    const/4 v0, 0x0

    .line 13
    invoke-virtual {p0, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 14
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->thumbnailView:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;

    .line 17
    invoke-virtual {p0, v0, v0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionTaskView;->bindTask(Lcom/android/systemui/mediaprojection/appselector/data/RecentTask;Lcom/android/systemui/shared/recents/model/ThumbnailData;)V

    .line 19
    iget-object p0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 22
    if-eqz p0, :cond_0

    .line 24
    invoke-virtual {p0, v0}, Lkotlinx/coroutines/JobSupport;->cancel(Ljava/util/concurrent/CancellationException;)V

    .line 26
    :cond_0
    iput-object v0, p1, Lcom/android/systemui/mediaprojection/appselector/view/RecentTaskViewHolder;->job:Lkotlinx/coroutines/StandaloneCoroutine;

    .line 29
    return-void
    .line 31
.end method
