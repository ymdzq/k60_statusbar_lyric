.class public final Landroidx/compose/ui/node/ModifierNodeOwnerScope;
.super Ljava/lang/Object;
.source "ObserverNode.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;

.field private static final OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/ModifierNodeOwnerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final observerNode:Landroidx/compose/ui/node/ObserverNode;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->Companion:Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;

    .line 43
    sget-object v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion$OnObserveReadsChanged$1;->INSTANCE:Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion$OnObserveReadsChanged$1;

    sput-object v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/node/ObserverNode;)V
    .locals 1

    const-string/jumbo v0, "observerNode"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverNode;

    return-void
.end method

.method public static final synthetic access$getOnObserveReadsChanged$cp()Lkotlin/jvm/functions/Function1;
    .locals 1

    .line 37
    sget-object v0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->OnObserveReadsChanged:Lkotlin/jvm/functions/Function1;

    return-object v0
.end method


# virtual methods
.method public final getObserverNode$ui_release()Landroidx/compose/ui/node/ObserverNode;
    .locals 0

    .line 38
    iget-object p0, p0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverNode;

    return-object p0
.end method

.method public isValidOwnerScope()Z
    .locals 0

    .line 40
    iget-object p0, p0, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->observerNode:Landroidx/compose/ui/node/ObserverNode;

    invoke-interface {p0}, Landroidx/compose/ui/node/DelegatableNode;->getNode()Landroidx/compose/ui/Modifier$Node;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/compose/ui/Modifier$Node;->isAttached()Z

    move-result p0

    return p0
.end method
