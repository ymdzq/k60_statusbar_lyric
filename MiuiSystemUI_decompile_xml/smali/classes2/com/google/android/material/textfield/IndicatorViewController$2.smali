.class public final Lcom/google/android/material/textfield/IndicatorViewController$2;
.super Landroid/view/View$AccessibilityDelegate;
.source "go/retraceme 46e43a6cb16c843bdab2ef99d05cf7faa2774ca07896d398b524e84c7d9657f3"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/IndicatorViewController;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/IndicatorViewController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/IndicatorViewController$2;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 2
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 2
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController$2;->this$0:Lcom/google/android/material/textfield/IndicatorViewController;

    .line 5
    iget-object p0, p0, Lcom/google/android/material/textfield/IndicatorViewController;->textInputView:Lcom/google/android/material/textfield/TextInputLayout;

    .line 7
    invoke-virtual {p0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    .line 9
    move-result-object p0

    .line 12
    if-eqz p0, :cond_0

    .line 13
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setLabeledBy(Landroid/view/View;)V

    .line 15
    :cond_0
    return-void
    .line 18
.end method
