.class public final Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public final mHorizontalSpacing:I

.field public final mVerticalSpacing:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 4
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    .line 5
    iput p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 6
    iput p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    return-void
.end method

.method public constructor <init>(IILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 2
    iput p1, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mHorizontalSpacing:I

    .line 3
    iput p2, p0, Lcom/miui/systemui/MiuiKeyboardShortcutKeysLayout$LayoutParams;->mVerticalSpacing:I

    return-void
.end method
