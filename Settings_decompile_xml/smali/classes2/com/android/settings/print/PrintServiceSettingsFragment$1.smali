.class Lcom/android/settings/print/PrintServiceSettingsFragment$1;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "PrintServiceSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintServiceSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/print/PrintServiceSettingsFragment;)V
    .locals 0

    .line 105
    iput-object p1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private invalidateOptionsMenuIfNeeded()V
    .locals 2

    .line 113
    iget-object v0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmPrintersAdapter(Lcom/android/settings/print/PrintServiceSettingsFragment;)Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/print/PrintServiceSettingsFragment$PrintersAdapter;->getUnfilteredCount()I

    move-result v0

    .line 114
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmLastUnfilteredItemCount(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-gtz v1, :cond_0

    if-gtz v0, :cond_1

    :cond_0
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fgetmLastUnfilteredItemCount(Lcom/android/settings/print/PrintServiceSettingsFragment;)I

    move-result v1

    if-lez v1, :cond_2

    if-gtz v0, :cond_2

    .line 116
    :cond_1
    iget-object v1, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 118
    :cond_2
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p0, v0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$fputmLastUnfilteredItemCount(Lcom/android/settings/print/PrintServiceSettingsFragment;I)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 108
    invoke-direct {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->invalidateOptionsMenuIfNeeded()V

    .line 109
    iget-object p0, p0, Lcom/android/settings/print/PrintServiceSettingsFragment$1;->this$0:Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-static {p0}, Lcom/android/settings/print/PrintServiceSettingsFragment;->-$$Nest$mupdateEmptyView(Lcom/android/settings/print/PrintServiceSettingsFragment;)V

    return-void
.end method
