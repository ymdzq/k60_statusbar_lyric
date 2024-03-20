.class Lcom/android/settings/SettingsFragment$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment;->onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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

    .line 272
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$1;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 275
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$1;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmStorageListSPUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/utils/StorageListSPUtils;

    move-result-object p1

    const-string/jumbo v0, "tagSearchHistory"

    invoke-virtual {p1, v0}, Lcom/android/settings/utils/StorageListSPUtils;->removeDateList(Ljava/lang/String;)V

    .line 276
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$1;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 277
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$1;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryFl(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/widget/FlowLayout;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 278
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$1;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    return-void
.end method
