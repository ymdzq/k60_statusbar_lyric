.class Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;
.super Landroid/database/DataSetObserver;
.source "OriginalViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/viewpager/widget/OriginalViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PagerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroidx/viewpager/widget/OriginalViewPager;


# direct methods
.method constructor <init>(Landroidx/viewpager/widget/OriginalViewPager;)V
    .locals 0

    .line 3128
    iput-object p1, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .line 3133
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->dataSetChanged()V

    return-void
.end method

.method public onInvalidated()V
    .locals 0

    .line 3137
    iget-object p0, p0, Landroidx/viewpager/widget/OriginalViewPager$PagerObserver;->this$0:Landroidx/viewpager/widget/OriginalViewPager;

    invoke-virtual {p0}, Landroidx/viewpager/widget/OriginalViewPager;->dataSetChanged()V

    return-void
.end method
