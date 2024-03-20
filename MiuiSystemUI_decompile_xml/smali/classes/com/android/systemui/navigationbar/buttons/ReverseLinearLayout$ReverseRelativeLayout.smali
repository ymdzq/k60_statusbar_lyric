.class public Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;
.super Landroid/widget/RelativeLayout;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$Reversable;


# instance fields
.field public mDefaultGravity:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 2
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 6
    return-void
    .line 8
.end method


# virtual methods
.method public final reverse(Z)V
    .locals 3

    .line 1
    iget v0, p0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 2
    const/16 v1, 0x50

    .line 4
    const/16 v2, 0x30

    .line 6
    if-eq v0, v2, :cond_0

    .line 8
    if-eq v0, v1, :cond_0

    .line 10
    goto :goto_1

    .line 12
    :cond_0
    if-eqz p1, :cond_2

    .line 13
    if-ne v0, v2, :cond_1

    .line 15
    move v0, v1

    .line 17
    goto :goto_0

    .line 18
    :cond_1
    move v0, v2

    .line 19
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/RelativeLayout;->getGravity()I

    .line 20
    move-result v1

    .line 23
    if-eq v1, v0, :cond_3

    .line 24
    invoke-virtual {p0, v0}, Landroid/widget/RelativeLayout;->setGravity(I)V

    .line 26
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout;->reverseGroup(Landroid/view/ViewGroup;Z)V

    .line 29
    return-void
    .line 32
.end method

.method public setDefaultGravity(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/android/systemui/navigationbar/buttons/ReverseLinearLayout$ReverseRelativeLayout;->mDefaultGravity:I

    .line 2
    return-void
    .line 4
.end method
