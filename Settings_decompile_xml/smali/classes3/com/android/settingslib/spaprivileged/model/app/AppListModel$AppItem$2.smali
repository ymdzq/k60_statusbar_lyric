.class final Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;
.super Lkotlin/jvm/internal/Lambda;
.source "AppListModel.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V
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
.field final synthetic $$changed:I

.field final synthetic $this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic $tmp0_rcvr:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/settingslib/spaprivileged/model/app/AppListModel;Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/spaprivileged/model/app/AppListModel<",
            "TT;>;",
            "Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel<",
            "TT;>;I)V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$tmp0_rcvr:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iput-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iput p3, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$$changed:I

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 0
    check-cast p1, Landroidx/compose/runtime/Composer;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->invoke(Landroidx/compose/runtime/Composer;I)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/runtime/Composer;I)V
    .locals 1

    .line 0
    iget-object p2, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$tmp0_rcvr:Lcom/android/settingslib/spaprivileged/model/app/AppListModel;

    iget-object v0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$this_AppItem:Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;

    iget p0, p0, Lcom/android/settingslib/spaprivileged/model/app/AppListModel$AppItem$2;->$$changed:I

    or-int/lit8 p0, p0, 0x1

    invoke-static {p0}, Landroidx/compose/runtime/RecomposeScopeImplKt;->updateChangedFlags(I)I

    move-result p0

    invoke-interface {p2, v0, p1, p0}, Lcom/android/settingslib/spaprivileged/model/app/AppListModel;->AppItem(Lcom/android/settingslib/spaprivileged/template/app/AppListItemModel;Landroidx/compose/runtime/Composer;I)V

    return-void
.end method
