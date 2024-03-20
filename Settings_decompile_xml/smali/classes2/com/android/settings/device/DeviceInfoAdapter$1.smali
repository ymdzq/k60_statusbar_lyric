.class Lcom/android/settings/device/DeviceInfoAdapter$1;
.super Landroid/view/View$AccessibilityDelegate;
.source "DeviceInfoAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/device/DeviceInfoAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/device/DeviceInfoAdapter$DeviceCardViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/device/DeviceInfoAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings/device/DeviceInfoAdapter;)V
    .locals 0

    .line 94
    iput-object p1, p0, Lcom/android/settings/device/DeviceInfoAdapter$1;->this$0:Lcom/android/settings/device/DeviceInfoAdapter;

    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    return-void
.end method


# virtual methods
.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 0

    .line 97
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const/4 p0, 0x1

    .line 98
    invoke-virtual {p2, p0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setEnabled(Z)V

    return-void
.end method
