.class final Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppListPage.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function4;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt;->AppListPage(Ljava/lang/String;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;ZZZZLjava/lang/String;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function4<",
        "Landroidx/compose/ui/unit/Dp;",
        "Landroidx/compose/runtime/State<",
        "+",
        "Ljava/lang/String;",
        ">;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $appList:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/android/settingslib/spaprivileged/template/app/AppListInput<",
            "TT;>;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $header:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $matchAnyUserForAdmin:Z

.field final synthetic $noItemMessage:Ljava/lang/String;

.field final synthetic $primaryUserOnly:Z

.field final synthetic $showInstantApps:Z

.field final synthetic $showSystem:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(ZIZZLandroidx/compose/runtime/MutableState;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;Lkotlin/jvm/functions/Function3;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZZ",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Boolean;",
            ">;",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;",
            "Lkotlin/jvm/functions/Function2<",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;",
            "Ljava/lang/String;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/android/settingslib/spaprivileged/template/app/AppListInput<",
            "TT;>;-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput-boolean p1, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$primaryUserOnly:Z

    iput p2, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$$dirty:I

    iput-boolean p3, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showInstantApps:Z

    iput-boolean p4, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$matchAnyUserForAdmin:Z

    iput-object p5, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showSystem:Landroidx/compose/runtime/MutableState;

    iput-object p6, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p7, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$header:Lkotlin/jvm/functions/Function2;

    iput-object p8, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$noItemMessage:Ljava/lang/String;

    iput-object p9, p0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$appList:Lkotlin/jvm/functions/Function3;

    const/4 p1, 0x4

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 62
    check-cast p1, Landroidx/compose/ui/unit/Dp;

    invoke-virtual {p1}, Landroidx/compose/ui/unit/Dp;->unbox-impl()F

    move-result p1

    check-cast p2, Landroidx/compose/runtime/State;

    check-cast p3, Landroidx/compose/runtime/Composer;

    check-cast p4, Ljava/lang/Number;

    invoke-virtual {p4}, Ljava/lang/Number;->intValue()I

    move-result p4

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->invoke-kHDZbjc(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-kHDZbjc(FLandroidx/compose/runtime/State;Landroidx/compose/runtime/Composer;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(F",
            "Landroidx/compose/runtime/State<",
            "Ljava/lang/String;",
            ">;",
            "Landroidx/compose/runtime/Composer;",
            "I)V"
        }
    .end annotation

    move-object v0, p0

    move-object/from16 v5, p2

    move-object/from16 v12, p3

    move/from16 v1, p4

    const-string/jumbo v2, "searchQuery"

    invoke-static {v5, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    and-int/lit8 v2, v1, 0xe

    move/from16 v9, p1

    if-nez v2, :cond_1

    invoke-interface {v12, v9}, Landroidx/compose/runtime/Composer;->changed(F)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x4

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    or-int/2addr v2, v1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    and-int/lit8 v3, v1, 0x70

    if-nez v3, :cond_3

    invoke-interface {v12, v5}, Landroidx/compose/runtime/Composer;->changed(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    const/16 v3, 0x20

    goto :goto_2

    :cond_2
    const/16 v3, 0x10

    :goto_2
    or-int/2addr v2, v3

    :cond_3
    and-int/lit16 v2, v2, 0x2db

    const/16 v3, 0x92

    if-ne v2, v3, :cond_5

    .line 63
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_4

    goto :goto_3

    .line 80
    :cond_4
    invoke-interface/range {p3 .. p3}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_4

    .line 63
    :cond_5
    :goto_3
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_6

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spaprivileged.template.app.AppListPage.<anonymous> (AppListPage.kt:61)"

    const v4, 0x5585b984

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_6
    iget-boolean v13, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$primaryUserOnly:Z

    new-instance v14, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;

    iget-boolean v2, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showInstantApps:Z

    iget-boolean v3, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$matchAnyUserForAdmin:Z

    iget-object v4, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$showSystem:Landroidx/compose/runtime/MutableState;

    iget-object v6, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$listModel:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v7, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$header:Lkotlin/jvm/functions/Function2;

    iget-object v8, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$noItemMessage:Ljava/lang/String;

    iget-object v10, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$appList:Lkotlin/jvm/functions/Function3;

    iget v11, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$$dirty:I

    move-object v1, v14

    move-object/from16 v5, p2

    move/from16 v9, p1

    invoke-direct/range {v1 .. v11}, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2$1;-><init>(ZZLandroidx/compose/runtime/MutableState;Landroidx/compose/runtime/State;Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lkotlin/jvm/functions/Function2;Ljava/lang/String;FLkotlin/jvm/functions/Function3;I)V

    const v1, 0x730cb10f

    const/4 v2, 0x1

    invoke-static {v12, v1, v2, v14}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambda(Landroidx/compose/runtime/Composer;IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v1

    iget v0, v0, Lcom/android/settingslib/spaprivileged/template/app/AppListPageKt$AppListPage$2;->$$dirty:I

    shr-int/lit8 v0, v0, 0xf

    and-int/lit8 v0, v0, 0xe

    or-int/lit8 v0, v0, 0x30

    const/4 v2, 0x0

    invoke-static {v13, v1, v12, v0, v2}, Lcom/android/settingslib/spaprivileged/template/common/UserProfilePagerKt;->UserProfilePager(ZLkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_7
    :goto_4
    return-void
.end method
