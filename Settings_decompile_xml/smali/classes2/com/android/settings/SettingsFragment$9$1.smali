.class Lcom/android/settings/SettingsFragment$9$1;
.super Ljava/lang/Object;
.source "SettingsFragment.java"

# interfaces
.implements Lmiuix/view/ActionModeAnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SettingsFragment$9;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/SettingsFragment$9;


# direct methods
.method constructor <init>(Lcom/android/settings/SettingsFragment$9;)V
    .locals 0

    .line 843
    iput-object p1, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStart(Z)V
    .locals 0

    .line 846
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 p1, 0x0

    invoke-static {p0, p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsScrollEnableForListView(Lcom/android/settings/SettingsFragment;Z)V

    return-void
.end method

.method public onStop(Z)V
    .locals 2

    .line 858
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    xor-int/lit8 v1, p1, 0x1

    invoke-static {v0, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fputmIsScrollEnableForListView(Lcom/android/settings/SettingsFragment;Z)V

    .line 859
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchListLayout(Lcom/android/settings/SettingsFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 860
    iget-object v0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object v0, v0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchListLayout(Lcom/android/settings/SettingsFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 862
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchHistoryLists(Lcom/android/settings/SettingsFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_1

    .line 863
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    .line 864
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchMaskVisiable(Lcom/android/settings/SettingsFragment;Z)V

    goto :goto_0

    .line 866
    :cond_1
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0, v0}, Lcom/android/settings/SettingsFragment;->-$$Nest$msetSearchHistoryVisiable(Lcom/android/settings/SettingsFragment;Z)V

    :goto_0
    return-void
.end method

.method public onUpdate(ZF)V
    .locals 0

    .line 851
    iget-object p1, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p1, p1, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p1}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchListLayout(Lcom/android/settings/SettingsFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 852
    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9$1;->this$1:Lcom/android/settings/SettingsFragment$9;

    iget-object p0, p0, Lcom/android/settings/SettingsFragment$9;->this$0:Lcom/android/settings/SettingsFragment;

    invoke-static {p0}, Lcom/android/settings/SettingsFragment;->-$$Nest$fgetmSearchListLayout(Lcom/android/settings/SettingsFragment;)Landroidx/core/widget/NestedScrollView;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/widget/FrameLayout;->setAlpha(F)V

    :cond_0
    return-void
.end method
