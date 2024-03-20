.class Lcom/android/settings/SettingsFragment$SearchHandler$2;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment$SearchHandler;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

.field final synthetic val$finalResult:Ljava/util/List;

.field final synthetic val$str:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment$SearchHandler;Ljava/util/List;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1147
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iput-object p2, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->val$finalResult:Ljava/util/List;

    iput-object p3, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->val$str:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1150
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmIsInActionMode(Lcom/android/settings/SettingsFragment;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResult(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/search/SearchResult;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 1153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->val$finalResult:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmSearchResultItems(Lcom/android/settings/SettingsFragment;Ljava/util/List;)V

    .line 1154
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1155
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    new-instance v1, Lcom/android/settings/analytics/SearchStatItem;

    invoke-direct {v1}, Lcom/android/settings/analytics/SearchStatItem;-><init>()V

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;Lcom/android/settings/analytics/SearchStatItem;)V

    .line 1157
    :cond_1
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/analytics/SearchStatItem;->clear()V

    .line 1158
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->val$str:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/analytics/SearchStatItem;->setKeyWork(Ljava/lang/String;)V

    .line 1159
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmCurrSearchStatItem(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/analytics/SearchStatItem;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v1, v1, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$mgetNonEmptySearchResultCount(Lcom/android/settings/SettingsFragment;Ljava/util/List;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/analytics/SearchStatItem;->setSearchResultCount(I)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchAdapter(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchResultAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v1, v1, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchResultItems(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/SettingsFragment$SearchResultAdapter;->refresh(Ljava/util/List;)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchLoadingView(Lcom/android/settings/SettingsFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 1164
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->val$str:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 1165
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    .line 1166
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchMaskVisiable(Lcom/android/settings/SettingsFragment;Z)V

    goto :goto_0

    .line 1168
    :cond_2
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler$2;->this$1:Lcom/android/settings/SettingsFragment$SearchHandler;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$SearchHandler;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    :cond_3
    :goto_0
    return-void
.end method
