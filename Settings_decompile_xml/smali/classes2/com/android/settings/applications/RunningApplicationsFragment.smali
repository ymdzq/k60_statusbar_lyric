.class public Lcom/android/settings/applications/RunningApplicationsFragment;
.super Lcom/android/settings/BaseFragment;
.source "RunningApplicationsFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Lcom/android/settings/applications/RunningState$OnRefreshUiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;
    }
.end annotation


# instance fields
.field SECONDARY_SERVER_MEM:J

.field final mActiveItems:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/view/View;",
            "Lcom/android/settings/applications/RunningProcessesView$ActiveItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

.field private mAm:Landroid/app/ActivityManager;

.field private mBuilder:Ljava/lang/StringBuilder;

.field private mContainer:Lcom/android/settings/applications/ApplicationsContainer;

.field private mContext:Landroid/content/Context;

.field mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

.field mLastAvailMemory:J

.field mLastBackgroundProcessMemory:J

.field mLastForegroundProcessMemory:J

.field mLastNumBackgroundProcesses:I

.field mLastNumForegroundProcesses:I

.field mLastNumServiceProcesses:I

.field mLastServiceProcessMemory:J

.field private mListType:I

.field private mListView:Landroid/widget/ListView;

.field mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

.field private mRootView:Landroid/view/View;

.field private mShowBackgroundProcess:Z

.field private mState:Lcom/android/settings/applications/RunningState;


# direct methods
.method static bridge synthetic -$$Nest$fgetmBuilder(Lcom/android/settings/applications/RunningApplicationsFragment;)Ljava/lang/StringBuilder;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/applications/RunningApplicationsFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowBackgroundProcess(Lcom/android/settings/applications/RunningApplicationsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    return p0
.end method

.method public constructor <init>()V
    .locals 2

    .line 31
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    .line 47
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    const/4 v0, -0x1

    .line 49
    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    .line 50
    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    .line 51
    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    const-wide/16 v0, -0x1

    .line 52
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    .line 53
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    .line 54
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    .line 55
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    return-void
.end method

.method private startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3

    .line 244
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "com.android.settings"

    const-string v2, "com.android.settings.applications.RunningServiceDetailsActivity"

    .line 245
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    const-string/jumbo v2, "uid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 247
    iget-object v1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings/applications/RunningState$BaseItem;->mUserId:I

    const-string/jumbo v2, "user_id"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 248
    iget-object p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const-string/jumbo v1, "process"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "background"

    .line 249
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "filter_app_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListType:I

    const/4 v0, 0x3

    if-ne v0, p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    .line 67
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContext:Landroid/content/Context;

    .line 69
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-class v0, Lcom/android/settings/applications/ApplicationsContainer;

    .line 70
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ApplicationsContainer;

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContainer:Lcom/android/settings/applications/ApplicationsContainer;

    if-nez p1, :cond_1

    .line 73
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/ApplicationsContainer;

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContainer:Lcom/android/settings/applications/ApplicationsContainer;

    :cond_1
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 109
    iget-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    if-eqz p2, :cond_0

    return-object p2

    .line 112
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const-string p3, "activity"

    invoke-virtual {p2, p3}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/ActivityManager;

    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAm:Landroid/app/ActivityManager;

    .line 113
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    .line 115
    sget p2, Lcom/android/settings/R$layout;->manage_applications_main:I

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const p2, 0x102000a    # @android:id/list

    .line 116
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    .line 117
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    const p2, 0x1020004    # @android:id/empty

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 119
    iget-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 121
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 122
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 123
    new-instance p1, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;-><init>(Lcom/android/settings/applications/RunningApplicationsFragment;Lcom/android/settings/applications/RunningState;)V

    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 124
    iget-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p2, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 126
    new-instance p1, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {p1}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 127
    iget-object p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAm:Landroid/app/ActivityManager;

    invoke-virtual {p2, p1}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 128
    iget-wide p1, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->SECONDARY_SERVER_MEM:J

    .line 129
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 222
    check-cast p1, Landroid/widget/ListView;

    .line 223
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    invoke-interface {p1, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 224
    iput-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mCurSelected:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 225
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    instance-of p2, p2, Lcom/android/settings/MiuiSettings;

    if-eqz p2, :cond_0

    .line 226
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 227
    iget-object p2, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget p2, p2, Lcom/android/settings/applications/RunningState$ProcessItem;->mUid:I

    const-string/jumbo p3, "uid"

    invoke-virtual {v4, p3, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    iget-object p1, p1, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    const-string/jumbo p2, "process"

    invoke-virtual {v4, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p1, "background"

    .line 229
    iget-boolean p2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mShowBackgroundProcess:Z

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    const-string p1, ":android:show_fragment_title"

    .line 230
    sget p2, Lcom/android/settings/R$string;->application_info_label:I

    invoke-virtual {v4, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 231
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Lcom/android/settings/applications/ApplicationsContainer;

    const-class p1, Lcom/android/settings/applications/RunningServiceDetails;

    .line 232
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    sget v5, Lcom/android/settings/R$string;->runningservicedetails_settings_title:I

    move-object v0, p0

    .line 231
    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/BaseFragment;->startFragment(Lmiuix/appcompat/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    goto :goto_0

    .line 237
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->startServiceDetailsActivity(Lcom/android/settings/applications/RunningState$MergedItem;)V

    :goto_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .line 217
    iget-object p0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public onRefreshUi(I)V
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 273
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    goto :goto_0

    .line 270
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->updateTimes()V

    :goto_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 79
    invoke-super {p0}, Lmiuix/appcompat/app/Fragment;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mContainer:Lcom/android/settings/applications/ApplicationsContainer;

    if-eqz v0, :cond_0

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer;->mCurTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    if-eqz v0, :cond_0

    .line 82
    iget v0, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    .line 86
    iget v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListType:I

    if-ne v0, v1, :cond_0

    .line 87
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "call resume RunningState, tab = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunningApplicationsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningApplicationsFragment;->resumeRunningState()V

    :cond_0
    return-void
.end method

.method refreshUi(Z)V
    .locals 9

    if-eqz p1, :cond_0

    .line 285
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    .line 286
    invoke-virtual {p1}, Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;->refreshItems()V

    .line 287
    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 292
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 293
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mMemInfoReader:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {p1}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v2

    add-long/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->SECONDARY_SERVER_MEM:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long p1, v0, v2

    if-gez p1, :cond_1

    move-wide v0, v2

    .line 299
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget-object p1, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter p1

    .line 300
    :try_start_0
    iget v2, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    iget v4, v3, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    if-ne v2, v4, :cond_2

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    iget-wide v7, v3, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    cmp-long v2, v5, v7

    if-nez v2, :cond_2

    iget-wide v5, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    cmp-long v2, v5, v0

    if-eqz v2, :cond_3

    .line 303
    :cond_2
    iput v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumBackgroundProcesses:I

    .line 304
    iget-wide v4, v3, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    iput-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastBackgroundProcessMemory:J

    .line 305
    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastAvailMemory:J

    .line 307
    :cond_3
    iget v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    iget v1, v3, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    if-ne v0, v1, :cond_4

    iget-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    cmp-long v0, v4, v6

    if-nez v0, :cond_4

    iget v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    iget v2, v3, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    if-ne v0, v2, :cond_4

    iget-wide v4, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    iget-wide v6, v3, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    cmp-long v0, v4, v6

    if-eqz v0, :cond_5

    .line 311
    :cond_4
    iput v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumForegroundProcesses:I

    .line 312
    iget-wide v0, v3, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastForegroundProcessMemory:J

    .line 313
    iget v0, v3, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    iput v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastNumServiceProcesses:I

    .line 314
    iget-wide v0, v3, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    iput-wide v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mLastServiceProcessMemory:J

    .line 316
    :cond_5
    monitor-exit p1

    return-void

    :catchall_0
    move-exception p0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method public resumeRunningState()V
    .locals 2

    .line 94
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "resume RunningState, tab = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mListType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RunningApplicationsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    if-nez v0, :cond_0

    .line 96
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/RunningState;->getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/RunningState;->resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mAdapter:Lcom/android/settings/applications/RunningApplicationsFragment$ServiceListAdapter;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mState:Lcom/android/settings/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings/applications/RunningState;->hasData()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 103
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/RunningApplicationsFragment;->refreshUi(Z)V

    :cond_1
    return-void
.end method

.method updateTimes()V
    .locals 4

    .line 254
    iget-object v0, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mActiveItems:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 255
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 256
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    .line 257
    iget-object v2, v1, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 259
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/applications/RunningApplicationsFragment;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    :cond_1
    return-void
.end method
