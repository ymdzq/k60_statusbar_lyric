.class public final Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "ModifierNodeElement.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusOwnerImpl;-><init>(Lkotlin/jvm/functions/Function1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/compose/ui/node/ModifierNodeElement<",
        "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
        ">;"
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nModifierNodeElement.kt\nKotlin\n*S Kotlin\n*F\n+ 1 ModifierNodeElement.kt\nandroidx/compose/ui/node/ModifierNodeElementKt$modifierElementOf$2\n+ 2 FocusOwnerImpl.kt\nandroidx/compose/ui/focus/FocusOwnerImpl\n*L\n1#1,144:1\n63#2:145\n*E\n"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;Landroidx/compose/ui/focus/FocusOwnerImpl;)V
    .locals 1

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 141
    invoke-direct {p0, p2, v0, p1}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/ui/Modifier$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;"
        }
    .end annotation

    .line 145
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusOwnerImpl$special$$inlined$modifierElementOf$2;->this$0:Landroidx/compose/ui/focus/FocusOwnerImpl;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusOwnerImpl;->getRootFocusNode$ui_release()Landroidx/compose/ui/focus/FocusTargetModifierNode;

    move-result-object p0

    return-object p0
.end method

.method public update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
            ")",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;"
        }
    .end annotation

    .line 0
    const-string/jumbo p0, "node"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
