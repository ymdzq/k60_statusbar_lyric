.class final Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;
.super Lkotlin/jvm/internal/Lambda;
.source "BrowseActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/framework/BrowseActivityKt;->NavContent(Lcom/android/settingslib/spa/framework/compose/NavControllerWrapperImpl;Ljava/util/Collection;Lkotlin/jvm/functions/Function3;Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function1<",
        "Landroidx/navigation/NavGraphBuilder;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $allProvider:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $content:Lkotlin/jvm/functions/Function3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function3<",
            "Lcom/android/settingslib/spa/framework/common/SettingsPage;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Collection;Lkotlin/jvm/functions/Function3;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;",
            ">;",
            "Lkotlin/jvm/functions/Function3<",
            "-",
            "Lcom/android/settingslib/spa/framework/common/SettingsPage;",
            "-",
            "Landroidx/compose/runtime/Composer;",
            "-",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;I)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$allProvider:Ljava/util/Collection;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$content:Lkotlin/jvm/functions/Function3;

    iput p3, p0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$$dirty:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 136
    check-cast p1, Landroidx/navigation/NavGraphBuilder;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->invoke(Landroidx/navigation/NavGraphBuilder;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/navigation/NavGraphBuilder;)V
    .locals 16

    move-object/from16 v0, p0

    const-string v1, "$this$AnimatedNavHost"

    move-object/from16 v13, p1

    invoke-static {v13, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v1, 0x12c

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    .line 140
    invoke-static {v1, v2, v3, v4, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v14

    .line 141
    invoke-static {v1, v2, v3, v4, v3}, Landroidx/compose/animation/core/AnimationSpecKt;->tween$default(IILandroidx/compose/animation/core/Easing;ILjava/lang/Object;)Landroidx/compose/animation/core/TweenSpec;

    move-result-object v1

    .line 142
    sget-object v2, Lcom/android/settingslib/spa/framework/common/NullPageProvider;->INSTANCE:Lcom/android/settingslib/spa/framework/common/NullPageProvider;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/NullPageProvider;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    sget-object v2, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->INSTANCE:Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->getLambda-1$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Lkotlin/jvm/functions/Function4;

    move-result-object v10

    const/16 v11, 0x7e

    const/4 v12, 0x0

    move-object/from16 v2, p1

    invoke-static/range {v2 .. v12}, Lcom/android/settingslib/spa/framework/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    .line 143
    iget-object v2, v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$allProvider:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_0
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;

    .line 145
    invoke-interface {v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settingslib/spa/framework/util/ParameterKt;->navRoute(Ljava/util/List;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 146
    invoke-interface {v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageProvider;->getParameter()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    .line 144
    new-instance v6, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$1;

    invoke-direct {v6, v14, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$1;-><init>(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/animation/core/TweenSpec;)V

    new-instance v7, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$2;

    invoke-direct {v7, v14, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$2;-><init>(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/animation/core/TweenSpec;)V

    new-instance v8, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$3;

    invoke-direct {v8, v14, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$3;-><init>(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/animation/core/TweenSpec;)V

    new-instance v9, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$4;

    invoke-direct {v9, v14, v1}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$4;-><init>(Landroidx/compose/animation/core/TweenSpec;Landroidx/compose/animation/core/TweenSpec;)V

    .line 167
    new-instance v10, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$5;

    iget-object v11, v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$content:Lkotlin/jvm/functions/Function3;

    iget v12, v0, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1;->$$dirty:I

    invoke-direct {v10, v11, v12, v2}, Lcom/android/settingslib/spa/framework/BrowseActivityKt$NavContent$1$5;-><init>(Lkotlin/jvm/functions/Function3;ILcom/android/settingslib/spa/framework/common/SettingsPageProvider;)V

    const v2, 0x37848256

    const/4 v11, 0x1

    invoke-static {v2, v11, v10}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v10

    const/4 v11, 0x4

    const/4 v12, 0x0

    move-object/from16 v2, p1

    .line 144
    invoke-static/range {v2 .. v12}, Lcom/android/settingslib/spa/framework/compose/NavGraphBuilderKt;->composable$default(Landroidx/navigation/NavGraphBuilder;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function4;ILjava/lang/Object;)V

    goto :goto_0

    :cond_0
    return-void
.end method
