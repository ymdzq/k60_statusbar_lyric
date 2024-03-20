.class Lcom/android/settings/SettingsFragment$9;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiuix/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment;)V
    .locals 0

    .line 837
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 841
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 v0, 0x0

    invoke-static {p2, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;Lcom/android/settings/analytics/SearchStatItem;)V

    .line 842
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 843
    new-instance p2, Lcom/android/settings/SettingsFragment$9$1;

    invoke-direct {p2, p0}, Lcom/android/settings/SettingsFragment$9$1;-><init>(Lcom/android/settings/SettingsFragment$9;)V

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    .line 870
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmAnchorView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 871
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 872
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultLinearLayout(Lcom/android/settings/SettingsFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setResultView(Landroid/view/View;)V

    .line 873
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmSearchInput(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)V

    .line 874
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    const/4 v0, 0x3

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 875
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmTextWatcher(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 876
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 878
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v0, Lcom/android/settings/SettingsFragment$9$2;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$9$2;-><init>(Lcom/android/settings/SettingsFragment$9;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 888
    :cond_0
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p2

    new-instance v0, Lcom/android/settings/SettingsFragment$9$3;

    invoke-direct {v0, p0}, Lcom/android/settings/SettingsFragment$9$3;-><init>(Lcom/android/settings/SettingsFragment$9;)V

    invoke-virtual {p2, v0}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 904
    iget-object p2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 906
    new-instance p2, Lcom/android/settings/SettingsFragment$9$4;

    invoke-direct {p2, p0}, Lcom/android/settings/SettingsFragment$9$4;-><init>(Lcom/android/settings/SettingsFragment$9;)V

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->addAnimationListener(Lmiuix/view/ActionModeAnimationListener;)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 3

    .line 944
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$mgetNonEmptySearchResultCount(Lcom/android/settings/SettingsFragment;Ljava/util/List;)I

    move-result p1

    if-nez p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    .line 945
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 947
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 948
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SearchKeyWord"

    invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string/jumbo v0, "setting_search_hotword"

    .line 949
    invoke-static {v0, p1}, Lcom/android/settings/report/InternationalCompat;->trackReportEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 951
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsInActionMode(Lcom/android/settings/SettingsFragment;Z)V

    .line 953
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmTextWatcher(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 954
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 v1, 0x0

    invoke-static {p1, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmSearchInput(Lcom/android/settings/SettingsFragment;Landroid/widget/EditText;)V

    .line 955
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 956
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchLoadingView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 957
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    .line 958
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 959
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmSearchText(Lcom/android/settings/SettingsFragment;Ljava/lang/String;)V

    .line 960
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 961
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p1

    sget-object v2, Lcom/android/settings/search/SearchResultItem;->EMPTY:Lcom/android/settings/search/SearchResultItem;

    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 962
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchAdapter(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->refresh(Ljava/util/List;)V

    .line 963
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHandler(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchHandler;

    move-result-object p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 964
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHandler(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchHandler;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 966
    :cond_1
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 967
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcom/android/settings/analytics/SearchStatItem;->traceSearchEvent(Z)V

    .line 968
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;Lcom/android/settings/analytics/SearchStatItem;)V

    .line 971
    :cond_2
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 972
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsActionModeDestroy(Lcom/android/settings/SettingsFragment;Z)V

    :cond_3
    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 932
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsInActionMode(Lcom/android/settings/SettingsFragment;Z)V

    const/4 p0, 0x0

    return p0
.end method
