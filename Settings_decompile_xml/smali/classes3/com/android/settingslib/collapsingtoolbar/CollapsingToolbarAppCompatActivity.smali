.class public Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "CollapsingToolbarAppCompatActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity$DelegateCallback;
    }
.end annotation


# instance fields
.field private mCustomizeLayoutResId:I

.field private mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 65
    iput v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mCustomizeLayoutResId:I

    return-void
.end method

.method static synthetic access$001(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;Landroidx/appcompat/widget/Toolbar;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    return-void
.end method

.method static synthetic access$101(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;)Landroidx/appcompat/app/ActionBar;
    .locals 0

    .line 40
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$201(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;Ljava/lang/CharSequence;)V
    .locals 0

    .line 40
    invoke-super {p0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private getToolbarDelegate()Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;
    .locals 3

    .line 174
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    if-nez v0, :cond_0

    .line 175
    new-instance v0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    new-instance v1, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity$DelegateCallback;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity$DelegateCallback;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity$DelegateCallback-IA;)V

    invoke-direct {v0, v1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;-><init>(Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate$HostCallback;)V

    iput-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    .line 177
    :cond_0
    iget-object p0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    return-object p0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .line 147
    invoke-super {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    .line 152
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 153
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 69
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastS()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 71
    invoke-static {p0}, Lcom/google/android/material/color/DynamicColors;->applyToActivityIfAvailable(Landroid/app/Activity;)V

    .line 73
    :cond_0
    sget p1, Lcom/android/settingslib/widget/R$style;->Theme_SubSettingsBase:I

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTheme(I)V

    .line 75
    iget p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mCustomizeLayoutResId:I

    if-lez p1, :cond_1

    invoke-static {}, Lcom/android/settingslib/utils/BuildCompatUtils;->isAtLeastS()Z

    move-result p1

    if-nez p1, :cond_1

    .line 76
    iget p1, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mCustomizeLayoutResId:I

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(I)V

    return-void

    .line 80
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->getToolbarDelegate()Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    move-result-object p1

    invoke-virtual {p0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/app/Activity;)Landroid/view/View;

    move-result-object p1

    .line 81
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .line 133
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-lez v0, :cond_0

    .line 134
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStackImmediate()Z

    .line 139
    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getBackStackEntryCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 140
    invoke-virtual {p0}, Landroid/app/Activity;->finishAfterTransition()V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public setContentView(I)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    if-nez v0, :cond_0

    sget v0, Lcom/android/settingslib/widget/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 87
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->getContentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 89
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 91
    :cond_1
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    if-nez v0, :cond_0

    sget v0, Lcom/android/settingslib/widget/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->getContentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 99
    invoke-virtual {p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    :cond_1
    return-void
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->mToolbardelegate:Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    if-nez v0, :cond_0

    sget v0, Lcom/android/settingslib/widget/R$id;->content_frame:I

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    check-cast p0, Landroid/view/ViewGroup;

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->getContentFrameLayout()Landroid/widget/FrameLayout;

    move-result-object p0

    :goto_0
    if-eqz p0, :cond_1

    .line 108
    invoke-virtual {p0, p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    :cond_1
    return-void
.end method

.method public setTitle(I)V
    .locals 0

    .line 128
    invoke-virtual {p0, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarAppCompatActivity;->getToolbarDelegate()Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/android/settingslib/collapsingtoolbar/CollapsingToolbarDelegate;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
