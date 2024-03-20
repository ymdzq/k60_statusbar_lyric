.class public final Landroidx/compose/ui/layout/LayoutModifierKt$layout$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "ModifierNodeElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/layout/LayoutModifierKt;->layout(Landroidx/compose/ui/Modifier;Lkotlin/jvm/functions/Function3;)Landroidx/compose/ui/Modifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/layout/LayoutModifierImpl;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierNodeElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierNodeElement.kt\nandroidx/compose/ui/node/ModifierNodeElementKt$modifierElementOf$1\n+ 2 LayoutModifier.kt\nandroidx/compose/ui/layout/LayoutModifierKt\n*L\n1#1,144:1\n271#2,2:145\n*E\n"
.end annotation


# instance fields
.field final synthetic $measure$inlined:Lkotlin/jvm/functions/Function3;

.field final synthetic $measure$inlined$1:Lkotlin/jvm/functions/Function3;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function3;Lkotlin/jvm/functions/Function3;)V
    .locals 0

    iput-object p3, p0, Landroidx/compose/ui/layout/LayoutModifierKt$layout$$inlined$modifierElementOf$2;->$measure$inlined:Lkotlin/jvm/functions/Function3;

    iput-object p4, p0, Landroidx/compose/ui/layout/LayoutModifierKt$layout$$inlined$modifierElementOf$2;->$measure$inlined$1:Lkotlin/jvm/functions/Function3;

    const/4 p3, 0x1

    .line 114
    invoke-direct {p0, p1, p3, p2}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/layout/LayoutModifierImpl;"
        }
    .end annotation

    .line 145
    new-instance v0, Landroidx/compose/ui/layout/LayoutModifierImpl;

    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutModifierKt$layout$$inlined$modifierElementOf$2;->$measure$inlined:Lkotlin/jvm/functions/Function3;

    invoke-direct {v0, p0}, Landroidx/compose/ui/layout/LayoutModifierImpl;-><init>(Lkotlin/jvm/functions/Function3;)V

    return-object v0
.end method

.method public update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/layout/LayoutModifierImpl;",
            ")",
            "Landroidx/compose/ui/layout/LayoutModifierImpl;"
        }
    .end annotation

    const-string/jumbo v0, "node"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    move-object v0, p1

    check-cast v0, Landroidx/compose/ui/layout/LayoutModifierImpl;

    .line 146
    iget-object p0, p0, Landroidx/compose/ui/layout/LayoutModifierKt$layout$$inlined$modifierElementOf$2;->$measure$inlined$1:Lkotlin/jvm/functions/Function3;

    invoke-virtual {v0, p0}, Landroidx/compose/ui/layout/LayoutModifierImpl;->setMeasureBlock(Lkotlin/jvm/functions/Function3;)V

    return-object p1
.end method
