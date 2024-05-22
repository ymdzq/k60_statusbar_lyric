.class public final Landroidx/window/embedding/SplitAttributes$LayoutDirection;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

.field public static final TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;


# instance fields
.field public final description:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 2
    const-string v1, "LOCALE"

    .line 4
    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;)V

    .line 6
    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LOCALE:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 9
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 11
    const-string v1, "LEFT_TO_RIGHT"

    .line 13
    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;)V

    .line 15
    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->LEFT_TO_RIGHT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 18
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 20
    const-string v1, "RIGHT_TO_LEFT"

    .line 22
    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;)V

    .line 24
    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->RIGHT_TO_LEFT:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 27
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 29
    const-string v1, "TOP_TO_BOTTOM"

    .line 31
    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;)V

    .line 33
    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->TOP_TO_BOTTOM:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 36
    new-instance v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 38
    const-string v1, "BOTTOM_TO_TOP"

    .line 40
    invoke-direct {v0, v1}, Landroidx/window/embedding/SplitAttributes$LayoutDirection;-><init>(Ljava/lang/String;)V

    .line 42
    sput-object v0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->BOTTOM_TO_TOP:Landroidx/window/embedding/SplitAttributes$LayoutDirection;

    .line 45
    return-void
    .line 47
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    .line 5
    return-void
    .line 7
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/window/embedding/SplitAttributes$LayoutDirection;->description:Ljava/lang/String;

    .line 2
    return-object p0
    .line 4
.end method
