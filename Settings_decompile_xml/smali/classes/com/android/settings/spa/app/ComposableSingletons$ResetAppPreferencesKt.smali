.class public final Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;
.super Ljava/lang/Object;
.source "ResetAppPreferences.kt"


# static fields
.field public static final INSTANCE:Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;

.field public static lambda-1:Lkotlin/jvm/functions/Function2;
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


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;

    invoke-direct {v0}, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;-><init>()V

    sput-object v0, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;->INSTANCE:Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;

    const/4 v0, 0x0

    .line 58
    sget-object v1, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt$lambda-1$1;->INSTANCE:Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt$lambda-1$1;

    const v2, 0x1024f142

    invoke-static {v2, v0, v1}, Landroidx/compose/runtime/internal/ComposableLambdaKt;->composableLambdaInstance(IZLjava/lang/Object;)Landroidx/compose/runtime/internal/ComposableLambda;

    move-result-object v0

    sput-object v0, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getLambda-1$packages__apps__MiuiSettingsAosp__android_common__Settings_core()Lkotlin/jvm/functions/Function2;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function2<",
            "Landroidx/compose/runtime/Composer;",
            "Ljava/lang/Integer;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 0
    sget-object p0, Lcom/android/settings/spa/app/ComposableSingletons$ResetAppPreferencesKt;->lambda-1:Lkotlin/jvm/functions/Function2;

    return-object p0
.end method
