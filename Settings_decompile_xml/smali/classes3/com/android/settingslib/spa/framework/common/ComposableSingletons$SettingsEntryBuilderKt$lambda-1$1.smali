.class final Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsEntryBuilder.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function3;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function3<",
        "Landroid/os/Bundle;",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;

    invoke-direct {v0}, Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;->INSTANCE:Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x3

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroid/os/Bundle;

    check-cast p2, Landroidx/compose/runtime/Composer;

    check-cast p3, Ljava/lang/Number;

    invoke-virtual {p3}, Ljava/lang/Number;->intValue()I

    move-result p3

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/spa/framework/common/ComposableSingletons$SettingsEntryBuilderKt$lambda-1$1;->invoke(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
    .locals 0

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, -0x1

    const-string p1, "com.android.settingslib.spa.framework.common.ComposableSingletons$SettingsEntryBuilderKt.lambda-1.<anonymous> (SettingsEntryBuilder.kt:41)"

    const p2, 0x6819f41b    # 2.9081E24f

    .line 42
    invoke-static {p2, p3, p0, p1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_1

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_1
    return-void
.end method
