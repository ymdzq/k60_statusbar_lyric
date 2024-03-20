.class public Lcom/android/settings/applications/ApplicationsContainer$TabInfo;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TabInfo"
.end annotation


# instance fields
.field public mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

.field public final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field public final mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

.field public final mComputingSizeStr:Ljava/lang/CharSequence;

.field public final mFilter:I

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mInvalidSizeStr:Ljava/lang/CharSequence;

.field public mIsBuild:Z

.field private mIsUpdate:Z

.field public final mLabel:Ljava/lang/CharSequence;

.field public final mListType:I

.field private mListView:Landroid/widget/ListView;

.field private mLoadingContainer:Landroid/view/View;

.field public final mOwner:Lcom/android/settings/applications/ApplicationsContainer;

.field public mRootView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListView:Landroid/widget/ListView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>(Lcom/android/settings/applications/ApplicationsContainer;Lcom/android/settingslib/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings/applications/ManageAppClickListener;)V
    .locals 0

    .line 389
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 390
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mOwner:Lcom/android/settings/applications/ApplicationsContainer;

    .line 391
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 392
    iput-object p3, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 393
    iput p4, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    const/4 p2, 0x1

    if-eq p4, p2, :cond_0

    const/4 p2, 0x0

    .line 396
    iput p2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mFilter:I

    goto :goto_0

    .line 395
    :cond_0
    iput p2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mFilter:I

    .line 398
    :goto_0
    iput-object p5, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

    .line 399
    sget p2, Lcom/android/settings/R$string;->invalid_size_value:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 400
    sget p2, Lcom/android/settings/R$string;->computing_size:I

    invoke-virtual {p1, p2}, Landroidx/fragment/app/Fragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mComputingSizeStr:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public build(Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 3

    .line 404
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-object v0

    .line 408
    :cond_0
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 409
    sget v0, Lcom/android/settings/R$layout;->manage_applications_main:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    .line 410
    sget v0, Lcom/android/settings/R$id;->loading_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mLoadingContainer:Landroid/view/View;

    const/4 v0, 0x0

    .line 411
    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 414
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v0, 0x1020004    # @android:id/empty

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 415
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x102000a    # @android:id/list

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    if-eqz p1, :cond_1

    .line 417
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 419
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 420
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 421
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 422
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 423
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListView:Landroid/widget/ListView;

    .line 424
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mFilter:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsContainer$TabInfo;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    .line 425
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListView:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 428
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mOwner:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getDefaultListType()I

    move-result v0

    iget v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    if-ne v0, v1, :cond_2

    .line 429
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mOwner:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer;->updateCurrentTab(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)V

    .line 431
    :cond_2
    iput-boolean p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsBuild:Z

    .line 433
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    return-object p0
.end method

.method public detachView()V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 438
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->destroy()V

    .line 441
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 442
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_1

    .line 444
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_1
    const/4 v0, 0x0

    .line 447
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsUpdate:Z

    return-void
.end method

.method isUpdate()Z
    .locals 0

    .line 469
    iget-boolean p0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsUpdate:Z

    return p0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mClickListener:Lcom/android/settings/applications/ManageAppClickListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-wide v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/settings/applications/ManageAppClickListener;->onItemClick(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    return-void
.end method

.method public pause()V
    .locals 1

    .line 458
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 459
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    :cond_0
    const/4 v0, 0x0

    .line 461
    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsUpdate:Z

    return-void
.end method

.method public resume(I)V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mApplications:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 452
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->resume(I)V

    const/4 p1, 0x1

    .line 453
    iput-boolean p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsUpdate:Z

    :cond_0
    return-void
.end method

.method public setUpdate(Z)V
    .locals 0

    .line 465
    iput-boolean p1, p0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mIsUpdate:Z

    return-void
.end method
