.class public final Landroidx/compose/foundation/interaction/PressInteraction$Release;
.super Ljava/lang/Object;
.source "PressInteraction.kt"

# interfaces
.implements Landroidx/compose/foundation/interaction/Interaction;


# instance fields
.field private final press:Landroidx/compose/foundation/interaction/PressInteraction$Press;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/foundation/interaction/PressInteraction$Press;)V
    .locals 1

    const-string/jumbo v0, "press"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-void
.end method


# virtual methods
.method public final getPress()Landroidx/compose/foundation/interaction/PressInteraction$Press;
    .locals 0

    .line 61
    iget-object p0, p0, Landroidx/compose/foundation/interaction/PressInteraction$Release;->press:Landroidx/compose/foundation/interaction/PressInteraction$Press;

    return-object p0
.end method
