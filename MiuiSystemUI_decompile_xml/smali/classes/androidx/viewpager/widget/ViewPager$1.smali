.class public final Landroidx/viewpager/widget/ViewPager$1;
.super Ljava/lang/Object;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic $r8$classId:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    iput p1, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .line 1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$1;->$r8$classId:I

    .line 2
    packed-switch p0, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    check-cast p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 8
    check-cast p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;

    .line 10
    iget p0, p1, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 12
    iget p1, p2, Landroidx/viewpager/widget/ViewPager$ItemInfo;->position:I

    .line 14
    sub-int/2addr p0, p1

    .line 16
    return p0

    .line 17
    :goto_0
    check-cast p1, Landroid/view/View;

    .line 18
    check-cast p2, Landroid/view/View;

    .line 20
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 22
    move-result-object p0

    .line 25
    check-cast p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 26
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 28
    move-result-object p1

    .line 31
    check-cast p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;

    .line 32
    iget-boolean p2, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 34
    iget-boolean v0, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->isDecor:Z

    .line 36
    if-eq p2, v0, :cond_1

    .line 38
    if-eqz p2, :cond_0

    .line 40
    const/4 p0, 0x1

    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 p0, -0x1

    .line 44
    goto :goto_1

    .line 45
    :cond_1
    iget p0, p0, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    .line 46
    iget p1, p1, Landroidx/viewpager/widget/ViewPager$LayoutParams;->position:I

    .line 48
    sub-int/2addr p0, p1

    .line 50
    :goto_1
    return p0

    .line 51
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 52
.end method
