.class Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$1;
.super Ljava/lang/Object;
.source "ProfileSelectFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/OriginalViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->setUpViewPager()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;)V
    .locals 0

    .line 420
    iput-object p1, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 428
    iget-object p0, p0, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper$1;->this$0:Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;

    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/profileselector/ProfileSelectFragment$TabHelper;->pageSelected(I)V

    return-void
.end method
