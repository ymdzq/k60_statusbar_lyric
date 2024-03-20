.class Lcom/android/settings/display/FontAdapter$FontViewHolder$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "FontAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/display/FontAdapter$FontViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;


# direct methods
.method constructor <init>(Lcom/android/settings/display/FontAdapter$FontViewHolder;)V
    .locals 0

    .line 358
    iput-object p1, p0, Lcom/android/settings/display/FontAdapter$FontViewHolder$1;->this$0:Lcom/android/settings/display/FontAdapter$FontViewHolder;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 361
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 362
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClickable(Z)V

    return-void
.end method
