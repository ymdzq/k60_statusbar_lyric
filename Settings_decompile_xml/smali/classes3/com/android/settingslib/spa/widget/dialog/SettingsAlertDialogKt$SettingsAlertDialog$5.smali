.class final Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsAlertDialog.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->SettingsAlertDialog(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Ljava/lang/String;Lkotlin/jvm/functions/Function2;Landroidx/compose/runtime/Composer;I)V
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

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSettingsAlertDialog.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SettingsAlertDialog.kt\ncom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,119:1\n1#2:120\n*E\n"
.end annotation


# instance fields
.field final synthetic $$dirty:I

.field final synthetic $confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

.field final synthetic $this_SettingsAlertDialog:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;


# direct methods
.method constructor <init>(Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;I)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$this_SettingsAlertDialog:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    iput p3, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$$dirty:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 94
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 3

    and-int/lit8 v0, p2, 0xb

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 94
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->getSkipping()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Landroidx/compose/runtime/Composer;->skipToGroupEnd()V

    goto :goto_2

    :cond_1
    :goto_0
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, -0x1

    const-string v1, "com.android.settingslib.spa.widget.dialog.SettingsAlertDialog.<anonymous> (SettingsAlertDialog.kt:93)"

    const v2, -0x14df1e7f

    invoke-static {v2, p2, v0, v1}, Landroidx/compose/runtime/ComposerKt;->traceEventStart(IIILjava/lang/String;)V

    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$confirmButton:Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;

    if-nez p2, :cond_3

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$this_SettingsAlertDialog:Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;

    iget p0, p0, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt$SettingsAlertDialog$5;->$$dirty:I

    and-int/lit8 p0, p0, 0xe

    invoke-static {v0, p2, p1, p0}, Lcom/android/settingslib/spa/widget/dialog/SettingsAlertDialogKt;->access$Button(Lcom/android/settingslib/spa/widget/dialog/AlertDialogPresenter;Lcom/android/settingslib/spa/widget/dialog/AlertDialogButton;Landroidx/compose/runtime/Composer;I)V

    :goto_1
    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->isTraceInProgress()Z

    move-result p0

    if-eqz p0, :cond_4

    invoke-static {}, Landroidx/compose/runtime/ComposerKt;->traceEventEnd()V

    :cond_4
    :goto_2
    return-void
.end method
