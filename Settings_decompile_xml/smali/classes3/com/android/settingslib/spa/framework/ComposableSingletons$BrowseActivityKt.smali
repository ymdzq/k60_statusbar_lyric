.class public final Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;
.super Ljava/lang/Object;
.source "BrowseActivity.kt"


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function4;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->INSTANCE:Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;

    const/4 v0, 0x0

    .line 142
    sget-object v1, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt$lambda-1$1;->INSTANCE:Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt$lambda-1$1;

    const v2, -0x501b8f0c

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->lambda-1:Lkotlin/jvm/functions/Function4;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$packages__apps__MiuiSettingsLib__Spa__spa__android_common__MiuiSpaLib()Lkotlin/jvm/functions/Function4;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function4<",
            "Landroidx/compose/animation/AnimatedVisibilityScope;",
            "Landroidx/navigation/NavBackStackEntry;",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object p0, Lcom/android/settingslib/spa/framework/ComposableSingletons$BrowseActivityKt;->lambda-1:Lkotlin/jvm/functions/Function4;

    return-object p0
.end method
