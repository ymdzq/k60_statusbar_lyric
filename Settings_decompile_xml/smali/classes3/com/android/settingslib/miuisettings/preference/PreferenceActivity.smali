.class public abstract Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;
.super Landroid/app/ListActivity;
.source "PreferenceActivity.java"

# interfaces
.implements Landroidx/preference/PreferenceManager$OnPreferenceTreeClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mActivityTitle:Ljava/lang/CharSequence;

.field private mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

.field private mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

.field private mHandler:Landroid/os/Handler;

.field private final mHeaders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;",
            ">;"
        }
    .end annotation
.end field

.field private mHeadersContainer:Landroid/view/ViewGroup;

.field private mListFooter:Landroid/widget/FrameLayout;

.field private mPreferenceHeaderItemResId:I

.field private mPreferenceHeaderRemoveEmptyIcon:Z

.field private mPreferenceManager:Landroidx/preference/PreferenceManager;

.field private mPrefsContainer:Landroid/view/ViewGroup;

.field private mSavedInstanceState:Landroid/os/Bundle;

.field private mSinglePane:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 108
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 207
    iput v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceHeaderItemResId:I

    .line 208
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceHeaderRemoveEmptyIcon:Z

    .line 217
    new-instance v0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$1;-><init>(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;)V

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private postBindPreferences()V
    .locals 2

    .line 1454
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1455
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    invoke-virtual {p0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/Message;->sendToTarget()V

    return-void
.end method


# virtual methods
.method public getPreferenceScreen()Landroidx/preference/PreferenceScreen;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1525
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz p0, :cond_0

    .line 1526
    invoke-virtual {p0}, Landroidx/preference/PreferenceManager;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 1068
    invoke-super {p0, p1, p2, p3}, Landroid/app/ListActivity;->onActivityResult(IILandroid/content/Intent;)V

    return-void
.end method

.method public onBackPressed()V
    .locals 3

    .line 709
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mSinglePane:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/app/ListActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 710
    invoke-virtual {p0}, Landroid/app/ListActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, ":android:show_fragment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const/4 v0, 0x0

    .line 711
    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 713
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPrefsContainer:Landroid/view/ViewGroup;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 714
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeadersContainer:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 715
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mActivityTitle:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 716
    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 718
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/ListView;->clearChoices()V

    goto :goto_0

    .line 720
    :cond_1
    invoke-super {p0}, Landroid/app/ListActivity;->onBackPressed()V

    :goto_0
    return-void
.end method

.method public onContentChanged()V
    .locals 1

    .line 1078
    invoke-super {p0}, Landroid/app/ListActivity;->onContentChanged()V

    .line 1080
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    .line 1081
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->postBindPreferences()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 546
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 1006
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1007
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 1008
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 1090
    invoke-super/range {p0 .. p5}, Landroid/app/ListActivity;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 536
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x102002c    # @android:id/home

    if-ne v0, v1, :cond_0

    .line 538
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->onBackPressed()V

    const/4 p0, 0x1

    return p0

    .line 541
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p0

    return p0
.end method

.method public onPreferenceTreeClick(Landroidx/preference/Preference;)Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1042
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_0

    const-string v0, ":android:preferences"

    .line 1043
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1045
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1047
    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->restoreHierarchyState(Landroid/os/Bundle;)V

    .line 1048
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mSavedInstanceState:Landroid/os/Bundle;

    return-void

    .line 1056
    :cond_0
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1058
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mSinglePane:Z

    if-nez p1, :cond_1

    .line 1060
    iget-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-eqz p1, :cond_1

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->setSelectedHeader(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    :cond_1
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1018
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 1020
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    const-string v0, ":android:headers"

    .line 1021
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 1022
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    if-eqz v0, :cond_0

    .line 1023
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    const-string v1, ":android:cur_header"

    .line 1025
    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1030
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mPreferenceManager:Landroidx/preference/PreferenceManager;

    if-eqz v0, :cond_1

    .line 1031
    invoke-virtual {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 1033
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1034
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->saveHierarchyState(Landroid/os/Bundle;)V

    const-string p0, ":android:preferences"

    .line 1035
    invoke-virtual {p1, p0, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    return-void
.end method

.method protected onStop()V
    .locals 0

    .line 996
    invoke-super {p0}, Landroid/app/ListActivity;->onStop()V

    return-void
.end method

.method public setListFooter(Landroid/view/View;)V
    .locals 3

    .line 988
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 989
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mListFooter:Landroid/widget/FrameLayout;

    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    const/4 v2, -0x2

    invoke-direct {v0, v1, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method setSelectedHeader(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 3

    .line 1232
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mCurHeader:Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;

    .line 1233
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mHeaders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 1235
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/widget/ListView;->setItemChecked(IZ)V

    goto :goto_0

    .line 1237
    :cond_0
    invoke-virtual {p0}, Landroid/app/ListActivity;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->clearChoices()V

    .line 1239
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->showBreadCrumbs(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V

    return-void
.end method

.method showBreadCrumbs(Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 1244
    invoke-virtual {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getBreadCrumbTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 1245
    invoke-virtual {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    :cond_0
    if-nez v0, :cond_1

    .line 1246
    invoke-virtual {p0}, Landroid/app/ListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 1247
    :cond_1
    invoke-virtual {p0}, Landroid/app/ListActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity$Header;->getBreadCrumbShortTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1249
    :cond_2
    invoke-virtual {p0}, Landroid/app/ListActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    :goto_0
    return-void
.end method

.method public showBreadCrumbs(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V
    .locals 2

    .line 1184
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    if-nez v0, :cond_2

    const v0, 0x1020016    # @android:id/title

    .line 1185
    invoke-virtual {p0, v0}, Landroid/app/ListActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1188
    :try_start_0
    check-cast v0, Landroid/app/FragmentBreadCrumbs;

    iput-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_1

    if-eqz p1, :cond_0

    .line 1195
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    return-void

    :cond_1
    const/4 v1, 0x2

    .line 1206
    invoke-virtual {v0, v1}, Landroid/app/FragmentBreadCrumbs;->setMaxVisible(I)V

    .line 1207
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p0}, Landroid/app/FragmentBreadCrumbs;->setActivity(Landroid/app/Activity;)V

    goto :goto_0

    .line 1190
    :catch_0
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void

    .line 1209
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0}, Landroid/app/FragmentBreadCrumbs;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_3

    .line 1210
    invoke-virtual {p0, p1}, Landroid/app/ListActivity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1212
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    invoke-virtual {v0, p1, p2}, Landroid/app/FragmentBreadCrumbs;->setTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    .line 1213
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceActivity;->mFragmentBreadCrumbs:Landroid/app/FragmentBreadCrumbs;

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1, p1}, Landroid/app/FragmentBreadCrumbs;->setParentTitle(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/view/View$OnClickListener;)V

    :goto_1
    return-void
.end method

.method public startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroidx/fragment/app/Fragment;I)V
    .locals 0

    .line 1402
    invoke-static {p0, p1, p2}, Landroidx/fragment/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-eqz p5, :cond_0

    .line 1404
    invoke-virtual {p0, p5, p6}, Landroidx/fragment/app/Fragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    :cond_0
    return-void
.end method
