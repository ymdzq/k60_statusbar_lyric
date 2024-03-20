.class public abstract Landroidx/window/core/SpecificationComputer;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final Companion:Landroidx/window/core/SpecificationComputer$Companion;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroidx/window/core/SpecificationComputer$Companion;

    .line 2
    invoke-direct {v0}, Landroidx/window/core/SpecificationComputer$Companion;-><init>()V

    .line 4
    sput-object v0, Landroidx/window/core/SpecificationComputer;->Companion:Landroidx/window/core/SpecificationComputer$Companion;

    .line 7
    return-void
    .line 9
.end method


# virtual methods
.method public abstract compute()Ljava/lang/Object;
.end method

.method public abstract require(Ljava/lang/String;Lkotlin/jvm/functions/Function1;)Landroidx/window/core/SpecificationComputer;
.end method
