.class Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;
.super Landroid/os/AsyncTask;
.source "ApplicationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->rebuild(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/util/ArrayList<",
        "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

.field final synthetic val$eraseold:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Z)V
    .locals 0

    .line 688
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iput-boolean p2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->val$eraseold:Z

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 688
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 691
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmSession(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmFilterObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmComparatorObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 688
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    .line 696
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->val$eraseold:Z

    if-nez v0, :cond_0

    return-void

    .line 700
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    .line 701
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 702
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 704
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    .line 706
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    const/4 v0, 0x0

    if-nez p1, :cond_2

    .line 709
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object p1

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 710
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 712
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setVisibility(I)V

    .line 713
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$4;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object p0

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmLoadingContainer(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object p0

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/view/View;->setVisibility(I)V

    :goto_1
    return-void
.end method
