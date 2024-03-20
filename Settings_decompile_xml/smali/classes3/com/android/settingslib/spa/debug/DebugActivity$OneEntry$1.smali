.class final Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity;->OneEntry(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $entry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

.field final synthetic $entryContent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settingslib/spa/debug/DebugActivity;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsEntry;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$entryContent:Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iput-object p3, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$entry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iput p4, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 196
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 25

    move-object/from16 v0, p0

    move-object/from16 v15, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v3, 0x2

    if-ne v2, v3, :cond_1

    .line 197
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_1

    .line 197
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v4, "com.android.settingslib.spa.debug.DebugActivity.OneEntry.<anonymous> (DebugActivity.kt:195)"

    const v5, 0x72560dee

    invoke-static {v5, v1, v2, v4}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1$1;

    iget-object v2, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget-object v4, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$entry:Lcom/android/settingslib/spa/framework/common/SettingsEntry;

    iget v5, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$$dirty:I

    invoke-direct {v1, v2, v4, v15, v5}, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsEntry;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x0

    invoke-static {v1, v2, v15, v2, v3}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    .line 204
    iget-object v0, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OneEntry$1;->$entryContent:Ljava/lang/String;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const-wide/16 v13, 0x0

    const/16 v16, 0x0

    move/from16 v15, v16

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v22, 0x6

    const/16 v23, 0x0

    const v24, 0x1fffe

    move-object/from16 v21, p1

    invoke-static/range {v0 .. v24}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
