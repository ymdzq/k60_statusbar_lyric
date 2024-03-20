.class public Lcom/android/settings/applications/ManageApplicationsFragment;
.super Lcom/android/settings/BaseFragment;
.source "ManageApplicationsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Lcom/android/settings/BaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 18
    invoke-super {p0, p1}, Lcom/android/settings/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method public onInflateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 23
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "filter_app_key"

    invoke-virtual {p2, p3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p2

    .line 24
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p3

    invoke-virtual {p3}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p3

    const-class v0, Lcom/android/settings/applications/ApplicationsContainer;

    .line 25
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/ApplicationsContainer;

    if-nez p3, :cond_0

    .line 28
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object p0

    move-object p3, p0

    check-cast p3, Lcom/android/settings/applications/ApplicationsContainer;

    :cond_0
    if-eqz p3, :cond_2

    .line 31
    invoke-virtual {p3}, Lcom/android/settings/applications/ApplicationsContainer;->getTabs()Ljava/util/ArrayList;

    move-result-object p0

    .line 32
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 33
    iget v0, p3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mListType:I

    if-ne v0, p2, :cond_1

    .line 34
    invoke-virtual {p3, p1}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->build(Landroid/view/LayoutInflater;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method
