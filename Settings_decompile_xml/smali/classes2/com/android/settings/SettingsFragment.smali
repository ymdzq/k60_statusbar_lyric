.class public Lcom/android/settings/SettingsFragment;
.super Lcom/android/settings/BasePreferenceFragment;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SettingsFragment$DeferredSetupHandler;,
        Lcom/android/settings/SettingsFragment$SearchResultAdapter;,
        Lcom/android/settings/SettingsFragment$BannerCallback;,
        Lcom/android/settings/SettingsFragment$SearchHandler;,
        Lcom/android/settings/SettingsFragment$SearchItemViewHolder;
    }
.end annotation


# static fields
.field private static final CLOUD_SORT_WEIGHT:Ljava/lang/Double;

.field private static final PC_MODE_NOT_INTENT_RESOURCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PC_MODE_NOT_SUPPORT_PKG:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final PC_MODE_NOT_SUPPORT_RESOURCE:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isFirstCreated:Z

.field isFirstEnter:Z

.field private mAnchorView:Landroid/view/View;

.field private mBannerCallback:Lcom/android/settings/SettingsFragment$BannerCallback;

.field private mClickedList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

.field private mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

.field private mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

.field private mHandler:Landroid/os/Handler;

.field private mHeaderAdapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;

.field private mHintView:Landroid/view/View;

.field private volatile mIsActionModeDestroy:Z

.field private volatile mIsInActionMode:Z

.field private volatile mIsScrollEnableForListView:Z

.field private mIsSearchInited:Z

.field private mListView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mMainHandler:Landroid/os/Handler;

.field private mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

.field private mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

.field private mRemovableHintView:Landroid/view/View;

.field private mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

.field private mSearchCallback:Lmiuix/view/SearchActionMode$Callback;

.field private mSearchExcludeMap:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

.field private mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

.field private mSearchHistoryLists:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchHistoryText:Ljava/lang/String;

.field private mSearchInput:Landroid/widget/EditText;

.field private mSearchListLayout:Landroidx/core/widget/NestedScrollView;

.field private mSearchLoadingView:Landroid/view/View;

.field private volatile mSearchResult:Lcom/android/settings/search/SearchResult;

.field private mSearchResultItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation
.end field

.field private mSearchResultLinearLayout:Landroid/widget/LinearLayout;

.field private mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

.field private mSearchText:Ljava/lang/String;

.field private mSearchThread:Landroid/os/HandlerThread;

.field private mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

.field private mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private volatile mTipsLocalModel:Lcom/android/settings/banner/BannerBean;

.field private mTrimMemoryUtils:Lcom/android/settings/TrimMemoryUtils;


# direct methods
.method public static synthetic $r8$lambda$Gz514Z3xHO1VpgM0iZGOXDK1wrA(Lcom/android/settings/SettingsFragment;Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsFragment;->lambda$loadRemovableHint$0(Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;Landroid/view/View;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Sl3qT_0RqbTFdts8KnJdaObOxIo(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->initSearchHistoryView()V

    return-void
.end method

.method public static synthetic $r8$lambda$sNFS1kTY3740DHWlAqg2SssC9B8(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->lambda$processSearchHistory$1(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetisFirstCreated(Lcom/android/settings/SettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmAnchorView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mAnchorView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmBannerCallback(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$BannerCallback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mBannerCallback:Lcom/android/settings/SettingsFragment$BannerCallback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmClickedList(Lcom/android/settings/SettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mClickedList:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmGlobalSearch(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/search/SettingsGlobalSearcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsActionModeDestroy(Lcom/android/settings/SettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->mIsActionModeDestroy:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsInActionMode(Lcom/android/settings/SettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->mIsInActionMode:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsScrollEnableForListView(Lcom/android/settings/SettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->mIsScrollEnableForListView:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmIsSearchInited(Lcom/android/settings/SettingsFragment;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->mIsSearchInited:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMainHandler(Lcom/android/settings/SettingsFragment;)Landroid/os/Handler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mMainHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchAdapter(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchResultAdapter;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchCallback(Lcom/android/settings/SettingsFragment;)Lmiuix/view/SearchActionMode$Callback;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchCallback:Lmiuix/view/SearchActionMode$Callback;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchExcludeMap(Lcom/android/settings/SettingsFragment;)Ljava/util/HashSet;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchExcludeMap:Ljava/util/HashSet;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchHandler(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchHandler;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchHistoryFl(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/widget/FlowLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchHistoryText(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchInput:Landroid/widget/EditText;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchListLayout(Lcom/android/settings/SettingsFragment;)Landroidx/core/widget/NestedScrollView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchListLayout:Landroidx/core/widget/NestedScrollView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchLoadingView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchLoadingView:Landroid/view/View;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchResult(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/search/SearchResult;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchResult:Lcom/android/settings/search/SearchResult;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchResultLinearLayout(Lcom/android/settings/SettingsFragment;)Landroid/widget/LinearLayout;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultLinearLayout:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchResultListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSearchText(Lcom/android/settings/SettingsFragment;)Ljava/lang/String;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmSeparateAppSearchThread(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/search/appseparate/SeparateAppSearchThread;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmStorageListSPUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/utils/StorageListSPUtils;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmTextWatcher(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputisFirstCreated(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;Lcom/android/settings/analytics/SearchStatItem;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsActionModeDestroy(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment;->mIsActionModeDestroy:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsInActionMode(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment;->mIsInActionMode:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsScrollEnableForListView(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment;->mIsScrollEnableForListView:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmIsSearchInited(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/SettingsFragment;->mIsSearchInited:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchHistoryText(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchInput(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchInput:Landroid/widget/EditText;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchResultItems(Lcom/android/settings/SettingsFragment;Ljava/util/List;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSearchText(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    return-void
.end method

.method static bridge synthetic -$$Nest$mensureSearchHandler(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->ensureSearchHandler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetFinalResult(Lcom/android/settings/SettingsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->getFinalResult(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetNonEmptySearchResultCount(Lcom/android/settings/SettingsFragment;Ljava/util/List;)I
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->getNonEmptySearchResultCount(Ljava/util/List;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhideSoftKeyboard(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hideSoftKeyboard()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhighlight(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SettingsFragment;->highlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mprocessSearchHistory(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->processSearchHistory(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mremoveHintView(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->removeHintView()V

    return-void
.end method

.method static bridge synthetic -$$Nest$msearchItemClickStat(Lcom/android/settings/SettingsFragment;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settings/SettingsFragment;->searchItemClickStat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->setSearchHistoryVisiable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchMaskVisiable(Lcom/android/settings/SettingsFragment;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->setSearchMaskVisiable(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msetSearchResultItemViewJump(Lcom/android/settings/SettingsFragment;Landroid/view/View;Lcom/android/settings/search/SearchResultItem;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsFragment;->setSearchResultItemViewJump(Landroid/view/View;Lcom/android/settings/search/SearchResultItem;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$msortSearchItemByCloudData(Lcom/android/settings/SettingsFragment;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->sortSearchItemByCloudData(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mstartSubIntentIfNeeded(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->startSubIntentIfNeeded()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateHintView(Lcom/android/settings/SettingsFragment;Landroid/service/settings/suggestions/Suggestion;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->updateHintView(Landroid/service/settings/suggestions/Suggestion;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateSearch(Lcom/android/settings/SettingsFragment;Ljava/lang/String;Z)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/settings/SettingsFragment;->updateSearch(Ljava/lang/String;Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateTips(Lcom/android/settings/SettingsFragment;ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p6}, Lcom/android/settings/SettingsFragment;->updateTips(ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$smgetLanguage()Ljava/lang/String;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/SettingsFragment;->getLanguage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    .line 153
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SettingsFragment;->CLOUD_SORT_WEIGHT:Ljava/lang/Double;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_SUPPORT_PKG:Ljava/util/List;

    .line 198
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    sput-object v1, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_SUPPORT_RESOURCE:Ljava/util/List;

    .line 199
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_INTENT_RESOURCE:Ljava/util/List;

    const-string v3, "com.miui.securitycenter"

    .line 202
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.miui.contentextension"

    .line 203
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.miui.accessibility"

    .line 204
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v3, "com.miui.voiceassist"

    .line 205
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_settings"

    .line 208
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.android.settings/com.android.settings.accessibility.accessibilitymenu.AccessibilityMenuService"

    .line 209
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_setting_item_control_timeout_title"

    .line 210
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "usage_state_app_timer"

    .line 211
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "privacy_protection"

    .line 212
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_settings_tabs_visual"

    .line 213
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_settings_tabs_hearing"

    .line 214
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_settings_tabs_general"

    .line 215
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_settings_tabs_physical"

    .line 216
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_button_title"

    .line 217
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "accessibility_button_description"

    .line 218
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "com.google.android.marvin.talkback/com.google.android.marvin.talkback.TalkBackService"

    .line 219
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "voice_assist"

    .line 220
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "game_booster_title"

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "video_tool_box_title"

    .line 222
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "application_lock_name"

    .line 223
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "touch_assistant"

    .line 224
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "freeform_guide_settings"

    .line 225
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "home_title"

    .line 226
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "launcher_wallpaper_title"

    .line 227
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "second_space"

    .line 228
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "personalize_title"

    .line 229
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "launcher_icon_management"

    .line 230
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "screen_dark_mode_time_title"

    .line 231
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dark_mode_day_night_mode_title"

    .line 232
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dark_mode_auto_time_title"

    .line 233
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dark_mode_time_settings"

    .line 234
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "light_color_mode"

    .line 235
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v0, "dark_color_mode"

    .line 236
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "more_dark_mode_settings"

    .line 237
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "miui.action.usagestas.MAIN"

    .line 240
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "miui.intent.action.TOUCH_ASSISTANT_SETTINGS"

    .line 241
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "miui.intent.action.PRIVACY_SETTINGS"

    .line 242
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 337
    invoke-direct {p0}, Lcom/android/settings/BasePreferenceFragment;-><init>()V

    .line 181
    new-instance v0, Lcom/android/settings/SettingsFragment$DeferredSetupHandler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsFragment$DeferredSetupHandler;-><init>(Lcom/android/settings/SettingsFragment;Lcom/android/settings/SettingsFragment$DeferredSetupHandler-IA;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    .line 183
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mClickedList:Ljava/util/List;

    .line 186
    iput-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchExcludeMap:Ljava/util/HashSet;

    const/4 v0, 0x1

    .line 194
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->isFirstEnter:Z

    .line 195
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    .line 252
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->mIsScrollEnableForListView:Z

    .line 837
    new-instance v0, Lcom/android/settings/SettingsFragment$9;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$9;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchCallback:Lmiuix/view/SearchActionMode$Callback;

    .line 1070
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mMainHandler:Landroid/os/Handler;

    const/4 v0, 0x0

    .line 1072
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->mIsSearchInited:Z

    .line 1289
    new-instance v0, Lcom/android/settings/SettingsFragment$10;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$10;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    return-void
.end method

.method private adapterAccessibility(Landroid/view/View;)V
    .locals 1

    .line 664
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 667
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->isFirstEnter:Z

    if-nez p1, :cond_1

    return-void

    .line 671
    :cond_1
    new-instance v0, Lcom/android/settings/SettingsFragment$7;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$7;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->setAccessibilityDelegate(Landroid/view/View;Landroidx/core/view/AccessibilityDelegateCompat;)V

    return-void
.end method

.method private addHintView()V
    .locals 4

    .line 396
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mHintView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    .line 399
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    const-string v1, "deferred_setup_hint"

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 401
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    :cond_1
    if-nez v0, :cond_2

    .line 407
    invoke-virtual {v2}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v2, Lcom/android/settings/R$layout;->deferred_setup_hint:I

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 408
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 409
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    if-eqz v1, :cond_2

    .line 410
    invoke-virtual {v1, v0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->addDeferedSetupView(Landroid/view/View;)V

    .line 415
    :cond_2
    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mHintView:Landroid/view/View;

    .line 416
    sget p0, Lcom/android/settings/R$id;->deferred_setup_title:I

    invoke-virtual {v0, p0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/widget/TextView;

    .line 417
    sget v0, Lcom/android/settings/R$string;->deferred_setup_hintViewTitle:I

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(I)V

    return-void
.end method

.method private boLanguageAdapter(Landroid/widget/TextView;)V
    .locals 3

    .line 812
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 813
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p0

    const/4 v1, 0x1

    const/high16 v2, 0x40a00000    # 5.0f

    invoke-static {v1, v2, p0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p0

    float-to-int p0, p0

    const-string v1, "bo"

    .line 814
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 815
    invoke-virtual {p1, v0, v0, v0, p0}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_0
    return-void
.end method

.method private ensureSearchHandler()V
    .locals 2

    .line 1000
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchThread:Landroid/os/HandlerThread;

    if-nez v0, :cond_0

    .line 1001
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SettingsFragment-Search"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchThread:Landroid/os/HandlerThread;

    .line 1002
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 1003
    new-instance v0, Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/SettingsFragment$SearchHandler;-><init>(Lcom/android/settings/SettingsFragment;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    .line 1005
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    if-nez v0, :cond_1

    .line 1006
    new-instance v0, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    const-string v1, "SettingsFragment-SeparateAppSearch"

    invoke-direct {v0, v1, p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;-><init>(Ljava/lang/String;Lcom/android/settings/SettingsFragment;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    :cond_1
    return-void
.end method

.method private getFinalResult(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1185
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/utils/SettingsFeatures;->isOnPcMode(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_4

    const/4 p0, 0x0

    .line 1186
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p0, v1, :cond_3

    .line 1187
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchResultItem;

    iget-object v1, v1, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1

    .line 1189
    invoke-virtual {v1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v2

    .line 1190
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 1191
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1192
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1194
    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1197
    :cond_0
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchResultItem;

    iget-object v1, v1, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    .line 1198
    sget-object v4, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_SUPPORT_PKG:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_SUPPORT_RESOURCE:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lcom/android/settings/SettingsFragment;->PC_MODE_NOT_INTENT_RESOURCE:Ljava/util/List;

    .line 1199
    invoke-interface {v1, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 1203
    :cond_1
    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 p0, p0, 0x1

    goto :goto_0

    :cond_3
    return-object v0

    :cond_4
    return-object p1
.end method

.method private static getLanguage()Ljava/lang/String;
    .locals 1

    .line 1443
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1446
    :try_start_0
    invoke-interface {v0}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    .line 1447
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 1449
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getMiuiCustSplitUtils()Lcom/android/settings/MiuiCustSplitUtils;
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    if-nez v0, :cond_0

    .line 478
    new-instance v0, Lcom/android/settings/MiuiCustSplitUtilsImpl;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/MiuiCustSplitUtilsImpl;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    .line 480
    :cond_0
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    return-object p0
.end method

.method private getNonEmptySearchResultCount(Ljava/util/List;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)I"
        }
    .end annotation

    const/4 p0, 0x0

    if-eqz p1, :cond_1

    .line 1217
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p1, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/search/SearchResultItem;

    iget v0, v0, Lcom/android/settings/search/SearchResultItem;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 1220
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p0

    :cond_1
    :goto_0
    return p0
.end method

.method private hideSoftKeyboard()V
    .locals 2

    .line 821
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 825
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 826
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Landroid/view/ViewGroup;->getWindowToken()Landroid/os/IBinder;

    move-result-object p0

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    return-void
.end method

.method private highlight(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 3

    .line 1352
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_3

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_1

    .line 1355
    :cond_0
    new-instance p3, Landroid/text/SpannableStringBuilder;

    invoke-direct {p3, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1356
    invoke-virtual {p2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    const/16 v0, 0x10

    invoke-static {p2, v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;I)Ljava/util/regex/Pattern;

    move-result-object p2

    .line 1357
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    .line 1358
    :goto_0
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result p2

    if-eqz p2, :cond_2

    .line 1359
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result p2

    .line 1360
    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    if-le p2, v0, :cond_1

    invoke-virtual {p3}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 1361
    :cond_1
    new-instance v0, Landroid/text/style/ForegroundColorSpan;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/settings/R$color;->search_result_highlight:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-direct {v0, v1}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 1362
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result v1

    const/16 v2, 0x21

    .line 1361
    invoke-virtual {p3, v0, v1, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_2
    return-object p3

    :cond_3
    :goto_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private initGlobalSearchIfNeed()V
    .locals 2

    .line 484
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 485
    new-instance v0, Lcom/android/settings/search/SettingsGlobalSearcher;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/search/SettingsGlobalSearcher;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    .line 486
    invoke-virtual {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->requestGlobalSearchUpdate()V

    :cond_0
    return-void
.end method

.method private initSearchHistoryView()V
    .locals 6

    .line 301
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "SettingsFragment"

    if-nez v0, :cond_0

    const-string p0, "initSearchHistoryView: getActivity() is null"

    .line 303
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 307
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 308
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 310
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

    const-string/jumbo v3, "tagSearchHistory"

    invoke-virtual {v2, v3}, Lcom/android/settings/utils/StorageListSPUtils;->loadDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    .line 311
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_2

    .line 312
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_0
    if-ltz v2, :cond_2

    .line 313
    sget v3, Lcom/android/settings/R$layout;->search_history_tv:I

    iget-object v4, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 314
    iget-object v4, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 316
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    new-instance v4, Lcom/android/settings/SettingsFragment$2;

    invoke-direct {v4, p0, v3}, Lcom/android/settings/SettingsFragment$2;-><init>(Lcom/android/settings/SettingsFragment;Landroid/widget/TextView;)V

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 328
    iget-object v4, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

    invoke-virtual {v4, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :catch_0
    move-exception p0

    const-string v0, "initSearchHistoryView fail: "

    .line 333
    invoke-static {v1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_2
    return-void
.end method

.method private isStartUpdaterResource(Lcom/android/settings/search/SearchResultItem;)Z
    .locals 1

    .line 1424
    iget-object p0, p1, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    const-string/jumbo v0, "miui_updater"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    iget-object p0, p1, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    const-string p1, "device_miui_version"

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method private synthetic lambda$loadRemovableHint$0(Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;Landroid/view/View;)V
    .locals 0

    .line 717
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 719
    invoke-virtual {p1, p0}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;->goToTarget(Landroid/app/Activity;)V

    :cond_0
    return-void
.end method

.method private synthetic lambda$processSearchHistory$1(Ljava/lang/String;)V
    .locals 4

    .line 1033
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

    const-string/jumbo v1, "tagSearchHistory"

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/StorageListSPUtils;->loadDataList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 1034
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-eqz v2, :cond_0

    .line 1036
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 1037
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1040
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_2

    .line 1043
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v3, 0xf

    if-lt v0, v3, :cond_1

    .line 1044
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1045
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1047
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_2
    const/4 v0, -0x1

    .line 1052
    :goto_0
    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 1053
    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    move v0, v2

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1058
    :cond_4
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1059
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {v0, v2, p1}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1062
    :goto_1
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/utils/StorageListSPUtils;->saveDataList(Ljava/lang/String;Ljava/util/List;)V

    .line 1063
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mMainHandler:Landroid/os/Handler;

    new-instance v0, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-virtual {p1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private logDetailSearchTime()V
    .locals 4

    .line 547
    sget-object p0, Lcom/android/settingslib/search/IndexTree;->SETTINGS_TREES_COST_TIME:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 548
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 549
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 550
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "className:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " takes "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string/jumbo v0, "ms"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 552
    :cond_0
    sget-object p0, Lcom/android/settingslib/search/IndexTree;->SETTINGS_TREES_COST_TIME:Ljava/util/Map;

    invoke-interface {p0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private normalizeScore(Ljava/lang/Double;)Ljava/lang/Double;
    .locals 4

    .line 1878
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    cmpg-double p0, v0, v2

    if-gez p0, :cond_0

    const-wide/16 p0, 0x0

    .line 1879
    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0

    .line 1881
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide p0

    sub-double/2addr p0, v2

    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    div-double/2addr p0, v0

    invoke-static {p0, p1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p0

    return-object p0
.end method

.method private processSearchHistory(Ljava/lang/String;)V
    .locals 1

    .line 1029
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1030
    :cond_0
    new-instance v0, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private releaseSettingsTree()V
    .locals 5

    .line 1885
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsFragment;->mIsSearchInited:Z

    if-eqz v0, :cond_0

    .line 1886
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, ""

    .line 1887
    invoke-static {v1}, Lcom/android/settings/search/provider/SettingsProvider;->getSearchUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const-string/jumbo v3, "release"

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/content/ContentResolver;->call(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    const/4 v0, 0x0

    .line 1888
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->mIsSearchInited:Z

    :cond_0
    return-void
.end method

.method private removeHintView()V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v1, "deferred_setup_hint"

    .line 425
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 427
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->removeDeferedSetupView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method private searchItemClickStat(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1432
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    if-eqz v0, :cond_0

    .line 1433
    invoke-virtual {v0, p1}, Lcom/android/settings/analytics/SearchStatItem;->setClickedItemOrder(I)V

    .line 1434
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    invoke-virtual {p1, p2}, Lcom/android/settings/analytics/SearchStatItem;->setClickedResource(Ljava/lang/String;)V

    .line 1435
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    invoke-virtual {p1, p3}, Lcom/android/settings/analytics/SearchStatItem;->setPrefKey(Ljava/lang/String;)V

    .line 1436
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    invoke-virtual {p1, p4}, Lcom/android/settings/analytics/SearchStatItem;->setItemTitle(Ljava/lang/String;)V

    .line 1437
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settings/analytics/SearchStatItem;->traceSearchEvent(Z)V

    .line 1438
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    invoke-virtual {p0, p2}, Lcom/android/settings/analytics/SearchStatItem;->setIsAlreadyStat(Z)V

    :cond_0
    return-void
.end method

.method private setSearchHistoryVisiable(Z)V
    .locals 4

    .line 978
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchListLayout:Landroidx/core/widget/NestedScrollView;

    const-string v1, "SettingsFragment"

    if-nez v0, :cond_0

    const-string/jumbo p0, "setSearchHistoryVisiable: mSearchListLayout is null"

    .line 979
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/16 v2, 0x8

    if-eqz p1, :cond_1

    const/4 v3, 0x0

    goto :goto_0

    :cond_1
    move v3, v2

    .line 982
    :goto_0
    invoke-virtual {v0, v3}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-eqz p1, :cond_2

    .line 984
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz p0, :cond_2

    .line 985
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p0, "Force mListView to be gone"

    .line 986
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-void
.end method

.method private setSearchMaskVisiable(Z)V
    .locals 1

    .line 992
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    sget v0, Lcom/android/settings/R$id;->search_mask:I

    invoke-virtual {p0, v0}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object p0

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    .line 993
    :goto_0
    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p0

    const-string p1, "SettingsFragment"

    const-string/jumbo v0, "setSearchMaskVisiable: "

    .line 995
    invoke-static {p1, v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_1
    return-void
.end method

.method private setSearchResultItemViewJump(Landroid/view/View;Lcom/android/settings/search/SearchResultItem;)V
    .locals 3

    .line 1369
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryText:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->processSearchHistory(Ljava/lang/String;)V

    .line 1370
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    if-nez p1, :cond_0

    return-void

    .line 1374
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/analytics/SearchStatItem;->getKeyWork()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 1375
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 1376
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mCurrSearchStatItem:Lcom/android/settings/analytics/SearchStatItem;

    invoke-virtual {v0}, Lcom/android/settings/analytics/SearchStatItem;->getKeyWork()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchKeyWord"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "setting_search_hotword"

    .line 1377
    invoke-static {v0, p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_1
    const-string/jumbo p1, "setting_search_done"

    .line 1380
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 1381
    iget-object p1, p2, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    if-eqz p1, :cond_2

    invoke-direct {p0, p2}, Lcom/android/settings/SettingsFragment;->isStartUpdaterResource(Lcom/android/settings/search/SearchResultItem;)Z

    move-result p1

    if-eqz p1, :cond_2

    iget p1, p2, Lcom/android/settings/search/SearchResultItem;->status:I

    const/4 v0, 0x3

    if-ne p1, v0, :cond_2

    .line 1382
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/device/MiuiAboutPhoneUtils;->startUpdater(Landroid/app/Activity;)V

    goto :goto_0

    .line 1383
    :cond_2
    iget-object p1, p2, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    const/4 v0, 0x4

    if-eqz p1, :cond_4

    const-string/jumbo v1, "virtual_keyboards_for_work_title"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1384
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->getManagedProfile(Landroid/os/UserManager;)Landroid/os/UserHandle;

    move-result-object p1

    .line 1385
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1386
    iget-object v1, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 1388
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p2, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {v0, p2, p1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 1389
    :cond_4
    iget-object p1, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    if-eqz p1, :cond_6

    invoke-direct {p0, p2}, Lcom/android/settings/SettingsFragment;->startWifiP2pOrNot(Lcom/android/settings/search/SearchResultItem;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1390
    invoke-static {}, Lcom/android/settings/MiuiUtils;->getInstance()Lcom/android/settings/MiuiUtils;

    move-result-object p1

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/MiuiUtils;->canFindActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 1391
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 1392
    iget-object p1, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addMiuiFlags(I)Landroid/content/Intent;

    .line 1394
    :cond_5
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p2, Lcom/android/settings/search/SearchResultItem;->intent:Landroid/content/Intent;

    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1397
    :cond_6
    :goto_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/android/settings/MiuiSettings;

    if-eqz p0, :cond_7

    .line 1399
    invoke-virtual {p0}, Lcom/android/settings/MiuiSettings;->disableSelectedPosition()V

    :cond_7
    return-void
.end method

.method private sortByGroup(Ljava/util/List;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1837
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1841
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 1842
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchResultItem;

    .line 1843
    iget-object v7, v5, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    invoke-virtual {v2, v7}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1844
    iget-object v4, v5, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/search/SearchResultGroupEntity;

    invoke-virtual {v4, v5}, Lcom/android/settings/search/SearchResultGroupEntity;->addResultItem(Lcom/android/settings/search/SearchResultItem;)Lcom/android/settings/search/SearchResultGroupEntity;

    move v4, v6

    goto :goto_0

    .line 1847
    :cond_0
    iget-object v6, v5, Lcom/android/settings/search/SearchResultItem;->group:Ljava/lang/String;

    new-instance v7, Lcom/android/settings/search/SearchResultGroupEntity;

    invoke-direct {v7, v6}, Lcom/android/settings/search/SearchResultGroupEntity;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v5}, Lcom/android/settings/search/SearchResultGroupEntity;->addResultItem(Lcom/android/settings/search/SearchResultItem;)Lcom/android/settings/search/SearchResultGroupEntity;

    move-result-object v5

    invoke-virtual {v2, v6, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1851
    :cond_1
    invoke-virtual {v2}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 1852
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1853
    new-instance p1, Lcom/android/settings/SettingsFragment$11;

    invoke-direct {p1, p0}, Lcom/android/settings/SettingsFragment$11;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-static {v2, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1859
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    move p1, v3

    .line 1860
    :goto_1
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge p1, v5, :cond_3

    .line 1861
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchResultGroupEntity;

    invoke-virtual {v5}, Lcom/android/settings/search/SearchResultGroupEntity;->getGroupResultItems()Ljava/util/ArrayList;

    move-result-object v5

    .line 1862
    invoke-static {v5}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1863
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/search/SearchResultItem;

    iput-boolean v6, v7, Lcom/android/settings/search/SearchResultItem;->header:Z

    .line 1864
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    if-eqz v4, :cond_2

    .line 1865
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    sub-int/2addr v5, v6

    if-eq p1, v5, :cond_2

    .line 1866
    sget-object v5, Lcom/android/settings/search/SearchResultItem;->CATEGORY:Lcom/android/settings/search/SearchResultItem;

    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 1869
    :cond_3
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-ne p1, v6, :cond_4

    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/search/SearchResultItem;

    iget p1, p1, Lcom/android/settings/search/SearchResultItem;->type:I

    if-eq p1, v6, :cond_5

    .line 1870
    :cond_4
    sget-object p1, Lcom/android/settings/search/SearchResultItem;->FOOTER:Lcom/android/settings/search/SearchResultItem;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1873
    :cond_5
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sortByGroup cost: "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v0

    invoke-virtual {p1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " ms"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "SettingsFragment"

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object p0
.end method

.method private sortSearchItemByCloudData(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1813
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->getCloudWeight()Ljava/lang/Double;

    move-result-object v0

    const/4 v1, 0x0

    .line 1814
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 1815
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SearchResultItem;

    .line 1816
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/search/cloud/SearchCloudSortUtils;

    move-result-object v3

    iget-object v4, v2, Lcom/android/settings/search/SearchResultItem;->resource:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/settings/search/cloud/SearchCloudSortUtils;->get(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v3

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    if-nez v3, :cond_0

    .line 1818
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v3

    :cond_0
    if-nez v0, :cond_1

    .line 1821
    sget-object v0, Lcom/android/settings/SettingsFragment;->CLOUD_SORT_WEIGHT:Ljava/lang/Double;

    .line 1824
    :cond_1
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-direct {p0, v3}, Lcom/android/settings/SettingsFragment;->normalizeScore(Ljava/lang/Double;)Ljava/lang/Double;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v8

    mul-double/2addr v6, v8

    iget-wide v8, v2, Lcom/android/settings/search/SearchResultItem;->score:D

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v10

    sub-double/2addr v4, v10

    mul-double/2addr v8, v4

    add-double/2addr v6, v8

    iput-wide v6, v2, Lcom/android/settings/search/SearchResultItem;->score:D
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v3

    const-string v4, "SettingsFragment"

    .line 1826
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1827
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 1829
    :goto_1
    invoke-interface {p1, v1, v2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1831
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->sortByGroup(Ljava/util/List;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private startSubIntentIfNeeded()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    invoke-virtual {v0}, Lcom/android/settings/MiuiCustSplitUtils;->reachSplitSize()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 509
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    invoke-virtual {v0}, Lcom/android/settings/MiuiCustSplitUtils;->getCurrentSubIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 511
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->hasWindowFocus()Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ":settings:fragment_args_key"

    const-string v2, ""

    .line 512
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 513
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method

.method private startWifiP2pOrNot(Lcom/android/settings/search/SearchResultItem;)Z
    .locals 2

    .line 1405
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$string;->wifi_menu_p2p:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_4

    if-nez p1, :cond_0

    goto :goto_0

    .line 1407
    :cond_0
    iget-object p1, p1, Lcom/android/settings/search/SearchResultItem;->title:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 1408
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    const/4 p1, 0x0

    if-nez p0, :cond_2

    return p1

    :cond_2
    const-string/jumbo v0, "wifi"

    .line 1411
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_3

    .line 1413
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1414
    sget v0, Lcom/android/settings/R$string;->wifi_direct_close_hotspot_hint:I

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return p1

    .line 1416
    :cond_3
    invoke-static {p0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/wifi/SlaveWifiUtils;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/SlaveWifiUtils;->isSlaveWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1417
    sget v0, Lcom/android/settings/R$string;->wifi_direct_close_slave_wifi_hint:I

    invoke-static {p0, v0, v1}, Lcom/android/settingslib/util/ToastUtil;->show(Landroid/content/Context;II)V

    return p1

    :cond_4
    :goto_0
    return v1
.end method

.method private updateHintView(Landroid/service/settings/suggestions/Suggestion;)V
    .locals 4

    if-nez p1, :cond_0

    return-void

    .line 362
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mHintView:Landroid/view/View;

    if-nez v0, :cond_1

    .line 363
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->addHintView()V

    .line 365
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mHintView:Landroid/view/View;

    if-nez v0, :cond_2

    const-string p0, "SettingsFragment"

    const-string/jumbo p1, "updateHintView: HintView is null"

    .line 366
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 369
    :cond_2
    sget v1, Lcom/android/settings/R$id;->deferred_setup_title:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 370
    invoke-virtual {p1}, Landroid/service/settings/suggestions/Suggestion;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mHintView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->hint_layout:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 372
    new-instance v1, Lcom/android/settings/SettingsFragment$3;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/SettingsFragment$3;-><init>(Lcom/android/settings/SettingsFragment;Landroid/service/settings/suggestions/Suggestion;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    filled-new-array {v0}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    .line 384
    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object v1

    sget-object v2, Lmiuix/animation/ITouchStyle$TouchType;->DOWN:Lmiuix/animation/ITouchStyle$TouchType;

    filled-new-array {v2}, [Lmiuix/animation/ITouchStyle$TouchType;

    move-result-object v2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-interface {v1, v3, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    .line 385
    new-instance v1, Lcom/android/settings/SettingsFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/SettingsFragment$4;-><init>(Lcom/android/settings/SettingsFragment;Lmiuix/animation/IFolme;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void
.end method

.method private updateSearch(Ljava/lang/String;Z)V
    .locals 1

    .line 1012
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_2

    .line 1013
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->ensureSearchHandler()V

    .line 1015
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/os/Handler;->removeMessages(I)V

    .line 1016
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p2

    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1018
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1019
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchLoadingView:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1021
    :cond_1
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    :cond_2
    return-void
.end method

.method private updateTips(ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V
    .locals 3

    .line 758
    new-instance p5, Ljava/lang/StringBuilder;

    invoke-direct {p5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "updateTips title: "

    invoke-virtual {p5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    const-string v0, "SettingsFragment"

    invoke-static {v0, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 759
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result p5

    if-nez p5, :cond_0

    const-string/jumbo p0, "updateTips: Fragment SettingsFragment not attached to a context"

    .line 760
    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 765
    :cond_0
    iget-object p5, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {p5}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->getRemoveHintView()Landroid/view/View;

    move-result-object p5

    .line 767
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v1, 0x0

    if-eqz p1, :cond_5

    if-nez p5, :cond_2

    .line 772
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object p1

    sget p5, Lcom/android/settings/R$layout;->settings_banner_main_layout:I

    invoke-virtual {p1, p5, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p5

    const-string/jumbo p1, "removable_hint"

    .line 773
    invoke-virtual {p5, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 774
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {p1, p5}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->addRemovableHintView(Landroid/view/View;)V

    .line 779
    :cond_2
    invoke-virtual {p0, p5}, Lcom/android/settings/SettingsFragment;->setRemovableHintView(Landroid/view/View;)V

    .line 780
    filled-new-array {p5}, [Landroid/view/View;

    move-result-object p1

    invoke-static {p1}, Lmiuix/animation/Folme;->useAt([Landroid/view/View;)Lmiuix/animation/IFolme;

    move-result-object p1

    invoke-interface {p1}, Lmiuix/animation/IFolme;->touch()Lmiuix/animation/ITouchStyle;

    move-result-object p1

    const/high16 v0, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    new-array v2, v1, [Lmiuix/animation/ITouchStyle$TouchType;

    invoke-interface {p1, v0, v2}, Lmiuix/animation/ITouchStyle;->setScale(F[Lmiuix/animation/ITouchStyle$TouchType;)Lmiuix/animation/ITouchStyle;

    move-result-object p1

    new-array v0, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-interface {p1, p5, v0}, Lmiuix/animation/ITouchStyle;->handleTouchOf(Landroid/view/View;[Lmiuix/animation/base/AnimConfig;)V

    const p1, 0x1020016    # @android:id/title

    .line 782
    invoke-virtual {p5, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const v0, 0x1020010    # @android:id/summary

    .line 783
    invoke-virtual {p5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x1020006    # @android:id/icon

    .line 784
    invoke-virtual {p5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 785
    sget v2, Lcom/android/settings/R$id;->arrow_right:I

    invoke-virtual {p5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->boLanguageAdapter(Landroid/widget/TextView;)V

    if-eqz p1, :cond_4

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    if-eqz p4, :cond_4

    if-nez v2, :cond_3

    goto :goto_0

    :cond_3
    const/16 p0, 0x8

    .line 793
    invoke-virtual {v2, p0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 794
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 795
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 796
    invoke-virtual {v1, p4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 799
    invoke-virtual {p5, p6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    :cond_4
    :goto_0
    return-void

    :cond_5
    if-eqz p5, :cond_6

    .line 801
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {p1, p5}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->removeRemovableHintView(Landroid/view/View;)V

    .line 802
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsFragment;->setTipsLocalModel(Lcom/android/settings/banner/BannerBean;)V

    .line 803
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsFragment;->setRemovableHintView(Landroid/view/View;)V

    goto :goto_1

    .line 804
    :cond_6
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mRemovableHintView:Landroid/view/View;

    if-eqz p1, :cond_7

    .line 805
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {p2, p1}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;->removeRemovableHintView(Landroid/view/View;)V

    .line 806
    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsFragment;->setRemovableHintView(Landroid/view/View;)V

    :cond_7
    :goto_1
    return-void
.end method


# virtual methods
.method public buildAdapter()V
    .locals 8

    .line 586
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->buildAdapter()V

    .line 587
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/MiuiSettings;

    if-nez v0, :cond_0

    return-void

    .line 591
    :cond_0
    new-instance v7, Lcom/android/settings/MiuiSettings$HeaderAdapter;

    iget-object v4, p0, Lcom/android/settings/BasePreferenceFragment;->mHeaders:Ljava/util/List;

    invoke-virtual {v0}, Lcom/android/settings/MiuiSettings;->getAuthenticatorHelper()Lcom/android/settingslib/accounts/AuthenticatorHelper;

    move-result-object v5

    const/4 v6, 0x0

    move-object v1, v7

    move-object v2, v0

    move-object v3, v0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/MiuiSettings$HeaderAdapter;-><init>(Lcom/android/settings/MiuiSettings;Lmiuix/appcompat/app/AppCompatActivity;Ljava/util/List;Lcom/android/settingslib/accounts/AuthenticatorHelper;Z)V

    iput-object v7, p0, Lcom/android/settings/SettingsFragment;->mHeaderAdapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    const/4 v1, 0x1

    .line 592
    invoke-virtual {v7, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 594
    new-instance v2, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mHeaderAdapter:Lcom/android/settings/MiuiSettings$HeaderAdapter;

    invoke-direct {v2, v0, v3}, Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;-><init>(Lcom/android/settings/MiuiSettings;Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    .line 595
    new-instance v2, Lcom/android/settings/SettingsFragment$5;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settings/SettingsFragment$5;-><init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;)V

    .line 601
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 602
    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v3, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 603
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 607
    iget-boolean v2, p0, Lcom/android/settings/SettingsFragment;->mIsInActionMode:Z

    if-nez v2, :cond_1

    .line 608
    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 609
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->setOrientation(I)V

    .line 611
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 612
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    invoke-virtual {v1, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    goto :goto_0

    .line 613
    :cond_1
    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 614
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->refreshSearchResult()V

    .line 616
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/BasePreferenceFragment;->startSelectHeader()V

    .line 617
    invoke-static {v0}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 618
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->loadRemovableHint()V

    :cond_3
    return-void
.end method

.method protected getHeadersResourceId()I
    .locals 0

    .line 581
    sget p0, Lcom/android/settings/R$xml;->settings_headers:I

    return p0
.end method

.method public getIsInActionMode()Z
    .locals 0

    .line 437
    iget-boolean p0, p0, Lcom/android/settings/SettingsFragment;->mIsInActionMode:Z

    return p0
.end method

.method public getMergeSearchResults(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1250
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-eqz p2, :cond_1

    .line 1251
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v4

    goto :goto_1

    :cond_1
    move v4, v2

    .line 1252
    :goto_1
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 1257
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->getNonEmptySearchResultCount(Ljava/util/List;)I

    move-result p0

    if-lez v4, :cond_2

    if-gtz p0, :cond_2

    return-object p2

    :cond_2
    if-gtz v4, :cond_3

    return-object p1

    :cond_3
    move p0, v2

    :goto_2
    if-ge v2, v3, :cond_5

    if-ge p0, v4, :cond_5

    .line 1269
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/search/SearchResultItem;

    iget-wide v6, v6, Lcom/android/settings/search/SearchResultItem;->score:D

    .line 1270
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/search/SearchResultItem;

    iget-wide v8, v8, Lcom/android/settings/search/SearchResultItem;->score:D

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_4

    add-int/lit8 v6, v2, 0x1

    .line 1272
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_2

    :cond_4
    add-int/lit8 v6, p0, 0x1

    .line 1274
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, v6

    goto :goto_2

    :cond_5
    :goto_3
    if-ge v2, v3, :cond_6

    add-int/lit8 v6, v2, 0x1

    .line 1279
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v5, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move v2, v6

    goto :goto_3

    :cond_6
    :goto_4
    if-ge p0, v4, :cond_7

    add-int/lit8 p1, p0, 0x1

    .line 1282
    invoke-interface {p2, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v5, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move p0, p1

    goto :goto_4

    .line 1284
    :cond_7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p0

    long-to-double v0, v0

    long-to-double p0, p0

    const-string p2, "-"

    .line 1285
    invoke-static {v0, v1, p0, p1, p2}, Lcom/android/settingslib/search/SearchUtils;->logCost(DDLjava/lang/Object;)V

    return-object v5
.end method

.method public getTipsLocalModel()Lcom/android/settings/banner/BannerBean;
    .locals 0

    .line 1926
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mTipsLocalModel:Lcom/android/settings/banner/BannerBean;

    return-object p0
.end method

.method public loadRemovableHint()V
    .locals 8

    .line 709
    invoke-static {}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->getInstance()Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder;->build(Landroid/content/Context;)Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 712
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v3, Lcom/android/settings/R$string;->easymode_hint_title:I

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 713
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/android/settings/R$string;->easymode_hint_summary:I

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 714
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v5, Lcom/android/settings/R$drawable;->ic_miui_home_settings:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    sget v6, Lcom/android/settings/R$drawable;->miuix_appcompat_arrow_right:I

    new-instance v7, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda0;

    invoke-direct {v7, p0, v0}, Lcom/android/settings/SettingsFragment$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/SettingsFragment;Lcom/android/settings/notify/SettingsNotifyEasyModeBuilder$SettingsNotify;)V

    move-object v1, p0

    .line 711
    invoke-direct/range {v1 .. v7}, Lcom/android/settings/SettingsFragment;->updateTips(ZLjava/lang/String;Ljava/lang/String;Landroid/graphics/drawable/Drawable;ILandroid/view/View$OnClickListener;)V

    return-void

    .line 726
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 730
    :cond_1
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/banner/HomePageBannerHelper;->readBannerBean(Landroid/content/Context;)Lcom/android/settings/banner/BannerBean;

    move-result-object v0

    .line 731
    invoke-virtual {p0, v0}, Lcom/android/settings/SettingsFragment;->setTipsLocalModel(Lcom/android/settings/banner/BannerBean;)V

    .line 732
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mBannerCallback:Lcom/android/settings/SettingsFragment$BannerCallback;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    if-eqz v1, :cond_2

    .line 733
    invoke-virtual {v0}, Lcom/android/settings/SettingsFragment$BannerCallback;->updateTips()V

    .line 737
    :cond_2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/SettingsFragment$8;

    invoke-direct {v1, p0}, Lcom/android/settings/SettingsFragment$8;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-static {v0, v1}, Lcom/android/settings/banner/HomePageBannerHelper;->queryAndSaveBannerOnBg(Landroid/content/Context;Lcom/android/settings/banner/HomePageBannerHelper$BannerCallback;)V

    return-void
.end method

.method public mergeGlobalResults(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchResultItem;",
            ">;"
        }
    .end annotation

    .line 1224
    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->getNonEmptySearchResultCount(Ljava/util/List;)I

    move-result v0

    if-gtz v0, :cond_0

    return-object p2

    .line 1230
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/SettingsFragment;->getNonEmptySearchResultCount(Ljava/util/List;)I

    move-result v0

    if-gtz v0, :cond_1

    return-object p1

    :cond_1
    const/4 v0, 0x0

    .line 1234
    invoke-interface {p1, v0, p2}, Ljava/util/List;->addAll(ILjava/util/Collection;)Z

    .line 1235
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    if-eqz p0, :cond_2

    .line 1236
    invoke-virtual {p0, p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->removeDuplicateSearchResult(Ljava/util/List;)V

    :cond_2
    return-object p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 441
    invoke-super {p0, p1}, Lcom/android/settings/BasePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 442
    invoke-virtual {p0}, Lmiuix/appcompat/app/Fragment;->getThemedContext()Landroid/content/Context;

    move-result-object p1

    sget v0, Lcom/android/settings/R$style;->ThemeMiuiSettings_NewMiuiSettings:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->setTheme(I)V

    .line 444
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryLists:Ljava/util/List;

    .line 446
    new-instance p1, Lcom/android/settings/utils/StorageListSPUtils;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string/jumbo v1, "search_history"

    invoke-direct {p1, v0, v1}, Lcom/android/settings/utils/StorageListSPUtils;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mStorageListSPUtils:Lcom/android/settings/utils/StorageListSPUtils;

    .line 447
    new-instance p1, Ljava/util/LinkedList;

    invoke-direct {p1}, Ljava/util/LinkedList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    .line 448
    sget-object v0, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 449
    new-instance p1, Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    invoke-direct {p1, p0, v0, v1}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;-><init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    .line 450
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/cloud/AccessibilityDisableList;->updateDisableSet(Landroid/content/Context;)V

    .line 451
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->initGlobalSearchIfNeed()V

    .line 452
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 454
    new-instance p1, Lcom/android/settings/search/SearchResult;

    invoke-direct {p1}, Lcom/android/settings/search/SearchResult;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchResult:Lcom/android/settings/search/SearchResult;

    .line 456
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->reportSwitchStatus(Landroid/content/Context;)V

    const-string/jumbo p1, "settiing_homepage_show"

    .line 457
    invoke-static {p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;)V

    .line 459
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 460
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->getMiuiCustSplitUtils()Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mMiuiCustSplitUtils:Lcom/android/settings/MiuiCustSplitUtils;

    .line 463
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mTrimMemoryUtils:Lcom/android/settings/TrimMemoryUtils;

    if-nez p1, :cond_1

    .line 464
    new-instance p1, Lcom/android/settings/TrimMemoryUtils;

    invoke-direct {p1}, Lcom/android/settings/TrimMemoryUtils;-><init>()V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mTrimMemoryUtils:Lcom/android/settings/TrimMemoryUtils;

    .line 465
    invoke-virtual {p1}, Lcom/android/settings/TrimMemoryUtils;->addIdleHandler()V

    .line 468
    :cond_1
    invoke-static {}, Lcom/android/settings/search/SearchResult;->getSearchExcludeMap()Ljava/util/HashSet;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchExcludeMap:Ljava/util/HashSet;

    .line 470
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mBannerCallback:Lcom/android/settings/SettingsFragment$BannerCallback;

    if-nez p1, :cond_2

    .line 471
    new-instance p1, Lcom/android/settings/SettingsFragment$BannerCallback;

    invoke-direct {p1, p0}, Lcom/android/settings/SettingsFragment$BannerCallback;-><init>(Lcom/android/settings/SettingsFragment;)V

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mBannerCallback:Lcom/android/settings/SettingsFragment$BannerCallback;

    .line 473
    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 557
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onDestroy()V

    .line 560
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mTextWatcher:Landroid/text/TextWatcher;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v2, v1, v1, v1}, Landroid/text/TextWatcher;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 563
    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchThread:Landroid/os/HandlerThread;

    .line 565
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    if-eqz v0, :cond_1

    .line 566
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 567
    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    .line 569
    :cond_1
    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchResult:Lcom/android/settings/search/SearchResult;

    .line 570
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    if-eqz v0, :cond_2

    .line 571
    invoke-virtual {v0}, Lcom/android/settings/search/SettingsGlobalSearcher;->unregisterSyncGlobalSearchCompleted()V

    .line 573
    :cond_2
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mTrimMemoryUtils:Lcom/android/settings/TrimMemoryUtils;

    if-eqz v0, :cond_3

    .line 574
    invoke-virtual {v0}, Lcom/android/settings/TrimMemoryUtils;->removeIdleHandler()V

    .line 575
    iput-object v2, p0, Lcom/android/settings/SettingsFragment;->mTrimMemoryUtils:Lcom/android/settings/TrimMemoryUtils;

    :cond_3
    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 256
    sget p3, Lcom/android/settings/R$layout;->settings_search_fragment:I

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 257
    sget p2, Lcom/android/settings/R$id;->search_result_ll:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultLinearLayout:Landroid/widget/LinearLayout;

    .line 258
    sget p2, Lcom/android/settings/R$id;->scroll_headers:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 p3, 0x1

    .line 259
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 260
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 261
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 262
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    const/4 v2, -0x1

    invoke-virtual {p2, v2}, Landroidx/recyclerview/widget/RecyclerView;->setItemViewCacheSize(I)V

    .line 263
    sget p2, Lcom/android/settings/R$id;->search_result:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lmiuix/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    .line 264
    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusable(Z)V

    .line 265
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p3}, Landroid/view/ViewGroup;->setFocusableInTouchMode(Z)V

    .line 266
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, p0}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 267
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    invoke-virtual {p2, v1}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$ItemAnimator;)V

    .line 268
    sget p2, Lcom/android/settings/R$id;->search_loading:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchLoadingView:Landroid/view/View;

    .line 269
    sget p2, Lcom/android/settings/R$id;->search_history:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/core/widget/NestedScrollView;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchListLayout:Landroidx/core/widget/NestedScrollView;

    .line 270
    sget p2, Lcom/android/settings/R$id;->search_history_fl:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/widget/FlowLayout;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchHistoryFl:Lcom/android/settings/widget/FlowLayout;

    .line 271
    sget p2, Lcom/android/settings/R$id;->search_history_clear_tv:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    .line 272
    new-instance p3, Lcom/android/settings/SettingsFragment$1;

    invoke-direct {p3, p0}, Lcom/android/settings/SettingsFragment$1;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 281
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->initSearchHistoryView()V

    .line 286
    :try_start_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    const p3, 0x1010054    # @android:attr/windowBackground

    filled-new-array {p3}, [I

    move-result-object p3

    invoke-virtual {p2, v1, p3}, Landroid/app/Activity;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 287
    iget-object p3, p0, Lcom/android/settings/SettingsFragment;->mSearchLoadingView:Landroid/view/View;

    invoke-virtual {p2, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 288
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 291
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchLoadingView:Landroid/view/View;

    invoke-virtual {p0, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string p0, "SettingsFragment"

    const-string p3, "Fail to find windowBackground in current context"

    .line 292
    invoke-static {p0, p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-object p1
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    .line 2019
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->getIsInActionMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-boolean p1, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz p1, :cond_1

    .line 2020
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    .line 2021
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2025
    :cond_0
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    .line 2026
    sget-object v1, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2027
    new-instance v0, Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultItems:Ljava/util/List;

    invoke-direct {v0, p0, v1, v2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;-><init>(Lcom/android/settings/SettingsFragment;Landroid/content/Context;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    const/4 v1, 0x1

    .line 2028
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->setHasStableIds(Z)V

    .line 2029
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mSearchAdapter:Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 2030
    invoke-direct {p0, p1, v1}, Lcom/android/settings/SettingsFragment;->updateSearch(Ljava/lang/String;Z)V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 521
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onResume()V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings/SettingsFragment;->loadRemovableHint()V

    .line 525
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->initGlobalSearchIfNeed()V

    .line 527
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/SettingsFragment;->mIsInActionMode:Z

    if-eqz v0, :cond_0

    .line 528
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    invoke-virtual {p0}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->sendInitMessage()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 492
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onStart()V

    .line 493
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    .line 496
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 497
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "DEFERRED_SETUP"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "isShow"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 498
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->addHintView()V

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

    if-nez v0, :cond_2

    .line 501
    new-instance v0, Lcom/android/settings/DeferredSetupHelper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/SettingsFragment;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/DeferredSetupHelper;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

    .line 503
    :cond_2
    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

    invoke-virtual {p0}, Lcom/android/settings/DeferredSetupHelper;->startLoad()V

    return-void
.end method

.method public onStop()V
    .locals 1

    .line 535
    invoke-super {p0}, Lcom/android/settings/BasePreferenceFragment;->onStop()V

    .line 536
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->logDetailSearchTime()V

    .line 537
    sget-boolean v0, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-nez v0, :cond_0

    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

    if-eqz v0, :cond_1

    .line 541
    invoke-virtual {v0}, Lcom/android/settings/DeferredSetupHelper;->stop()V

    const/4 v0, 0x0

    .line 542
    iput-object v0, p0, Lcom/android/settings/SettingsFragment;->mDeferredSetupHelper:Lcom/android/settings/DeferredSetupHelper;

    :cond_1
    return-void
.end method

.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 831
    iget-object p2, p0, Lcom/android/settings/SettingsFragment;->mSearchResultListView:Lmiuix/recyclerview/widget/RecyclerView;

    if-ne p1, p2, :cond_0

    .line 832
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->hideSoftKeyboard()V

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public onTrimMemory(I)V
    .locals 2

    .line 1894
    invoke-super {p0, p1}, Lcom/android/settings/BasePreferenceFragment;->onTrimMemory(I)V

    const/16 v0, 0x50

    if-ne v0, p1, :cond_2

    const-string p1, "SettingsFragment"

    const-string/jumbo v0, "onTrimMemory TRIM_MEMORY_COMPLETE"

    .line 1896
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1897
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    if-eqz p1, :cond_0

    .line 1898
    invoke-virtual {p1}, Lcom/android/settings/search/SettingsGlobalSearcher;->unregisterSyncGlobalSearchCompleted()V

    const/4 p1, 0x0

    .line 1899
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mGlobalSearch:Lcom/android/settings/search/SettingsGlobalSearcher;

    .line 1902
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->releaseSettingsTree()V

    .line 1904
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mSeparateAppSearchThread:Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    if-eqz p1, :cond_1

    .line 1905
    invoke-virtual {p1}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->sendReleaseMessage()V

    .line 1908
    :cond_1
    invoke-static {}, Lcom/android/settingslib/search/SearchUtils;->clearPackageExistedCache()V

    .line 1909
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTabletDevice()Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isFoldDevice()Z

    move-result p1

    if-nez p1, :cond_2

    .line 1910
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p0

    const-wide/16 v0, 0x0

    invoke-static {p0, v0, v1}, Lmiui/settings/commonlib/MemoryOptimizationUtil;->sendMemoryOptimizationMsg(Landroid/content/Context;J)V

    :cond_2
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 631
    invoke-super {p0, p1, p2}, Lcom/android/settings/BasePreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 632
    sget p2, Lcom/android/settings/R$id;->header_view:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mAnchorView:Landroid/view/View;

    .line 633
    new-instance p2, Lcom/android/settings/SettingsFragment$6;

    invoke-direct {p2, p0}, Lcom/android/settings/SettingsFragment$6;-><init>(Lcom/android/settings/SettingsFragment;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 658
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mAnchorView:Landroid/view/View;

    const p2, 0x1020009    # @android:id/input

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 659
    sget p2, Lcom/android/settings/R$string;->search_input_hint:I

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setHint(I)V

    .line 660
    iget-object p1, p0, Lcom/android/settings/SettingsFragment;->mAnchorView:Landroid/view/View;

    invoke-direct {p0, p1}, Lcom/android/settings/SettingsFragment;->adapterAccessibility(Landroid/view/View;)V

    return-void
.end method

.method public refreshSearchResult()V
    .locals 2

    .line 1917
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1920
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/SettingsFragment;->ensureSearchHandler()V

    .line 1921
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1922
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mSearchHandler:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mSearchText:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method

.method public resetBannerRefresh()V
    .locals 1

    const/4 v0, 0x1

    .line 700
    iput-boolean v0, p0, Lcom/android/settings/SettingsFragment;->isFirstCreated:Z

    return-void
.end method

.method public setRemovableHintView(Landroid/view/View;)V
    .locals 0

    .line 1934
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mRemovableHintView:Landroid/view/View;

    return-void
.end method

.method public setTipsLocalModel(Lcom/android/settings/banner/BannerBean;)V
    .locals 0

    .line 1930
    iput-object p1, p0, Lcom/android/settings/SettingsFragment;->mTipsLocalModel:Lcom/android/settings/banner/BannerBean;

    return-void
.end method

.method public updateAdapter()V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/android/settings/SettingsFragment;->mListView:Lmiuix/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/android/settings/SettingsFragment;->mProxyAdapter:Lcom/android/settings/MiuiSettings$ProxyHeaderViewAdapter;

    if-nez p0, :cond_0

    goto :goto_0

    .line 626
    :cond_0
    invoke-virtual {v0, p0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    :cond_1
    :goto_0
    return-void
.end method
