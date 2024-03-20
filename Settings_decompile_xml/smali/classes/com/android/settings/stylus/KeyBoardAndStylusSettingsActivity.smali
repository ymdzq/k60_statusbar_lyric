.class public Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;
.super Lcom/android/settings/SubSettings;
.source "KeyBoardAndStylusSettingsActivity.java"


# static fields
.field private static final a11ySettingsClass:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mBackView:Landroid/widget/ImageView;

.field private mCurrentPosition:I

.field private mTitles:[Ljava/lang/String;


# direct methods
.method public static synthetic $r8$lambda$SMGMvqxQ8b2fvyQrcHaW3tejBZY(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;Landroid/view/View;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->lambda$initActionBarBackView$0(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmCurrentPosition(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;I)V
    .locals 0

    .line 0
    iput p1, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mCurrentPosition:I

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 19
    const-class v0, Lcom/android/settings/stylus/MiuiStylusSettings;

    const-class v1, Lcom/android/settings/stylus/MiuiPhysicalKeyboardFragment;

    filled-new-array {v0, v1}, [Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->a11ySettingsClass:[Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/android/settings/SubSettings;-><init>()V

    return-void
.end method

.method private initActionBar()V
    .locals 9

    .line 48
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    const/4 v1, 0x0

    .line 49
    invoke-virtual {v0, p0, v1}, Lmiuix/appcompat/app/ActionBar;->setFragmentViewPagerMode(Landroidx/fragment/app/FragmentActivity;Z)V

    .line 50
    invoke-direct {p0}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->initActionBarBackView()V

    .line 51
    sget v0, Lcom/android/settings/R$string;->stylus_settings_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/android/settings/R$string;->settings_keyboard_title:I

    .line 52
    invoke-virtual {p0, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    filled-new-array {v0, v2}, [Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mTitles:[Ljava/lang/String;

    .line 54
    :goto_0
    sget-object v0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->a11ySettingsClass:[Ljava/lang/Class;

    array-length v2, v0

    if-ge v1, v2, :cond_0

    .line 55
    iget-object v3, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object v2, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mTitles:[Ljava/lang/String;

    aget-object v4, v2, v1

    invoke-virtual {v3}, Landroidx/appcompat/app/ActionBar;->newTab()Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v2

    iget-object v5, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mTitles:[Ljava/lang/String;

    aget-object v5, v5, v1

    invoke-virtual {v2, v5}, Landroidx/appcompat/app/ActionBar$Tab;->setText(Ljava/lang/CharSequence;)Landroidx/appcompat/app/ActionBar$Tab;

    move-result-object v5

    aget-object v6, v0, v1

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Lmiuix/appcompat/app/ActionBar;->addFragmentTab(Ljava/lang/String;Landroidx/appcompat/app/ActionBar$Tab;Ljava/lang/Class;Landroid/os/Bundle;Z)I

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 58
    :cond_0
    iget-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    new-instance v1, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$1;-><init>(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;)V

    invoke-virtual {v0, v1}, Lmiuix/appcompat/app/ActionBar;->addOnFragmentViewPagerChangeListener(Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;)V

    return-void
.end method

.method private initActionBarBackView()V
    .locals 2

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->needHideBackAndFixedSmallTitle()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 81
    :cond_0
    new-instance v0, Landroid/widget/ImageView;

    invoke-direct {v0, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mBackView:Landroid/widget/ImageView;

    .line 82
    sget v1, Lcom/android/settings/R$string;->back_button:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mBackView:Landroid/widget/ImageView;

    new-instance v1, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    invoke-static {p0}, Lcom/android/settings/display/DarkModeTimeModeUtil;->isDarkModeEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mBackView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->miuix_appcompat_action_bar_back_dark:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    .line 87
    :cond_1
    iget-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mBackView:Landroid/widget/ImageView;

    sget v1, Lcom/android/settings/R$drawable;->miuix_appcompat_action_bar_back_light:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 89
    :goto_0
    iget-object v0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    iget-object p0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mBackView:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Lmiuix/appcompat/app/ActionBar;->setStartView(Landroid/view/View;)V

    return-void
.end method

.method private synthetic lambda$initActionBarBackView$0(Landroid/view/View;)V
    .locals 0

    .line 83
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->onBackPressed()V

    return-void
.end method


# virtual methods
.method protected needHideBackAndFixedSmallTitle()Z
    .locals 1

    .line 103
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Intent;->getMiuiFlags()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method protected needToLaunchSettingsFragment()Z
    .locals 0

    .line 0
    const/4 p0, 0x0

    return p0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 31
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-direct {p0}, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->initActionBar()V

    if-eqz p1, :cond_0

    const-string v0, "current_position"

    .line 34
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mCurrentPosition:I

    .line 35
    iget-object p0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    goto :goto_0

    .line 36
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    if-eqz p1, :cond_1

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/SettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "extra_tab_position"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 38
    iget-object p0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p0, p1}, Landroidx/appcompat/app/ActionBar;->setSelectedNavigationItem(I)V

    :cond_1
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "current_position"

    .line 99
    iget p0, p0, Lcom/android/settings/stylus/KeyBoardAndStylusSettingsActivity;->mCurrentPosition:I

    invoke-virtual {p1, v0, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    return-void
.end method

.method public setTheme(I)V
    .locals 0

    .line 44
    sget p1, Lcom/android/settings/R$style;->MiuiAccessibility:I

    invoke-super {p0, p1}, Landroid/app/Activity;->setTheme(I)V

    return-void
.end method
