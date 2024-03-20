.class Lcom/android/settings/SettingsFragment$6;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    .line 633
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 637
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/utils/SettingsFeatures;->isSplitTablet(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 638
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/MiuiCustSplitUtils;->reachSplitSize()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 639
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmMiuiCustSplitUtils(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/MiuiCustSplitUtils;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/MiuiCustSplitUtils;->finishAllSubActivities()V

    .line 643
    :cond_0
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$mensureSearchHandler(Lcom/android/settings/SettingsFragment;)V

    .line 644
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 645
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmListView(Lcom/android/settings/SettingsFragment;)Lmiuix/recyclerview/widget/RecyclerView;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    const-string p1, "SettingsFragment"

    const-string/jumbo v0, "onClick: Set mListView to gone"

    .line 646
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    :cond_1
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 649
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchInput(Lcom/android/settings/SettingsFragment;)Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmTextWatcher(Lcom/android/settings/SettingsFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 652
    :cond_2
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHandler(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/SettingsFragment$SearchHandler;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 653
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSeparateAppSearchThread(Lcom/android/settings/SettingsFragment;)Lcom/android/settings/search/appseparate/SeparateAppSearchThread;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/search/appseparate/SeparateAppSearchThread;->sendInitMessage()V

    .line 654
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$6;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchCallback(Lcom/android/settings/SettingsFragment;)Lmiuix/view/SearchActionMode$Callback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/Fragment;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    return-void
.end method
