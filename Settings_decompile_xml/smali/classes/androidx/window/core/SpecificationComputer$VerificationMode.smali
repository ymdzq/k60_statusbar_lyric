.class public final enum Landroidx/window/core/SpecificationComputer$VerificationMode;
.super Ljava/lang/Enum;
.source "SpecificationComputer.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/window/core/SpecificationComputer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VerificationMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Landroidx/window/core/SpecificationComputer$VerificationMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final enum LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final enum QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

.field public static final enum STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;


# direct methods
.method private static final synthetic $values()[Landroidx/window/core/SpecificationComputer$VerificationMode;
    .locals 3

    .line 0
    sget-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;

    sget-object v1, Landroidx/window/core/SpecificationComputer$VerificationMode;->LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

    sget-object v2, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    filled-new-array {v0, v1, v2}, [Landroidx/window/core/SpecificationComputer$VerificationMode;

    move-result-object v0

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 3

    .line 44
    new-instance v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    const-string v1, "STRICT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->STRICT:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 45
    new-instance v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    const-string v1, "LOG"

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->LOG:Landroidx/window/core/SpecificationComputer$VerificationMode;

    .line 46
    new-instance v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    const-string v1, "QUIET"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Landroidx/window/core/SpecificationComputer$VerificationMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->QUIET:Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-static {}, Landroidx/window/core/SpecificationComputer$VerificationMode;->$values()[Landroidx/window/core/SpecificationComputer$VerificationMode;

    move-result-object v0

    sput-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->$VALUES:[Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroidx/window/core/SpecificationComputer$VerificationMode;
    .locals 1

    .line 0
    const-class v0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-object p0
.end method

.method public static values()[Landroidx/window/core/SpecificationComputer$VerificationMode;
    .locals 1

    .line 0
    sget-object v0, Landroidx/window/core/SpecificationComputer$VerificationMode;->$VALUES:[Landroidx/window/core/SpecificationComputer$VerificationMode;

    invoke-virtual {v0}, [Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroidx/window/core/SpecificationComputer$VerificationMode;

    return-object v0
.end method
