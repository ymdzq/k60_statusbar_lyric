.class public Lcom/android/settings/haptic/HapticDetailActivity;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "HapticDetailActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/haptic/HapticDetailActivity$M2CrispFragment;,
        Lcom/android/settings/haptic/HapticDetailActivity$M2MuffledFragment;,
        Lcom/android/settings/haptic/HapticDetailActivity$CrispFragment;,
        Lcom/android/settings/haptic/HapticDetailActivity$MuffledFragment;,
        Lcom/android/settings/haptic/HapticDetailActivity$ElasticFragment;,
        Lcom/android/settings/haptic/HapticDetailActivity$BaseHapticFragment;
    }
.end annotation


# instance fields
.field colors:[I

.field private mBar:Lmiuix/appcompat/app/ActionBar;

.field private mCurrentTab:I

.field private mDecor:Landroid/view/View;

.field private mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

.field private mTabTitle:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$2f2wWOR9w4F5p86Ge8vE2w_w7zk(Lcom/android/settings/haptic/HapticDetailActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDetailActivity;->lambda$onResume$0()V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 27
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 107
    iput-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->colors:[I

    return-void
.end method

.method private getGradientDrawable(FIIII)[I
    .locals 0

    .line 110
    invoke-static {p1, p2, p4}, Lcom/android/settings/haptic/utils/ViewUtils;->getTransitionColor(FII)I

    move-result p2

    .line 111
    invoke-static {p1, p3, p5}, Lcom/android/settings/haptic/utils/ViewUtils;->getTransitionColor(FII)I

    move-result p1

    .line 112
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->colors:[I

    const/4 p3, 0x0

    aput p2, p0, p3

    const/4 p2, 0x1

    .line 113
    aput p1, p0, p2

    return-object p0
.end method

.method private getInitDecorColor(I)[I
    .locals 1

    if-nez p1, :cond_0

    .line 59
    sget p1, Lcom/android/settings/R$color;->haptic_crisps:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    sget v0, Lcom/android/settings/R$color;->haptic_crisps_bottom:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 61
    sget p1, Lcom/android/settings/R$color;->haptic_low:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    sget v0, Lcom/android/settings/R$color;->haptic_low_bottom:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 63
    sget p1, Lcom/android/settings/R$color;->haptic_soft:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getColor(I)I

    move-result p1

    sget v0, Lcom/android/settings/R$color;->haptic_soft_bottom:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getColor(I)I

    move-result p0

    filled-new-array {p1, p0}, [I

    move-result-object p0

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method private initActionBar()V
    .locals 15

    .line 76
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz v0, :cond_2

    .line 78
    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const v2, 0x106000d    # @android:color/transparent

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 80
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNoveltyHaptic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$array;->tabs_taptic_detail_m2:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    goto :goto_0

    .line 83
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/android/settings/R$array;->tabs_taptic_detail:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    .line 86
    :goto_0
    invoke-static {}, Lcom/android/settings/utils/SettingsFeatures;->isNoveltyHaptic()Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 87
    iget-object v3, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v5

    const-class v6, Lcom/android/settings/haptic/HapticDetailActivity$M2CrispFragment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 90
    iget-object v9, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v10, v0, v2

    invoke-virtual {v9}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v11

    const-class v12, Lcom/android/settings/haptic/HapticDetailActivity$M2MuffledFragment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    goto :goto_1

    .line 93
    :cond_1
    iget-object v3, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v4, v0, v1

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    iget-object v5, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v0, v5}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v5

    const-class v6, Lcom/android/settings/haptic/HapticDetailActivity$CrispFragment;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 96
    iget-object v9, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v10, v0, v2

    invoke-virtual {v9}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v2, v3, v2

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v11

    const-class v12, Lcom/android/settings/haptic/HapticDetailActivity$MuffledFragment;

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-virtual/range {v9 .. v14}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 99
    iget-object v2, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v0, v0, v3

    invoke-virtual {v2}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v4

    iget-object v5, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    aget-object v3, v5, v3

    invoke-virtual {v4, v3}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v4

    const-class v5, Lcom/android/settings/haptic/HapticDetailActivity$ElasticFragment;

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v3, v0

    invoke-virtual/range {v2 .. v7}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    .line 102
    :goto_1
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->setViewPagerDraggable(Z)V

    .line 103
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    :cond_2
    return-void
.end method

.method private synthetic lambda$onResume$0()V
    .locals 1

    .line 72
    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    const/16 v0, 0x800

    invoke-virtual {p0, v0}, Landroid/view/View;->setSystemUiVisibility(I)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 43
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    if-eqz p1, :cond_0

    .line 45
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    sget-object v1, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    const-string v2, "key_current_tab"

    .line 46
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/haptic/HapticDetailActivity;->getInitDecorColor(I)[I

    move-result-object p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 48
    :cond_0
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-nez p1, :cond_1

    .line 49
    new-instance p1, Landroid/graphics/drawable/GradientDrawable;

    sget-object v0, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    sget v1, Lcom/android/settings/R$color;->haptic_crisps:I

    .line 50
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    sget v2, Lcom/android/settings/R$color;->haptic_crisps_bottom:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    filled-new-array {v1, v2}, [I

    move-result-object v1

    invoke-direct {p1, v0, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    .line 52
    :cond_1
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    .line 53
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 54
    invoke-direct {p0}, Lcom/android/settings/haptic/HapticDetailActivity;->initActionBar()V

    return-void
.end method

.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 8

    .line 119
    iget p3, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    const/4 p4, 0x0

    if-nez p3, :cond_0

    if-nez p1, :cond_0

    cmpl-float v0, p2, p4

    if-lez v0, :cond_0

    .line 121
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget p3, Lcom/android/settings/R$color;->haptic_crisps:I

    .line 122
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    sget p3, Lcom/android/settings/R$color;->haptic_crisps_bottom:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    sget p3, Lcom/android/settings/R$color;->haptic_low:I

    .line 123
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p3, Lcom/android/settings/R$color;->haptic_low_bottom:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    move-object v0, p0

    move v1, p2

    .line 121
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/haptic/HapticDetailActivity;->getGradientDrawable(FIIII)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_1

    if-ne p1, v0, :cond_1

    cmpl-float v1, p2, p4

    if-lez v1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sget p3, Lcom/android/settings/R$color;->haptic_low:I

    .line 128
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v2

    sget p3, Lcom/android/settings/R$color;->haptic_low_bottom:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v3

    sget p3, Lcom/android/settings/R$color;->haptic_soft:I

    .line 129
    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p3, Lcom/android/settings/R$color;->haptic_soft_bottom:I

    invoke-virtual {p0, p3}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    move-object v0, p0

    move v1, p2

    .line 127
    invoke-direct/range {v0 .. v5}, Lcom/android/settings/haptic/HapticDetailActivity;->getGradientDrawable(FIIII)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_1
    const/high16 v1, 0x3f800000    # 1.0f

    if-ne p3, v0, :cond_2

    if-nez p1, :cond_2

    cmpl-float v2, p2, p4

    if-lez v2, :cond_2

    .line 133
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sub-float v3, v1, p2

    sget p2, Lcom/android/settings/R$color;->haptic_low:I

    .line 134
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p2, Lcom/android/settings/R$color;->haptic_low_bottom:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    sget p2, Lcom/android/settings/R$color;->haptic_crisps:I

    .line 135
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    sget p2, Lcom/android/settings/R$color;->haptic_crisps_bottom:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    move-object v2, p0

    .line 133
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/haptic/HapticDetailActivity;->getGradientDrawable(FIIII)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    const/4 v2, 0x2

    if-ne p3, v2, :cond_3

    if-ne p1, v0, :cond_3

    cmpl-float p1, p2, p4

    if-lez p1, :cond_3

    .line 139
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    sub-float v3, v1, p2

    sget p2, Lcom/android/settings/R$color;->haptic_soft:I

    .line 140
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v4

    sget p2, Lcom/android/settings/R$color;->haptic_soft_bottom:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v5

    sget p2, Lcom/android/settings/R$color;->haptic_low:I

    .line 141
    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v6

    sget p2, Lcom/android/settings/R$color;->haptic_low_bottom:I

    invoke-virtual {p0, p2}, Landroid/app/Activity;->getColor(I)I

    move-result v7

    move-object v2, p0

    .line 139
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/haptic/HapticDetailActivity;->getGradientDrawable(FIIII)[I

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 142
    iget-object p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    iget-object p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p1, p0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_3
    :goto_0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 3

    .line 154
    iget v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    if-eq v0, p1, :cond_1

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 155
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    aget-object v1, v1, v2

    .line 156
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/haptic/HapticDetailActivity$BaseHapticFragment;

    .line 157
    iget v1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    invoke-virtual {v0, v1}, Lcom/android/settings/haptic/HapticDetailActivity$BaseHapticFragment;->onPageChange(I)V

    .line 158
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 159
    invoke-direct {p0, p1}, Lcom/android/settings/haptic/HapticDetailActivity;->getInitDecorColor(I)[I

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    .line 161
    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mDecor:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mGradientDrawable:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 163
    :cond_0
    iput p1, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    .line 164
    const-class p1, Lcom/android/settings/haptic/HapticDetailActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mTabTitle:[Ljava/lang/String;

    iget p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    aget-object p0, v0, p0

    invoke-static {p1, p0}, Lcom/android/settingslib/util/MiStatInterfaceUtils;->trackPreferenceClick(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 4

    .line 70
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 71
    invoke-virtual {p0}, Landroid/app/Activity;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/settings/haptic/HapticDetailActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/haptic/HapticDetailActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/haptic/HapticDetailActivity;)V

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 148
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "key_current_tab"

    .line 149
    iget p0, p0, Lcom/android/settings/haptic/HapticDetailActivity;->mCurrentTab:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 38
    sget p1, Lcom/android/settings/R$style;->HapticDetailTheme:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
