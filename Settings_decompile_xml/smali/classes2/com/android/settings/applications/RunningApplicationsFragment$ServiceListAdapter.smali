.class Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
.super Landroid/widget/BaseAdapter;
.source "RunningApplicationsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningApplicationsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ServiceListAdapter"
.end annotation


# instance fields
.field final mInflater:Landroid/view/LayoutInflater;

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mState:Lcom/android/settings/applications/RunningState;

.field final synthetic this$0:Lcom/android/settings/applications/RunningApplicationsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V
    .locals 2

    .line 137
    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 138
    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    .line 139
    invoke-static {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->-$$Nest$fgetmContext(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 140
    invoke-static {p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->-$$Nest$fgetmShowBackgroundProcess(Lcom/android/settings/applications/RunningApplicationsFragment;)Z

    move-result p1

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/RunningState;->setWatchingBackgroundItems(Z)V

    .line 141
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public areAllItemsEnabled()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public bindView(Landroid/view/View;I)V
    .locals 4

    .line 200
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p2, v1, :cond_0

    .line 205
    monitor-exit v0

    return-void

    .line 207
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 208
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 209
    iget-object v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-static {v3}, Lcom/android/settings/applications/RunningApplicationsFragment;->-$$Nest$fgetmBuilder(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->bind(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    move-result-object p2

    .line 210
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 211
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public getCount()I
    .locals 0

    .line 158
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    return p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 167
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    int-to-long p0, p0

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 185
    invoke-virtual {p0, p3}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->newView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 189
    :cond_0
    invoke-virtual {p0, p2, p1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->bindView(Landroid/view/View;I)V

    return-object p2
.end method

.method public hasStableIds()Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public isEmpty()Z
    .locals 1

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isEnabled(I)Z
    .locals 0

    .line 179
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-boolean p0, p0, Lcom/android/settings/applications/RunningState$BaseItem;->mIsProcess:Z

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public newView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 194
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v0, Lcom/android/settings/R$layout;->running_processes_item:I

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 195
    new-instance p1, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    return-object p0
.end method

.method refreshItems()V
    .locals 2

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->this$0:Lcom/android/settings/applications/RunningApplicationsFragment;

    invoke-static {v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->-$$Nest$fgetmShowBackgroundProcess(Lcom/android/settings/applications/RunningApplicationsFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentBackgroundItems()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->getCurrentMergedItems()Ljava/util/ArrayList;

    move-result-object v0

    .line 148
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    if-eq v1, v0, :cond_1

    .line 149
    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->mItems:Ljava/util/ArrayList;

    :cond_1
    return-void
.end method
