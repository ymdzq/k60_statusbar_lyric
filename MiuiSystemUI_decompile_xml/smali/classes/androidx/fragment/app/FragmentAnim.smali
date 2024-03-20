.class public abstract Landroidx/fragment/app/FragmentAnim;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# direct methods
.method public static toActivityTransitResId(ILandroid/content/Context;)I
    .locals 1

    .line 1
    const v0, 0x1030001    # @android:style/Animation.Activity

    .line 2
    filled-new-array {p0}, [I

    .line 5
    move-result-object p0

    .line 8
    invoke-virtual {p1, v0, p0}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    .line 9
    move-result-object p0

    .line 12
    const/4 p1, 0x0

    .line 13
    const/4 v0, -0x1

    .line 14
    invoke-virtual {p0, p1, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    .line 15
    move-result p1

    .line 18
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 19
    return p1
    .line 22
.end method
