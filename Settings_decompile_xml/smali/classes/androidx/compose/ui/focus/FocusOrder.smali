.class public final Landroidx/compose/ui/focus/FocusOrder;
.super Ljava/lang/Object;
.source "FocusOrderModifier.kt"


# instance fields
.field private final focusProperties:Landroidx/compose/ui/focus/FocusProperties;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const-string v0, "focusProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusOrder;->focusProperties:Landroidx/compose/ui/focus/FocusProperties;

    return-void
.end method
