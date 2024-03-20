.class final Landroidx/compose/ui/focus/FocusPropertiesModifierNodeImpl;
.super Landroidx/compose/ui/Modifier$Node;
.source "FocusProperties.kt"

# interfaces
.implements Landroidx/compose/ui/focus/FocusPropertiesModifierNode;


# instance fields
.field private focusPropertiesScope:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusProperties;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusProperties;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "focusPropertiesScope"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 196
    invoke-direct {p0}, Landroidx/compose/ui/Modifier$Node;-><init>()V

    .line 195
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNodeImpl;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    return-void
.end method


# virtual methods
.method public modifyFocusProperties(Landroidx/compose/ui/focus/FocusProperties;)V
    .locals 1

    const-string v0, "focusProperties"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 199
    iget-object p0, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNodeImpl;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public final setFocusPropertiesScope(Lkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/focus/FocusProperties;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 195
    iput-object p1, p0, Landroidx/compose/ui/focus/FocusPropertiesModifierNodeImpl;->focusPropertiesScope:Lkotlin/jvm/functions/Function1;

    return-void
.end method
