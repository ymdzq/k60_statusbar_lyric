.class Lcom/android/settings/utils/KeyboardHelper$1;
.super Ljava/lang/Object;
.source "KeyboardHelper.java"

# interfaces
.implements Lmiuix/appcompat/app/ActionBarTransitionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/utils/KeyboardHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/utils/KeyboardHelper;


# direct methods
.method constructor <init>(Lcom/android/settings/utils/KeyboardHelper;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settings/utils/KeyboardHelper$1;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionBarMove(FF)V
    .locals 1

    const/4 v0, 0x0

    cmpl-float p1, p1, v0

    if-eqz p1, :cond_0

    cmpl-float p1, p2, v0

    if-eqz p1, :cond_0

    .line 54
    iget-object p1, p0, Lcom/android/settings/utils/KeyboardHelper$1;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-static {p1}, Lcom/android/settings/utils/KeyboardHelper;->-$$Nest$fgetmNestedScrollView(Lcom/android/settings/utils/KeyboardHelper;)Landroidx/core/widget/NestedScrollView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->findFocus()Landroid/view/View;

    move-result-object p1

    .line 55
    instance-of p2, p1, Landroid/widget/EditText;

    if-eqz p2, :cond_0

    iget-object p0, p0, Lcom/android/settings/utils/KeyboardHelper$1;->this$0:Lcom/android/settings/utils/KeyboardHelper;

    invoke-static {p0}, Lcom/android/settings/utils/KeyboardHelper;->-$$Nest$fgetmKeyboardShow(Lcom/android/settings/utils/KeyboardHelper;)Z

    move-result p0

    if-nez p0, :cond_0

    .line 56
    invoke-virtual {p1}, Landroid/view/View;->clearFocus()V

    :cond_0
    return-void
.end method

.method public onActionBarResizing(IFI)V
    .locals 0

    .line 0
    return-void
.end method

.method public onExpandStateChanged(I)V
    .locals 0

    .line 0
    return-void
.end method
