.class Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;
.super Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;
.source "AccessibilityMenuService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->onServiceConnected()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    invoke-direct {p0}, Landroid/accessibilityservice/AccessibilityButtonController$AccessibilityButtonCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onClicked(Landroid/accessibilityservice/AccessibilityButtonController;)V
    .locals 4

    .line 97
    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    const-string v0, "keyguard"

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    invoke-virtual {p1}, Landroid/app/KeyguardManager;->isDeviceLocked()Z

    move-result p1

    if-nez p1, :cond_2

    .line 98
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iget-object p1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-wide v2, p1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->lastTimeTouchedOutside:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xc8

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 99
    iget-object p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    iget-object p1, p1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getVisibility()I

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    move p1, v0

    .line 101
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object v1, v1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    iget-object v1, v1, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->mainFrameLayout:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 102
    iget-object v1, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    iget-object v2, v1, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->a11yMenuLayout:Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;

    invoke-virtual {v2, v1}, Lcom/android/settings/accessibility/accessibilitymenu/view/A11yMenuOverlayLayout;->disableNotificationIfNeeded(Landroid/content/Context;)V

    .line 103
    iget-object p0, p0, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService$1;->this$0:Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :cond_1
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;->-$$Nest$fputisVisibleFlag(Lcom/android/settings/accessibility/accessibilitymenu/AccessibilityMenuService;Z)V

    :cond_2
    return-void
.end method
