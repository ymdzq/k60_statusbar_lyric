.class Lcom/android/settings/display/ExpertRadioButtonPreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "ExpertRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/ExpertRadioButtonPreference;->onBindView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/ExpertRadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/ExpertRadioButtonPreference;)V
    .locals 0

    .line 63
    iput-object p1, p0, Lcom/android/settings/display/ExpertRadioButtonPreference$1;->this$0:Lcom/android/settings/display/ExpertRadioButtonPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 66
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x0

    .line 68
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setCheckable(Z)V

    return-void
.end method
