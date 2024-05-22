.class public abstract Landroidx/window/core/SpecificationComputer;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


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
