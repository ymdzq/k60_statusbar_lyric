.class Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;
.super Ljava/lang/Object;
.source "MiuiSecurityChooseUnlock.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->inflateCustomizeView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)V
    .locals 0

    .line 330
    iput-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 333
    iget-object p1, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    invoke-static {p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$fgetmVisiblePatternBtn(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;)Lmiuix/slidingwidget/widget/SlidingButton;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    .line 334
    iget-object p0, p0, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment$5;->this$0:Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;

    xor-int/lit8 p1, p1, 0x1

    invoke-static {p0, p1}, Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;->-$$Nest$monSlidingButtonCheckedChanged(Lcom/android/settings/MiuiSecurityChooseUnlock$MiuiSecurityChooseUnlockFragment;Z)V

    return-void
.end method
