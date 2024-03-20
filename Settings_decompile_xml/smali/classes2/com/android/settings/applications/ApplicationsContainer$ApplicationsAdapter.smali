.class public Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/Filterable;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;
.implements Landroid/widget/AbsListView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ApplicationsAdapter"
.end annotation


# instance fields
.field private final mActive:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mBaseEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mComparatorObj:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field mCurFilterPrefix:Ljava/lang/CharSequence;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private mFilter:Landroid/widget/Filter;

.field private final mFilterMode:I

.field private mFilterObj:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private mFisrtVisiblePosition:I

.field private mIconLoader:Lcom/android/settings/applications/IconLoader;

.field private mLastSortMode:I

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

.field private mWhichSize:I


# direct methods
.method static bridge synthetic -$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmComparatorObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/Comparator;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mComparatorObj:Ljava/util/Comparator;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFilterObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilterObj:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)I
    .locals 0

    .line 0
    iget p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFisrtVisiblePosition:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSession(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFisrtVisiblePosition:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmLastSortMode(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmResumed(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsContainer$TabInfo;I)V
    .locals 1

    .line 567
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 533
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    const/4 v0, -0x1

    .line 538
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    const/4 v0, 0x0

    .line 539
    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    .line 545
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    .line 568
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 569
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 570
    iget-object p1, p2, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mOwner:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 571
    iput p3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilterMode:I

    .line 572
    new-instance p1, Lcom/android/settings/applications/IconLoader;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "IconLoader-"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p2, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/applications/IconLoader;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mIconLoader:Lcom/android/settings/applications/IconLoader;

    .line 573
    invoke-virtual {p1}, Lcom/android/settings/applications/IconLoader;->start()V

    return-void
.end method


# virtual methods
.method applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_4

    .line 722
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 726
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 725
    invoke-static {p0}, Lcom/android/settingslib/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 727
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, " "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 728
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    .line 729
    :goto_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 730
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 731
    invoke-virtual {v2}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->getNormalizedLabel()Ljava/lang/String;

    move-result-object v3

    .line 732
    invoke-virtual {v3, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 733
    invoke-virtual {v3, p1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 734
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    :goto_1
    return-object p2
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 638
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 639
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 640
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mIconLoader:Lcom/android/settings/applications/IconLoader;

    invoke-virtual {p0}, Lcom/android/settings/applications/IconLoader;->stop()V

    return-void
.end method

.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 808
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public getCount()I
    .locals 0

    .line 800
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 0

    .line 847
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilter:Landroid/widget/Filter;

    return-object p0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 0

    .line 804
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public getItemId(I)J
    .locals 0

    .line 812
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide p0, p0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide p0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 819
    iget-object p3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object p3, p3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {p3, p2}, Lcom/android/settings/development/AppViewHolder;->createOrRecycle(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/development/AppViewHolder;

    move-result-object p3

    .line 823
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 824
    monitor-enter v0

    .line 825
    :try_start_0
    iput-object v0, p3, Lcom/android/settings/development/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 826
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 827
    iget-object v2, p3, Lcom/android/settings/development/AppViewHolder;->appName:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 829
    :cond_0
    iget-object v1, p3, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v2, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 830
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mIconLoader:Lcom/android/settings/applications/IconLoader;

    iget-object v2, p3, Lcom/android/settings/development/AppViewHolder;->appIcon:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v0, p1}, Lcom/android/settings/applications/IconLoader;->loadIcon(Landroid/widget/ImageView;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;I)V

    .line 831
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object p1, p1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p3, p1, v1}, Lcom/android/settings/development/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 833
    iget-object p1, p3, Lcom/android/settings/development/AppViewHolder;->disabled:Landroid/widget/TextView;

    .line 834
    iget-object p3, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p3, p3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p3, :cond_1

    const/16 p3, 0x8

    goto :goto_0

    :cond_1
    const/4 p3, 0x0

    :goto_0
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 839
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 840
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 841
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p2

    :catchall_0
    move-exception p0

    .line 839
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 794
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    .line 795
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .line 579
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 600
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .line 852
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 0
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    const/4 v0, 0x0

    .line 763
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    const/4 v0, 0x0

    move v1, v0

    .line 772
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 773
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/development/AppViewHolder;

    .line 774
    iget-object v3, v2, Lcom/android/settings/development/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 775
    iget-object v3, v2, Lcom/android/settings/development/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    monitor-enter v3

    .line 776
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object p1, p1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {v2, p1, v1}, Lcom/android/settings/development/AppViewHolder;->updateSizeText(Ljava/lang/CharSequence;I)V

    .line 777
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 778
    iget-object p1, v2, Lcom/android/settings/development/AppViewHolder;->entry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mOwner:Lcom/android/settings/applications/ApplicationsContainer;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer;->mCurrentPkgName:Ljava/lang/String;

    .line 779
    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    const/4 v1, 0x5

    if-ne p1, v1, :cond_0

    .line 785
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V

    :cond_0
    return-void

    :catchall_0
    move-exception p0

    .line 777
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 749
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 750
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001    # @android:anim/fade_out

    .line 751
    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    .line 750
    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 753
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 754
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 756
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mBaseEntries:Ljava/util/ArrayList;

    .line 757
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 758
    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 0
    return-void
.end method

.method public pause()V
    .locals 1

    .line 630
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 631
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 632
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mTab:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFisrtVisiblePosition:I

    return-void
.end method

.method public rebuild(I)V
    .locals 1

    .line 644
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    return-void

    .line 647
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    const/4 p1, 0x1

    .line 648
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V

    return-void
.end method

.method public rebuild(Z)V
    .locals 4

    .line 653
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 655
    iput v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 657
    :cond_0
    iput v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    .line 659
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilterMode:I

    if-eq v0, v2, :cond_1

    const/4 v0, 0x0

    .line 665
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilterObj:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 661
    :cond_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mFilterObj:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 668
    :goto_1
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mLastSortMode:I

    const/4 v3, 0x5

    if-eq v0, v3, :cond_2

    .line 683
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mComparatorObj:Ljava/util/Comparator;

    goto :goto_2

    .line 670
    :cond_2
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mWhichSize:I

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    .line 678
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mComparatorObj:Ljava/util/Comparator;

    goto :goto_2

    .line 675
    :cond_3
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mComparatorObj:Ljava/util/Comparator;

    goto :goto_2

    .line 672
    :cond_4
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mComparatorObj:Ljava/util/Comparator;

    .line 688
    :goto_2
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Z)V

    new-array p0, v1, [Ljava/lang/Void;

    .line 716
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 608
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 610
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$3;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 623
    invoke-virtual {v0, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 625
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(I)V

    :goto_0
    return-void
.end method
