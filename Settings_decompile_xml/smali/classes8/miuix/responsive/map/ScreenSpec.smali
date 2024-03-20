.class public Lmiuix/responsive/map/ScreenSpec;
.super Ljava/lang/Object;
.source "ScreenSpec.java"


# instance fields
.field public category:I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public height:I

.field public heightDp:I

.field public screenMode:I

.field public type:I

.field public width:I

.field public widthDp:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->type:I

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->category:I

    const/16 v1, 0x1007

    .line 7
    iput v1, p0, Lmiuix/responsive/map/ScreenSpec;->screenMode:I

    .line 8
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->widthDp:I

    .line 9
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->heightDp:I

    .line 10
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->width:I

    .line 11
    iput v0, p0, Lmiuix/responsive/map/ScreenSpec;->height:I

    return-void
.end method
