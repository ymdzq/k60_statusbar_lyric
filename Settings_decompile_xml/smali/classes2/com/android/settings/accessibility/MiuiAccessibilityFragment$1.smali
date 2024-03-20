.class Lcom/android/settings/accessibility/MiuiAccessibilityFragment$1;
.super Ljava/lang/Object;
.source "MiuiAccessibilityFragment.java"

# interfaces
.implements Landroidx/viewpager/widget/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accessibility/MiuiAccessibilityFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;)V
    .locals 0

    .line 48
    iput-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$1;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

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

    .line 62
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$1;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->setTabSelected(I)V

    return-void
.end method
