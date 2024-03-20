.class public final Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt;
.super Ljava/lang/Object;
.source "NestedScrollModifierLocal.kt"


# static fields
.field private static final ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt$ModifierLocalNestedScroll$1;->INSTANCE:Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt$ModifierLocalNestedScroll$1;

    invoke-static {v0}, Landroidx/compose/ui/modifier/ModifierLocalKt;->modifierLocalOf(Lkotlin/jvm/functions/Function0;)Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-void
.end method

.method public static final getModifierLocalNestedScroll()Landroidx/compose/ui/modifier/ProvidableModifierLocal;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/modifier/ProvidableModifierLocal<",
            "Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocal;",
            ">;"
        }
    .end annotation

    .line 31
    sget-object v0, Landroidx/compose/ui/input/nestedscroll/NestedScrollModifierLocalKt;->ModifierLocalNestedScroll:Landroidx/compose/ui/modifier/ProvidableModifierLocal;

    return-object v0
.end method
