.class public final Lcom/android/systemui/volume/ConfigurableTexts$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/volume/ConfigurableTexts;

.field public final synthetic val$sp:I

.field public final synthetic val$text:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/volume/ConfigurableTexts;Landroid/widget/TextView;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->val$text:Landroid/widget/TextView;

    .line 4
    iput p3, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->val$sp:I

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    return-void
    .line 11
.end method


# virtual methods
.method public final onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->this$0:Lcom/android/systemui/volume/ConfigurableTexts;

    .line 2
    iget-object v0, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->val$text:Landroid/widget/TextView;

    .line 4
    iget p0, p0, Lcom/android/systemui/volume/ConfigurableTexts$1;->val$sp:I

    .line 6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    const/4 p1, 0x2

    .line 11
    int-to-float p0, p0

    .line 12
    invoke-virtual {v0, p1, p0}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 13
    return-void
    .line 16
.end method

.method public final onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0

    .line 1
    return-void
    .line 2
.end method
