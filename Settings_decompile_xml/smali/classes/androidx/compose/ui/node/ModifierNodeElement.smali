.class public abstract Landroidx/compose/ui/node/ModifierNodeElement;
.super Landroidx/compose/ui/platform/InspectorValueInfo;
.source "ModifierNodeElement.kt"

# interfaces
.implements Landroidx/compose/ui/Modifier$Element;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Landroidx/compose/ui/Modifier$Node;",
        ">",
        "Landroidx/compose/ui/platform/InspectorValueInfo;",
        "Landroidx/compose/ui/Modifier$Element;"
    }
.end annotation


# instance fields
.field private final autoInvalidate:Z

.field private final params:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Z",
            "Lkotlin/jvm/functions/Function1<",
            "-",
            "Landroidx/compose/ui/platform/InspectorInfo;",
            "Lkotlin/Unit;",
            ">;)V"
        }
    .end annotation

    const-string v0, "inspectorInfo"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p3}, Landroidx/compose/ui/platform/InspectorValueInfo;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 48
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierNodeElement;->params:Ljava/lang/Object;

    .line 49
    iput-boolean p2, p0, Landroidx/compose/ui/node/ModifierNodeElement;->autoInvalidate:Z

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    const/4 p1, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x2

    if-eqz p4, :cond_1

    const/4 p2, 0x1

    .line 39
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>(Ljava/lang/Object;ZLkotlin/jvm/functions/Function1;)V

    return-void
.end method


# virtual methods
.method public abstract create()Landroidx/compose/ui/Modifier$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TN;"
        }
    .end annotation
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    if-ne p0, p1, :cond_0

    const/4 p0, 0x1

    return p0

    .line 76
    :cond_0
    instance-of v0, p1, Landroidx/compose/ui/node/ModifierNodeElement;

    const/4 v1, 0x0

    if-nez v0, :cond_1

    return v1

    .line 77
    :cond_1
    invoke-static {p0, p1}, Landroidx/compose/ui/ActualKt;->areObjectsOfSameType(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    return v1

    .line 78
    :cond_2
    iget-object p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->params:Ljava/lang/Object;

    check-cast p1, Landroidx/compose/ui/node/ModifierNodeElement;

    iget-object p1, p1, Landroidx/compose/ui/node/ModifierNodeElement;->params:Ljava/lang/Object;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final getAutoInvalidate$ui_release()Z
    .locals 0

    .line 49
    iget-boolean p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->autoInvalidate:Z

    return p0
.end method

.method public hashCode()I
    .locals 0

    .line 71
    iget-object p0, p0, Landroidx/compose/ui/node/ModifierNodeElement;->params:Ljava/lang/Object;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public abstract update(Landroidx/compose/ui/Modifier$Node;)Landroidx/compose/ui/Modifier$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)TN;"
        }
    .end annotation
.end method
