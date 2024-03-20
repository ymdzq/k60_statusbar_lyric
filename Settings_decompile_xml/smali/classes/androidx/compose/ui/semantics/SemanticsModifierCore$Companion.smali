.class public final Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;
.super Ljava/lang/Object;
.source "SemanticsModifier.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/compose/ui/semantics/SemanticsModifierCore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Companion"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/compose/ui/semantics/SemanticsModifierCore$Companion;-><init>()V

    return-void
.end method


# virtual methods
.method public final generateSemanticsId()I
    .locals 1

    .line 62
    invoke-static {}, Landroidx/compose/ui/semantics/SemanticsModifierCore;->access$getLastIdentifier$cp()Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object p0

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    move-result p0

    return p0
.end method
