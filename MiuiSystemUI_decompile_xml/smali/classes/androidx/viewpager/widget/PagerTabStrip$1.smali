.class public final Landroidx/viewpager/widget/PagerTabStrip$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $r8$classId:I

.field public final synthetic this$0:Landroidx/viewpager/widget/PagerTabStrip;


# direct methods
.method public synthetic constructor <init>(Landroidx/viewpager/widget/PagerTabStrip;I)V
    .locals 0

    .line 1
    iput p2, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->$r8$classId:I

    .line 2
    iput-object p1, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget p1, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->$r8$classId:I

    .line 2
    packed-switch p1, :pswitch_data_0

    .line 4
    goto :goto_0

    .line 7
    :pswitch_0
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    .line 8
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 10
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 12
    move-result p1

    .line 15
    add-int/lit8 p1, p1, -0x1

    .line 16
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 18
    return-void

    .line 21
    :goto_0
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTabStrip$1;->this$0:Landroidx/viewpager/widget/PagerTabStrip;

    .line 22
    iget-object p0, p0, Landroidx/viewpager/widget/PagerTitleStrip;->mPager:Landroidx/viewpager/widget/ViewPager;

    .line 24
    invoke-virtual {p0}, Landroidx/viewpager/widget/ViewPager;->getCurrentItem()I

    .line 26
    move-result p1

    .line 29
    add-int/lit8 p1, p1, 0x1

    .line 30
    invoke-virtual {p0, p1}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    .line 32
    return-void

    .line 35
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
    .line 36
.end method
