.class public final Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;
.super Ljava/lang/Object;
.source "ObserverNode.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/node/ModifierNodeOwnerScope;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeOwnerScope$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final getOnObserveReadsChanged$ui_release()Lkotlin/jvm/functions/Function1;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/jvm/functions/Function1<",
            "Landroidx/compose/ui/node/ModifierNodeOwnerScope;",
            "Lkotlin/Unit;",
            ">;"
        }
    .end annotation

    .line 43
    invoke-static {}, Landroidx/compose/ui/node/ModifierNodeOwnerScope;->access$getOnObserveReadsChanged$cp()Lkotlin/jvm/functions/Function1;

    move-result-object p0

    return-object p0
.end method
