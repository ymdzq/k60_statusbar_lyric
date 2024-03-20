.class public final Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;
.super Ljava/lang/Object;
.source "AndroidComposeViewAccessibilityDelegateCompat.android.kt"


# instance fields
.field private final adjustedBounds:Landroid/graphics/Rect;

.field private final semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;


# direct methods
.method public constructor <init>(Landroidx/compose/ui/semantics/SemanticsNode;Landroid/graphics/Rect;)V
    .locals 1

    const-string/jumbo v0, "semanticsNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adjustedBounds"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2782
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2783
    iput-object p1, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    .line 2784
    iput-object p2, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    return-void
.end method


# virtual methods
.method public final getAdjustedBounds()Landroid/graphics/Rect;
    .locals 0

    .line 2784
    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->adjustedBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method public final getSemanticsNode()Landroidx/compose/ui/semantics/SemanticsNode;
    .locals 0

    .line 2783
    iget-object p0, p0, Landroidx/compose/ui/platform/SemanticsNodeWithAdjustedBounds;->semanticsNode:Landroidx/compose/ui/semantics/SemanticsNode;

    return-object p0
.end method
