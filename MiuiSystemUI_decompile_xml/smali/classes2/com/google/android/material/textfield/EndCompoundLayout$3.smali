.class public final Lcom/google/android/material/textfield/EndCompoundLayout$3;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/textfield/EndCompoundLayout;


# direct methods
.method public constructor <init>(Lcom/google/android/material/textfield/EndCompoundLayout;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    invoke-virtual {p0}, Lcom/google/android/material/textfield/EndCompoundLayout;->addTouchExplorationStateChangeListenerIfNeeded()V

    .line 4
    return-void
    .line 7
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout$3;->this$0:Lcom/google/android/material/textfield/EndCompoundLayout;

    .line 2
    iget-object p1, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->touchExplorationStateChangeListener:Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;

    .line 4
    if-eqz p1, :cond_0

    .line 6
    iget-object p0, p0, Lcom/google/android/material/textfield/EndCompoundLayout;->accessibilityManager:Landroid/view/accessibility/AccessibilityManager;

    .line 8
    if-eqz p0, :cond_0

    .line 10
    new-instance v0, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;

    .line 12
    invoke-direct {v0, p1}, Landroidx/core/view/accessibility/AccessibilityManagerCompat$TouchExplorationStateChangeListenerWrapper;-><init>(Lcom/google/android/material/textfield/DropdownMenuEndIconDelegate$$ExternalSyntheticLambda2;)V

    .line 14
    invoke-virtual {p0, v0}, Landroid/view/accessibility/AccessibilityManager;->removeTouchExplorationStateChangeListener(Landroid/view/accessibility/AccessibilityManager$TouchExplorationStateChangeListener;)Z

    .line 17
    :cond_0
    return-void
    .line 20
.end method
