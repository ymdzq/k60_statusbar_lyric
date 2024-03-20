.class public final Lcom/android/settings/datausage/DataSaverSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataSaverSummary.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverSummary$Companion;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDataSaverSummary.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DataSaverSummary.kt\ncom/android/settings/datausage/DataSaverSummary\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,176:1\n1774#2,4:177\n*S KotlinDebug\n*F\n+ 1 DataSaverSummary.kt\ncom/android/settings/datausage/DataSaverSummary\n*L\n153#1:177,4\n*E\n"
.end annotation


# static fields
.field public static final $stable:I

.field public static final Companion:Lcom/android/settings/datausage/DataSaverSummary$Companion;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;


# instance fields
.field private final applicationsStateCallbacks:Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;

.field private dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private final dataSaverBackendListener:Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;

.field private dataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

.field private final dataUsageBridgeCallbacks:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

.field private session:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

.field private switching:Z

.field private unrestrictedAccess:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/DataSaverSummary$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/android/settings/datausage/DataSaverSummary;->Companion:Lcom/android/settings/datausage/DataSaverSummary$Companion;

    const/16 v0, 0x8

    sput v0, Lcom/android/settings/datausage/DataSaverSummary;->$stable:I

    .line 168
    sget v0, Lcom/android/settings/R$xml;->data_saver:I

    new-instance v1, Lcom/android/settings/datausage/DataSaverSummary$Companion$SEARCH_INDEX_DATA_PROVIDER$1;

    invoke-direct {v1, v0}, Lcom/android/settings/datausage/DataSaverSummary$Companion$SEARCH_INDEX_DATA_PROVIDER$1;-><init>(I)V

    sput-object v1, Lcom/android/settings/datausage/DataSaverSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 111
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackendListener:Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;

    .line 124
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$dataUsageBridgeCallbacks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$dataUsageBridgeCallbacks$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridgeCallbacks:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    .line 128
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->applicationsStateCallbacks:Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;

    return-void
.end method

.method public static final synthetic access$getApplicationsStateCallbacks$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->applicationsStateCallbacks:Lcom/android/settings/datausage/DataSaverSummary$applicationsStateCallbacks$1;

    return-object p0
.end method

.method public static final synthetic access$getDataSaverBackend$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/DataSaverBackend;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-object p0
.end method

.method public static final synthetic access$getDataUsageBridge$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/datausage/AppStateDataUsageBridge;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    return-object p0
.end method

.method public static final synthetic access$getDataUsageBridgeCallbacks$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/applications/AppStateBaseBridge$Callback;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridgeCallbacks:Lcom/android/settings/applications/AppStateBaseBridge$Callback;

    return-object p0
.end method

.method public static final synthetic access$getSwitchBar$p(Lcom/android/settings/datausage/DataSaverSummary;)Lcom/android/settings/widget/SettingsMainSwitchBar;
    .locals 0

    .line 38
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-object p0
.end method

.method public static final synthetic access$onSwitchChanged(Lcom/android/settings/datausage/DataSaverSummary;Z)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverSummary;->onSwitchChanged(Z)V

    return-void
.end method

.method public static final synthetic access$setDataUsageBridge$p(Lcom/android/settings/datausage/DataSaverSummary;Lcom/android/settings/datausage/AppStateDataUsageBridge;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    return-void
.end method

.method public static final synthetic access$setSession$p(Lcom/android/settings/datausage/DataSaverSummary;Lcom/android/settingslib/applications/ApplicationsState$Session;)V
    .locals 0

    .line 38
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->session:Lcom/android/settingslib/applications/ApplicationsState$Session;

    return-void
.end method

.method public static final synthetic access$setSwitching$p(Lcom/android/settings/datausage/DataSaverSummary;Z)V
    .locals 0

    .line 38
    iput-boolean p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z

    return-void
.end method

.method public static final synthetic access$updateUnrestrictedAccessSummary(Lcom/android/settings/datausage/DataSaverSummary;)V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverSummary;->updateUnrestrictedAccessSummary()V

    return-void
.end method

.method private final onSwitchChanged(Z)V
    .locals 1

    .line 99
    monitor-enter p0

    .line 100
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 101
    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->switching:Z

    .line 102
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-nez v0, :cond_0

    const-string v0, "dataSaverBackend"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->setDataSaverEnabled(Z)V

    .line 104
    :cond_1
    sget-object p1, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 99
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private final updateUnrestrictedAccessSummary()V
    .locals 6

    .line 151
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->isFinishingOrDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_7

    .line 152
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->session:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0

    :cond_1
    move-object v0, v1

    :goto_0
    if-nez v0, :cond_2

    return-void

    .line 1774
    :cond_2
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_3

    goto :goto_5

    .line 1776
    :cond_3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move v2, v3

    :cond_4
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 154
    sget-object v5, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-interface {v5, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppFilter;->filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 155
    iget-object v4, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    instance-of v5, v4, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v5, :cond_5

    check-cast v4, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    goto :goto_2

    :cond_5
    move-object v4, v1

    :goto_2
    const/4 v5, 0x1

    if-eqz v4, :cond_6

    iget-boolean v4, v4, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverAllowlisted:Z

    if-ne v4, v5, :cond_6

    move v4, v5

    goto :goto_3

    :cond_6
    move v4, v3

    :goto_3
    if-eqz v4, :cond_7

    goto :goto_4

    :cond_7
    move v5, v3

    :goto_4
    if-eqz v5, :cond_4

    add-int/lit8 v2, v2, 0x1

    if-gez v2, :cond_4

    .line 1776
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwCountOverflow()V

    goto :goto_1

    :cond_8
    move v3, v2

    .line 157
    :goto_5
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->unrestrictedAccess:Landroidx/preference/Preference;

    if-nez v0, :cond_9

    const-string/jumbo v0, "unrestrictedAccess"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_6

    :cond_9
    move-object v1, v0

    .line 158
    :goto_6
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const-string/jumbo v0, "resources"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    sget v0, Lcom/android/settings/R$string;->data_saver_unrestricted_summary:I

    const-string v2, "count"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2, v3}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    filled-new-array {v2}, [Lkotlin/Pair;

    move-result-object v2

    invoke-static {p0, v0, v2}, Lcom/android/settingslib/spa/framework/util/MessageFormatsKt;->formatString(Landroid/content/res/Resources;I[Lkotlin/Pair;)Ljava/lang/String;

    move-result-object p0

    .line 157
    invoke-virtual {v1, p0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_a
    :goto_7
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 0

    .line 109
    sget p0, Lcom/android/settings/R$string;->help_url_data_saver:I

    return p0
.end method

.method public getMetricsCategory()I
    .locals 0

    .line 0
    const/16 p0, 0x15c

    return p0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 63
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 64
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string/jumbo v0, "null cannot be cast to non-null type com.android.settings.SettingsActivity"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SettingsMainSwitchBar;

    move-result-object p1

    .line 65
    sget v0, Lcom/android/settings/R$string;->data_saver_switch_title:I

    invoke-virtual {p0, v0}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 66
    invoke-virtual {p1}, Lcom/android/settingslib/widget/MainSwitchBar;->show()V

    .line 67
    new-instance v0, Lcom/android/settings/datausage/DataSaverSummary$onActivityCreated$1$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverSummary$onActivityCreated$1$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;)V

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/MainSwitchBar;->addOnSwitchChangeListener(Lcom/android/settingslib/widget/OnMainSwitchChangeListener;)V

    const-string v0, "activity as SettingsActi\u2026)\n            }\n        }"

    .line 64
    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->switchBar:Lcom/android/settings/widget/SettingsMainSwitchBar;

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    sget-object p1, Lcom/android/settings/datausage/DataSaverSummary;->Companion:Lcom/android/settings/datausage/DataSaverSummary$Companion;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "requireContext()"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1, v0}, Lcom/android/settings/datausage/DataSaverSummary$Companion;->access$isDataSaverVisible(Lcom/android/settings/datausage/DataSaverSummary$Companion;Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment;->finishFragment()V

    return-void

    .line 57
    :cond_0
    sget p1, Lcom/android/settings/R$xml;->data_saver:I

    invoke-virtual {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->addPreferencesFromResource(I)V

    const-string/jumbo p1, "unrestricted_access"

    .line 58
    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->unrestrictedAccess:Landroidx/preference/Preference;

    .line 59
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    return-void
.end method

.method public onPause()V
    .locals 2

    .line 93
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 94
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-nez v0, :cond_0

    const-string v0, "dataSaverBackend"

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackendListener:Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 95
    iget-object p0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 9

    .line 74
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    const-string v1, "dataSaverBackend"

    const/4 v2, 0x0

    if-nez v0, :cond_0

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshAllowlist()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-nez v0, :cond_1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/datausage/DataSaverBackend;->refreshDenylist()V

    .line 77
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-nez v0, :cond_2

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v2

    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataSaverBackendListener:Lcom/android/settings/datausage/DataSaverSummary$dataSaverBackendListener$1;

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 78
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverSummary;->dataUsageBridge:Lcom/android/settings/datausage/AppStateDataUsageBridge;

    if-eqz v0, :cond_3

    const/4 p0, 0x1

    invoke-virtual {v0, p0}, Lcom/android/settings/applications/AppStateBaseBridge;->resume(Z)V

    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getViewLifecycleOwner()Landroidx/lifecycle/LifecycleOwner;

    move-result-object v0

    const-string/jumbo v1, "viewLifecycleOwner"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Landroidx/lifecycle/LifecycleOwnerKt;->getLifecycleScope(Landroidx/lifecycle/LifecycleOwner;)Landroidx/lifecycle/LifecycleCoroutineScope;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-instance v6, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;

    invoke-direct {v6, p0, v2}, Lcom/android/settings/datausage/DataSaverSummary$onResume$1;-><init>(Lcom/android/settings/datausage/DataSaverSummary;Lkotlin/coroutines/Continuation;)V

    const/4 v7, 0x3

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lkotlinx/coroutines/BuildersKt;->launch$default(Lkotlinx/coroutines/CoroutineScope;Lkotlin/coroutines/CoroutineContext;Lkotlinx/coroutines/CoroutineStart;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)Lkotlinx/coroutines/Job;

    :goto_0
    return-void
.end method
