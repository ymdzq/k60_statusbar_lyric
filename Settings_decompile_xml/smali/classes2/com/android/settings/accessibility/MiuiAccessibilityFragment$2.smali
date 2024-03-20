.class Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;
.super Ljava/lang/Object;
.source "MiuiAccessibilityFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

.field final synthetic val$index:I


# direct methods
.method constructor <init>(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 120
    iput-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    iput p2, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->val$index:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    iget v0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->val$index:I

    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->setTabSelected(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->this$0:Lcom/android/settings/accessibility/MiuiAccessibilityFragment;

    invoke-static {p1}, Lcom/android/settings/accessibility/MiuiAccessibilityFragment;->-$$Nest$fgetmViewPager(Lcom/android/settings/accessibility/MiuiAccessibilityFragment;)Landroidx/viewpager/widget/ViewPager;

    move-result-object p1

    iget p0, p0, Lcom/android/settings/accessibility/MiuiAccessibilityFragment$2;->val$index:I

    invoke-virtual {p1, p0}, Landroidx/viewpager/widget/ViewPager;->setCurrentItem(I)V

    return-void
.end method
