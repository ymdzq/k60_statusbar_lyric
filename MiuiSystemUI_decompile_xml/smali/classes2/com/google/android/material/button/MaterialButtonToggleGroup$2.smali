.class public final Lcom/google/android/material/button/MaterialButtonToggleGroup$2;
.super Landroidx/core/view/AccessibilityDelegateCompat;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final synthetic this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;


# direct methods
.method public constructor <init>(Lcom/google/android/material/button/MaterialButtonToggleGroup;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 2
    invoke-direct {p0}, Landroidx/core/view/AccessibilityDelegateCompat;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V
    .locals 6

    .line 1
    invoke-super {p0, p1, p2}, Landroidx/core/view/AccessibilityDelegateCompat;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;)V

    .line 2
    const/4 v0, 0x0

    .line 5
    const/4 v1, 0x1

    .line 6
    sget v2, Lcom/google/android/material/button/MaterialButtonToggleGroup;->$r8$clinit:I

    .line 7
    iget-object p0, p0, Lcom/google/android/material/button/MaterialButtonToggleGroup$2;->this$0:Lcom/google/android/material/button/MaterialButtonToggleGroup;

    .line 9
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    instance-of v2, p1, Lcom/google/android/material/button/MaterialButton;

    .line 14
    if-nez v2, :cond_0

    .line 16
    goto :goto_1

    .line 18
    :cond_0
    const/4 v2, 0x0

    .line 19
    move v3, v2

    .line 20
    :goto_0
    invoke-virtual {p0}, Landroid/widget/LinearLayout;->getChildCount()I

    .line 21
    move-result v4

    .line 24
    if-ge v2, v4, :cond_3

    .line 25
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 27
    move-result-object v4

    .line 30
    if-ne v4, p1, :cond_1

    .line 31
    move v2, v3

    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    .line 35
    move-result-object v4

    .line 38
    instance-of v4, v4, Lcom/google/android/material/button/MaterialButton;

    .line 39
    if-eqz v4, :cond_2

    .line 41
    invoke-virtual {p0, v2}, Lcom/google/android/material/button/MaterialButtonToggleGroup;->isChildVisible(I)Z

    .line 43
    move-result v4

    .line 46
    if-eqz v4, :cond_2

    .line 47
    add-int/lit8 v3, v3, 0x1

    .line 49
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 51
    goto :goto_0

    .line 53
    :cond_3
    :goto_1
    const/4 p0, -0x1

    .line 54
    move v2, p0

    .line 55
    :goto_2
    const/4 v3, 0x1

    .line 56
    const/4 v4, 0x0

    .line 57
    check-cast p1, Lcom/google/android/material/button/MaterialButton;

    .line 58
    invoke-virtual {p1}, Lcom/google/android/material/button/MaterialButton;->isChecked()Z

    .line 60
    move-result v5

    .line 63
    invoke-static/range {v0 .. v5}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;->obtain(IIIIZZ)Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;

    .line 64
    move-result-object p0

    .line 67
    invoke-virtual {p2, p0}, Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat;->setCollectionItemInfo(Landroidx/core/view/accessibility/AccessibilityNodeInfoCompat$CollectionInfoCompat;)V

    .line 68
    return-void
    .line 71
.end method
