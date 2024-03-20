.class Lcom/android/settings/display/PaperRadioButtonPreference$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "PaperRadioButtonPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/PaperRadioButtonPreference;->onBindViewHolder(Landroidx/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/PaperRadioButtonPreference;


# direct methods
.method constructor <init>(Lcom/android/settings/display/PaperRadioButtonPreference;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/android/settings/display/PaperRadioButtonPreference$1;->this$0:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 44
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    if-eqz p2, :cond_0

    .line 46
    iget-object p0, p0, Lcom/android/settings/display/PaperRadioButtonPreference$1;->this$0:Lcom/android/settings/display/PaperRadioButtonPreference;

    invoke-virtual {p0}, Landroidx/preference/TwoStatePreference;->isChecked()Z

    move-result p0

    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    :cond_0
    return-void
.end method
