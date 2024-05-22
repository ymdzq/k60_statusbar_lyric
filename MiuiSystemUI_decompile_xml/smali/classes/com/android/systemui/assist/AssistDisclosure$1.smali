.class public final Lcom/android/systemui/assist/AssistDisclosure$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/assist/AssistDisclosure;


# direct methods
.method public constructor <init>(Lcom/android/systemui/assist/AssistDisclosure;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/assist/AssistDisclosure$1;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    return-void
    .line 7
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object p0, p0, Lcom/android/systemui/assist/AssistDisclosure$1;->this$0:Lcom/android/systemui/assist/AssistDisclosure;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 4
    if-nez v0, :cond_0

    .line 6
    new-instance v0, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 8
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mContext:Landroid/content/Context;

    .line 10
    invoke-direct {v0, p0, v1}, Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;-><init>(Lcom/android/systemui/assist/AssistDisclosure;Landroid/content/Context;)V

    .line 12
    iput-object v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 15
    :cond_0
    iget-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    .line 17
    if-nez v0, :cond_1

    .line 19
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    .line 21
    const/16 v1, 0x7df

    .line 23
    const v2, 0x80508

    .line 25
    const/4 v3, -0x3

    .line 28
    invoke-direct {v0, v1, v2, v3}, Landroid/view/WindowManager$LayoutParams;-><init>(III)V

    .line 29
    const-string v1, "AssistDisclosure"

    .line 32
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 34
    const/4 v1, 0x0

    .line 37
    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setFitInsetsTypes(I)V

    .line 38
    iget-object v1, p0, Lcom/android/systemui/assist/AssistDisclosure;->mWm:Landroid/view/WindowManager;

    .line 41
    iget-object v2, p0, Lcom/android/systemui/assist/AssistDisclosure;->mView:Lcom/android/systemui/assist/AssistDisclosure$AssistDisclosureView;

    .line 43
    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 45
    const/4 v0, 0x1

    .line 48
    iput-boolean v0, p0, Lcom/android/systemui/assist/AssistDisclosure;->mViewAdded:Z

    .line 49
    :cond_1
    return-void
    .line 51
.end method
