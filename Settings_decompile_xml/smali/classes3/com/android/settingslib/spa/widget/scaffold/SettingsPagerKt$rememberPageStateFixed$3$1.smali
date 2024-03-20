.class final Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;
.super Lkotlin/jvm/internal/Lambda;
.source "SettingsPager.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->rememberPageStateFixed(Landroidx/compose/runtime/Composer;I)Landroidx/compose/foundation/pager/PagerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/functions/Function0<",
        "Lkotlin/Unit;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic $currentPage$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic $pagerState:Landroidx/compose/foundation/pager/PagerState;

.field final synthetic $screenWidthDp:I


# direct methods
.method constructor <init>(ILandroidx/compose/foundation/pager/PagerState;Landroidx/compose/runtime/MutableState;Landroidx/compose/runtime/MutableState;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroidx/compose/foundation/pager/PagerState;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroidx/compose/runtime/MutableState<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 0
    iput p1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$screenWidthDp:I

    iput-object p2, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    iput-object p3, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;

    iput-object p4, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 111
    invoke-virtual {p0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$lastScreenWidthDp$delegate:Landroidx/compose/runtime/MutableState;

    invoke-static {v0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$5(Landroidx/compose/runtime/MutableState;)I

    move-result v0

    iget v1, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$screenWidthDp:I

    if-ne v0, v1, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$currentPage$delegate:Landroidx/compose/runtime/MutableState;

    iget-object p0, p0, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt$rememberPageStateFixed$3$1;->$pagerState:Landroidx/compose/foundation/pager/PagerState;

    invoke-virtual {p0}, Landroidx/compose/foundation/pager/PagerState;->getCurrentPage()I

    move-result p0

    invoke-static {v0, p0}, Lcom/android/settingslib/spa/widget/scaffold/SettingsPagerKt;->access$rememberPageStateFixed$lambda$2(Landroidx/compose/runtime/MutableState;I)V

    :cond_0
    return-void
.end method
