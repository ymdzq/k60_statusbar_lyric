.class public abstract Lmiuix/spring/view/SpringHelper;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHorizontal:Lmiuix/spring/view/SpringHelper$1;

.field public final mVertical:Lmiuix/spring/view/SpringHelper$1;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    .line 5
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;II)V

    .line 8
    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mHorizontal:Lmiuix/spring/view/SpringHelper$1;

    .line 11
    new-instance v0, Lmiuix/spring/view/SpringHelper$1;

    .line 13
    const/4 v1, 0x1

    .line 15
    invoke-direct {v0, p0, v1, v1}, Lmiuix/spring/view/SpringHelper$1;-><init>(Lmiuix/spring/view/SpringHelper;II)V

    .line 16
    iput-object v0, p0, Lmiuix/spring/view/SpringHelper;->mVertical:Lmiuix/spring/view/SpringHelper$1;

    .line 19
    return-void
    .line 21
.end method


# virtual methods
.method public abstract canScrollHorizontally()Z
.end method

.method public abstract canScrollVertically()Z
.end method

.method public abstract dispatchNestedPreScroll(III[I[I)Z
.end method

.method public abstract dispatchNestedScroll(IIII[II[I)V
.end method

.method public abstract getHeight()I
.end method

.method public abstract getWidth()I
.end method

.method public abstract springAvailable()Z
.end method

.method public abstract vibrate()V
.end method
