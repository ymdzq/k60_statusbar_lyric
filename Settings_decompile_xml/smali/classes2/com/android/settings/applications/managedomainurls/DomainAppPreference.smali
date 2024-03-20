.class public Lcom/android/settings/applications/managedomainurls/DomainAppPreference;
.super Lcom/android/settingslib/miuisettings/preference/IconPreference;
.source "DomainAppPreference.java"


# instance fields
.field private mCacheIcon:Landroid/graphics/drawable/Drawable;

.field private mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

.field private mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;


# direct methods
.method public static synthetic $r8$lambda$3N3K0B57VsxeZTeiXEEDE16lA00(Lcom/android/settings/applications/managedomainurls/DomainAppPreference;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->lambda$onBindViewHolder$0(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public static synthetic $r8$lambda$3c-aW_CzwAgIpv_itO2SYa7IDzY(Lcom/android/settings/applications/managedomainurls/DomainAppPreference;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->lambda$onBindViewHolder$1()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Z)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p3}, Lcom/android/settingslib/miuisettings/preference/IconPreference;-><init>(Landroid/content/Context;Z)V

    .line 57
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->init(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    return-void
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1

    .line 92
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, p1}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->isLinkHandlingAllowed(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 93
    sget p0, Lcom/android/settings/R$string;->app_link_open_always:I

    goto :goto_0

    :cond_0
    sget p0, Lcom/android/settings/R$string;->app_link_open_never:I

    .line 92
    :goto_0
    invoke-virtual {v0, p0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method private init(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 61
    sget v0, Lcom/android/settings/R$layout;->miuix_preference_app_layout:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setLayoutResource(I)V

    .line 63
    const-class v0, Landroid/content/pm/verify/domain/DomainVerificationManager;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/verify/domain/DomainVerificationManager;

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 64
    iput-object p2, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 65
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 67
    iget-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->getIconFromCache(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    .line 68
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setState()V

    return-void
.end method

.method private isLinkHandlingAllowed(Ljava/lang/String;)Z
    .locals 0

    .line 97
    iget-object p0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mDomainVerificationManager:Landroid/content/pm/verify/domain/DomainVerificationManager;

    .line 98
    invoke-static {p0, p1}, Lcom/android/settings/applications/intentpicker/IntentPickerUtils;->getDomainVerificationUserState(Landroid/content/pm/verify/domain/DomainVerificationManager;Ljava/lang/String;)Landroid/content/pm/verify/domain/DomainVerificationUserState;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 100
    :cond_0
    invoke-virtual {p0}, Landroid/content/pm/verify/domain/DomainVerificationUserState;->isLinkHandlingAllowed()Z

    move-result p0

    :goto_0
    return p0
.end method

.method private synthetic lambda$onBindViewHolder$0(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 109
    invoke-virtual {p0, p1}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iput-object p1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private synthetic lambda$onBindViewHolder$1()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Landroidx/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1}, Lcom/android/settingslib/applications/AppUtils;->getIcon(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 108
    new-instance v1, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda1;-><init>(Lcom/android/settings/applications/managedomainurls/DomainAppPreference;Landroid/graphics/drawable/Drawable;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    return-void
.end method

.method private setState()V
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 84
    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 86
    :cond_0
    sget v0, Lcom/android/settings/R$drawable;->empty_icon:I

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setIcon(I)V

    .line 88
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public getEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method public onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->mCacheIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/applications/managedomainurls/DomainAppPreference;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    .line 114
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settingslib/miuisettings/preference/Preference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V

    return-void
.end method

.method public reuse()V
    .locals 0

    .line 72
    invoke-direct {p0}, Lcom/android/settings/applications/managedomainurls/DomainAppPreference;->setState()V

    .line 73
    invoke-virtual {p0}, Landroidx/preference/Preference;->notifyChanged()V

    return-void
.end method
