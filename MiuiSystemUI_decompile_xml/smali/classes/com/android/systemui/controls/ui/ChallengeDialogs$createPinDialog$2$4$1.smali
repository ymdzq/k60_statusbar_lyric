.class public final Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;
.super Ljava/lang/Object;
.source "go/retraceme cf7e75b67acb443865ccf1068fb1cac9fef1a5fd78972f04c17bf2175ac8e5fd"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic $editText:Landroid/widget/EditText;

.field public final synthetic $useAlphaCheckBox:Landroid/widget/CheckBox;


# direct methods
.method public constructor <init>(Landroid/widget/EditText;Landroid/widget/CheckBox;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$editText:Landroid/widget/EditText;

    .line 2
    iput-object p2, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    return-void
    .line 9
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$editText:Landroid/widget/EditText;

    .line 2
    iget-object p0, p0, Lcom/android/systemui/controls/ui/ChallengeDialogs$createPinDialog$2$4$1;->$useAlphaCheckBox:Landroid/widget/CheckBox;

    .line 4
    invoke-virtual {p0}, Landroid/widget/CheckBox;->isChecked()Z

    .line 6
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    const/16 p0, 0x81

    .line 12
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 14
    goto :goto_0

    .line 17
    :cond_0
    const/16 p0, 0x12

    .line 18
    invoke-virtual {p1, p0}, Landroid/widget/EditText;->setInputType(I)V

    .line 20
    :goto_0
    return-void
    .line 23
.end method
