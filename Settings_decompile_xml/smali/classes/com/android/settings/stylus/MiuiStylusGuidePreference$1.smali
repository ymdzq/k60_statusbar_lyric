.class Lcom/android/settings/stylus/MiuiStylusGuidePreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "MiuiStylusGuidePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/stylus/MiuiStylusGuidePreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/stylus/MiuiStylusGuidePreference;


# direct methods
.method constructor <init>(Lcom/android/settings/stylus/MiuiStylusGuidePreference;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lcom/android/settings/stylus/MiuiStylusGuidePreference$1;->this$0:Lcom/android/settings/stylus/MiuiStylusGuidePreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 36
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 38
    iget-object p0, p0, Lcom/android/settings/stylus/MiuiStylusGuidePreference$1;->this$0:Lcom/android/settings/stylus/MiuiStylusGuidePreference;

    invoke-static {p0}, Lcom/android/settings/stylus/MiuiStylusGuidePreference;->-$$Nest$fgetmEnable(Lcom/android/settings/stylus/MiuiStylusGuidePreference;)Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
