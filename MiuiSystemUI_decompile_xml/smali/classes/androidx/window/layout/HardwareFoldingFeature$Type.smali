.class public final Landroidx/window/layout/HardwareFoldingFeature$Type;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# static fields
.field public static final FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

.field public static final HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 2
    const-string v1, "FOLD"

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$Type;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->FOLD:Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 9
    new-instance v0, Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 11
    const-string v1, "HINGE"

    .line 13
    invoke-direct {v0, v1}, Landroidx/window/layout/HardwareFoldingFeature$Type;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Landroidx/window/layout/HardwareFoldingFeature$Type;->HINGE:Landroidx/window/layout/HardwareFoldingFeature$Type;

    .line 18
    return-void
    .line 20
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/HardwareFoldingFeature$Type;->description:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/HardwareFoldingFeature$Type;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
