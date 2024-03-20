.class Lcom/android/settings/display/ResolutionVisualCheckBox$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ResolutionVisualCheckBox.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ResolutionVisualCheckBox;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ResolutionVisualCheckBox;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ResolutionVisualCheckBox;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lcom/android/settings/display/ResolutionVisualCheckBox$1;->this$0:Lcom/android/settings/display/ResolutionVisualCheckBox;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 53
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 55
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
