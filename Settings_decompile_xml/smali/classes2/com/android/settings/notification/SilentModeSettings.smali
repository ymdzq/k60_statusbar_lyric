.class public Lcom/android/settings/notification/SilentModeSettings;
.super Lmiuix/appcompat/app/AppCompatActivity;
.source "SilentModeSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;
    }
.end annotation


# instance fields
.field private mActionBar:Lmiuix/appcompat/app/ActionBar;

.field private mAutomationRuleSettings:Lcom/android/settings/notification/SilentModeAutomationSettings;

.field private mCount:I

.field private mEditActionMode:Landroid/view/ActionMode;

.field private mNightModeUI:Z

.field private mSelectAll:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmAutomationRuleSettings(Lcom/android/settings/notification/SilentModeSettings;)Lcom/android/settings/notification/SilentModeAutomationSettings;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mAutomationRuleSettings:Lcom/android/settings/notification/SilentModeAutomationSettings;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmNightModeUI(Lcom/android/settings/notification/SilentModeSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mNightModeUI:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSelectAll(Lcom/android/settings/notification/SilentModeSettings;)Z
    .locals 0

    .line 0
    iget-boolean p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mSelectAll:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmEditActionMode(Lcom/android/settings/notification/SilentModeSettings;Landroid/view/ActionMode;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmSelectAll(Lcom/android/settings/notification/SilentModeSettings;Z)V
    .locals 0

    .line 0
    iput-boolean p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mSelectAll:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetDeselectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettings;->getDeselectAllIcon()I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetSelectAllIcon(Lcom/android/settings/notification/SilentModeSettings;)I
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/notification/SilentModeSettings;->getSelectAllIcon()I

    move-result p0

    return p0
.end method

.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Lmiuix/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    .line 30
    iput v0, p0, Lcom/android/settings/notification/SilentModeSettings;->mCount:I

    return-void
.end method

.method private getDeselectAllIcon()I
    .locals 0

    .line 120
    iget-boolean p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mNightModeUI:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all_dark:I

    goto :goto_0

    .line 121
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_deselect_all_light:I

    :goto_0
    return p0
.end method

.method private getSelectAllIcon()I
    .locals 0

    .line 125
    iget-boolean p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mNightModeUI:Z

    if-eqz p0, :cond_0

    sget p0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_select_all_dark:I

    goto :goto_0

    .line 126
    :cond_0
    sget p0, Lcom/android/settings/R$drawable;->miuix_appcompat_action_mode_title_button_select_all_light:I

    :goto_0
    return p0
.end method


# virtual methods
.method public finishActionMode()V
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz p0, :cond_0

    .line 55
    invoke-virtual {p0}, Landroid/view/ActionMode;->finish()V

    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 35
    invoke-super {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->uiMode:I

    and-int/lit8 p1, p1, 0x30

    const/16 v0, 0x20

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    move p1, v2

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mNightModeUI:Z

    .line 38
    sget p1, Lcom/android/settings/R$layout;->dndm_activity_with_fragment:I

    invoke-virtual {p0, p1}, Lmiuix/appcompat/app/AppCompatActivity;->setContentView(I)V

    .line 39
    new-instance p1, Lcom/android/settings/notification/SilentModeAutomationSettings;

    invoke-direct {p1}, Lcom/android/settings/notification/SilentModeAutomationSettings;-><init>()V

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mAutomationRuleSettings:Lcom/android/settings/notification/SilentModeAutomationSettings;

    .line 40
    invoke-virtual {p0}, Lmiuix/appcompat/app/AppCompatActivity;->getAppCompatActionBar()Lmiuix/appcompat/app/ActionBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    .line 41
    invoke-virtual {p1, v2, v2, v1}, Lmiuix/appcompat/app/ActionBar;->setExpandState(IZZ)V

    .line 42
    iget-object p1, p0, Lcom/android/settings/notification/SilentModeSettings;->mActionBar:Lmiuix/appcompat/app/ActionBar;

    invoke-virtual {p1, v2}, Lmiuix/appcompat/app/ActionBar;->setResizable(Z)V

    .line 43
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object p1

    sget v0, Lcom/android/settings/R$id;->fragment_container:I

    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mAutomationRuleSettings:Lcom/android/settings/notification/SilentModeAutomationSettings;

    invoke-virtual {p1, v0, p0}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object p0

    .line 44
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-void
.end method

.method protected onDestroy()V
    .locals 0

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/notification/SilentModeSettings;->finishActionMode()V

    .line 153
    invoke-super {p0}, Lmiuix/appcompat/app/AppCompatActivity;->onDestroy()V

    return-void
.end method

.method public setActionBarTitle(IZ)V
    .locals 2

    .line 138
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 139
    iget-boolean v1, p0, Lcom/android/settings/notification/SilentModeSettings;->mSelectAll:Z

    if-eq v1, p2, :cond_0

    .line 140
    iput-boolean p2, p0, Lcom/android/settings/notification/SilentModeSettings;->mSelectAll:Z

    .line 141
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    .line 143
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    sget v0, Lcom/android/settings/R$plurals;->saved_network_checked_num:I

    const/4 v1, 0x1

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    filled-new-array {p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {p2, v0, v1, p1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 144
    iget-object p2, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p2}, Landroid/view/ActionMode;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 145
    iget-object p0, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    invoke-virtual {p0, p1}, Landroid/view/ActionMode;->setTitle(Ljava/lang/CharSequence;)V

    :cond_1
    return-void
.end method

.method public startActionMode(Ljava/lang/String;)V
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/android/settings/notification/SilentModeSettings;->mEditActionMode:Landroid/view/ActionMode;

    if-nez v0, :cond_0

    .line 49
    new-instance v0, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/notification/SilentModeSettings$ActionModeCallback;-><init>(Lcom/android/settings/notification/SilentModeSettings;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiuix/appcompat/app/AppCompatActivity;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    :cond_0
    return-void
.end method
