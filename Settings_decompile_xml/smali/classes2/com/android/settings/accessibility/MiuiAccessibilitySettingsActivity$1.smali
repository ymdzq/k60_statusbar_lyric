.class Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$1;
.super Ljava/lang/Object;
.source "MiuiAccessibilitySettingsActivity.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBar$FragmentViewPagerChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->initActionBar()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$1;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageScrolled(IFZZ)V
    .locals 0

    .line 0
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0

    .line 106
    iget-object p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity$1;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;

    invoke-static {p0, p1}, Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;->-$$Nest$fputmCurrentPosition(Lcom/android/settings/accessibility/MiuiAccessibilitySettingsActivity;I)V

    return-void
.end method
