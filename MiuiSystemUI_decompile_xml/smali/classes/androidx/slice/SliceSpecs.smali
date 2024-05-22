.class public abstract Landroidx/slice/SliceSpecs;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# static fields
.field public static final BASIC:Landroidx/slice/SliceSpec;

.field public static final LIST:Landroidx/slice/SliceSpec;

.field public static final LIST_V2:Landroidx/slice/SliceSpec;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Landroidx/slice/SliceSpec;

    .line 2
    const-string v1, "androidx.slice.BASIC"

    .line 4
    const/4 v2, 0x1

    .line 6
    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 7
    sput-object v0, Landroidx/slice/SliceSpecs;->BASIC:Landroidx/slice/SliceSpec;

    .line 10
    new-instance v0, Landroidx/slice/SliceSpec;

    .line 12
    const-string v1, "androidx.slice.LIST"

    .line 14
    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 16
    sput-object v0, Landroidx/slice/SliceSpecs;->LIST:Landroidx/slice/SliceSpec;

    .line 19
    new-instance v0, Landroidx/slice/SliceSpec;

    .line 21
    const/4 v2, 0x2

    .line 23
    invoke-direct {v0, v1, v2}, Landroidx/slice/SliceSpec;-><init>(Ljava/lang/String;I)V

    .line 24
    sput-object v0, Landroidx/slice/SliceSpecs;->LIST_V2:Landroidx/slice/SliceSpec;

    .line 27
    return-void
    .line 29
.end method
