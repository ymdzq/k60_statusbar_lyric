.class final Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TwoTargetSwitchPreference.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1;->invoke(Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 35
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 6

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 36
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 40
    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 36
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.preference.TwoTargetSwitchPreference.<anonymous>.<anonymous> (TwoTargetSwitchPreference.kt:34)"

    const v2, -0x147ca2f3

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    .line 37
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChecked()Landroidx/compose/runtime/State;

    move-result-object v0

    .line 38
    iget-object p2, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p2}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getChangeable()Landroidx/compose/runtime/State;

    move-result-object v1

    .line 39
    iget-object p0, p0, Lcom/android/settingslib/spa/widget/preference/TwoTargetSwitchPreferenceKt$TwoTargetSwitchPreference$1$1;->$model:Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;

    invoke-interface {p0}, Lcom/android/settingslib/spa/widget/preference/SwitchPreferenceModel;->getOnCheckedChange()Lkotlin/jvm/functions/Function1;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v3, p1

    .line 36
    invoke-static/range {v0 .. v5}, Lcom/android/settingslib/spa/widget/ui/SwitchKt;->SettingsSwitch(Landroidx/compose/runtime/State;Landroidx/compose/runtime/State;Lkotlin/jvm/functions/Function1;Landroidx/compose/runtime/Composer;II)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
