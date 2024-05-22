.class public final Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;
.implements Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider$TaskPreviewSizeListener;


# instance fields
.field public final activityTaskManager:Landroid/app/IActivityTaskManager;

.field public lastBoundData:Ljava/util/List;

.field public final recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

.field public final resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

.field public final taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

.field public views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;


# direct methods
.method public constructor <init>(Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;Landroid/app/IActivityTaskManager;Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

    .line 5
    iput-object p2, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    .line 7
    iput-object p3, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->activityTaskManager:Landroid/app/IActivityTaskManager;

    .line 9
    iput-object p4, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->resultHandler:Lcom/android/systemui/mediaprojection/appselector/MediaProjectionAppSelectorResultHandler;

    .line 11
    iget-object p1, p2, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->listeners:Ljava/util/ArrayList;

    .line 13
    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    return-void
    .line 18
.end method


# virtual methods
.method public final bind(Ljava/util/List;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    .line 2
    if-eqz v0, :cond_1

    .line 4
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    .line 6
    move-result v1

    .line 9
    const/16 v2, 0x8

    .line 10
    iget-object v3, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->root:Landroid/view/ViewGroup;

    .line 12
    if-eqz v1, :cond_0

    .line 14
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 16
    return-void

    .line 19
    :cond_0
    iget-object v1, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->progress:Landroid/view/View;

    .line 20
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 22
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recycler:Landroidx/recyclerview/widget/RecyclerView;

    .line 25
    const/4 v1, 0x0

    .line 27
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 28
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 31
    iget-object v1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->recentTasksAdapterFactory:Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;

    .line 34
    invoke-interface {v1, p1, p0}, Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$Factory;->create(Ljava/util/List;Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter$RecentTaskClickListener;)Lcom/android/systemui/mediaprojection/appselector/view/RecentTasksAdapter;

    .line 36
    move-result-object v1

    .line 39
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 40
    :cond_1
    iput-object p1, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->lastBoundData:Ljava/util/List;

    .line 43
    return-void
    .line 45
.end method

.method public final onTaskSizeChanged()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->views:Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController$Views;->recentsContainer:Landroid/view/View;

    .line 6
    if-eqz v0, :cond_0

    .line 8
    invoke-virtual {p0, v0}, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->setTaskHeightSize(Landroid/view/View;)V

    .line 10
    :cond_0
    return-void
    .line 13
.end method

.method public final setTaskHeightSize(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/MediaProjectionRecentsViewController;->taskViewSizeProvider:Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/mediaprojection/appselector/view/TaskPreviewSizeProvider;->size:Landroid/graphics/Rect;

    .line 4
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    .line 6
    move-result p0

    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 10
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 14
    move-result-object v0

    .line 17
    const v1, 0x7f0707b5    # @dimen/media_projection_app_selector_task_icon_size '24.0dp'

    .line 18
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 21
    move-result v0

    .line 24
    add-int/2addr v0, p0

    .line 25
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 26
    move-result-object p0

    .line 29
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 30
    move-result-object p0

    .line 33
    const v1, 0x7f0707b4    # @dimen/media_projection_app_selector_task_icon_margin '8.0dp'

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    .line 37
    move-result p0

    .line 40
    mul-int/lit8 p0, p0, 0x2

    .line 41
    add-int/2addr p0, v0

    .line 43
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 44
    move-result-object v0

    .line 47
    iput p0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 48
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 50
    return-void
    .line 53
.end method
