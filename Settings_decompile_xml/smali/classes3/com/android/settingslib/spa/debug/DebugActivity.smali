.class public final Lcom/android/settingslib/spa/debug/DebugActivity;
.super Landroidx/activity/ComponentActivity;
.source "DebugActivity.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDebugActivity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DebugActivity.kt\ncom/android/settingslib/spa/debug/DebugActivity\n+ 2 Composables.kt\nandroidx/compose/runtime/ComposablesKt\n+ 3 Composer.kt\nandroidx/compose/runtime/ComposerKt\n+ 4 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n+ 5 CompositionLocal.kt\nandroidx/compose/runtime/CompositionLocal\n*L\n1#1,253:1\n25#2:254\n25#2:261\n25#2:268\n25#2:278\n25#2:285\n25#2:292\n25#2:302\n1114#3,6:255\n1114#3,6:262\n1114#3,3:269\n1117#3,3:275\n1114#3,6:279\n1114#3,6:286\n1114#3,3:293\n1117#3,3:299\n1114#3,6:303\n766#4:272\n857#4,2:273\n766#4:296\n857#4,2:297\n76#5:309\n76#5:310\n*S KotlinDebug\n*F\n+ 1 DebugActivity.kt\ncom/android/settingslib/spa/debug/DebugActivity\n*L\n111#1:254\n112#1:261\n114#1:268\n134#1:278\n150#1:285\n161#1:292\n195#1:302\n111#1:255,6\n112#1:262,6\n114#1:269,3\n114#1:275,3\n134#1:279,6\n150#1:286,6\n161#1:293,3\n161#1:299,3\n195#1:303,6\n114#1:272\n114#1:273,2\n161#1:296\n161#1:297,2\n222#1:309\n236#1:310\n*E\n"
.end annotation


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Landroidx/activity/ComponentActivity;-><init>()V

    return-void
.end method

.method private static final AllEntries$lambda$7(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 149
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method private static final AllPages$lambda$5(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 133
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method private static final AllSlices$lambda$9(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 158
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method private final EntryList(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntry;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    const v0, 0x25c9ab5f

    .line 209
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.EntryList (DebugActivity.kt:208)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 210
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    .line 211
    new-instance v2, Lcom/android/settingslib/spa/debug/DebugActivity$EntryList$1;

    invoke-direct {v2, v1, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$EntryList$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x2

    const/4 v3, 0x0

    invoke-static {v2, v3, p2, v3, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    goto :goto_0

    :cond_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$EntryList$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spa/debug/DebugActivity$EntryList$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/util/Collection;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_1
    return-void
.end method

.method private final MainContent(Landroidx/compose/runtime/Composer;I)V
    .locals 4

    const v0, 0x489eb3ad

    .line 84
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0xb

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 106
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 84
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spa.debug.DebugActivity.MainContent (DebugActivity.kt:83)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_4
    const/4 v0, 0x0

    new-array v0, v0, [Landroidx/navigation/Navigator;

    const/16 v2, 0x8

    .line 85
    invoke-static {v0, p1, v2}, Landroidx/navigation/compose/NavHostControllerKt;->rememberNavController([Landroidx/navigation/Navigator;Landroidx/compose/runtime/Composer;I)Landroidx/navigation/NavHostController;

    move-result-object v0

    .line 86
    invoke-static {v0, p1, v2}, Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperKt;->localNavController(Landroidx/navigation/NavHostController;Landroidx/compose/runtime/Composer;I)Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    filled-new-array {v2}, [Landroidx/compose/runtime/ProvidedValue;

    move-result-object v2

    new-instance v3, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;

    invoke-direct {v3, v0, p0, v1}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$1;-><init>(Landroidx/navigation/NavHostController;Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v0, 0xc9886d

    const/4 v1, 0x1

    invoke-static {p1, v0, v1, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x38

    invoke-static {v2, v0, p1, v1}, Landroidx/compose/runtime/CompositionLocalKt;->CompositionLocalProvider([Landroidx/compose/runtime/ProvidedValue;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 106
    :cond_5
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$MainContent$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_4
    return-void
.end method

.method private static final OneEntry$lambda$13(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 192
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method private static final OnePage$lambda$12(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 171
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method private static final RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/Lazy<",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;",
            ">;)",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;"
        }
    .end annotation

    .line 110
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    return-object p0
.end method

.method public static final synthetic access$AllEntries$lambda$7(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->AllEntries$lambda$7(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$AllPages$lambda$5(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->AllPages$lambda$5(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$AllSlices$lambda$9(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->AllSlices$lambda$9(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$EntryList(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/spa/debug/DebugActivity;->EntryList(Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$MainContent(Lcom/android/settingslib/spa/debug/DebugActivity;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/spa/debug/DebugActivity;->MainContent(Landroidx/compose/runtime/Composer;I)V

    return-void
.end method

.method public static final synthetic access$OneEntry$lambda$13(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->OneEntry$lambda$13(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;
    .locals 0

    .line 68
    invoke-static {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$getSpaEnvironment(Lcom/android/settingslib/spa/debug/DebugActivity;)Lcom/android/settingslib/spa/framework/common/SpaEnvironment;
    .locals 0

    .line 68
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openEntry(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/spa/debug/DebugActivity;->openEntry(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic access$openPage(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 0

    .line 68
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/spa/debug/DebugActivity;->openPage(Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;

    move-result-object p0

    return-object p0
.end method

.method private final getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;
    .locals 0

    .line 69
    sget-object p0, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->INSTANCE:Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;

    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironmentFactory;->getInstance()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object p0

    return-object p0
.end method

.method private final openEntry(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/framework/common/SettingsEntry;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const v0, -0x6cf8cd5a

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.openEntry (DebugActivity.kt:234)"

    .line 235
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 236
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    .line 76
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    .line 236
    check-cast p3, Landroid/content/Context;

    const-string/jumbo v0, "search"

    .line 237
    invoke-static {p1, v0}, Lcom/android/settingslib/spa/framework/util/SpaIntentKt;->createIntent(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 p0, 0x0

    return-object p0

    .line 239
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->containerPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->buildRoute()Ljava/lang/String;

    move-result-object p1

    .line 240
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/android/settingslib/spa/debug/DebugActivity$openEntry$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method

.method private final openPage(Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)Lkotlin/jvm/functions/Function0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spa/framework/common/SettingsPage;",
            "Landroidx/compose/runtime/Composer;",
            "I)",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    const v0, -0x5020ba28

    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.openPage (DebugActivity.kt:220)"

    .line 221
    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 222
    :cond_0
    invoke-static {}, Landroidx/compose/ui/platform/AndroidCompositionLocals_androidKt;->getLocalContext()Landroidx/compose/runtime/ProvidableCompositionLocal;

    move-result-object p3

    .line 76
    invoke-interface {p2, p3}, Landroidx/compose/runtime/Composer;->consume(Landroidx/compose/runtime/CompositionLocal;)Ljava/lang/Object;

    move-result-object p3

    .line 222
    check-cast p3, Landroid/content/Context;

    const-string v0, "browse"

    .line 224
    invoke-static {p1, v0}, Lcom/android/settingslib/spa/framework/util/SpaIntentKt;->createIntent(Lcom/android/settingslib/spa/framework/common/SettingsPage;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    const/4 p0, 0x0

    return-object p0

    .line 225
    :cond_2
    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->buildRoute()Ljava/lang/String;

    move-result-object p1

    .line 226
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$openPage$1;

    invoke-direct {v1, p0, p1, p3, v0}, Lcom/android/settingslib/spa/debug/DebugActivity$openPage$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/lang/String;Landroid/content/Context;Landroid/content/Intent;)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    return-object v1
.end method


# virtual methods
.method public final AllEntries(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, -0x42212c8

    .line 148
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v3, v1, 0xb

    if-ne v3, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_2

    .line 154
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 148
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spa.debug.DebugActivity.AllEntries (DebugActivity.kt:147)"

    invoke-static {v0, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 149
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    const v2, -0x1d58f75c

    .line 150
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1115
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_5

    .line 150
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$AllEntries$lambda$7(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllEntries()Ljava/util/Collection;

    move-result-object v2

    .line 1117
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 150
    check-cast v2, Ljava/util/Collection;

    .line 151
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All Entries ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settingslib/spa/debug/DebugActivity$AllEntries$1;

    invoke-direct {v4, p0, v2, v1}, Lcom/android/settingslib/spa/debug/DebugActivity$AllEntries$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/util/Collection;I)V

    const v1, -0x7a23296d

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 154
    :cond_6
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$AllEntries$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$AllEntries$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_4
    return-void
.end method

.method public final AllPages(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, -0x2543a754

    .line 132
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v1, v1, 0xb

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 145
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_3

    .line 132
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.AllPages (DebugActivity.kt:131)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 133
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    const v1, -0x1d58f75c

    .line 134
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    sget-object v2, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v2}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_5

    .line 134
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$AllPages$lambda$5(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllPageWithEntry()Ljava/util/Collection;

    move-result-object v1

    .line 1117
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 134
    check-cast v1, Ljava/util/Collection;

    .line 135
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "All Pages ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-instance v3, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1;

    invoke-direct {v3, v1}, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$1;-><init>(Ljava/util/Collection;)V

    const v1, 0x1a8bdcc7

    const/4 v4, 0x1

    invoke-static {p1, v1, v4, v3}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v3

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v1, v0

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 145
    :cond_6
    :goto_3
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_7

    goto :goto_4

    :cond_7
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$AllPages$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_4
    return-void
.end method

.method public final AllSlices(Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x5dce444f

    .line 157
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v1, v1, 0xb

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 167
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 157
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.AllSlices (DebugActivity.kt:156)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 158
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    .line 159
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getSliceProviderAuthorities()Ljava/lang/String;

    move-result-object v1

    const v2, -0x1d58f75c

    .line 161
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1115
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_7

    .line 161
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$AllSlices$lambda$9(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllEntries()Ljava/util/Collection;

    move-result-object v0

    .line 766
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_5
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v4, v3

    check-cast v4, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    .line 161
    invoke-virtual {v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getHasSliceSupport()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 857
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1117
    :cond_6
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_7
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 161
    check-cast v2, Ljava/util/List;

    .line 162
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "All Slices ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ")"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settingslib/spa/debug/DebugActivity$AllSlices$1;

    invoke-direct {v4, v2, v1}, Lcom/android/settingslib/spa/debug/DebugActivity$AllSlices$1;-><init>(Ljava/util/List;Ljava/lang/String;)V

    const v1, 0x17ef4394

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, p1

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 167
    :cond_8
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_9

    goto :goto_5

    :cond_9
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$AllSlices$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$AllSlices$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method public final OneEntry(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x3ef14a13

    .line 191
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.OneEntry (DebugActivity.kt:190)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 192
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    .line 193
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "eid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 194
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->OneEntry$lambda$13(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v2

    const-string v3, "id"

    invoke-static {v1, v3}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getEntry(Ljava/lang/String;)Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const v2, -0x1d58f75c

    .line 195
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1115
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v2, v3, :cond_1

    .line 195
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$OneEntry$lambda$13(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugContent(Lcom/android/settingslib/spa/framework/common/SettingsEntry;Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;)Ljava/lang/String;

    move-result-object v2

    .line 1117
    invoke-interface {p2, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 195
    check-cast v2, Ljava/lang/String;

    .line 196
    invoke-static {v1}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsEntry;)Ljava/lang/String;

    move-result-object v0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Entry - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;

    invoke-direct {v4, v2, p0, v1, p3}, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;-><init>(Ljava/lang/String;Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsEntry;I)V

    const v1, 0x72560dee

    const/4 v2, 0x1

    invoke-static {p2, v1, v2, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v4

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v1, v0

    move-object v2, v3

    move-object v3, v4

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_2
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Landroid/os/Bundle;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public final OnePage(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 7

    const v0, 0x746805e0

    .line 170
    invoke-interface {p2, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p2

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.OnePage (DebugActivity.kt:169)"

    invoke-static {v0, p3, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 171
    :cond_0
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    .line 172
    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const-string v1, "pid"

    const-string v2, ""

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 173
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->OnePage$lambda$12(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    const-string v2, "id"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getPageWithEntry(Ljava/lang/String;)Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 174
    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->getPage()Lcom/android/settingslib/spa/framework/common/SettingsPage;

    move-result-object v1

    .line 175
    invoke-static {v1}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugBrief(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Page - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;

    invoke-direct {v4, v1, v0, p0, p3}, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;-><init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    const v0, 0x2bbddaa5

    const/4 v1, 0x1

    invoke-static {p2, v0, v1, v4}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v5, 0x180

    const/4 v6, 0x2

    move-object v1, v2

    move-object v2, v3

    move-object v3, v0

    move-object v4, p2

    invoke-static/range {v1 .. v6}, Lcom/android/settingslib/spa/widget/scaffold/RegularScaffoldKt;->RegularScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    invoke-interface {p2}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p2

    if-nez p2, :cond_2

    goto :goto_0

    :cond_2
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$2;

    invoke-direct {v0, p0, p1, p3}, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Landroid/os/Bundle;I)V

    invoke-interface {p2, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_0
    return-void
.end method

.method public final RootPage(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    const v0, -0x40e929e6

    .line 109
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0xe

    const/4 v2, 0x2

    if-nez v1, :cond_1

    invoke-interface {p1, p0}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    or-int/2addr v1, p2

    goto :goto_1

    :cond_1
    move v1, p2

    :goto_1
    and-int/lit8 v1, v1, 0xb

    if-ne v1, v2, :cond_3

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_2

    .line 129
    :cond_2
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_4

    .line 109
    :cond_3
    :goto_2
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 v1, -0x1

    const-string v2, "com.android.settingslib.spa.debug.DebugActivity.RootPage (DebugActivity.kt:108)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 110
    :cond_4
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getEntryRepository()Lkotlin/Lazy;

    move-result-object v0

    const v1, -0x1d58f75c

    .line 111
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v2

    .line 1115
    sget-object v3, Landroidx/compose/runtime/Composer;->Companion:Landroidx/compose/runtime/Composer$Companion;

    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v4

    if-ne v2, v4, :cond_5

    .line 111
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllPageWithEntry()Ljava/util/Collection;

    move-result-object v2

    .line 1117
    invoke-interface {p1, v2}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_5
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 111
    check-cast v2, Ljava/util/Collection;

    .line 112
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v4

    .line 1115
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v5

    if-ne v4, v5, :cond_6

    .line 112
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllEntries()Ljava/util/Collection;

    move-result-object v4

    .line 1117
    invoke-interface {p1, v4}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_6
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 112
    check-cast v4, Ljava/util/Collection;

    .line 114
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->startReplaceableGroup(I)V

    .line 1114
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->rememberedValue()Ljava/lang/Object;

    move-result-object v1

    .line 1115
    invoke-virtual {v3}, Landroidx/compose/runtime/Composer$Companion;->getEmpty()Ljava/lang/Object;

    move-result-object v3

    if-ne v1, v3, :cond_9

    .line 114
    invoke-static {v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$RootPage$lambda$0(Lkotlin/Lazy;)Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/spa/framework/common/SettingsEntryRepository;->getAllEntries()Ljava/util/Collection;

    move-result-object v0

    .line 766
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 857
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    move-object v5, v3

    check-cast v5, Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    .line 114
    invoke-virtual {v5}, Lcom/android/settingslib/spa/framework/common/SettingsEntry;->getHasSliceSupport()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 857
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1117
    :cond_8
    invoke-interface {p1, v1}, Landroidx/compose/runtime/Composer;->updateRememberedValue(Ljava/lang/Object;)V

    .line 25
    :cond_9
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endReplaceableGroup()V

    .line 114
    check-cast v1, Ljava/util/List;

    .line 115
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1;

    invoke-direct {v0, v2, v4, v1}, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$1;-><init>(Ljava/util/Collection;Ljava/util/Collection;Ljava/util/List;)V

    const v1, -0x64fb3a09

    const/4 v2, 0x1

    invoke-static {p1, v1, v2, v0}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    const/16 v1, 0x36

    const-string v2, "Settings Debug"

    invoke-static {v2, v0, p1, v1}, Lcom/android/settingslib/spa/widget/scaffold/HomeScaffoldKt;->HomeScaffold(Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 129
    :cond_a
    :goto_4
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_b

    goto :goto_5

    :cond_b
    new-instance v0, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$RootPage$2;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_5
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 72
    sget v0, Lcom/android/settingslib/spa/R$style;->Theme_SpaLib:I

    invoke-virtual {p0, v0}, Landroid/app/Activity;->setTheme(I)V

    .line 73
    invoke-super {p0, p1}, Landroidx/activity/ComponentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 74
    invoke-direct {p0}, Lcom/android/settingslib/spa/debug/DebugActivity;->getSpaEnvironment()Lcom/android/settingslib/spa/framework/common/SpaEnvironment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/spa/framework/common/SpaEnvironment;->getLogger()Lcom/android/settingslib/spa/framework/common/SpaLogger;

    move-result-object p1

    const-string v0, "onCreate"

    sget-object v1, Lcom/android/settingslib/spa/framework/common/LogCategory;->FRAMEWORK:Lcom/android/settingslib/spa/framework/common/LogCategory;

    const-string v2, "DebugActivity"

    invoke-interface {p1, v2, v0, v1}, Lcom/android/settingslib/spa/framework/common/SpaLogger;->message(Ljava/lang/String;Ljava/lang/String;Lcom/android/settingslib/spa/framework/common/LogCategory;)V

    .line 76
    new-instance p1, Lcom/android/settingslib/spa/debug/DebugActivity$onCreate$1;

    invoke-direct {p1, p0}, Lcom/android/settingslib/spa/debug/DebugActivity$onCreate$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;)V

    const v0, 0x5198d0fd

    const/4 v1, 0x1

    invoke-static {v0, v1, p1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object p1

    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v1, v0}, Landroidx/activity/compose/ComponentActivityKt;->setContent$default(Landroidx/activity/ComponentActivity;Landroidx/compose/runtime/CompositionContext;Lkotlin/jvm/functions/Function2;ILjava/lang/Object;)V

    return-void
.end method
