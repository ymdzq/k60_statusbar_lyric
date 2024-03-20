.class final Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;
.super Lkotlin/jvm/internal/Lambda;
.source "DebugActivity.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/debug/DebugActivity;->OnePage(Landroid/os/Bundle;Landroidx/compose/runtime/Composer;I)V
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

.field final synthetic $page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

.field final synthetic $pageWithEntry:Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

.field final synthetic this$0:Lcom/android/settingslib/spa/debug/DebugActivity;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/framework/common/SettingsPage;Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;Lcom/android/settingslib/spa/debug/DebugActivity;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iput-object p2, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$pageWithEntry:Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    iput-object p3, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iput p4, p0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 175
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 26

    move-object/from16 v0, p0

    move-object/from16 v14, p1

    move/from16 v1, p2

    and-int/lit8 v2, v1, 0xb

    const/4 v15, 0x2

    if-ne v2, v15, :cond_1

    .line 176
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v2

    if-nez v2, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    invoke-interface/range {p1 .. p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto/16 :goto_1

    .line 176
    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v2

    if-eqz v2, :cond_2

    const/4 v2, -0x1

    const-string v3, "com.android.settingslib.spa.debug.DebugActivity.OnePage.<anonymous> (DebugActivity.kt:174)"

    const v4, 0x2bbddaa5

    invoke-static {v4, v1, v2, v3}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object v1, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->getId()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v14, v16

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const v25, 0x1fffe

    move-object/from16 v22, p1

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 177
    iget-object v1, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-static {v1}, Lcom/android/settingslib/spa/debug/DebugFormatKt;->debugArguments(Lcom/android/settingslib/spa/framework/common/SettingsPage;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v14, 0x0

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 178
    iget-object v1, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPage;->isEnabled()Z

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enabled = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 179
    iget-object v1, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$pageWithEntry:Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    invoke-virtual {v1}, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Entry size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    invoke-static/range {v1 .. v25}, Landroidx/compose/material3/TextKt;->Text--4IGK_g(Ljava/lang/String;Landroidx/compose/ui/Modifier;JJLandroidx/compose/ui/text/font/FontStyle;Landroidx/compose/ui/text/font/FontWeight;Landroidx/compose/ui/text/font/FontFamily;JLandroidx/compose/ui/text/style/TextDecoration;Landroidx/compose/ui/text/style/TextAlign;JIZIILkotlin/jvm/functions/Function1;Landroidx/compose/ui/text/TextStyle;Landroidx/compose/runtime/Composer;III)V

    .line 180
    new-instance v1, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;

    iget-object v2, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget-object v3, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$page:Lcom/android/settingslib/spa/framework/common/SettingsPage;

    iget v4, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$$dirty:I

    move-object/from16 v5, p1

    invoke-direct {v1, v2, v3, v5, v4}, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1$1;-><init>(Lcom/android/settingslib/spa/debug/DebugActivity;Lcom/android/settingslib/spa/framework/common/SettingsPage;Landroidx/compose/runtime/Composer;I)V

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-static {v1, v2, v5, v2, v3}, Lcom/android/settingslib/spa/widget/preference/PreferenceKt;->Preference(Lcom/android/settingslib/spa/widget/preference/PreferenceModel;ZLandroidx/compose/runtime/Composer;II)V

    .line 186
    iget-object v1, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->this$0:Lcom/android/settingslib/spa/debug/DebugActivity;

    iget-object v2, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$pageWithEntry:Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;

    invoke-virtual {v2}, Lcom/android/settingslib/spa/framework/common/SettingsPageWithEntry;->getEntries()Ljava/util/List;

    move-result-object v2

    iget v0, v0, Lcom/android/settingslib/spa/debug/DebugActivity$OnePage$1;->$$dirty:I

    and-int/lit8 v0, v0, 0x70

    or-int/lit8 v0, v0, 0x8

    invoke-static {v1, v2, v5, v0}, Lcom/android/settingslib/spa/debug/DebugActivity;->access$EntryList(Lcom/android/settingslib/spa/debug/DebugActivity;Ljava/util/Collection;Landroidx/compose/runtime/Composer;I)V

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_3
    :goto_1
    return-void
.end method
