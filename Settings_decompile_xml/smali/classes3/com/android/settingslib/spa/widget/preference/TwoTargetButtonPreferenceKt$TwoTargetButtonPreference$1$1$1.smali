.class final Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwoTargetButtonPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function2<",
        "Landroidx/compose/runtime/Composer;",
        "Ljava/lang/Integer;",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

.field final synthetic $buttonIconDescription:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$buttonIconDescription:Ljava/lang/String;

    iput p3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 42
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 11

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 43
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.preference.TwoTargetButtonPreference.<anonymous>.<anonymous>.<anonymous> (TwoTargetButtonPreference.kt:41)"

    const v2, -0x75aeeba9

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v3, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$buttonIcon:Landroidx/compose/ui/graphics/vector/ImageVector;

    iget-object v4, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$buttonIconDescription:Ljava/lang/String;

    const/4 v5, 0x0

    const-wide/16 v6, 0x0

    iget p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetButtonPreferenceKt$TwoTargetButtonPreference$1$1$1;->$$dirty:I

    shr-int/lit8 p2, p0, 0xc

    and-int/lit8 p2, p2, 0xe

    shr-int/lit8 p0, p0, 0xc

    and-int/lit8 p0, p0, 0x70

    or-int v9, p2, p0

    const/16 v10, 0xc

    move-object v8, p1

    invoke-static/range {v3 .. v10}, Landroidx/compose/material3/IconKt;->Icon-ww6aTOc(Landroidx/compose/ui/graphics/vector/ImageVector;Ljava/lang/String;Landroidx/compose/ui/Modifier;JLandroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
