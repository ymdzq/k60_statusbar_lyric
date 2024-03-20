.class Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;
.super Ljava/lang/Object;
.source "AutoUIModeBaseFragment.java"

# interfaces
.implements Lmiuix/view/SearchActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/autouimode/AutoUIModeBaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V
    .locals 0

    .line 258
    iput-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

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

    .line 261
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 262
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p2}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmSearchView(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/view/View;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnchorView(Landroid/view/View;)V

    .line 263
    iget-object p2, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p2}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmLinearLayout(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/widget/LinearLayout;

    move-result-object p2

    invoke-interface {p1, p2}, Lmiuix/view/SearchActionMode;->setAnimateView(Landroid/view/View;)V

    .line 264
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmSearchTextWatcher(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/text/TextWatcher;

    move-result-object p0

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    const/4 p0, 0x1

    return p0
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 1

    .line 275
    check-cast p1, Lmiuix/view/SearchActionMode;

    .line 276
    invoke-interface {p1}, Lmiuix/view/SearchActionMode;->getSearchInput()Landroid/widget/EditText;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {v0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmSearchTextWatcher(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Landroid/text/TextWatcher;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 277
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-virtual {p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->exitSearchMode()V

    .line 278
    iget-object p1, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p1}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$fgetmAutoModeAdapter(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)Lcom/android/settings/autouimode/AutoUIModeAdapter;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/autouimode/AutoUIModeAdapter;->setSearchInput(Ljava/lang/String;)V

    .line 279
    iget-object p0, p0, Lcom/android/settings/autouimode/AutoUIModeBaseFragment$4;->this$0:Lcom/android/settings/autouimode/AutoUIModeBaseFragment;

    invoke-static {p0}, Lcom/android/settings/autouimode/AutoUIModeBaseFragment;->-$$Nest$mupdateAppList(Lcom/android/settings/autouimode/AutoUIModeBaseFragment;)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    .line 0
    const/4 p0, 0x1

    return p0
.end method
