.class public final Lcom/android/settings/spa/system/AppLanguagesPageProvider;
.super Ljava/lang/Object;
.source "AppLanguages.kt"

# interfaces
.implements Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/system/AppLanguagesPageProvider;

.field private static final name:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesPageProvider;

    invoke-direct {v0}, Lcom/android/settings/spa/system/AppLanguagesPageProvider;-><init>()V

    sput-object v0, Lcom/android/settings/spa/system/AppLanguagesPageProvider;->INSTANCE:Lcom/android/settings/spa/system/AppLanguagesPageProvider;

    const-string v0, "AppLanguages"

    .line 37
    sput-object v0, Lcom/android/settings/spa/system/AppLanguagesPageProvider;->name:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final EntryItem(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    const v0, 0x7a15b311

    .line 54
    invoke-interface {p1, v0}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object p1

    and-int/lit8 v1, p2, 0x1

    if-nez v1, :cond_1

    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 54
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_2

    const/4 v1, -0x1

    const-string v2, "com.android.settings.spa.system.AppLanguagesPageProvider.EntryItem (AppLanguages.kt:53)"

    invoke-static {v0, p2, v1, v2}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 55
    :cond_2
    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesPageProvider$EntryItem$1;

    invoke-direct {v0, p1}, Lcom/android/settings/spa/system/AppLanguagesPageProvider$EntryItem$1;-><init>(Landroidx/compose/runtime/Composer;)V

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v2, p1, v2, v1}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 60
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v0, Lcom/android/settings/spa/system/AppLanguagesPageProvider$EntryItem$2;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/spa/system/AppLanguagesPageProvider$EntryItem$2;-><init>(Lcom/android/settings/spa/system/AppLanguagesPageProvider;I)V

    invoke-interface {p1, v0}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method

.method public Page(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 16

    move/from16 v0, p3

    const v1, -0x1ba45a0b

    move-object/from16 v2, p2

    .line 40
    invoke-interface {v2, v1}, Landroidx/compose/runtime/Composer;->startRestartGroup(I)Landroidx/compose/runtime/Composer;

    move-result-object v15

    and-int/lit8 v2, v0, 0x1

    if-nez v2, :cond_1

    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 51
    :cond_0
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 40
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.android.settings.spa.system.AppLanguagesPageProvider.Page (AppLanguages.kt:39)"

    invoke-static {v1, v0, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 42
    :cond_2
    sget v1, Lcom/android/settings/R$string;->app_locales_picker_menu_title:I

    const/4 v2, 0x0

    invoke-static {v1, v15, v2}, Landroidx/compose/ui/res/StringResources_androidKt;->stringResource(ILandroidx/compose/runtime/Composer;I)Ljava/lang/String;

    move-result-object v1

    .line 43
    sget-object v3, Lcom/android/settings/spa/system/AppLanguagesPageProvider$Page$1;->INSTANCE:Lcom/android/settings/spa/system/AppLanguagesPageProvider$Page$1;

    invoke-static {v3, v15, v2}, Lcom/android/settingslib/spa/framework/compose/RuntimeUtilsKt;->rememberContext(Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;I)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 44
    sget-object v2, Lcom/android/settings/spa/system/ComposableSingletons$AppLanguagesKt;->INSTANCE:Lcom/android/settings/spa/system/ComposableSingletons$AppLanguagesKt;

    invoke-virtual {v2}, Lcom/android/settings/spa/system/ComposableSingletons$AppLanguagesKt;->getLambda-1$packages__apps__MiuiSettingsAosp__android_common__Settings_core()Lkotlin/jvm/functions/Function2;

    move-result-object v10

    const/4 v11, 0x0

    const v13, 0x6000c40

    const/16 v14, 0x2f4

    move-object v2, v1

    move-object v12, v15

    .line 41
    invoke-static/range {v2 .. v14}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    .line 51
    :cond_3
    :goto_1
    invoke-interface {v15}, Landroidx/compose/runtime/Composer;->endRestartGroup()Landroidx/compose/runtime/ScopeUpdateScope;

    move-result-object v1

    if-nez v1, :cond_4

    goto :goto_2

    :cond_4
    new-instance v2, Lcom/android/settings/spa/system/AppLanguagesPageProvider$Page$2;

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct {v2, v3, v4, v0}, Lcom/android/settings/spa/system/AppLanguagesPageProvider$Page$2;-><init>(Lcom/android/settings/spa/system/AppLanguagesPageProvider;Landroid/os/Bundle;I)V

    invoke-interface {v1, v2}, Landroidx/compose/runtime/ScopeUpdateScope;->updateScope(Lkotlin/jvm/functions/Function2;)V

    :goto_2
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 0

    .line 37
    sget-object p0, Lcom/android/settings/spa/system/AppLanguagesPageProvider;->name:Ljava/lang/String;

    return-object p0
.end method
