.class public Lcom/android/settings/homepage/SettingsHomepageActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "SettingsHomepageActivity.java"

# interfaces
.implements Lcom/android/settings/core/CategoryMixin$CategoryHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;,
        Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;,
        Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;
    }
.end annotation


# static fields
.field static final DEFAULT_HIGHLIGHT_MENU_KEY:I

.field static final EXTRA_INITIAL_REFERRER:Ljava/lang/String; = "initial_referrer"


# instance fields
.field private mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

.field private mHomepageView:Landroid/view/View;

.field private mIsEmbeddingActivityEnabled:Z

.field private mIsRegularLayout:Z

.field private mIsTwoPane:Z

.field private mLoadedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;",
            ">;"
        }
    .end annotation
.end field

.field private mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

.field private mSuggestionView:Landroid/view/View;

.field private mTwoPaneSuggestionView:Landroid/view/View;


# direct methods
.method public static synthetic $r8$lambda$1gwCP72hKPHnXX-Fsy-q1i2vktk(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroidx/fragment/app/Fragment;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public static synthetic $r8$lambda$BUzzfRttldpJQdCPFiA5bN7T378(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 0

    .line 0
    invoke-static {p0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$setupEdgeToEdge$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$RAbMUg_ReIfJNdPCVVSiOTXvVOI(Lcom/android/settings/homepage/SettingsHomepageActivity;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showSuggestionFragment$5()V

    return-void
.end method

.method public static synthetic $r8$lambda$U9glgHyHrcg28hf6gRURK1CuTvI(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V

    return-void
.end method

.method public static synthetic $r8$lambda$Wnii903Fj5LluS89sfMyWHaINAo()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    .line 0
    invoke-static {}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    move-result-object v0

    return-object v0
.end method

.method public static synthetic $r8$lambda$dSH7Ip8EFDJCy5K295sVwJi-s9o(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 101
    sget v0, Lcom/android/settings/R$string;->menu_key_network:I

    sput v0, Lcom/android/settings/homepage/SettingsHomepageActivity;->DEFAULT_HIGHLIGHT_MENU_KEY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    const/4 v0, 0x1

    .line 113
    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    return-void
.end method

.method private getHighlightMenuKey()Ljava/lang/String;
    .locals 3

    .line 631
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 632
    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_HIGHLIGHT_MENU_KEY"

    .line 634
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 636
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 637
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->maybeRemapMenuKey(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 640
    :cond_0
    sget v0, Lcom/android/settings/homepage/SettingsHomepageActivity;->DEFAULT_HIGHLIGHT_MENU_KEY:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private hasPrivilegedAccess(Ljava/lang/String;ILjava/lang/String;)Z
    .locals 3

    .line 573
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    return v0

    :cond_0
    const/4 p1, 0x0

    .line 579
    :try_start_0
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-wide/16 v1, 0x0

    .line 580
    invoke-static {v1, v2}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v1

    .line 579
    invoke-virtual {p0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;)Landroid/content/pm/ApplicationInfo;

    move-result-object p0

    iget p0, p0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    invoke-static {p2, p0}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p0

    if-eqz p0, :cond_1

    return v0

    .line 594
    :cond_1
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    if-eqz p0, :cond_3

    const/16 p2, 0x3e8

    if-ne p0, p2, :cond_2

    goto :goto_0

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v0

    :catch_0
    move-exception p0

    .line 582
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Not able to get targetUid: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p2, "SettingsHomepageActivity"

    invoke-static {p2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return p1
.end method

.method private initAvatarView()V
    .locals 5

    .line 354
    sget v0, Lcom/android/settings/R$id;->account_avatar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 355
    sget v1, Lcom/android/settings/R$id;->account_avatar_two_pane_version:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 356
    invoke-static {p0}, Lcom/android/settings/accounts/AvatarViewMixin;->isAvatarSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 357
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 358
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v3

    new-instance v4, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v4, p0, v0}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v3, v4}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 360
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    .line 361
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 362
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object v0

    new-instance v2, Lcom/android/settings/accounts/AvatarViewMixin;

    invoke-direct {v2, p0, v1}, Lcom/android/settings/accounts/AvatarViewMixin;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;Landroid/widget/ImageView;)V

    invoke-virtual {v0, v2}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    :cond_0
    return-void
.end method

.method private initHomepageContainer()V
    .locals 1

    .line 666
    sget v0, Lcom/android/settings/R$id;->homepage_container:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    const/4 v0, 0x1

    .line 668
    invoke-virtual {p0, v0}, Landroid/view/View;->setFocusableInTouchMode(Z)V

    .line 669
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    return-void
.end method

.method private initSearchBarView()V
    .locals 3

    .line 341
    sget v0, Lcom/android/settings/R$id;->search_action_bar:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 342
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    const/16 v2, 0x5de

    .line 343
    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    .line 345
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_0

    .line 346
    sget v0, Lcom/android/settings/R$id;->search_action_bar_two_pane:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Toolbar;

    .line 347
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v1

    .line 348
    invoke-interface {v1, p0, v0, v2}, Lcom/android/settings/search/SearchFeatureProvider;->initSearchToolbar(Landroidx/fragment/app/FragmentActivity;Landroid/widget/Toolbar;I)V

    :cond_0
    return-void
.end method

.method private static synthetic lambda$onCreate$1()Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;
    .locals 1

    .line 222
    new-instance v0, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;

    invoke-direct {v0}, Lcom/android/settings/homepage/contextualcards/ContextualCardsFragment;-><init>()V

    return-object v0
.end method

.method private static synthetic lambda$onCreate$2(Ljava/lang/String;)Lcom/android/settings/homepage/TopLevelSettings;
    .locals 3

    .line 228
    new-instance v0, Lcom/android/settings/homepage/TopLevelSettings;

    invoke-direct {v0}, Lcom/android/settings/homepage/TopLevelSettings;-><init>()V

    .line 229
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, ":settings:fragment_args_key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method private static synthetic lambda$setupEdgeToEdge$4(Landroid/view/View;Landroidx/core/view/WindowInsetsCompat;)Landroidx/core/view/WindowInsetsCompat;
    .locals 3

    .line 330
    invoke-static {}, Landroidx/core/view/WindowInsetsCompat$Type;->systemBars()I

    move-result v0

    invoke-virtual {p1, v0}, Landroidx/core/view/WindowInsetsCompat;->getInsets(I)Landroidx/core/graphics/Insets;

    move-result-object p1

    .line 332
    iget v0, p1, Landroidx/core/graphics/Insets;->left:I

    iget v1, p1, Landroidx/core/graphics/Insets;->top:I

    iget v2, p1, Landroidx/core/graphics/Insets;->right:I

    iget p1, p1, Landroidx/core/graphics/Insets;->bottom:I

    invoke-virtual {p0, v0, v1, v2, p1}, Landroid/view/View;->setPadding(IIII)V

    .line 336
    sget-object p0, Landroidx/core/view/WindowInsetsCompat;->CONSUMED:Landroidx/core/view/WindowInsetsCompat;

    return-object p0
.end method

.method private static synthetic lambda$showHomepageWithSuggestion$0(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)V
    .locals 0

    .line 159
    invoke-interface {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;->onHomepageLoaded()V

    return-void
.end method

.method private synthetic lambda$showSuggestionFragment$5()V
    .locals 1

    const/4 v0, 0x0

    .line 398
    invoke-virtual {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showHomepageWithSuggestion(Z)V

    return-void
.end method

.method private synthetic lambda$updateSplitLayout$3(Landroidx/fragment/app/Fragment;)V
    .locals 1

    .line 320
    instance-of v0, p1, Lcom/android/settings/homepage/SplitLayoutListener;

    if-eqz v0, :cond_0

    .line 321
    check-cast p1, Lcom/android/settings/homepage/SplitLayoutListener;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SplitLayoutListener;->onSplitLayoutChanged(Z)V

    :cond_0
    return-void
.end method

.method private launchDeepLinkIntentToRight()V
    .locals 13

    .line 449
    invoke-static {p0}, Lcom/google/android/setupcompat/util/WizardManagerHelper;->isUserSetupComplete(Landroid/content/Context;)Z

    move-result v0

    const-string v1, "SettingsHomepageActivity"

    if-nez v0, :cond_0

    const-string v0, "Cancel deep link before SUW completed"

    .line 450
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 455
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "android.provider.extra.SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI"

    .line 456
    invoke-virtual {v0, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 458
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    const-string v0, "No EXTRA_SETTINGS_EMBEDDED_DEEP_LINK_INTENT_URI to deep link"

    .line 459
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_1
    const/4 v3, 0x1

    .line 466
    :try_start_0
    invoke-static {v2, v3}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v2
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_2

    const-string/jumbo v4, "settings_large_screen_deep_link_intent_data"

    .line 473
    invoke-virtual {v0, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/Uri;

    invoke-virtual {v2, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 475
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v4

    if-nez v4, :cond_2

    .line 477
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No valid target for the deep link intent: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 484
    :cond_2
    :try_start_1
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v5
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    const-string/jumbo v7, "user_handle"

    .line 492
    const-class v8, Landroid/os/UserHandle;

    invoke-virtual {v0, v7, v8}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    move-object v12, v7

    check-cast v12, Landroid/os/UserHandle;

    .line 493
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getInitialReferrer()Ljava/lang/String;

    move-result-object v7

    const/4 v8, -0x1

    if-eqz v7, :cond_4

    .line 497
    :try_start_2
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    const-wide/16 v10, 0x0

    .line 498
    invoke-static {v10, v11}, Landroid/content/pm/PackageManager$ApplicationInfoFlags;->of(J)Landroid/content/pm/PackageManager$ApplicationInfoFlags;

    move-result-object v10

    if-eqz v12, :cond_3

    .line 499
    invoke-virtual {v12}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v11

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v11

    .line 497
    :goto_0
    invoke-virtual {v9, v7, v10, v11}, Landroid/content/pm/PackageManager;->getApplicationInfoAsUser(Ljava/lang/String;Landroid/content/pm/PackageManager$ApplicationInfoFlags;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v9

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 501
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not able to get callerUid: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :cond_4
    move v9, v8

    .line 507
    :goto_1
    iget-object v10, v5, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v7, v9, v10}, Lcom/android/settings/homepage/SettingsHomepageActivity;->hasPrivilegedAccess(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 508
    iget-boolean v7, v5, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v7, :cond_5

    const-string v0, "Target Activity is not exported"

    .line 509
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 510
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 514
    :cond_5
    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {p0, v5, v9}, Lcom/android/settings/homepage/SettingsHomepageActivity;->isCallingAppPermitted(Ljava/lang/String;I)Z

    move-result v5

    if-nez v5, :cond_6

    const-string v0, "Calling app must have the permission of deep link Activity"

    .line 515
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 523
    :cond_6
    invoke-virtual {v2}, Landroid/content/Intent;->getFlags()I

    move-result v5

    and-int/lit8 v5, v5, 0x3

    .line 525
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    if-eqz v7, :cond_7

    if-eqz v5, :cond_7

    .line 527
    invoke-virtual {v2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v7

    invoke-virtual {p0, v7, v8, v9, v5}, Landroid/app/Activity;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v5

    if-ne v5, v8, :cond_7

    const-string v0, "Calling app must have the permission to access Uri and grant permission"

    .line 529
    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 530
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 534
    :cond_7
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 537
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v1, 0x10080000

    .line 539
    invoke-virtual {v2, v1}, Landroid/content/Intent;->removeFlags(I)V

    const/high16 v1, 0x2000000

    .line 540
    invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 543
    invoke-virtual {v2, v0}, Landroid/content/Intent;->replaceExtras(Landroid/content/Intent;)Landroid/content/Intent;

    const-string v0, "is_from_settings_homepage"

    .line 545
    invoke-virtual {v2, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v0, "is_from_slice"

    .line 546
    invoke-virtual {v2, v0, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 549
    new-instance v6, Landroid/content/ComponentName;

    .line 550
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 552
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    sget-object v0, Landroidx/window/embedding/SplitRule$FinishBehavior;->ALWAYS:Landroidx/window/embedding/SplitRule$FinishBehavior;

    const/4 v11, 0x1

    move-object v5, p0

    move-object v7, v4

    move-object v9, v0

    move-object v10, v0

    .line 549
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    .line 556
    new-instance v6, Landroid/content/ComponentName;

    .line 557
    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    const-class v3, Lcom/android/settings/Settings;

    invoke-direct {v6, v1, v3}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 559
    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .line 556
    invoke-static/range {v5 .. v11}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->registerTwoPanePairRule(Landroid/content/Context;Landroid/content/ComponentName;Landroid/content/ComponentName;Ljava/lang/String;Landroidx/window/embedding/SplitRule$FinishBehavior;Landroidx/window/embedding/SplitRule$FinishBehavior;Z)V

    if-eqz v12, :cond_8

    .line 565
    invoke-virtual {p0, v2, v12}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_2

    .line 567
    :cond_8
    invoke-virtual {p0, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    :goto_2
    return-void

    :catch_1
    move-exception v0

    .line 487
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to get target ActivityInfo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    :catch_2
    move-exception v0

    .line 468
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to parse deep link intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private maybeRemapMenuKey(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 644
    sget v0, Lcom/android/settings/R$string;->menu_key_privacy:I

    .line 645
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget v0, Lcom/android/settings/R$string;->menu_key_security:I

    .line 646
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 647
    :goto_1
    sget v1, Lcom/android/settings/R$string;->menu_key_safety_center:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v0, :cond_2

    .line 649
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 650
    invoke-virtual {p0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_2
    if-eqz v2, :cond_3

    .line 652
    invoke-static {}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->get()Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/safetycenter/SafetyCenterManagerWrapper;->isEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 654
    sget p1, Lcom/android/settings/R$string;->menu_key_security:I

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_3
    return-object p1
.end method

.method private reloadHighlightMenuKey()V
    .locals 3

    .line 660
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, ":settings:fragment_args_key"

    .line 661
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object v2

    .line 660
    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 662
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {p0}, Lcom/android/settings/homepage/TopLevelSettings;->reloadHighlightMenuKey()V

    return-void
.end method

.method private setupEdgeToEdge()V
    .locals 2

    .line 327
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroidx/core/view/WindowCompat;->setDecorFitsSystemWindows(Landroid/view/Window;Z)V

    const v0, 0x1020002    # @android:id/content

    .line 328
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-static {p0, v0}, Landroidx/core/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroidx/core/view/OnApplyWindowInsetsListener;)V

    return-void
.end method

.method private shouldLaunchDeepLinkIntentToRight()Z
    .locals 2

    .line 426
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isSettingsSplitEnabled(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string/jumbo v0, "settings_support_large_screen"

    .line 427
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 432
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 433
    invoke-virtual {p0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p0

    const-string v0, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {p0, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    :goto_0
    return v1
.end method

.method private showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Landroidx/fragment/app/Fragment;",
            ">(",
            "Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .line 409
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    .line 410
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 411
    invoke-virtual {p0, p2}, Landroidx/fragment/app/FragmentManager;->findFragmentById(I)Landroidx/fragment/app/Fragment;

    move-result-object p0

    if-nez p0, :cond_0

    .line 414
    invoke-interface {p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->create()Landroidx/fragment/app/Fragment;

    move-result-object p0

    .line 415
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 416
    invoke-virtual {v0, p2, p0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    goto :goto_0

    .line 418
    :cond_0
    invoke-interface {p1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;->init(Landroidx/fragment/app/Fragment;)V

    .line 419
    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->show(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    .line 421
    :goto_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    return-object p0
.end method

.method private showSuggestionFragment(Z)V
    .locals 6

    .line 385
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSuggestionFeatureProvider()Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/dashboard/suggestions/SuggestionFeatureProvider;->getContextualSuggestionFragment()Ljava/lang/Class;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 391
    :cond_0
    sget v1, Lcom/android/settings/R$id;->suggestion_content:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    .line 392
    sget v2, Lcom/android/settings/R$id;->two_pane_suggestion_content:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    .line 393
    sget v3, Lcom/android/settings/R$id;->settings_homepage_container:I

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-eqz p1, :cond_1

    const/4 p1, 0x4

    goto :goto_0

    :cond_1
    const/16 p1, 0x8

    .line 396
    :goto_0
    invoke-virtual {v3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 398
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    new-instance v3, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    const-wide/16 v4, 0x12c

    invoke-virtual {p1, v3, v4, v5}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 400
    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;

    const/4 v3, 0x0

    invoke-direct {p1, v0, v3}, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;-><init>(Ljava/lang/Class;Z)V

    invoke-direct {p0, p1, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    .line 402
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_2

    .line 403
    new-instance p1, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;

    const/4 v1, 0x1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity$SuggestionFragCreator;-><init>(Ljava/lang/Class;Z)V

    invoke-direct {p0, p1, v2}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    :cond_2
    return-void
.end method

.method private updateAppBarMinHeight()V
    .locals 3

    .line 703
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->search_bar_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 704
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 705
    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v2, :cond_0

    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v2, :cond_0

    .line 706
    sget v2, Lcom/android/settings/R$dimen;->homepage_app_bar_padding_two_pane:I

    goto :goto_0

    .line 707
    :cond_0
    sget v2, Lcom/android/settings/R$dimen;->search_bar_margin:I

    .line 704
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 708
    sget v2, Lcom/android/settings/R$id;->app_bar_container:I

    invoke-virtual {p0, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    invoke-virtual {p0, v0}, Landroid/view/View;->setMinimumHeight(I)V

    return-void
.end method

.method private updateHomepageAppBar()V
    .locals 3

    .line 673
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 676
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateAppBarMinHeight()V

    .line 677
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 678
    sget v0, Lcom/android/settings/R$id;->homepage_app_bar_regular_phone_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 679
    sget v0, Lcom/android/settings/R$id;->homepage_app_bar_two_pane_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 680
    sget v0, Lcom/android/settings/R$id;->suggestion_container_two_pane:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 682
    :cond_1
    sget v0, Lcom/android/settings/R$id;->homepage_app_bar_regular_phone_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 683
    sget v0, Lcom/android/settings/R$id;->homepage_app_bar_two_pane_view:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 684
    sget v0, Lcom/android/settings/R$id;->suggestion_container_two_pane:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private updateHomepageBackground()V
    .locals 3

    .line 368
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 372
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 373
    iget-boolean v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v1, :cond_1

    .line 374
    sget v1, Lcom/android/settings/R$color;->settings_two_pane_background_color:I

    invoke-virtual {p0, v1}, Landroid/app/Activity;->getColor(I)I

    move-result v1

    goto :goto_0

    :cond_1
    const v1, 0x1010031    # @android:attr/colorBackground

    .line 375
    invoke-static {p0, v1}, Lcom/android/settingslib/Utils;->getColorAttrDefaultColor(Landroid/content/Context;I)I

    move-result v1

    :goto_0
    const/high16 v2, -0x80000000

    .line 377
    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    const v0, 0x1020002    # @android:id/content

    .line 381
    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p0

    invoke-virtual {p0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method private updateHomepagePaddings()V
    .locals 2

    .line 689
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 692
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v0, :cond_1

    .line 693
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/settings/R$dimen;->homepage_padding_horizontal_two_pane:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 695
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    invoke-virtual {v1, v0}, Lcom/android/settings/homepage/TopLevelSettings;->setPaddingHorizontal(I)V

    goto :goto_0

    .line 697
    :cond_1
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/homepage/TopLevelSettings;->setPaddingHorizontal(I)V

    .line 699
    :goto_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    iget-boolean p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    invoke-virtual {v0, p0}, Lcom/android/settings/homepage/TopLevelSettings;->updatePreferencePadding(Z)V

    return-void
.end method

.method private updateSplitLayout()V
    .locals 3

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-nez v0, :cond_0

    return-void

    .line 298
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eqz v0, :cond_1

    .line 299
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isRegularHomepageLayout(Landroid/app/Activity;)Z

    move-result v1

    if-ne v0, v1, :cond_2

    return-void

    .line 303
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-eqz v0, :cond_2

    return-void

    .line 307
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    .line 310
    sget v0, Lcom/android/settings/R$id;->search_bar_title:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 312
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 313
    iget-boolean v2, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsRegularLayout:Z

    if-eqz v2, :cond_3

    .line 314
    sget v2, Lcom/android/settings/R$dimen;->search_bar_title_padding_start_regular_two_pane:I

    goto :goto_0

    .line 315
    :cond_3
    sget v2, Lcom/android/settings/R$dimen;->search_bar_title_padding_start:I

    .line 312
    :goto_0
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    const/4 v2, 0x0

    .line 316
    invoke-virtual {v0, v1, v2, v2, v2}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 319
    :cond_4
    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->getFragments()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda2;-><init>(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public addHomepageLoadedListener(Lcom/android/settings/homepage/SettingsHomepageActivity$HomepageLoadedListener;)Z
    .locals 1

    .line 135
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method public getCategoryMixin()Lcom/android/settings/core/CategoryMixin;
    .locals 0

    .line 171
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    return-object p0
.end method

.method getCurrentReferrer()Ljava/lang/String;
    .locals 2

    .line 615
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.REFERRER"

    .line 617
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    const-string v1, "android.intent.extra.REFERRER_NAME"

    .line 618
    invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 619
    invoke-virtual {p0}, Landroid/app/Activity;->getReferrer()Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 620
    invoke-virtual {p0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method getInitialReferrer()Ljava/lang/String;
    .locals 2

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v0

    .line 605
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    return-object v0

    .line 609
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p0

    const-string v1, "initial_referrer"

    invoke-virtual {p0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 610
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public getMainFragment()Lcom/android/settings/homepage/TopLevelSettings;
    .locals 0

    .line 166
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    return-object p0
.end method

.method initSplitPairRules()V
    .locals 1

    .line 254
    new-instance v0, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v0, p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/android/settings/activityembedding/ActivityEmbeddingRulesController;->initRules()V

    return-void
.end method

.method isCallingAppPermitted(Ljava/lang/String;I)Z
    .locals 1

    .line 625
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, -0x1

    .line 626
    invoke-virtual {p0, p1, v0, p2}, Landroid/app/Activity;->checkPermission(Ljava/lang/String;II)I

    move-result p0

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    .line 282
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 283
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result p1

    .line 284
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    if-eq v0, p1, :cond_0

    .line 285
    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    .line 286
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    .line 287
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    .line 288
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepagePaddings()V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 176
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 178
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isEmbeddingActivityEnabled(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_1

    .line 180
    const-class p1, Landroid/os/UserManager;

    invoke-virtual {p0, p1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 181
    invoke-virtual {p0}, Landroid/app/Activity;->getUserId()I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 182
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 183
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v2, 0x2000000

    .line 184
    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v1

    const-string/jumbo v2, "user_handle"

    .line 185
    invoke-virtual {p0}, Landroid/app/Activity;->getUser()Landroid/os/UserHandle;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "initial_referrer"

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getCurrentReferrer()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 187
    invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.settings.SETTINGS_EMBED_DEEP_LINK_ACTIVITY"

    invoke-static {v2, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 189
    const-class v2, Lcom/android/settings/homepage/DeepLinkHomepageActivityInternal;

    invoke-virtual {v1, p0, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :cond_0
    const/high16 v2, 0x10000000

    .line 191
    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeFlags(I)V

    .line 192
    iget v0, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getProfileParent(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 193
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    return-void

    .line 198
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->setupEdgeToEdge()V

    .line 199
    sget p1, Lcom/android/settings/R$layout;->settings_homepage_container:I

    invoke-virtual {p0, p1}, Landroidx/activity/ComponentActivity;->setContentView(I)V

    .line 200
    invoke-static {p0}, Lcom/android/settings/activityembedding/ActivityEmbeddingUtils;->isAlreadyEmbedded(Landroid/app/Activity;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsTwoPane:Z

    .line 202
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateAppBarMinHeight()V

    .line 203
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initHomepageContainer()V

    .line 204
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageAppBar()V

    .line 205
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepageBackground()V

    .line 206
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    .line 208
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSearchBarView()V

    .line 210
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    new-instance v0, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;

    invoke-direct {v0, p0}, Lcom/android/settingslib/core/lifecycle/HideNonSystemOverlayMixin;-><init>(Landroid/app/Activity;)V

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 211
    new-instance p1, Lcom/android/settings/core/CategoryMixin;

    invoke-direct {p1, p0}, Lcom/android/settings/core/CategoryMixin;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    .line 212
    invoke-virtual {p0}, Landroidx/activity/ComponentActivity;->getLifecycle()Landroidx/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mCategoryMixin:Lcom/android/settings/core/CategoryMixin;

    invoke-virtual {p1, v0}, Landroidx/lifecycle/Lifecycle;->addObserver(Landroidx/lifecycle/LifecycleObserver;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->getHighlightMenuKey()Ljava/lang/String;

    move-result-object p1

    .line 216
    const-class v0, Landroid/app/ActivityManager;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    invoke-virtual {v0}, Landroid/app/ActivityManager;->isLowRamDevice()Z

    move-result v0

    if-nez v0, :cond_3

    .line 217
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initAvatarView()V

    .line 218
    iget-boolean v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz v0, :cond_2

    sget v0, Lcom/android/settings/homepage/SettingsHomepageActivity;->DEFAULT_HIGHLIGHT_MENU_KEY:I

    .line 219
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 220
    :goto_0
    invoke-direct {p0, v0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showSuggestionFragment(Z)V

    const-string/jumbo v0, "settings_contextual_home"

    .line 221
    invoke-static {p0, v0}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 222
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda0;-><init>()V

    sget v1, Lcom/android/settings/R$id;->contextual_cards_content:I

    invoke-direct {p0, v0, v1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    .line 223
    sget v0, Lcom/android/settings/R$id;->main_content:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 224
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 227
    :cond_3
    new-instance v0, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    sget p1, Lcom/android/settings/R$id;->main_content:I

    invoke-direct {p0, v0, p1}, Lcom/android/settings/homepage/SettingsHomepageActivity;->showFragment(Lcom/android/settings/homepage/SettingsHomepageActivity$FragmentCreator;I)Landroidx/fragment/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/homepage/TopLevelSettings;

    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mMainFragment:Lcom/android/settings/homepage/TopLevelSettings;

    .line 235
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->shouldLaunchDeepLinkIntentToRight()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 236
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    .line 241
    :cond_4
    iget-boolean p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mIsEmbeddingActivityEnabled:Z

    if-eqz p1, :cond_5

    .line 242
    invoke-virtual {p0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getFlags()I

    move-result p1

    const/high16 v0, 0x4000000

    and-int/2addr p1, v0

    if-eqz p1, :cond_5

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->initSplitPairRules()V

    .line 246
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateHomepagePaddings()V

    .line 247
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->updateSplitLayout()V

    .line 249
    invoke-virtual {p0}, Landroid/app/Activity;->enableTaskLocaleOverride()V

    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 0

    .line 265
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onNewIntent(Landroid/content/Intent;)V

    .line 269
    invoke-virtual {p0, p1}, Landroid/app/Activity;->setIntent(Landroid/content/Intent;)V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->reloadHighlightMenuKey()V

    .line 271
    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 275
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->shouldLaunchDeepLinkIntentToRight()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 276
    invoke-direct {p0}, Lcom/android/settings/homepage/SettingsHomepageActivity;->launchDeepLinkIntentToRight()V

    :cond_1
    return-void
.end method

.method protected onStart()V
    .locals 1

    .line 259
    invoke-virtual {p0}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsApplication;

    invoke-virtual {v0, p0}, Lcom/android/settings/SettingsApplication;->setHomeActivity(Lcom/android/settings/homepage/SettingsHomepageActivity;)V

    .line 260
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onStart()V

    return-void
.end method

.method public showHomepageWithSuggestion(Z)V
    .locals 5

    .line 150
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    if-nez v0, :cond_0

    return-void

    .line 153
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "showHomepageWithSuggestion: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SettingsHomepageActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    .line 155
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mSuggestionView:Landroid/view/View;

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz p1, :cond_1

    move v4, v3

    goto :goto_0

    :cond_1
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mTwoPaneSuggestionView:Landroid/view/View;

    if-eqz p1, :cond_2

    move v2, v3

    :cond_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    const/4 p1, 0x0

    .line 157
    iput-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mHomepageView:Landroid/view/View;

    .line 159
    iget-object p1, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    new-instance v1, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/homepage/SettingsHomepageActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-interface {p1, v1}, Ljava/util/Set;->forEach(Ljava/util/function/Consumer;)V

    .line 160
    iget-object p0, p0, Lcom/android/settings/homepage/SettingsHomepageActivity;->mLoadedListeners:Ljava/util/Set;

    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 161
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
