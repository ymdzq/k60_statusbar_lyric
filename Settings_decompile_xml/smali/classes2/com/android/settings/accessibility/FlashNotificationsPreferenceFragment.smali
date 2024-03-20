.class public Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "FlashNotificationsPreferenceFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field final mContentObserver:Landroid/database/ContentObserver;

.field private mContext:Landroid/content/Context;

.field private previewBtn:Landroid/widget/Button;

.field private rootView:Landroid/view/View;


# direct methods
.method static bridge synthetic -$$Nest$fgetmContext(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)Landroid/content/Context;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monSettingChanged(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->onSettingChanged()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 2

    .line 148
    new-instance v0, Lcom/android/settings/search/BaseSearchIndexProvider;

    sget v1, Lcom/android/settings/R$xml;->flash_notifications_settings:I

    invoke-direct {v0, v1}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>(I)V

    sput-object v0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 49
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 59
    new-instance v0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    .line 61
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method private initView()V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->rootView:Landroid/view/View;

    sget v1, Lcom/android/settings/R$id;->preview_btn:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->previewBtn:Landroid/widget/Button;

    .line 86
    new-instance v1, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$2;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment$2;-><init>(Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method private onSettingChanged()V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->previewBtn:Landroid/widget/Button;

    if-nez v0, :cond_0

    return-void

    .line 116
    :cond_0
    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/android/settings/accessibility/FlashNotificationsUtil;->getFlashNotificationsState(Landroid/content/Context;)I

    move-result p0

    if-eqz p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {v0, p0}, Landroid/widget/Button;->setEnabled(Z)V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 145
    sget p0, Lcom/android/settings/R$string;->help_url_flash_notifications:I

    return p0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 0

    .line 0
    const-string p0, "FlashNotificationsPreferenceFragment"

    return-object p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x7eb

    return p0
.end method

.method protected getPreferenceScreenResId()I
    .locals 0

    .line 123
    sget p0, Lcom/android/settings/R$xml;->flash_notifications_settings:I

    return p0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 139
    iput-object p1, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContext:Landroid/content/Context;

    .line 140
    const-class p1, Lcom/android/settings/accessibility/ScreenFlashNotificationPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/ScreenFlashNotificationPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/accessibility/ScreenFlashNotificationPreferenceController;->setParentFragment(Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 70
    sget v0, Lcom/android/settings/R$layout;->flash_notifications_layout:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->rootView:Landroid/view/View;

    .line 72
    sget v0, Lcom/android/settings/R$id;->prefs_container:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    .line 73
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    const p3, 0x102003f    # @android:id/list_container

    .line 74
    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Lmiuix/springback/view/SpringBackLayout;

    if-eqz p3, :cond_0

    .line 76
    invoke-virtual {p3, v1}, Lmiuix/springback/view/SpringBackLayout;->setEnabled(Z)V

    .line 78
    :cond_0
    invoke-virtual {p2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 79
    invoke-direct {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->initView()V

    .line 80
    invoke-direct {p0}, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->onSettingChanged()V

    .line 81
    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->rootView:Landroid/view/View;

    return-object p0
.end method

.method public onPause()V
    .locals 1

    .line 109
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 98
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_flash_notification"

    .line 100
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    .line 99
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string/jumbo v1, "screen_flash_notification"

    .line 103
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object p0, p0, Lcom/android/settings/accessibility/FlashNotificationsPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 102
    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    return-void
.end method
