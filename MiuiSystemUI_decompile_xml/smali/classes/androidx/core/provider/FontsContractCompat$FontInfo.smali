.class public final Landroidx/core/provider/FontsContractCompat$FontInfo;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final mItalic:Z

.field public final mResultCode:I

.field public final mTtcIndex:I

.field public final mUri:Landroid/net/Uri;

.field public final mWeight:I


# direct methods
.method public constructor <init>(Landroid/net/Uri;IIZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    iput-object p1, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->mUri:Landroid/net/Uri;

    .line 8
    iput p2, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->mTtcIndex:I

    .line 10
    iput p3, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->mWeight:I

    .line 12
    iput-boolean p4, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->mItalic:Z

    .line 14
    iput p5, p0, Landroidx/core/provider/FontsContractCompat$FontInfo;->mResultCode:I

    .line 16
    return-void
    .line 18
.end method
