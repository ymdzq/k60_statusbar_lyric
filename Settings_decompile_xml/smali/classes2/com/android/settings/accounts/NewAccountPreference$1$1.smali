.class Lcom/android/settings/accounts/NewAccountPreference$1$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "NewAccountPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accounts/NewAccountPreference$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/accounts/NewAccountPreference$1;


# direct methods
.method constructor <init>(Lcom/android/settings/accounts/NewAccountPreference$1;)V
    .locals 0

    .line 188
    iput-object p1, p0, Lcom/android/settings/accounts/NewAccountPreference$1$1;->this$1:Lcom/android/settings/accounts/NewAccountPreference$1;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 191
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 192
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
