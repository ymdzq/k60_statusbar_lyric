.class Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;
.super Landroid/widget/Filter;
.source "ApplicationsContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V
    .locals 0

    .line 545
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 1

    .line 548
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-static {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fgetmBaseEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->applyPrefixFilter(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p0

    .line 550
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 551
    iput-object p0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 552
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    iput p0, p1, Landroid/widget/Filter$FilterResults;->count:I

    return-object p1
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    .line 560
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mCurFilterPrefix:Ljava/lang/CharSequence;

    .line 561
    iget-object p1, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-static {v0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->-$$Nest$fputmEntries(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)V

    .line 562
    iget-object p0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;->this$0:Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    return-void
.end method
