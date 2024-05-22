.class public final Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Lcom/android/systemui/plugins/DarkIconDispatcher$DarkReceiver;


# instance fields
.field public final synthetic this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

.field public final synthetic val$imageView:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;Landroid/widget/ImageView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->val$imageView:Landroid/widget/ImageView;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onDarkChanged(Ljava/util/ArrayList;FIIIZ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->this$0:Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;

    .line 2
    iget-object p2, p1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mTintAreas:Ljava/util/ArrayList;

    .line 4
    iget p1, p1, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl;->mIconTint:I

    .line 6
    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/DarkIconDispatcherImpl$1;->val$imageView:Landroid/widget/ImageView;

    .line 8
    invoke-static {p2, p0, p1}, Lcom/android/systemui/plugins/DarkIconDispatcher;->getTint(Ljava/util/ArrayList;Landroid/view/View;I)I

    .line 10
    move-result p1

    .line 13
    invoke-static {p1}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    .line 14
    move-result-object p1

    .line 17
    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 18
    return-void
    .line 21
.end method
