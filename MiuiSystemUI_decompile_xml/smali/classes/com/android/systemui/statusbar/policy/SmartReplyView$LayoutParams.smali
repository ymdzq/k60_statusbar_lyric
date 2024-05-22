.class Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"


# instance fields
.field public mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

.field public mNoShowReason:Ljava/lang/String;

.field public show:Z

.field public squeezeStatus:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 6
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 7
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 8
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 9
    sget-object p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    const-string p1, "new"

    .line 10
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 3
    iput p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->squeezeStatus:I

    .line 4
    sget-object p1, Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;->REPLY:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mButtonType:Lcom/android/systemui/statusbar/policy/SmartReplyView$SmartButtonType;

    const-string p1, "new"

    .line 5
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->mNoShowReason:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public isShown()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/android/systemui/statusbar/policy/SmartReplyView$LayoutParams;->show:Z

    .line 2
    return p0
    .line 4
.end method
