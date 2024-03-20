.class public Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;
.super Ljava/lang/Object;
.source "PreferenceDelegate.java"


# static fields
.field private static PreferenceAdapter_mPreferenceList:Ljava/lang/reflect/Field; = null

.field private static Preference_mIconResId:Ljava/lang/reflect/Field; = null

.field private static TAG:Ljava/lang/String; = "Miui_Preference"


# instance fields
.field private mAdapter:Landroidx/preference/PreferenceGroupAdapter;

.field private mApiDiff:Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

.field private mItemIndex:I

.field private mPreference:Landroidx/preference/Preference;

.field private mShowIcon:Z

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;)V
    .locals 1

    const/4 v0, 0x0

    .line 35
    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;-><init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;Z)V

    return-void
.end method

.method public constructor <init>(Landroidx/preference/Preference;Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;Z)V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 23
    iput-boolean v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mVisible:Z

    .line 39
    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    .line 40
    iput-object p2, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mApiDiff:Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

    .line 41
    iput-boolean p3, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mShowIcon:Z

    .line 43
    instance-of p2, p1, Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;

    if-eqz p2, :cond_0

    check-cast p1, Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;

    invoke-interface {p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceFeature;->hasIcon()Z

    move-result p1

    if-nez p1, :cond_1

    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mShowIcon:Z

    if-nez p1, :cond_1

    .line 45
    invoke-direct {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->hideIcon()V

    :cond_1
    return-void
.end method

.method private static getAdapterPreferenceList(Landroidx/preference/PreferenceGroupAdapter;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/preference/PreferenceGroupAdapter;",
            ")",
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 141
    sget-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->PreferenceAdapter_mPreferenceList:Ljava/lang/reflect/Field;

    const-string v1, ""

    if-nez v0, :cond_0

    .line 143
    :try_start_0
    const-class v0, Landroidx/preference/PreferenceGroupAdapter;

    const-string v2, "mVisiblePreferences"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->PreferenceAdapter_mPreferenceList:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 144
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 146
    sget-object v2, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->TAG:Ljava/lang/String;

    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :cond_0
    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->PreferenceAdapter_mPreferenceList:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 151
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 152
    check-cast p0, Ljava/util/List;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    return-object p0

    :catch_1
    move-exception p0

    .line 155
    sget-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->TAG:Ljava/lang/String;

    invoke-static {v0, v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private hideIcon()V
    .locals 3

    .line 57
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->isIconSpaceReserved()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setIconSpaceReserved(Z)V

    .line 60
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    invoke-virtual {v0}, Landroidx/preference/Preference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_1

    return-void

    .line 63
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroidx/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 65
    sget-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->Preference_mIconResId:Ljava/lang/reflect/Field;

    if-nez v0, :cond_2

    .line 67
    :try_start_0
    const-class v0, Landroidx/preference/Preference;

    const-string v2, "mIconResId"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->Preference_mIconResId:Ljava/lang/reflect/Field;

    const/4 v2, 0x1

    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 70
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0

    .line 74
    :cond_2
    :goto_0
    :try_start_1
    sget-object v0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->Preference_mIconResId:Ljava/lang/reflect/Field;

    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    return-void

    :catch_1
    move-exception p0

    .line 76
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method protected onAttachedToHierarchy(Landroidx/preference/PreferenceManager;)V
    .locals 0

    .line 103
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mApiDiff:Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

    invoke-interface {p0}, Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;->onAttached()V

    return-void
.end method

.method public onBindViewEnd(Landroid/view/View;)V
    .locals 0

    .line 81
    iget-object p0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mApiDiff:Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;

    invoke-interface {p0, p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceApiDiff;->onBindView(Landroid/view/View;)V

    return-void
.end method

.method public onBindViewStart(Landroid/view/View;)V
    .locals 0

    .line 0
    return-void
.end method

.method public onFragmentBindPreference(Landroid/widget/ListView;)V
    .locals 3

    if-eqz p1, :cond_2

    .line 86
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    .line 87
    instance-of v0, p1, Landroid/widget/WrapperListAdapter;

    if-eqz v0, :cond_0

    .line 88
    check-cast p1, Landroid/widget/WrapperListAdapter;

    invoke-interface {p1}, Landroid/widget/WrapperListAdapter;->getWrappedAdapter()Landroid/widget/ListAdapter;

    move-result-object p1

    check-cast p1, Landroidx/preference/PreferenceGroupAdapter;

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mAdapter:Landroidx/preference/PreferenceGroupAdapter;

    goto :goto_0

    .line 90
    :cond_0
    check-cast p1, Landroidx/preference/PreferenceGroupAdapter;

    iput-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mAdapter:Landroidx/preference/PreferenceGroupAdapter;

    .line 92
    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mAdapter:Landroidx/preference/PreferenceGroupAdapter;

    invoke-static {p1}, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->getAdapterPreferenceList(Landroidx/preference/PreferenceGroupAdapter;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 93
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    const/4 v0, 0x0

    .line 94
    :goto_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 95
    iget-object v1, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mPreference:Landroidx/preference/Preference;

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 96
    iput v0, p0, Lcom/android/settingslib/miuisettings/preference/PreferenceDelegate;->mItemIndex:I

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    return-void
.end method
