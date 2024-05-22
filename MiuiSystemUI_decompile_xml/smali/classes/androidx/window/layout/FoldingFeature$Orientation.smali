.class public final Landroidx/window/layout/FoldingFeature$Orientation;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

.field public static final VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/layout/FoldingFeature$Orientation;

    .line 2
    const-string v1, "VERTICAL"

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/layout/FoldingFeature$Orientation;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->VERTICAL:Landroidx/window/layout/FoldingFeature$Orientation;

    .line 9
    new-instance v0, Landroidx/window/layout/FoldingFeature$Orientation;

    .line 11
    const-string v1, "HORIZONTAL"

    .line 13
    invoke-direct {v0, v1}, Landroidx/window/layout/FoldingFeature$Orientation;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Landroidx/window/layout/FoldingFeature$Orientation;->HORIZONTAL:Landroidx/window/layout/FoldingFeature$Orientation;

    .line 18
    return-void
    .line 20
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/layout/FoldingFeature$Orientation;->description:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/layout/FoldingFeature$Orientation;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
