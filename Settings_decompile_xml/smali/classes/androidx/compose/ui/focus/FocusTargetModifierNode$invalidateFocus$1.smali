.class final Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;
.super Lkotlin/jvm/internal/Lambda;
.source "FocusTargetModifierNode.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroidx/compose/ui/focus/FocusTargetModifierNode;->invalidateFocus$ui_release()V
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
.field final synthetic $focusProperties:Lkotlin/jvm/internal/Ref$ObjectRef;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/focus/FocusProperties;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroidx/compose/ui/focus/FocusTargetModifierNode;


# direct methods
.method constructor <init>(Lkotlin/jvm/internal/Ref$ObjectRef;Landroidx/compose/ui/focus/FocusTargetModifierNode;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$ObjectRef<",
            "Landroidx/compose/ui/focus/FocusProperties;",
            ">;",
            "Landroidx/compose/ui/focus/FocusTargetModifierNode;",
            ")V"
        }
    .end annotation

    .line 0
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;->$focusProperties:Lkotlin/jvm/internal/Ref$ObjectRef;

    iput-object p2, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;->this$0:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 95
    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 1

    .line 96
    iget-object v0, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;->$focusProperties:Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object p0, p0, Landroidx/compose/ui/focus/FocusTargetModifierNode$invalidateFocus$1;->this$0:Landroidx/compose/ui/focus/FocusTargetModifierNode;

    invoke-virtual {p0}, Landroidx/compose/ui/focus/FocusTargetModifierNode;->fetchFocusProperties$ui_release()Landroidx/compose/ui/focus/FocusProperties;

    move-result-object p0

    iput-object p0, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-void
.end method
