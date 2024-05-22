.class public final Landroidx/transition/WindowIdApi18;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroidx/transition/WindowIdImpl;


# instance fields
.field public final mWindowId:Landroid/view/WindowId;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p1}, Landroid/view/View;->getWindowId()Landroid/view/WindowId;

    .line 5
    move-result-object p1

    .line 8
    iput-object p1, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 9
    return-void
    .line 11
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Landroidx/transition/WindowIdApi18;

    .line 2
    if-eqz v0, :cond_0

    .line 4
    check-cast p1, Landroidx/transition/WindowIdApi18;

    .line 6
    iget-object p1, p1, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 8
    iget-object p0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 10
    invoke-virtual {p1, p0}, Landroid/view/WindowId;->equals(Ljava/lang/Object;)Z

    .line 12
    move-result p0

    .line 15
    if-eqz p0, :cond_0

    .line 16
    const/4 p0, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    const/4 p0, 0x0

    .line 20
    :goto_0
    return p0
    .line 21
.end method

.method public final hashCode()I
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/transition/WindowIdApi18;->mWindowId:Landroid/view/WindowId;

    .line 2
    invoke-virtual {p0}, Landroid/view/WindowId;->hashCode()I

    .line 4
    move-result p0

    .line 7
    return p0
    .line 8
.end method
