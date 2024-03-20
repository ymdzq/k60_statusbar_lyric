.class Lcom/android/settings/applicationmode/AppControlBaseFragment$3;
.super Ljava/lang/Object;
.source "AppControlBaseFragment.java"

# interfaces
.implements Lmiuix/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applicationmode/AppControlBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V
    .locals 0

    .line 318
    iput-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 321
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 322
    iget-object p2, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p2}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmSearchView(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 323
    iget-object p2, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p2}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmLinearLayout(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 324
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmSearchTextWatcher(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Landroid/text/TextWatcher;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 335
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 336
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {v0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmSearchTextWatcher(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 337
    iget-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-virtual {p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->exitSearchMode()V

    .line 338
    iget-object p1, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p1}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$fgetmAppControlAdapter(Lcom/android/settings/applicationmode/AppControlBaseFragment;)Lcom/android/settings/applicationmode/AppControlAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/applicationmode/AppControlAdapter;->setSearchInput(Ljava/lang/String;)V

    .line 339
    iget-object p0, p0, Lcom/android/settings/applicationmode/AppControlBaseFragment$3;->this$0:Lcom/android/settings/applicationmode/AppControlBaseFragment;

    invoke-static {p0}, Lcom/android/settings/applicationmode/AppControlBaseFragment;->-$$Nest$mupdateAppList(Lcom/android/settings/applicationmode/AppControlBaseFragment;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
