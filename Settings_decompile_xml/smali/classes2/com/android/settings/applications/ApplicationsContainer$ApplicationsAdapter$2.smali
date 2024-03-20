.class Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;
.super Landroid/os/AsyncTask;
.source "ApplicationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->onLoadEntriesCompleted()V
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


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V
    .locals 0

    .line 579
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 579
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->doInBackground([Ljava/lang/Void;)Ljava/util/ArrayList;

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

    .line 582
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmSession(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmFilterObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmComparatorObj(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/Comparator;

    move-result-object p0

    invoke-virtual {p1, v0, p0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object p0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 579
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->onPostExecute(Ljava/util/ArrayList;)V

    return-void
.end method

.method protected onPostExecute(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    .line 590
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 591
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v0, p1, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    .line 593
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 594
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)I

    move-result p1

    if-lez p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object p1

    .line 595
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)I

    move-result v0

    if-le p1, v0, :cond_1

    .line 596
    iget-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmTab(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->-$$Nest$fgetmListView(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setSelection(I)V

    .line 597
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$2;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmFisrtVisiblePosition(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;I)V

    :cond_1
    return-void
.end method
