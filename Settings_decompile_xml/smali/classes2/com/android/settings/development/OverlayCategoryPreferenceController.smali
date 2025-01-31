.class public Lcom/android/settings/development/OverlayCategoryPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "OverlayCategoryPreferenceController.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation
.end field

.field static final PACKAGE_DEVICE_DEFAULT:Ljava/lang/String; = "package_device_default"


# instance fields
.field private final mAvailable:Z

.field private final mCategory:Ljava/lang/String;

.field private final mOverlayManager:Landroid/content/om/IOverlayManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroidx/preference/ListPreference;


# direct methods
.method public static synthetic $r8$lambda$5tsPulLjnlt_JLmZBWFr9fX5T9E(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$K-aBikKXMTUXvCbsejG9IePxGfw(Landroid/content/om/OverlayInfo;)I
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$static$0(Landroid/content/om/OverlayInfo;)I

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$s3c82G6kGNRDuanR1R-yaP9xF-Q(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 0
    invoke-static {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOverlayManager(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/om/IOverlayManager;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreference(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroidx/preference/ListPreference;
    .locals 0

    .line 0
    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 57
    new-instance v0, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda2;-><init>()V

    .line 58
    invoke-static {v0}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    sput-object v0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/content/pm/PackageManager;Landroid/content/om/IOverlayManager;Ljava/lang/String;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object p3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    .line 71
    iput-object p2, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 72
    iput-object p4, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 73
    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iput-boolean p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mAvailable:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/development/OverlayCategoryPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private getOverlayInfos()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/om/OverlayInfo;",
            ">;"
        }
    .end annotation

    .line 183
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 185
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mOverlayManager:Landroid/content/om/IOverlayManager;

    const-string v2, "android"

    const/4 v3, 0x0

    .line 186
    invoke-interface {v1, v2, v3}, Landroid/content/om/IOverlayManager;->getOverlayInfosForTarget(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v1

    .line 187
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/om/OverlayInfo;

    .line 188
    iget-object v3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    iget-object v4, v2, Landroid/content/om/OverlayInfo;->category:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 189
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 195
    :cond_1
    sget-object p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->OVERLAY_INFO_COMPARATOR:Ljava/util/Comparator;

    invoke-interface {v0, p0}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    return-object v0

    :catch_0
    move-exception p0

    .line 193
    invoke-virtual {p0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object p0

    throw p0
.end method

.method private static synthetic lambda$setOverlay$1(Landroid/content/om/OverlayInfo;)Z
    .locals 0

    .line 109
    invoke-virtual {p0}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result p0

    return p0
.end method

.method private static synthetic lambda$setOverlay$2(Landroid/content/om/OverlayInfo;)Ljava/lang/String;
    .locals 0

    .line 110
    iget-object p0, p0, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    return-object p0
.end method

.method private static synthetic lambda$static$0(Landroid/content/om/OverlayInfo;)I
    .locals 0

    .line 58
    iget p0, p0, Landroid/content/om/OverlayInfo;->priority:I

    return p0
.end method

.method private setOverlay(Ljava/lang/String;)Z
    .locals 3

    .line 108
    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda0;-><init>()V

    .line 109
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/development/OverlayCategoryPreferenceController$$ExternalSyntheticLambda1;-><init>()V

    .line 110
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    .line 112
    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string/jumbo v1, "package_device_default"

    .line 114
    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 115
    :cond_0
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    return v2

    .line 120
    :cond_2
    new-instance v1, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController$1;-><init>(Lcom/android/settings/development/OverlayCategoryPreferenceController;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 145
    invoke-virtual {v1, p0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return v2
.end method


# virtual methods
.method public displayPreference(Landroidx/preference/PreferenceScreen;)V
    .locals 1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroidx/preference/PreferenceScreen;)V

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroidx/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Landroidx/preference/ListPreference;

    invoke-virtual {p0, p1}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setPreference(Landroidx/preference/ListPreference;)V

    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mCategory:Ljava/lang/String;

    return-object p0
.end method

.method public isAvailable()Z
    .locals 0

    .line 83
    iget-boolean p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mAvailable:Z

    return p0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 1

    .line 201
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    const-string/jumbo v0, "package_device_default"

    .line 204
    invoke-direct {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z

    .line 205
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->updateState(Landroidx/preference/Preference;)V

    return-void
.end method

.method public onPreferenceChange(Landroidx/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 104
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->setOverlay(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method setPreference(Landroidx/preference/ListPreference;)V
    .locals 0

    .line 99
    iput-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    return-void
.end method

.method public updateState(Landroidx/preference/Preference;)V
    .locals 9

    .line 152
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 153
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 156
    iget-object v1, p0, Lcom/android/settingslib/core/AbstractPreferenceController;->mContext:Landroid/content/Context;

    sget v2, Lcom/android/settings/R$string;->overlay_option_device_default:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "package_device_default"

    .line 159
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    invoke-direct {p0}, Lcom/android/settings/development/OverlayCategoryPreferenceController;->getOverlayInfos()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/om/OverlayInfo;

    .line 163
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    iget-object v6, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 166
    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v5

    .line 165
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 168
    :catch_0
    iget-object v5, v4, Landroid/content/om/OverlayInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    :goto_1
    invoke-virtual {v4}, Landroid/content/om/OverlayInfo;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 171
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 172
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move-object v8, v2

    move-object v2, v1

    move-object v1, v8

    goto :goto_0

    .line 176
    :cond_1
    iget-object v3, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    invoke-interface {v0, v4}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {v3, v0}, Landroidx/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {p1, v3}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroidx/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 178
    iget-object p1, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p1, v2}, Landroidx/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 179
    iget-object p0, p0, Lcom/android/settings/development/OverlayCategoryPreferenceController;->mPreference:Landroidx/preference/ListPreference;

    invoke-virtual {p0, v1}, Landroidx/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method
